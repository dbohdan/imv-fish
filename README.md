# imv-fish

**imv-fish** is a clone of the `imv(1)` command from
[renameutils](https://www.nongnu.org/renameutils/)
written in pure
[fish shell](https://fishshell.com).
It is useful on systems
with a port of fish but not renameutils,
like OpenBSD.

## Contents

- [Requirements](#requirements)
- [Usage](#usage)
- [Installation](#installation)
- [Alternatives](#alternatives)
- [License](#license)

## Requirements

imv-fish requires fish 3.4 or later.
Earlier versions will not work.

## Usage

```none
imv path
```

## Installation

### Using Fisher

To install imv-fish with
[Fisher](https://github.com/jorgebucaran/fisher),
run the command:

```fish
fisher install dbohdan/imv-fish
```

### Manual

1. Clone the repository
   or download and extract a source archive.
2. Run `install.fish`.

## Alternatives

- `vidir(1)` from
  [moreutils](https://joeyh.name/code/moreutils/).
  The moreutils collection is packaged for OpenBSD.

## License

MIT.
