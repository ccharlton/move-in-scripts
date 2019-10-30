# My Quick Scripts

- Move-in script(s)
- Environment/Workflow/Tools setup scripts

> Note: Mac workstations may need Xcode Tools pre-installed for other software to do their thing. Run `xcode-select --install`.

| Platform | Support |
| ----------- | ----------- |
| Mac OS | Yes |
| Linux | No |
| Windows | No |

-----

## Todo(s)

- [x] Basic setup v1.0
- [x] Apps list v1.0
- [ ] Developer list v1.0
- [ ] Basic setup v1.1
- [ ] Apps list v1.1

-----

## Get Started

#### Basic setup
Run the following script(s) first:
```
./work.sh
```
#### Homebrew + Software/Apps
1. Edit `homebrew-formulas.sh` and `homebrew-apps.sh` to include/exclude desired apps.
2. Run the [Homebrew](https://brew.sh) setup script, and let the list of software do its thing.
```
./homebrew.sh
```

### Optional setup
Copy the following files for each desired setup.

##### nano
```
git clone git@github.com:scopatz/nanorc.git ~/.nano
cp ./Templates/.nanorc ~/
```

##### vi/vim
```
```

## Legacy stuff (pre-2019)
Ruby addons (many have moved elsewhere in the stack)
```
./ruby.sh
```