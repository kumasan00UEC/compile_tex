# tex のコンパイル

lualatex [file] -file-line-error -interaction=nonstopmode -halt-on-error
biber [file]
lualatex [file] -file-line-error -interaction=nonstopmode -halt-on-error
lualatex [file] -file-line-error -interaction=nonstopmode -halt-on-error
