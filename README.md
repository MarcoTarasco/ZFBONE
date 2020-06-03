# ZFBONE 
![](icons/menu2.jpg) 



*Developed by Marco Tarasco & Fabrice Cordelières.*
## Introduction


ZFBONE is a FIJI-based toolset that provides tools needed for a rapid, reliable and semi-automatized morphometric analysis of zebrafish bone structures to identify compounds that have an effect on bone formation, mineralization or patterning in zebrafish. These tools are useful to screen/study compounds with bone anabolic effects (osteoactives) and bone toxic effects (osteotoxicants).

## The idea
The idea behind the development of ZFBONE it is simple!

We wanted to provide the zebrafish community with a set of semi-automatic tools to analyze the effects of bioactive compounds on several bone structures (e.g. operculum, caudal fin ray and scale). 

ZFBONE is:

- Easily implementable in any laboratory
- Use standard image formats (i.e. TIFF/BMP)
- It has a user-friendly interface
- It is developed in ImageJ/FIJI, therefore open-source and easy to modify
- It delivers final data in a simple format (.csv) and a graphical output for a posteriori confirmation of the analysis

## How to install/run it?
Download the file "**ZFBONE.ijm**" from the repository and save it in the Fiji folder for macros. 

File location is: Applications\Fiji\macros\toolsets\ **ZFBONE.ijm**


Open Fiji, go to the "More tools" menu and click on ">>" in the toolbar then select the option “ZFBONE”. 

ZFBONE toolbar will appear in the main Fiji toolbar.

*The same procedure can be used for ImageJ.*


## How to cite us?
Please cite us accordingly: **Manuscript just submitted!**

## Contact us
ZFBONE is only a starting point for the development of more sophisticated tools... send us feedbacks to improve the toolset. 

E-MAIL: **mtarasco@ualg.pt**

## How to use it?

ZFBONE toolbox proposes the following macros:

*	Operculum assay
*	Scales assay
*	Caudal fin assay
*	Ray bone intensity

 

***
###### OPERCULUM ASSAY ![](icons/Operculum_assay_logo.jpg) 




**Quick introduction**

The *operculum assay* was developed to assess either the operculum mineralized area in wild-type larvae stained with bone-specific dye (i.e. alizarin red S or calcein) or the bone cell content in transgenic larvae expressing fluorescent proteins. 

More info about the assay are available in the publication: 

Tarasco, M., Laizé, V., Cardeira, J., Cancela, M.L., Gavaia, P.J., 2017. The zebrafish operculum: a powerful system to assess osteogenic bioactivities of molecules with pharmacological and toxicological relevance. Comp. Biochem. Physiol. Part C 147, 45–52. 

**Imput data**

Depending on the type of analysis, 1 channel / 2 channels images (.tiff / .bmp) need to be open to start the analysis. Check in the folder **Test images** to download sample images and test the macro.

**Output data**

The macro will automatically create a folder (*"analized"*) in the same image directory which will contain the result table, a screenshot of the image analized showing the ROI selected and the ROI manager content in case the user wants to perform additional measuraments.

**How to use it?  Check the tutorial!**

[![](http://img.youtube.com/vi/KXP4lwZmuEU/0.jpg)](http://www.youtube.com/watch?v=KXP4lwZmuEU "Operculum assay")







***
###### SCALES ASSAY ![](icons/Scales_assay_logo.jpg)
**Quick introduction**

The *scale assay* was developed to automatically (after initial user selection) analyse individual or multiple scales to evaluate osteoclast activity (scales stained through TRAP enzymatic assay) or demineralized bone (scales stained through Von Kossa).

From each scale the macro will return: scale area, circularity, aspect ratio, TRAP positive area/Demineralized area (dependign on the analysis) and a normalized TRAP positive area/Demineralized area over the total scale area. 

More info about the assay area available in the publication: 

De Vrieze, E., Van Kessel, M. A. H. J., Peters, H. M., Spanings, F. A. T., Flik, G., & Metz, J. R. (2014). Prednisolone induces osteoporosis-like phenotype in regenerating zebrafish scales. Osteoporosis International, 25(2), 567-578.


**Imput data**

The macro needs an open image (RGB color image) to start the analysis. Check in the folder **Test images** to download sample images and test the macro.

**Output data**

The macro will automatically create a folder (*"analized"*) in the same image directory which will contain the result table, a screenshot of the image analized showing the ROI selected and the ROI manager content in case the user wants to perform additional measuraments.


**How to use it?  check the tutorial!**

**SOON AVAILABLE...**



***
###### CAUDAL FIN ASSAY ![](icons/Caudal_fin.jpg)
**Quick introduction**

The *caudal fin assay* was developed to assess mineral content, ray morphometry or TRAP activity in regenerated caudal fin stained with bone specific staining (Alizarin Red or calcein) or TRAP. 

More info about the assay area available in the publication: 

Cardeira, J., Gavaia, P.J., Fernández, I., Cengiz, I.F., Moreira-Silva, J., Oliveira, J.M., Reis, R.L., Cancela, M.L., Laizé, V., 2016. Quantitative assessment of the regenerative and mineralogenic performances of the zebrafish caudal fin. Sci. Rep. 6, 39191.

**Imput data**

The macro will ask the user to first open a brightfield image and then a fluorescent image (i.e. the correspondent fluorescent image). Both images can be of 1 channel or 3. accepted formats: .tiff / .bmp Check in the folder **Test images** to download sample images and test the macro.


**Output data**

The macro will automatically create a folder (*"analized"*) in the same image directory which will contain the result table, a screenshot of the image analized showing the ROI selected and the ROI manager content in case the user wants to perform additional measuraments.

**How to use it?  Check the tutorial!**

**SOON AVAILABLE...**

***
###### RAY BONE INTENSITY ![](icons/ray_bone_density.jpg)
**Quick introduction**

The *ray bone intensity assay* was developed to assess caudal fin ray intensity from imaged previously acquired through micro-computed tomography (microCT). The user in the menu, can choose either *Ray analysis* which allows the user to collect pixel intensity data from each ray (upon manual selection), or *Data pooling* option which will open the results previously collected (with Ray analysis) and allow the user to compare different caudal fins in the same intensity plot (for example control vs treated fins).


**Imput data**

The macro will ask the user to first open an image (macro developed on microCT aquisitions saved ). Check in the folder **Test images** to download sample images and test the macro.

**Output data**

The macro will automatically create a folder ("analized") in the same image directory which will contain the result table. In the result table, each ray intensity profile will be saved as raw data, aligned data and the normalized to 1 data. In the folder will be saved also the analysed image showing the rays selected, the respectively intensity plot and the ROI manager content in case the user wants to perform additional measuraments.


**How to use it?  Check the tutorial!**

**SOON AVAILABLE...**


***
# Acknowledgements
We are thankfull for the support of the following labs & institutions





 

![](icons/Bioskel_logo.jpg)
![](http://www.bic.u-bordeaux.fr/wp-content/uploads/2019/02/logo-FBI-BIC-300p-v0.png)
![](http://eubias.org/NEUBIAS/wp-content/uploads/2018/04/Webbanner_logosNEUBIAS-COST-sm.jpg)
	

