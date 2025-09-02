# Personal Notes

## Audio Troubleshooting

In some cases, sound issues can be resolved by adding the following line to
`/etc/modprobe.d/alsa-base.conf`:
```
options snd-hda-intel
```
## App Config

### VSCode

Add `"password-store": "gnome-libsecret"`, to `argv.json` on `.vscode` folder
