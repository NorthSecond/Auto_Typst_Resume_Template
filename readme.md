# Typst 中文简历模板

## 介绍

一个借助 Github Actions 实现自动部署的 Typst 简历模板。效果参见 [中文版](/中文简历.pdf) 和 [英文版](/英文简历.pdf)。

### 字体

简历模板主要使用的是 **思源宋体**，由于 Typst 中英文字体混排会出现一定的排版问题，所以英文字体和数字也全部采用了思源宋体，对应的字体文件在 `fonts` 文件夹下，使用时并不需要进行安装。

### 证件照支持

> 目前没有解决插入证件照之后的一些小小的设计问题，所以暂时不支持插入证件照，如果将 `init` 函数中的 `pic_path` 设为非空值可能会出现一些小问题。

目前主要遇见的问题是 Typst 的元素没有找到一个像 LaTeX 一样浮动在页面之上指定位置的方法，因此如果插入图片的话可能会导致姓名不能居中等问题，目前在想办法使用指定size溢出的方式来解决这个问题。

### Github Actions

对于本地没有安装 Typst 的使用者，可以通过 Github Actions 实现自动部署。在每一次提交后，Github Actions 会自动运行 Typst 并将生成的 PDF Commit 到根目录中。

> Give the default GITHUB_TOKEN write permission to commit and push the changed files back to the repository.

## 使用方式

1. Fork 本项目
2. 修改 `src` 文件夹下的文件，

### 本地编译

在有 Typst 和 GNU Make 的本地环境中，可以通过 Typst 命令行工具进行编译。

项目提供的 Makefile 中包含了以下几个定义目标：

- `make all`：清理文件夹中的所有 .pdf 文件，然后编译中文和英文版本的简历文件；
- `make clean`：清理文件夹中的所有 .pdf 文件；
- `make zh`：编译中文版本的简历文件；
- `make en`：编译英文版本的简历文件；

### Github Actions

项目配置了自动部署的 Github Actions，可以在每次提交后自动运行 Typst （执行的命令是 `make all`）并将生成的 PDF Commit 到根目录中。

## TBD

- [ ] 英文版示例与字体
- [ ] 证件照插入的解决方案

