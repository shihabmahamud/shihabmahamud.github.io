---
title: "CPH Documentation"
description: Competitive Programming Helper offcial docs
date: 2021-03-09T10:09:41+06:00
author: "Shihab Mahamud"
image: "Competitive-Programming-img.png"
math:  
categories : [
    "Projects",
]
tags : [
    "Programming",
    "Competitive-programming",
    "Competitive-programming-helper",
]
draft: false
---

## Summary

Competitive Programming Helper (CPH) is a command line tool that automates many tasks for the Competitive Programmer. It's written in Bash shell scripting.

---

## Installation

### Installation on linux system

#### Step 1: Install dependence

If the dependence does not install in your system then you must install it. The dependence are `bash`, `curl` and `g++`

Debian/Ubuntu:

```zsh
sudo apt update
sudo apt install bash curl g++
```

Fadora/Centos:

```zsh
sudo dnf check-update
sudo dnf install bash curl g++
```

#### Step 2: Install the cph tools

```bash
curl -fLo cph https://raw.githubusercontent.com/shihabmahamud/cph/main/cph.sh
chmod +x cph
sudo mv cph /usr/bin/

```

#### Step 3: Copy your cp template into ~/cph_template

Then go to the your competitive programming template directory and then run `cph update yourCPTemplateName` like that

```bash
cph update cp_template.cpp
```

---

## Features

### 1. Create C/C++ file and copy your template

It creates a C or C++ file and copies the user Competitive Programming Template into it. Copy the template code from `~/cph_template` file. So, if you want to use this feature create the ~/cph_template file fllowing [Installation on linux system 
Step 3](#step-3-copy-your-cp-template-into-cph_template) with your template.

```bash
cph "filename.c++
```
OR
```bash
cph create "filename.c++"
```
Example:

```bash
cph myfile.c
```

**Note:** All these commands only work in bash shell. If you run this in other shell (like `zsh`) include `bash` command before any command like that:

```zsh
bash cph create "filename.c++"
```

### 2. Create C/C++ file, copy your template and open the file in [`vs code`](https://code.visualstudio.com) in one command

```bash
cph code "filename.c++"
```

<br>

### 3. Compiled and Run C/C++ file with one command

```bash
cph run "filename.cpp"
```

This command automatic Compiled spacifie file using `GNU Gcc Compiler` and run the Compiled binary

<br>

### 4. Automatic copy or update ~/.cph_template with Your template

```bash
cph update "templateName.cpp"
```

This command automatic copy the ~/.cph_temple with user template that user want

<br>

### 5. `git add .`, `git commit` and `git push` in one command

```bash
cph push
```

<br>

### 6. Add current time in your program file

```bash
cph time "programFile.cpp"
```

<br>
<br>


