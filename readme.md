# Typst 中英双语简历模板

## 介绍

一个可借助 Github Actions 或 Typst 官网实现自动编译的 Typst 中文/英文双语简历模板（**无需本地环境**）。效果如下（也可参考 Release 页面中的 PDF 文件）:

|  [中文示例](https://github.com/NorthSecond/Auto_Typst_Resume_Template/releases/download/v2.1.0/default.pdf) |  [英文示例](https://github.com/NorthSecond/Auto_Typst_Resume_Template/releases/download/v2.1.0/Resume.pdf)| 
|:---:|:---:|
| ![](/docs/Chinese.png?raw=true) | ![](/docs/English.png?raw=true)| 

### 字体

中文简历使用的是 **思源宋体** 的谷歌版本，对于在线使用的用户来说，并不需要进行安装操作，对于本地使用的用户，可以参照下一节中的内容进行字体的安装；英文部分使用 Centaur 字体。

### 证件照支持

在编写建立时可选择是否插入证件照。在编写简历的过程中，如果不需要插入证件照，将 `pic_path` 参数设置为空即可。如果需要插入证件照，将 `pic_path` 参数设置为证件照的路径即可。


## 使用方式

### Typst Web（推荐）

我制作了一个 [typst.app](https://typst.app) 上的在线项目，[链接在此](https://typst.app/project/r4XMUB3ENQUH7zWiuK7_tO)。可以复制该项目到自己的账号中进行使用，即可完成在线编辑和即时预览。

## Github 仓库

1. 在仓库的右上角点击 "Use this template" 按钮，选择新建一个您的仓库；
2. （可选）在 `Github Actions` 控制界面打开本仓库的 Github Action 功能；
3. 修改 `src` 文件夹下的文件为你的简历内容。

### 本地编译

#### 字体安装

对于本地没有安装谷歌版思源宋体 （`Noto Serif CJK SC`）的用户，需要下载改字体才能正常编译中文版简历，可选只在本仓库使用或者全局安装。下载链接：[Noto Serif CJK SC](https://fonts.google.com/noto/specimen/Noto+Serif+SC)，对于访问谷歌受限的用户，可以在国内镜像站如 [清华大学镜像](https://mirrors.tuna.tsinghua.edu.cn/github-release/googlefonts/noto-cjk/Noto%20Serif%20CJK%20Version%202.002%20(OTF,%20OTC,%20Super%20OTC,%20Subset%20OTF,%20Variable%20OTF_TTF)/09_NotoSerifCJKsc.zip) 下载。

对于只在本项目中使用该字体的用户，可以将字体文件放在项目根目录下，`Makefile` 中已经制定了编译的字体路径。

对于全局安装的用户，Windows 用户可以右键字体文件选择 “安装” 或者 “为所有用户安装”。 Linux 用户可以检查自己的发行版包管理器是否有 `fonts-noto-cjk` 或者 `fonts-noto-cjk-extra` 这两个包，如果有的话可以直接安装。安装后请使用 `fc-cache -fv` 命令刷新字体缓存。

#### 编译

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


## TBD

- [x] 英文版示例与字体
- [x] 证件照插入的解决方案

---

本项目在 v2.1.0 后使用 [CC BY-NC 4.0 协议](https://creativecommons.org/licenses/by-nc/4.0/deed.zh-hans)开源，请在遵守协议的前提下自由使用，但不得用于商业用途。
