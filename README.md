# MATLAB Computer Vision Labs – ESE Master’s Program (USTO-MB)

**Faculty**: Electrical Engineering, Department of Electronics  
**Degree**: Master’s in Embedded Systems Electronics (ESE), Semester 3 (2021–2022)  
**Module**: Practical Work – Artificial Vision  
**Language**: English (original labs in French)

---

## 📖 Overview

This repository collects five progressive laboratory exercises designed to introduce and deepen your understanding of computer vision concepts using MATLAB. Starting from synthetic image generation and basic display routines, you will advance through histogram manipulation, noise filtering, edge detection, segmentation, and morphological analysis, culminating in a simple object-recognition pipeline.

---

## ⚙️ Prerequisites

- MATLAB R2020a or later  
- Image Processing Toolbox  
- Basic MATLAB scripting skills  
- Understanding of digital image fundamentals (pixel representation, grayscale vs. color)

---

## 📂 Repository Structure

```

/
├─ README.md                     ← Project Overview
├─ Lab1_ImageBasics/             ← Lab 1: Image creation, loading & analysis
│   ├─ Fiche_de_TP-VA_n°1.pdf     ← Original lab PDF (French)
│   ├─ code/                      ← MATLAB scripts
│
├─ Lab2_HistogramManipulation/   ← Lab 2: Type conversion & histogram processing
│   ├─ Fiche_de_TP-VA_n°2.pdf
│   ├─ code/
│
├─ Lab3_Denoising/               ← Lab 3: 2D linear filtering & PSNR evaluation
│   ├─ Fiche_de_TP-VA_n°3.pdf
│   ├─ code/
│
├─ Lab4_EdgeDetection/           ← Lab 4: Pre-processing & contour detection
│   ├─ Fiche_de_TP-VA_n°4.pdf     ← Original lab PDF (French)
│   ├─ im_tp4.jpg                 ← Sample image for edge detection
│   ├─ code/
│
├─ Lab5_Segmentation/            ← Lab 5: Thresholding & mathematical morphology
│   ├─ Fiche_de_TP-VA_n°5.pdf
│   ├─ code/
└─
````

---

## 🔍 Lab Summaries

### Lab 1 – Image Creation, Loading & Basic Analysis  
- **Goals**:  
  1. Generate synthetic images (binary checkerboard, grayscale gradient, RGB checkerboard).  
  2. Load and display built-in demo images (`circles.tif`, `rice.png`, `coloredchips.png`).  
  3. Query image metadata with `imfinfo`.  
  4. Plot histograms (`imhist`), intensity profiles (`improfile`), and compute luminance (`mean2`), contrast (`std2`), and entropy (`entropy`). :contentReference[oaicite:0]{index=0}:contentReference[oaicite:1]{index=1}

### Lab 2 – Type Conversion & Histogram Manipulation  
- **Goals**:  
  1. Convert images between `uint8` and `double` (`im2double`).  
  2. Convert RGB to grayscale (`rgb2gray`), display individual color channels and their histograms.  
  3. Binarize via thresholding (`im2bw`).  
  4. Normalize histograms (`imadjust`) and equalize histograms (`histeq`).  
  5. Analyze effects on luminance and contrast. :contentReference[oaicite:2]{index=2}:contentReference[oaicite:3]{index=3}

### Lab 3 – Denoising via 2D Linear Filters  
- **Goals**:  
  1. Add salt-&-pepper and Gaussian noise to a reference grayscale image (`imnoise`).  
  2. Design mean and Gaussian filters (`fspecial`), apply via `imfilter`.  
  3. Visually compare filtered outputs with intensity profiles (`improfile`).  
  4. Implement and compute PSNR (`mypsnr`) to quantitatively assess filtering quality. :contentReference[oaicite:4]{index=4}:contentReference[oaicite:5]{index=5}

### Lab 4 – Edge & Contour Detection  
- **Sample**: `im_tp4.jpg` – an image of assorted metallic objects.  
- **Goals**:  
  1. Pre-process: convert to grayscale, enhance contrast with a custom RC filter, denoise with a 3×3 averaging filter.  
  2. Compute horizontal/vertical gradients via Sobel masks, normalize with `mat2gray`, and visualize gradient magnitude.  
  3. Extract contours by simple thresholding on the gradient magnitude.  
  4. Implement an interactive menu to compare built-in edge operators (`Prewitt`, `Sobel`, `Canny`, `LoG` via `edge`). :contentReference[oaicite:6]{index=6}:contentReference[oaicite:7]{index=7}

### Lab 5 – Region Segmentation & Mathematical Morphology  
- **Goals**:  
  1. Analyze histogram modes to choose an initial threshold; segment ROI vs. background (`im2bw`, `graythresh`).  
  2. Add salt-&-pepper noise, filter with a Gaussian kernel; compare simple vs. Otsu thresholding.  
  3. Clean up segmentation with morphological opening/closing (`strel`, `imopen`, `imclose`).  
  4. Label connected components (`bwlabel`), visualize in false color (`label2rgb`), and count objects. :contentReference[oaicite:8]{index=8}:contentReference[oaicite:9]{index=9}

---
