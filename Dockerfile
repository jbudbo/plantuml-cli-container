FROM justmorr/graphviz

WORKDIR /puml

ADD /deps /usr/local/bin/puml

ENTRYPOINT [ "java", "-jar", "/usr/local/bin/puml/plantuml.jar", "-DPLANTUML_LIMIT_SIZE=8192", "-progress" ]

CMD [ "-tpdf", "*.uml" ]