FROM texlive/texlive:latest
# RUN mkdir ./out
# COPY test.tex ./test.tex
# COPY test.bib ./test.bib
COPY entrypoint.sh /entrypoint.sh
COPY TimesNewRoman/ /usr/share/fonts/truetype/
COPY ms/ /usr/share/fonts/truetype/
RUN luaotfload-tool --update
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
