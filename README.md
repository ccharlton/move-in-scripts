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
- [x] Developer list v1.0
- [x] Basic setup v1.1
- [x] Apps list v1.1
- [x] Script some of the optional stuff for fun
- [ ] Ponder our expanding universe

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

## SSH setup
Steps largely [taken from Github](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
1. Edit and run the following to generate the key.
```
ls -al ~/.ssh
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
eval "$(ssh-agent -s)"
```

2. Copy the contents of the id_rsa.pub file to your clipboard for pasting into Github and Hosting providers:
```
pbcopy < ~/.ssh/id_rsa.pub
```

3. Paste the following into `~/.ssh/config` (`vi ~/.ssh/config`). Edit the `IdentityFile` if you didn't use the default `~/.ssh/id_rsa` path.
```
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa
```

4. Run the following to add the key to the OS keychain agent:
```
ssh-add -K ~/.ssh/id_rsa
```
