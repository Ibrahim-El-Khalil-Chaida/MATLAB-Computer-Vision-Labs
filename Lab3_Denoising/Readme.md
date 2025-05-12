# Lab 3 – Denoising with 2D Linear Filters & PSNR Evaluation

**Module**: Practical Work – Artificial Vision  
**Program**: M.Sc. Embedded Systems Electronics (ESE), USTO-MB  
**Semester**: 3 (2021–2022)  
**Language**: English (original in French)

---

## 🎯 Objectives

By completing this lab you will:
1. Add salt & pepper and Gaussian noise to a reference grayscale image.  
2. Design and apply 2D average and Gaussian filters (`fspecial`, `imfilter`).  
3. Visually evaluate filtering results via intensity profiles (`improfile`).  
4. Implement a custom PSNR function (`mypsnr`) and quantitatively assess filter performance.

---

## 🔧 Folder Contents

```

Lab3\_Denoising/
├─ README.md
├─ Fiche\_de\_TP-VA\_n°3.pdf     ← Original lab sheet in French&#x20;
├─ code/
│  ├─ lab3\_denoising.m        ← Main script for noise, filtering & PSNR
│  └─ mypsnr.m                ← Custom PSNR computation function
└─ results/                   ← Generated figures and PSNR CSV

````

---

## 🚀 Usage Instructions

1. **Open MATLAB** and add `Lab3_Denoising` to your path.  
2. **Change directory** to the code folder:  
 ```matlab
   cd('Lab3_Denoising/code');
 ```

3. **Run** the main script:

   ```matlab
   lab3_denoising;
   ```
4. **Inspect** results in `Lab3_Denoising/results`:

   * PNG figures for noisy inputs, filtered outputs, and intensity profiles.
   * `psnr_results.csv` summarizing PSNR values in dB.

---

## ⚙️ Requirements

* MATLAB R2020a or later
* Image Processing Toolbox

---

## 🤝 Notes

* Ensure `eight.tif` is accessible (e.g., MATLAB’s `imdemos` folder or project root).
* All scripts include detailed inline comments explaining each step.
* Feel free to adjust noise parameters or filter kernels to explore different denoising behaviors.
