
<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="./../media/create-bulk-files.jpg" alt="⚙️ Wasteland File Creation Script ⚙️"></a>
</p>

<h3 align="center">⚙️ Wasteland File Creation Script ⚙️</h3>

<div align="center">

</div>

# ⚙️ Wasteland File Creation Script ⚙️

Welcome to the **Wasteland**, where only the toughest scripts survive! This repository contains a **Bash script** that reads names from an input file and forges them into text files in an output directory. Perfect for QAs and testers who need to automate the generation of test files with special characters. 🏜️💥

It was created to simplify/automate generation of test files containing special characters taken from [big-list-of-naughty-strings](https://github.com/minimaxir/big-list-of-naughty-strings)

## 🚀 Usage

1. **Prepare for Battle**: Ensure you have a file with names (one per line) and save it as `names.txt` or any other name you prefer.
2. **Run the Script**: Execute the script with the input file name as a parameter, for example:

```bash
./script.sh 01special-chars-RFC1738.txt
```

## 📂 Output

Your output directory will look like this:

```shell
├── output
|  ├── LPT1.txt
|  ├── LPT2.txt
|  ├── LPT3.txt
|  ├── name#.txt
|  ├── name%.txt
|  ├── name&.txt
|  ├── name-<>.txt
|  ├── name.txt
|  ├── name;.txt
|  ├── name=.txt
|  ├── <name@.txt>
|  ├── name[].txt
|  ├── name^.txt
|  ├── name`.txt
|  ├── name{.txt
|  ├── name}.txt
|  ├── name~.txt
|  ├── name".txt
```

Replace `<input_file>` with the name of your input file. 🛠️

## 🔥 Features

- **Strips Carriage Returns**: Removes those pesky carriage return characters from the input file.
- **Ignores Comments**: Skips lines starting with the `#` symbol.
- **Creates Output Directory**: Automatically creates an output directory if it doesn't exist.
- **File Content**: Adds the name of the input file as the content of each created file.

## 🏴‍☠️ File Names

The file names inside each file below can be used to test character encoding and file input/output related features. Perfect for surviving the digital wasteland! ⚔️

```shell
01special-chars-RFC1738.txt
02reserved-words.txt
03reserved-chars-win.txt
04cat-trouble.txt
05emoji.txt
06global.txt
07nonzip.txt
```

## 🛡️ Example

```shell
# 01special-chars-RFC1738.txt
# The following characters are allowed in Windows
space a
name-<>
name~
name"
name"
name#
name%
name~
name{
name}
name|
name
name^
name~
name[]
name`
name;
name?
name:
name@
name=
name&
```
