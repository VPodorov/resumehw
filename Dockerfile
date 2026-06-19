FROM fedora:33

RUN yum update -y && yum install -y \
    texlive-collection-latexrecommended \
    texlive-collection-fontsrecommended \
    texlive-fontawesome \
    texlive-collection-pictures \
    texlive-collection-science \
    texlive-collection-langcyrillic \
    texlive-dashrule \
    && yum clean all

COPY CV /

CMD ["bash", "/run.sh"]
