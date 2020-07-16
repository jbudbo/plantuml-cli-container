FROM justmorr/graphviz

WORKDIR /usr/local/bin/puml

ADD "http://beta.plantuml.net/batikAndFop.zip" .

RUN yum install -y unzip \
    && unzip batikAndFop.zip

WORKDIR /puml

ENTRYPOINT [ "java", "-jar", "/usr/local/bin/puml/plantuml.jar", "-DPLANTUML_LIMIT_SIZE=8192", "-progress" ]

CMD [ "-tpdf", "*.puml" ]
