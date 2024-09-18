# File Creation Script

This repository contains a Bash script that reads names from an input file and creates corresponding text files in an output directory.

It was created to simplify/automate generation of test files containing special characters taken from [big-list-of-naughty-strings](https://github.com/minimaxir/big-list-of-naughty-strings)

The script also adds the name of the input file as the content of each created file.

## Usage

1. Ensure you have a file with names (one per line) and save it as `names.txt` or any other name you prefer.
2. Run the script with the input file name as a parameter, for example:

```bash
./script.sh 01special-chars-RFC1738.txt


```

Output :

```shell

├── output
|  ├── LPT1.txt
|  ├── LPT2.txt
|  ├── LPT3.txt
|  ├── name#.txt
|  ├── name%.txt
|  ├── name&.txt
|  ├── name-.txt
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
|  ├── name.txt
```

    Replace `<input_file>` with the name of your input file.

## Features

- Removes carriage return characters from the input file.
- Ignores lines starting with the `#` symbol.
- Creates an output directory if it doesn't exist.
- Adds the name of the input file as the content of each created file.

## File names

Files names inside each file below can be used  to test character encoding and file input/output related features.

```shell
01special-chars-RFC1738.txt
02reserved-words.txt
03reserved-chars-win.txt
04cat-trouble.txt
05emoji.txt
06global.txt
07nonzip.txt

```

Example

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
