# Typst 中文简历模板

## 介绍

一个借助 Github Actions 实现自动部署的 Typst 简历模板。效果如下（也可参考 Release 页面中的 PDF 文件）:

|  [中文示例](https://github.com/NorthSecond/Auto_Typst_Resume_Template/releases/download/Release-template-1.0.0/default.pdf) |  [英文示例](https://github.com/NorthSecond/Auto_Typst_Resume_Template/releases/download/Release-template-1.0.0/Resume.pdf)| 
|:---:|:---:|
| ![](https://github.com/NorthSecond/Auto_Typst_Resume_Template/blob/main/docs/Chinese.png?raw=true) | ![](https://github.com/NorthSecond/Auto_Typst_Resume_Template/blob/main/docs/English.png?raw=true)| 

### 字体

中文简历使用的是 **思源宋体**，字体文件在 `fonts` 文件夹下，使用时并不需要进行安装；英文简历模板使用 Centaur 字体。

### 证件照支持（暂无）

> 目前没有解决插入证件照之后的一些小小的设计问题，所以暂时不支持插入证件照，如果将 `init` 函数中的 `pic_path` 设为非空值可能会出现一些小问题。

目前主要遇见的问题是 Typst 的元素没有找到一个像 LaTeX 一样浮动在页面之上指定位置的方法，因此如果插入图片的话可能会导致姓名不能居中等问题，目前在想办法使用指定size溢出的方式来解决这个问题。

### Github Actions

对于本地没有安装 Typst 的使用者，可以通过 Github Actions 实现自动部署。在每一次提交后，Github Actions 会自动运行 Typst 并将生成的 PDF 文件打包提供下载。

## 使用方式

1. 在仓库的右上角点击 "Use this template" 按钮，选择新建一个您的仓库；
2. （可选）在 `Github Actions` 控制界面打开本仓库的 Github Action 功能；
3. 修改 `src` 文件夹下的文件为你的简历内容。

### 本地编译

在有 Typst 和 GNU Make 的本地环境中，可以通过 Typst 命令行工具进行编译。

项目提供的 Makefile 中包含了以下几个定义目标：

- `make all`：清理文件夹中的所有 .pdf 文件，然后编译中文和英文版本的简历文件；
- `make clean`：清理文件夹中的所有 .pdf 文件；
- `make zh`：编译中文版本的简历文件；
- `make en`：编译英文版本的简历文件；

### Github Actions

项目配置了自动部署的 Github Actions，可以在每次提交后自动运行 Typst （执行的命令是 `make all`）并将生成的 PDF 文件打包提供下载。可以在 `Actions` 标签页查看运行结果，并在对应运行时的 `Summary` 页面的 `Artifacts` 部分下载生成的 PDF 文件压缩包。

![](https://github.com/NorthSecond/Auto_Typst_Resume_Template/blob/main/docs/Action.png?raw=true)

### Github Release

项目配置了 Github Release，对于正式版本的发布，使用 `git tag` 功能打上版本号标签，Github Actions 会自动将生成的 PDF 文件发布到 Github Release 页面。

> 请注意，使用 `git tag` 功能时，需要在本地使用 `git push --tags` 命令将标签推送到远程仓库。

### Typst Web

我制作了一个 typst.app 上的在线项目，[链接](https://typst.app/project/r4XMUB3ENQUH7zWiuK7_tO)。但是由于字体不太好上传，所以暂时还不是特别推荐。

## TBD

- [x] 英文版示例与字体
- [ ] 证件照插入的解决方案
