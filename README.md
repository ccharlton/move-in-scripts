# My Quick Scripts

- Move-in script(s)
- Environment/Workflow/Tools setup scripts

> Note: Mac workstations may need Xcode Tools pre-installed for other software to do their thing. Run `xcode-select --install`.

-----

## Get Started

1. Edit `homebrew-formulas.sh` and `homebrew-apps.sh` to include/exclude desired apps.
2. Run the [Homebrew](https://brew.sh) setup script, and let the list of software do its thing.
```
./homebrew.sh
```

### Optional
Copy the following files for each desired setup.

##### nano
```
git clone git@github.com:scopatz/nanorc.git ~/.nano
cp ./Templates/.nanorc ~/
```

##### vi/vim
```
```

## Legacy
Ruby addons (many have moved elsewhere in the stack)
```
./ruby.sh
```