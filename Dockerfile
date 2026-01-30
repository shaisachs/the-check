FROM pandoc/core:latest

WORKDIR /app

COPY metadata.yaml .
COPY epub.css .
COPY titlepage.md .
COPY copyright.md .
COPY README.md .
COPY cover.jpg .

ENTRYPOINT ["pandoc"]

# docker build -t the-check .
# docker run --rm -v $(pwd):/app the-check titlepage.md copyright.md README.md --css=epub.css --epub-cover-image=cover.jpg --metadata-file=metadata.yaml -o the-check.epub 