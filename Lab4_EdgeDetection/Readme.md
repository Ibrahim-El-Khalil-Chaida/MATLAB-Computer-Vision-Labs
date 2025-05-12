# Lab 4 – Edge & Contour Detection

**Module**: Practical Work – Artificial Vision  
**Program**: M.Sc. Embedded Systems Electronics (ESE), USTO-MB  
**Semester**: 3 (2021–2022)  
**Language**: English (original in French)

---

## 🎯 Objectives

By completing this lab you will:
1. **Preprocess** a raw image by converting to grayscale, enhancing contrast via a custom RC filter, and denoising with a 3×3 averaging filter.  
2. **Compute** horizontal and vertical gradients using Sobel masks and form the gradient magnitude.  
3. **Extract** object contours via simple thresholding at multiple levels (0.1, 0.3, 0.6).  
4. **Compare** MATLAB’s built-in edge operators (`Prewitt`, `Sobel`, `Canny`, `LoG`) interactively. :contentReference[oaicite:1]{index=1}

---

## 🔧 Folder Contents

```

Lab4\_EdgeDetection/
├─ README.md
├─ Fiche\_de\_TP-VA\_n°4.pdf      ← Original lab sheet in French&#x20;
├─ im\_tp4.jpg                  ← Sample test image
├─ code/
│  └─ lab4\_edge\_detection.m    ← Main script implementing all parts
└─ results/                    ← Figures and binary contour images

````

---

## 🚀 Usage Instructions

1. **Open MATLAB** and add the `Lab4_EdgeDetection` directory to your path.  
2. **Navigate** into the `code` subfolder:
```matlab
   cd('Lab4_EdgeDetection/code');
````

3. **Run** the main script:

   ```matlab
   lab4_edge_detection;
   ```
4. **Inspect** the outputs in `Lab4_EdgeDetection/results`:

   * `preprocessing.png`
   * `sobel_gradients.png`
   * `gradient_magnitude.png`
   * `simple_thresholding.png` (and individual `contours_S*.png`)
   * `edge_prewitt.png`, `edge_sobel.png`, `edge_canny.png`, `edge_log.png` (depending on selection)

---

## ⚙️ Requirements

* MATLAB R2020a or later
* Image Processing Toolbox

---

## 🤝 Notes

* The RC filter kernel is defined as:

  ```matlab
  RC = [1 -3  1; -3  9 -3; 1 -3  1];
  ```
* Simple threshold values illustrate how contour detection varies with threshold .
* The interactive menu enables quick comparison of different edge operators.
