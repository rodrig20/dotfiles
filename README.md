# Dotfiles

Personal configurations for my Arch Linux setup, focused on a simple, elegant workflow consistent with the Lavanda Dark look.

---

## Essential Software & Environment

| Component         | Description                                                                 |
|-------------------|-----------------------------------------------------------------------------|
| **Arch Linux**    | Base operating system, known for its flexibility                            |
| **[Hyprland](https://github.com/hyprwm/Hyprland)** | Modern, highly configurable Wayland compositor         |
| **zsh**           | Powerful shell with advanced features                                       |
| **[ghostty](https://github.com/ghostty-org/ghostty)** | Modern, fast terminal (GPU accelerated)                  |
| **[dolphin](https://github.com/KDE/dolphin)** | Modern and intuitive file manager                                           |
| **[rofi-wayland](https://github.com/in0ni/rofi-wayland)** | Application launcher and menu for Wayland          |
| **[waybar](https://github.com/Alexays/Waybar)**     | Modular status bar for Wayland                                |
| **[wlogout](https://github.com/ArtsyMacaw/wlogout)** | Graphical logout menu for Wayland                        |
| **[micro](https://github.com/zyedidia/micro)**       | Minimalist terminal text editor                             |

---

## Themes & Visuals

| Type               | Name                                                                 |
|--------------------|----------------------------------------------------------------------|
| **GTK/QT Theme**   | [Lavanda GTK](https://github.com/vinceliuice/Lavanda-gtk-theme) / [Lavanda KDE](https://github.com/vinceliuice/Lavanda-kde) |
| **Icons**          | [Vimix Icon Theme (Amethyst)](https://github.com/vinceliuice/Vimix-icon-theme) |
| **SDDM Theme**     | [Lunar Purple](https://github.com/rodrig20/lunar-purple-sddm)        |

---

## Structure

Files are organized to ease management and application of dotfiles via *symlinks*.
I recommend using `scripts/link_dotfiles.sh` or a dedicated tool like stow.

---

## How to apply

```bash
# Clone to ~/.dotfiles or wherever you prefer
git clone https://github.com/rodrig20/dotfiles.git ~/.dotfiles

# Enter the folder and run the setup script
cd ~/.dotfiles
./install.sh
```
