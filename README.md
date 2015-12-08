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
  - Adjust the RGB values of popular colors to find what you want
  - Search for colors with certain hue

## Control Flow
- The app will open on the Colors tab
  - Colors tab
    - Displays popular colors
    - Search bar to search by keyword
    - Clicking on a color shows an enlarged swatch and relevant info
      - Adjust the RGB values to find similar shades
  - Palettes tab
    - Displays popular palettes
    - Search bar to search by keyword
    - Clicking on a palette shows enlarged swatches and relevant info

## Implementation
### Model
  - Color.swift
  - Palette.swift

### View
  - ColorTableView
  - ColorView
  - PaletteTableView
  - PaletteView

### Controller
  - ColorListViewController
  - ColorViewController
  - PaletteListViewController
  - PaletteViewController

