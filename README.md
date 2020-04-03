# plaintext-library
A markdown-formatted plaintext ebook library with support for Kindle annotations

I wanted my Kindle highlights to be human and machine-readable text. This script takes a markdown copy of all your `.epub` books and encloses annotated text (from `My Clippings.txt`) in `==`, which can be read by a markdown reader (ex. [Typora](https://typora.io/))

## Dependencies

- You need [Calibre](https://github.com/kovidgoyal/calibre) for now. (sorry)
- [fzf](https://github.com/junegunn/fzf)
- [Typora](https://typora.io/) as your default markdown editor (Recommended)
- `exiftool`

## Installation and Setup

- Clone and run the install script:

  ```
  git clone "https://github.com/nerdynewt/plaintext-library.git" && bash plaintext-library/install.sh
  ```

- Add the path to your `epub` library in your `~/.bashrc` as `$BOOKER_LIB`:

  ```
  echo 'export BOOKER_LIB=~/path/to/Calibre\ Library' >> ~/.bashrc
  ```

- Now you can invoke the script using `booker` on your command line.

## Usage

### Refreshing your Library

```
booker -vr # -v for verbose
```

This scans your `$BOOKER_LIB` folder for `.epub` files and strips plaintext as `.md` files.

### Importing Kindle Annotations

Connect your Kindle via USB and make sure it's mounted.

```
booker -vi
```

This reads your annotations from `My Clippings.txt` 

### Read a book

You can read your (Kindle annotated) books by invoking `booker` without any argument, and choosing a book from the list given. This will open the book in your default markdown editor.

```
booker
```

## Screenshots

![Kindle Annotation](scrot_kindle.png?raw=true "Annotations on Kindle")

![Plaintext Annotation](scrot_typora.png?raw=true "Markdown Annotations")



## Todo

- [ ] Support for `.mobi` files
- [ ] Support for annotated notes
- [ ] JSON or XML based library indexing
- [ ] Alternative to Calibre `ebook-convert`
- [ ] Packaging?

