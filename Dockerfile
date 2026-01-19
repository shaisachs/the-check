FROM pandoc/core:latest

WORKDIR /data

COPY metadata.yaml .
COPY epub.css .
COPY titlepage.md .
COPY copyright.md .
COPY README.md .
COPY cover.jpg .

CMD ["pandoc"]

# docker run --rm -v "$(pwd):/data" pandoc/core:latest pandoc metadata.yaml titlepage.md copyright.md main.md --css=epub.css --epub-cover-image=cover.jpg --toc --metadata-file=metadata.yaml -o the-check.epub

