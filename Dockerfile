FROM texlive/texlive:latest
# RUN mkdir ./out
# COPY test.tex ./test.tex
# COPY test.bib ./test.bib
COPY entrypoint.sh /entrypoint.sh
COPY TimesNewRoman/ /usr/share/fonts/truetype/
COPY ms/ /usr/share/fonts/truetype/
RUN luaotfload-tool --update
RUN echo "openout_any = a" >> /usr/local/texlive/2025/texmf.cnf
RUN chmod +x /entrypoint.sh
RUN echo ${PWD}
ENTRYPOINT ["/entrypoint.sh"]
