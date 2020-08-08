# My Quick Scripts

- Move-in script(s)
- Environment/Workflow/Tools setup scripts

> Note: Mac workstations usually need Xcode Tools pre-installed for other software to do their thing.
> 
> Run `xcode-select --install`.
> If Xcode is installed, you can run `xcodebuild -license accept`.

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
- [ ] Script some of the optional stuff for fun

-----

## Get Started

### Pre-setup
Edit the following files to include/exclude software.
 - `homebrew-formulas.sh`
 - `homebrew-apps.sh` 

### Start
Run the following script first:
```
./start.sh
```

### Additional setup
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
