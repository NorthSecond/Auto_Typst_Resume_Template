# Typst Bilingual Resume Template

**[中文版本 / Chinese Version](./readme-zh.md)**

## Introduction

A Typst bilingual (Chinese/English) resume template that can be automatically compiled using GitHub Actions or Typst's official website (**no local environment required**). Preview examples below (also available as PDF files in the Release section):

|  [Chinese Example](https://github.com/NorthSecond/Auto_Typst_Resume_Template/releases/download/v2.1.0/default.pdf) |  [English Example](https://github.com/NorthSecond/Auto_Typst_Resume_Template/releases/download/v2.1.0/Resume.pdf)| 
|:---:|:---:|
| ![](/docs/Chinese.png?raw=true) | ![](/docs/English.png?raw=true)| 

### Fonts

The Chinese resume uses the Google version of **Noto Serif CJK SC** (Source Han Serif). For online users, no installation is required. For local users, please refer to the font installation section below. The English version uses the Centaur font.

### Profile Photo Support

You can optionally include a profile photo in your resume. If you don't need a profile photo, simply set the `pic_path` parameter to empty. If you want to include one, set the `pic_path` parameter to your photo's file path.

## Usage

### Typst Web (Recommended)

I've created an online project on [typst.app](https://typst.app), [available here](https://typst.app/project/r4XMUB3ENQUH7zWiuK7_tO). You can copy this project to your own account for online editing and real-time preview.

### Using This GitHub Repository

1. Click the "Use this template" button in the top-right corner of this repository to create your own repository;
2. (Optional) Enable GitHub Actions for this repository in the `Actions` settings;
3. Modify the files in the `src` folder with your resume content.

### Local Compilation

#### Font Installation

For users who don't have the Google version of Noto Serif CJK SC installed locally, you'll need to download this font to properly compile the Chinese resume. You can choose to install it only for this repository or globally.

Download link: [Noto Serif CJK SC](https://fonts.google.com/noto/specimen/Noto+Serif+SC)

For users with restricted Google access, you can download from domestic mirror sites such as [Tsinghua University Mirror](https://mirrors.tuna.tsinghua.edu.cn/github-release/googlefonts/noto-cjk/Noto%20Serif%20CJK%20Version%202.002%20(OTF,%20OTC,%20Super%20OTC,%20Subset%20OTF,%20Variable%20OTF_TTF)/09_NotoSerifCJKsc.zip).

**For project-only use**: Place the font files in the project root directory. The `Makefile` already specifies the font path for compilation.

**For global installation**: 
- **Windows users**: Right-click the font file and select "Install" or "Install for all users"
- **Linux users**: Check if your distribution's package manager has `fonts-noto-cjk` or `fonts-noto-cjk-extra` packages. If available, install directly. After installation, run `fc-cache -fv` to refresh the font cache.

#### Compilation

In a local environment with Typst and GNU Make installed, you can compile using the Typst command-line tool.

The provided Makefile includes the following targets:

- `make all`: Clean all .pdf files in the folder, then compile both Chinese and English resume versions
- `make clean`: Clean all .pdf files in the folder
- `make zh`: Compile the Chinese version of the resume
- `make en`: Compile the English version of the resume

### GitHub Actions

The project is configured with automated GitHub Actions that run Typst (executing `make all`) after each commit and package the generated PDF files for download. You can view the results in the `Actions` tab and download the generated PDF archive from the `Artifacts` section of the corresponding run's `Summary` page.

![](https://github.com/NorthSecond/Auto_Typst_Resume_Template/blob/main/docs/Action.png?raw=true)

### GitHub Releases

The project is configured for GitHub Releases. For official version releases, use the `git tag` feature to create version tags, and GitHub Actions will automatically publish the generated PDF files to the GitHub Release page.

> **Note**: When using `git tag`, remember to use `git push --tags` locally to push the tags to the remote repository.

## Roadmap

- [x] English version examples and fonts
- [x] Profile photo insertion solution

---

This project is open-sourced under the [CC BY-NC 4.0 License](https://creativecommons.org/licenses/by-nc/4.0/) from version v2.1.0 onwards. Please use freely while adhering to the license terms, but commercial use is not permitted.
