FROM sphinxdoc/sphinx:2.4.4

LABEL "maintainer"="Ammar Askar <ammar@ammaraskar.com>"

COPY --from=pandoc/minimal:2.19.2 /pandoc /usr/bin/pandoc

ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

ENTRYPOINT ["/entrypoint.py"]
