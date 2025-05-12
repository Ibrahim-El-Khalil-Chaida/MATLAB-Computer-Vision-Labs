# Lab 1 – Image Creation, Loading & Basic Analysis

**Module**: Practical Work – Artificial Vision  
**Program**: M.Sc. Embedded Systems Electronics (ESE), USTO-MB  
**Semester**: 3 (2021–2022)  
**Language**: English (original in French)

---

## 🎯 Objectives

By completing this lab you will:
1. Generate synthetic images:  
   - Binary checkerboard  
   - Grayscale gradient  
   - RGB checkerboard  
2. Load and display existing images using MATLAB functions (`imread`, `imshow`, `figure`, `subplot`).  
3. Inspect image metadata with `imfinfo`.  
4. Plot intensity histograms (`imhist`) and line profiles (`improfile`).  
5. Compute basic image statistics: mean intensity, standard deviation, and entropy.

---

## 📂 Folder Structure

```

Lab1\_ImageBasics/
├─ README.md               ← This document
├─ code/
│  ├─ create\_synthetic\_images.m
│  ├─ load\_and\_display\_images.m
│  └─ analyze\_rice\_image.m
└─ results/                ← Automatically generated figures

````

---

## 🔧 Prerequisites

- MATLAB R2020a or later  
- Image Processing Toolbox  

---

## 🚀 Usage

1. **Open MATLAB** and add the `Lab1_ImageBasics` directory to your path.  
2. **Navigate** into the `code` subfolder:

````matlab
   cd('Lab1_ImageBasics/code')
````

3. **Run** the scripts in order:

   ```Matlab
   create_synthetic_images;
   load_and_display_images;
   analyze_rice_image;
   ```
4. **Review** the output figures in the `results` folder.

---

## 📖 Description of Scripts

* **create\_synthetic\_images.m**

  * Builds and saves three patterns: a 2×2 binary checkerboard, a horizontal grayscale gradient, and a 2×2 RGB checkerboard.

* **load\_and\_display\_images.m**

  * Reads built-in demo images (`circles.tif`, `rice.png`, `coloredchips.png`), displays their metadata, creates a montage, and plots individual histograms.

* **analyze\_rice\_image.m**

  * Converts `rice.png` to double precision, displays the image alongside its histogram, computes mean intensity, contrast, and entropy, and plots the intensity profile of its central row.

---

## 🤝 Notes

* All scripts include detailed inline comments.
* Demo images are sourced from MATLAB’s `imdemos` folder.
* Feel free to modify parameters (e.g., image sizes, filter kernels) to explore additional effects.

```
```
