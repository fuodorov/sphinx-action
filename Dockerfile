FROM sphinxdoc/sphinx:7.1.2

LABEL "maintainer"="Ammar Askar <ammar@ammaraskar.com>"

COPY --from=pandoc/minimal:3.1.1 /pandoc /usr/bin/pandoc

ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

ENTRYPOINT ["/entrypoint.py"]
