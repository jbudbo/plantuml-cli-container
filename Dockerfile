FROM justmorr/graphviz

WORKDIR /usr/local/bin/puml

ADD "http://beta.plantuml.net/batikAndFop.zip" .
ADD plantuml.jar .

RUN yum install -y unzip \
    && unzip batikAndFop.zip

WORKDIR /puml

ENV PLANTUML_LIMIT_SIZE=8192

ENTRYPOINT [ "java", "-Djava.awt.headless=true", "-jar", "/usr/local/bin/puml/plantuml.jar", "-progress" ]

CMD [ "-tpdf", "*.puml" ]
