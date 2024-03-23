# Created by: yangyf83 at 2023/10/09

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
cur_makefile_path := $(dir $(mkfile_path))

all: clean zh en

clean:
	find . -name "*.pdf"  | xargs rm -f

zh:
	typst compile --font-path ./fonts --root $(cur_makefile_path) src/chinese.typ 个人简历.pdf

en:
	typst compile --font-path ./fonts --root $(cur_makefile_path) src/english.typ Resume.pdf

build: all

.PHONY: all