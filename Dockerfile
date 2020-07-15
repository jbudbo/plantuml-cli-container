FROM justmorr/graphviz

WORKDIR /puml

ADD /deps /usr/local/bin/puml

ENTRYPOINT [ "java", "-jar", "/usr/local/bin/puml/plantuml.jar", "-DPLANTUML_LIMIT_SIZE=8192", "-progress" ]

<<<<<<< HEAD
CMD [ "-tpdf", "*.uml" ]
=======
CMD [ "-tpdf", "*.uml" ]
>>>>>>> 283e6d412071df67e566d5e4b71127a472ad63be
