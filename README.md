# PLTR

## Authors
- Monica Shih
- Jasmine Giang

## Purpose
PLTR provides a platter of palettes for designers that are indecisive

## Features
- View popular color palettes currated online by designers
  - View hex codes of the colors in a palette
  - Search for palette with certain hue
- View popular colors
  - View hex code of the color
  - Search for colors with certain hue

## Control Flow
- The app will open with a pretty splash page and two tabs
  - Colors tab
    - Displays popular colors
    - Search bar to search by hue
    - Clicking on a color shows an enlarged swatch and its hex code
  - Palettes tab
    - Displays popular palettes
    - Search bar to search by hue
    - Clicking on a palette shows enlarged swatches and corresponding hex codes

## Implementation
### Model
  - Color.swift
  - Palette.swift

### View
  - ColorListTableView
  - ColorView
  - PaletteListTableView
  - PaletteView

### Controller
  - ColorListTableViewController
  - PaletteListTableViewController

