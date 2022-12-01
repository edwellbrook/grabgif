# grabgif

Robb wanted a way to programatically copy a gif file to the macos pasteboard/clipboard from a given file path: https://rknight.me/how-not-to-copy-gif-to-clipboard-programatically/

I'm guessing other tools would go via NSImage or something which means only the first frame would be copied (if at all).

Instead, this tool sets the pasteboard with a fileURL which apps will then resolve and use.

`grabgif` doesn't care about file types or anything like that, so will work with _any_ file (gif, image, document, etc.).

## Usage

```
grabgif <path to file>

# or...
grabgif /Users/edwellbrook/Downloads/dance.gif
```

If you have the tool stored in your "Documents" folder, you might use it like:

```
/Users/edwellbrook/Documents/grabgif <path to file>
```

## How to get it

Clone the repo and then build:

```
swift build -c release
```

Or use the prebuilt version [here](https://github.com/edwellbrook/grabgif/releases/download/x/grabgif.zip).