# Lab 5 – Region Segmentation & Mathematical Morphology

**Module**: Practical Work – Artificial Vision  
**Program**: M.Sc. Embedded Systems Electronics (ESE), USTO-MB  
**Semester**: 3 (2021–2022)  
**Language**: English (original in French)

---

## 🎯 Objectives

By completing this lab you will:
1. Analyze an image histogram to identify its modes.  
2. Perform manual thresholding and Otsu’s optimal thresholding (`graythresh`).  
3. Separate region of interest (ROI) and background by binarization.  
4. Clean up segmentation using morphological opening/closing (`strel`, `imopen`, `imclose`).  
5. Label connected components (`bwlabel`) and visualize in false color (`label2rgb`). :contentReference[oaicite:2]{index=2}:contentReference[oaicite:3]{index=3}

---

## 🚀 Usage Instructions

1. **Open MATLAB** and add `Lab5_Segmentation` to your path.  
2. **Navigate** into the `code` folder:
```matlab
   cd('Lab5_Segmentation/code');
````

3. **Run** the main script:

   ```matlab
   lab5_segmentation;
   ```
4. **Inspect** outputs in `Lab5_Segmentation/results`:

   * `filtered_histogram.png`
   * `thresholding.png`
   * `labeled_objects.png`

---

## ⚙️ Requirements

* MATLAB R2020a or later
* Image Processing Toolbox

---

## 🤝 Notes

* Histogram modes are estimated via peak detection in the script.
* Manual threshold `S1` is set to 0.5 by default; feel free to adjust.
* A disk structuring element of radius 2 is used for morphological operations.
* The final count of labeled objects is printed to the console.
