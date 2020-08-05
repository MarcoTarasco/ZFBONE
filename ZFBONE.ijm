/*
ZFBONE - Version 1.0                
DEVELOPERS: Marco Tarasco & Fabrice Cordelières                                              
EMAIL: marcotar90@gmail.com & fabrice.cordelieres@u-bordeaux.fr                              
LAST EDITED: August 5th,2020
*/


macro "ZFBONE Action Tool - C012D00D01D02D06D08D09D10D13D15D16D20D23D24D25D30D37D40D43D50D55D56D57D60D64D65D67D70D71D72D74D77D79D80D81D82D84D85D86D87D89D90Da0Db0Db3Db6Db7Db8Db9Dc0Dc6Dd0Dd3Dd4Dd5Dd6De0De3Df0Df1Df2Cf00D11D12D17D18D19D21D22D26D27D28D29D31D32D35D36D38D39D41D42D44D45D48D49D51D52D53D54D58D59D61D62D63D68D69D91D92D93D94D95D96D97D98D99Da1Da2Da3Da4Da5Da6Da7Da8Da9Db1Db2Db4Db5Dc1Dc2Dc4Dc5Dd1Dd2De1De2C112D03D07D33D34D46D47D73D78D83D88Dc3Df3CfffD0aD1aD1cD1dD1eD2aD2cD2eD3aD3dD4aD4bD4cD4dD4eD4fD5aD6aD6cD6dD6eD7aD8aD8bD8cD8dD8eD8fD9aDaaDabDadDaeDafDbaDbbDbcDbeDbfDcaDdaDdbDdcDddDdeDdfDeaDfaDfcDfeC000C02fD0bD0cD0dD0eD0fD1bD1fD2bD2dD2fD3bD3cD3eD3fD5bD5cD5dD5eD5fD6bD6fD7bD7cD7dD7eD7fD9bD9cD9dD9eD9fDacDbdDcbDccDcdDceDcfDebDecDedDeeDefDfbDfdDff"{

	 infoAbout();
}

function infoAbout(){
	bioskelLink="http://bioskel.ccmar.ualg.pt/";
	bioskelIcon="http://bioskel.ccmar.ualg.pt/images/bioskel.png"; 
	bicLink="http://www.bic.u-bordeaux.fr/";
	bicIcon="http://www.bic.u-bordeaux.fr/wp-content/uploads/2019/02/logo-FBI-BIC-300p-v0.png"; 
	neubiasLink="http://eubias.org/NEUBIAS/";
	neubiasIcon="http://eubias.org/NEUBIAS/wp-content/uploads/2016/07/Logo36-300x159.png"; 
	GitHub="https://github.com/MarcoTarasco/ZFBONE";
	
	html="<html>"
		+"<body bgcolor=\"black\">"
		+"<h1><font color=\"#cc0000\"><center>ZFBONE</center></font></h1>"
		+"<font color=\"white\">"
		+"Developed by:"
		+"<br>"
		+"<br><b>Marco Tarasco</b> (marcotar90@gmail.com)"
		+"<br><b>Fabrice Cordelières</b> (fabrice.cordelieres@u-bordeaux.fr)"
		+"<br>"
		+"<br>"
		+"<font color=\"#cc0000\">Version 1.0</font>"
		+"<br>"
		+"Please check our page for updates and video tutorials on "
    	 +"<a href=\""+GitHub+"\">GitHub</a>"
		+"<br>"
		+"<br>"
		+"We acknowledge NEUBIAS: Network of European BioImage Analysts, COST Action CA15124"
		+"<br>"
		+"<br>"
		+"</font>"
		+"<center>"
		+iconAndLink(bioskelLink, bioskelIcon, 154, 128)
		+iconAndLink(neubiasLink, neubiasIcon, 128, 128)
		+iconAndLink(bicLink, bicIcon, 180, 128)
		+"</center>"
		+"</body>"
		+"</html>";
	
		showMessage("About...", html);
}

//----------------------------------------------------------------------------------
function iconAndLink(urlLink, urlIcon, width, height){
	img="<img src=\""+urlIcon+"\" alt=\"There should have been a picture there\" width="+width+" height="+height+" border=0>";
	code="<a href=\""+urlLink+"\">"+img+"</a>";

	return code;
}


//------------------------------------------OPERCULUM MACRO--------------------------------------------------//
macro "Operculum assay Action Tool - C000D17D26D27D28D29D35D38D39D3aD45D4bD54D5bD63D6cD73D76D77D7cD82D86D87D8dD92D9dDa2DadDb2DbdDc2DcdDd2DddDe2DedDf2DfdCf00Db5DbbDc5Dc6DcbDd6Dd7Dd8Dd9DdaDdbDe7De8De9DeaDf9"{
run("Set Scale...", "distance=0 known=0 pixel=1 unit=pixel");	
//Menu options
	Dialog.create("Operculum assay");
	Dialog.addRadioButtonGroup("Mode", newArray("Single","Batch"),1, 2, "Single");
	Dialog.addRadioButtonGroup("Adjust contrast", newArray("Yes","No"),1, 2, "Yes");
	Dialog.setInsets(5, 0, 0);
	Dialog.addNumber("Set contrast value (0-10)", 2);
	Dialog.addRadioButtonGroup("Number of channels (Ch) to analyze", newArray("1","2"),1, 2, "1");
	Dialog.addRadioButtonGroup("Apply threshold in Ch1", newArray("Yes","No"),1, 2, "No");
	Dialog.addRadioButtonGroup("Apply threshold in Ch2", newArray("Yes","No"),1, 2, "Yes");
	Dialog.setInsets(5, 10, 0);
	Dialog.addRadioButtonGroup("Threshold", newArray("Interactive","Not interactive"),1, 2, "Interactive");
	Dialog.setInsets(5, 10, 0);
	Dialog.addNumber("Set threshold Ch1 (0-255)*", 0);
	Dialog.setInsets(5, 10, 0);
	Dialog.addNumber("Set threshold Ch2 (0-255)*", 0);
	Dialog.setInsets(5, 10, 0);
	Dialog.addMessage("* Threshold min value depends on \nimage aquisition parameters");


	Dialog.addRadioButtonGroup("Measure head area", newArray("Yes","No"),1, 2, "Yes");
//	Dialog.addMessage(" ");
	Dialog.setInsets(5, 10, 0);
	Dialog.addMessage("Set measurements");
	Dialog.setInsets(5, 20, 0);
	Dialog.addCheckboxGroup(1, 2, newArray("Area","Intensity"), newArray(true,false));
//Help message
//------
	UserManualOperculum="https://github.com/MarcoTarasco/ZFBONE#operculum-assay-";
	html = "<html>"
     +"<h2>Operculum assay</h2>"
     +"Please check the online manual and video tutorial available on "
     +"<a href=\""+UserManualOperculum+"\">GitHub</a>"

//Get user choices from menu
	Dialog.addHelp(html);
	Dialog.show();
	mode=Dialog.getRadioButton();
	Applycontrast=Dialog.getRadioButton();
	contrastValue=Dialog.getNumber();
	channel=Dialog.getRadioButton();
	applyThreshold1=Dialog.getRadioButton();
	applyThreshold2=Dialog.getRadioButton();
	ThresholdMode=Dialog.getRadioButton();
	nCh1=Dialog.getNumber();//threshold min value channel 1
	nCh2=Dialog.getNumber();//threshold min value channel 2
	UseHead=Dialog.getRadioButton();
	ShowOpArea=Dialog.getCheckbox();
	ShowInt=Dialog.getCheckbox();
	

// analyse single image or batch?
				if (mode=="Single") {
					doAnalysis();
				}
				else {
					dir=getDirectory("Choose a Directory");
					list=getFileList(dir);
				 
							for (i = 0; i < list.length; i++) {
								if (endsWith(toLowerCase(list[i]), ".bmp")||endsWith(toLowerCase(list[i]), ".tif")||endsWith(toLowerCase(list[i]), ".jpg")){
									if(!File.exists(dir+"analyzed/"+list[i]+"_analyzed.jpg")){
						           		open(dir+list[i]);
						           		doAnalysis();
						           		run("Close All");
									}
								}   
							}
				}
		


function doAnalysis(){
	if (channel=="1") {	
		if (nImages==0) waitForUser("Please open an image (1 channel)");
		if (nImages==0) exit("No image was opened!!");
	}
	else {
		if (nImages==0) waitForUser("Please open an image (2 channel)");
		if (nImages==0) exit("No image was opened!!");
	}
	
	roiManager("reset");
	roiManager("Show None");
	dir=getDirectory("image");
	img=getTitle();
	
	// adjust contrast?
	autoContrast();	
			
	// Are you measuring the head area?				
		if (UseHead=="Yes") {
			areaHead=getRoiMeasure("polygon", "Head");
		}

	// Decide if you work with 1 channel or 2	
if (channel=="1") {	
	setTool("freehand");
		while(selectionType==-1){
			waitForUser("Select "+"Operculum area Ch1");
		} 
	roiManager("Add"); 
	List.setMeasurements;
	areaOperculum=List.getValue("Area");
	getRawStatistics(nPixels, mean, min, max, std, histogram);
	TOtIntensity=nPixels*mean; 

if (applyThreshold1=="Yes") {
	thr1Ch=colorThresholding1Ch(); 
	run("Restore Selection");
	List.setMeasurements;
	OpChOneFluoArea=List.getValue("RawIntDen")/255; 
	run("Create Selection");
	roiManager("add");
	}

	setResult("Label", nResults, img);
	// if the head was measured show ratio
	if (UseHead=="Yes") {
		Ratio=areaOperculum/areaHead;
		setResult("Hd area", nResults-1, areaHead);
	}
	if (ShowOpArea==true) setResult("Op area Ch1", nResults-1, areaOperculum);
	if (UseHead=="Yes") {
		setResult("Op/Hd Ch1", nResults-1, Ratio);
	}	
	if (ShowInt==true)setResult("Signal intensity Ch1", nResults-1, TOtIntensity);
	

	if (applyThreshold1=="Yes") {
		setResult("Signal area Ch1", nResults-1, OpChOneFluoArea);
		if (ShowInt==true)setResult("Signal intensity Ch1", nResults-1, TOtIntensity);
		setResult("MIN Thr Ch1", nResults-1, thr1Ch[0]);
		setResult("MAX Thr Ch1", nResults-1, thr1Ch[1]);

	}
	
	//Rename and color ROIs	
	if (UseHead=="Yes") {

	roiManager("Select", 0);
	roiManager("Set Color", "magenta");
	roiManager("Rename", "Head area");
	
	roiManager("Select", 1);
	roiManager("Set Color", "blue");
	roiManager("Rename", "Operculum area");
		if (applyThreshold1=="Yes") { 
			roiManager("select", newArray(1,2));
			roiManager("AND");
			roiManager("add");
			roiManager("Select", 3);
			roiManager("Set Color", "red");
			roiManager("Rename", "Op signal Ch1");
			roiManager("deselect");
			roiManager("select", 2);
			roiManager("delete");
		}
			
	}
	else {
	roiManager("Select", 0);
	roiManager("Set Color", "red");
	roiManager("Rename", "Operculum area");
	roiManager("Show All without labels"); 
		if (applyThreshold1=="Yes") { 
			roiManager("select", newArray(0,1));
			roiManager("AND");
			roiManager("add");
			roiManager("Select", 2);
			roiManager("Set Color", "red");
			roiManager("Rename", "Op signal Ch1");
			roiManager("select", 1);
			roiManager("delete");
			}
	}
	
}
// the user choose to work with 2 channels
else {
	
	if (nImages==0) waitForUser("Please open an image (2 channel)");
	if (nImages==0) exit("No image was opened!!");
	run("Labels...", "color=white font=12 show use");
	selectWindow(img);
	run("8-bit");
	run("Split Channels");
	selectWindow("C1-"+img);
	setTool("freehand");
	
	while(selectionType==-1){
		waitForUser("Select Operculum area Ch1");
	}

	List.setMeasurements; 
	OpChOneArea=List.getValue("Area");
	getRawStatistics(nPixels, mean, min, max, std, histogram);
	OpChOneMeanIntensity=nPixels*mean;
	if (UseHead=="Yes") {
	Ratio=OpChOneArea/areaHead;
	}
	roiManager("add");

	if (UseHead=="Yes") {
	roiManager("Select", 0);
	roiManager("Set Color", "magenta");
	roiManager("Rename", "Head area");
	roiManager("Select", 1);
	roiManager("Set Color", "blue");
	roiManager("Rename", "Op area Ch1");
	}

	else {
	roiManager("Select", 0);
	roiManager("Set Color", "blue");
	roiManager("Rename", "Op area Ch1");
	}

	getRawStatistics(nPixels, mean, min, max, std, histogram);
	OpChOneMeanIntensity=nPixels*mean;
	//run("Select None");
	
if (applyThreshold1=="Yes") {
		thr1Ch=colorThresholding1Ch(); 
		run("Restore Selection");
		List.setMeasurements;
		OpChOneFluoArea=List.getValue("RawIntDen")/255; 
		
		run("Create Selection");
		roiManager("add");

	if (UseHead=="Yes") {
		
		roiManager("Select", 2);
		roiManager("Set Color", "blue");
		roiManager("Rename", "Op signal Ch1");
	}

	else {
		roiManager("Select", 1);
		roiManager("Set Color", "blue");
		roiManager("Rename", "Op signal Ch1");
	}
}	
	
// work on the second channel
	selectWindow("C2-"+img);

	if (UseHead=="Yes") {
		roiManager("Select", 1);
	}
	
	else {
		roiManager("Select", 0);
	}
		
	getRawStatistics(nPixels, mean, min, max, std, histogram);
	OpChTwoMeanIntensity=nPixels*mean;
	selectWindow("C2-"+img);
	
if (applyThreshold2=="Yes") { 
	thr2Ch=colorThresholding2Ch(); 
	run("Restore Selection");
	List.setMeasurements;
	OpChTwoFluoArea=List.getValue("RawIntDen")/255;
	
	run("Create Selection");
	roiManager("add");


	if (UseHead=="Yes") {
		roiManager("Select", 2);
		roiManager("Set Color", "yellow");
		roiManager("Rename", "Op signal Ch2");
	}
	else {
		roiManager("Select", 1);
		roiManager("Set Color", "yellow");
		roiManager("Rename", "Op signal Ch2");
}	

}

//Organize ROIs
if (applyThreshold1=="Yes" && applyThreshold2=="Yes") { 
	
	if (UseHead=="Yes") {
	roiManager("select", newArray(1,2));
	roiManager("AND");
	roiManager("add");
	roiManager("Select", 4);
	roiManager("Set Color", "red");
	roiManager("Rename", "Op signal Ch1"); 
	
	roiManager("select", newArray(1,3));
	roiManager("AND");
	roiManager("add");
	roiManager("Select", 5);
	roiManager("Set Color", "green");
	roiManager("Rename", "Op signal Ch2");

	roiManager("Select", newArray(2,3));
	roiManager("delete");
	}
	
	else {
	roiManager("select", newArray(0,1));
	roiManager("AND");
	roiManager("add");
	roiManager("Select", 2);
	roiManager("Set Color", "red");
	roiManager("Rename", "Op signal Ch1");
	
	roiManager("select", newArray(0,2));
	roiManager("AND");
	roiManager("add");
	roiManager("Select", 3);
	roiManager("Set Color", "green");
	roiManager("Rename", "Op signal Ch2");
	
	roiManager("Select", newArray(1,2));
	roiManager("delete");
	roiManager("Select", 1);
	roiManager("Set Color", "red");
	roiManager("Rename", "Op signal Ch1");
	roiManager("Select", 2);
	roiManager("Set Color", "green");
	roiManager("Rename", "Op signal Ch2");
}
}



if (applyThreshold1=="No" && applyThreshold2=="Yes") {
	if (UseHead=="Yes") {
	roiManager("select", newArray(1,2));
	roiManager("AND");
	roiManager("add");
	roiManager("Select", 3);
	roiManager("Set Color", "green");
	roiManager("Rename", "Op signal Ch2");
	roiManager("select", 2);
	roiManager("delete");
	}
	else {
	roiManager("select", newArray(0,1));
	roiManager("AND");
	roiManager("add");
	roiManager("Select", 2);
	roiManager("Set Color", "green");
	roiManager("Rename", "Op signal Ch2");
	roiManager("select", 1);
	roiManager("delete");
	}

}

if (applyThreshold1=="Yes" && applyThreshold2=="No") {
	
	if (UseHead=="Yes") {
	roiManager("select", newArray(1,2));
	roiManager("AND");
	roiManager("add");
	roiManager("Select", 3);
	roiManager("Set Color", "red");
	roiManager("Rename", "Op signal Ch1");
	roiManager("select", 2);
	roiManager("delete");
	
	}
	else {
	roiManager("select", newArray(0,1));
	roiManager("AND");
	roiManager("add");
	roiManager("Select", 2);
	roiManager("Set Color", "red");
	roiManager("Rename", "Op signal Ch1");
	roiManager("select", 1);
	roiManager("delete");
	}

}


//Set result table

	setResult("Label", nResults, img);
	if (UseHead=="Yes") {
		setResult("Head area", nResults-1, areaHead);
	}
	
	setResult("Op area 1Ch", nResults-1, OpChOneArea);
	if (applyThreshold1=="Yes") {
		setResult("Signal area Ch1", nResults-1, OpChOneFluoArea);
		if (UseHead=="Yes") {
		setResult("Op/Hd Ch1", nResults-1, Ratio);
	}

	if (ShowInt==true){
		setResult("Signal intensity Ch1", nResults-1, OpChOneMeanIntensity);
	}
	
		setResult("MIN Thr Ch1", nResults-1, thr1Ch[0]);
		setResult("MAX Thr Ch1", nResults-1, thr1Ch[1]);
	}
	if (applyThreshold2=="Yes") {
		if (UseHead=="Yes") {
		setResult("Op/Hd Ch1", nResults-1, Ratio);
		}
		setResult("Signal area Ch2", nResults-1, OpChTwoFluoArea);
	
	if (ShowInt==true){
		setResult("Signal intensity Ch2", nResults-1, OpChTwoMeanIntensity);
	}
		setResult("MIN Thr Ch2", nResults-1, thr2Ch[0]);
		setResult("MAX Thr Ch2", nResults-1, thr2Ch[1]);
	}
	
}

if (channel=="2") {
	open(dir+img);
	run("Make Composite");
	run("Stack to RGB");
	selectWindow(img+" (RGB)");
}

if  (channel=="1" && applyThreshold1=="Yes"){
	open(dir+img);
}
roiManager("Deselect");


	roiManager("Show All"); 

	run("Flatten");
	
	getDateAndTime(year, month, dayOfWeek, dayOfMonth, hour, minute, second, msec);
	dateTag=""+year+"-"+IJ.pad((month+1), 2)+"-"+IJ.pad((dayOfMonth), 2)+"_"; // now it is saving with the day fo the month wrong.. should i remove +1?
	
	direct=dir+"analyzed/";
	File.makeDirectory(direct);
	roiManager("Save",direct+img+"_RoiSet.zip");
	saveAs("jpeg",direct+img+"_analyzed");
	Table.save(direct+dateTag+"_Operculum_Results.xls");
	run("Close All");


}

//------------------------------------
function getRoiMeasure(tool, name){
	setTool(tool);
	while(selectionType==-1){
		waitForUser("Select "+name+" area");
	} 
	roiManager("Add"); 
	getStatistics(area, mean, min, max, std, histogram);
	run("Select None");

	return area;
}

//------------------auto contrast---------------------------//
function autoContrast(){
	run("8-bit");
	if(Applycontrast=="Yes"){
	getStatistics(area, mean, min, max, std, histogram);
	setMinAndMax(maxOf(mean-contrastValue*std, min), minOf(mean+contrastValue*std, max));
	run("Apply LUT");
	}
}	

//------------------Threshold functions---------------------------//
	function colorThresholding1Ch(){	
		
	run("Enhance Contrast", "saturated=0.35");
	if (ThresholdMode=="Not interactive"){
		setThreshold(nCh1, 255);
	}
	else {
		setAutoThreshold("IJ_IsoData dark");
	}
	run("Threshold...");
	setOption("BlackBackground", false);
	
	if (ThresholdMode=="Interactive"){
		waitForUser("Adjust threshold Ch1, then press Ok"); 
	}
	getThreshold(lower, upper);
	run("Convert to Mask");
	return newArray(lower,upper);
	}

	function colorThresholding2Ch(){	
		
	run("Enhance Contrast", "saturated=0.35");

	if (ThresholdMode=="Not interactive"){
		setThreshold(nCh2, 255);
	}
	else {
		setAutoThreshold("Triangle dark");
	}
	setOption("BlackBackground", false);
	run("Threshold...");
	if (ThresholdMode=="Interactive") waitForUser("Adjust threshold Ch2, then press Ok"); 
	getThreshold(lower, upper);
	run("Convert to Mask");
	return newArray(lower,upper);
	}

}
}
}

//------------------------------------------SCALES ASSAY--------------------------------------------------//


macro "Scale assay Action Tool - C000D02D0dD12D1dD22D2dD31D32D3dD3eD40D42D4dD4fD50D52D5dD5fD60D61D62D6dD6fD70D72D7dD7fD82D8dD8eD92D9dDa2DadDb2DbdDc2DcdDd2DddDe3De4DebDecDf3Df4DfbDfcCf00D03D05D07D09D0bD13D15D16D17D19D1aD1bD34D36D38D3aD3cD44D45D46D48D49D4aD4cD64D66D68D6aD6cD73D74D76D77D78D7aD7bD7cD93D95D97D99D9bDa3Da4Da5Da7Da8Da9DabDacDc4Dc6Dc8DcaDccDd4Dd5Dd6Dd8Dd9DdaDdcDf6Df8Dfa"{
run("Set Scale...", "distance=0 known=0 pixel=1 unit=pixel");	
//-------------------------------user menu setup-------------------------
	Dialog.create("Scale assay");
	Dialog.setInsets(0, 1, 0);
	Dialog.addRadioButtonGroup("Staining", newArray("TRAP","von Kossa"),1, 2, "TRAP");
	Dialog.setInsets(0, 1, 0);
	Dialog.addRadioButtonGroup("Mode", newArray("Single","Batch"),1, 2, "Single");
	Dialog.setInsets(0, 1, 0);
	Dialog.addRadioButtonGroup("Threshold", newArray("Interactive","Not interactive"),1, 2, "Interactive");
	Dialog.setInsets(0, 1, 0);
	Dialog.addMessage(" ");
	Dialog.setInsets(0, 1, 0);
	Dialog.addNumber("Set threshold (0-255)*", 165);
	Dialog.setInsets(0, 1, 0);
	Dialog.addMessage("* Threshold min value depends on \nimage aquisition parameters");
	//------
	UserManualScales="https://github.com/MarcoTarasco/ZFBONE#scales-assay-";
	html = "<html>"
     +"<h2>Scale assay</h2>"
     +"Please check the online manual and video tutorial available on "
     +"<a href=\""+UserManualScales+"\">GitHub</a>"
//------
	Dialog.addHelp(html);
	Dialog.show();
	assay=Dialog.getRadioButton();
	mode=Dialog.getRadioButton();
	analysis=Dialog.getRadioButton();
	numbtr=Dialog.getNumber();
	
	if (mode=="Single") {
		
		if (nImages==0) waitForUser("Open an image!!"); 
		if (nImages==0) exit("No image was opened..."); 
		if (bitDepth()!=24) exit("Open an RGB image!!"); 
		img=getTitle();
		dir=getDirectory("image");
		dark=(assay=="TRAP");
		getROI();
		thr=process(dark);
		table();
 		measureAndTable(dark, thr);
		SaveOutput(dark, dir, img);
	}
	else { 
		dir=getDirectory("Choose a Directory"); 
		list=getFileList(dir);
	if(!File.exists(dir+"analyzed/")){
			for (i = 0; i < list.length; i++) {
				if (endsWith(toLowerCase(list[i]), ".bmp")||endsWith(toLowerCase(list[i]), ".tif")){ 
	
		           		open(dir+list[i]);
		           		img=getTitle();
						dir=getDirectory("image");
		           		dark=(assay=="TRAP");
						getROI();
						thr=process(dark);//will give true or false
						table();
 						measureAndTable(dark, thr);//will give true or false
						SaveOutput(dark, dir, img);
		           		
					}
		}   
	}
	else {
		exit("Analyses already done!!");
	}
	}
}
//------------------------------------------------------------------------------------------
function getROI(){	
	roiManager("reset");
	run("Select None"); 
	while(roiManager("count")==0){
		setTool("polygon");
		waitForUser("Select scale area, then type (T) \nto add it in the ROI manager");
	}
	for (i=0;i<roiManager("count");i++){
		roiManager("Select", i);
		roiManager("Rename", "Scale"+(i+1));	
	}
}

//------------------------------------------------------------------------------------------
function process(isTrap){
	if(!isTrap){
		THRVKossa=VonKossaThreshold();
	} 
	else {
		THRTraP=TrapThreshold(); 
	}

	run("Select None"); 
	roiManager("Deselect");
	
	if (roiManager("count")>=2){
		roiManager("Combine");
	}
	else {
		roiManager("select", 0);
	}

	arg=" exclude";
	if(isTrap) arg="";
	run("Analyze Particles...", arg+" show=Masks");

	if(!isTrap){
		return THRVKossa;
	} 
	else {
		return THRTraP;
	}
	 
}
//----------------------------------------

function VonKossaThreshold() {
		run("8-bit");
		run("Enhance Contrast", "saturated=0.35");
		setThreshold(numbtr, 255);
		run("Threshold...");
		//setAutoThreshold("MaxEntropy dark");
		if (analysis=="Interactive"){
			setAutoThreshold("MaxEntropy dark");
			waitForUser("Adjust threshold, then press Ok"); 
		}
		getThreshold(lower, upper);
		run("Convert to Mask");
		return newArray(lower,upper);
}




function TrapThreshold(){
	min=newArray(3);
	max=newArray(3);
	filter=newArray(3);
	img=getTitle();
	call("ij.plugin.frame.ColorThresholder.RGBtoYUV");
	run("RGB Stack");
	run("Convert Stack to Images");
	selectWindow("Red");
	rename("0");
	selectWindow("Green");
	rename("1");
	selectWindow("Blue");
	rename("2");
	min[0]=0;
	max[0]=255;
	filter[0]="pass";
	min[1]=0;
	max[1]=255;
	filter[1]="pass";
	min[2]=numbtr;
	max[2]=255;
	filter[2]="pass";

	selectWindow("2");
	run("Threshold...");
	setThreshold(min[2], max[2]);
	if (analysis=="Interactive"){
		setAutoThreshold("MaxEntropy dark");
		waitForUser("Adjust threshold, then press Ok");
	}
	getThreshold(lower, upper);
	
	
	for (i=0;i<3;i++){
	  selectWindow(""+i);
	  setThreshold(min[i], max[i]);
	  run("Convert to Mask");
	  if (filter[i]=="stop")  run("Invert");
	}
	imageCalculator("AND create", "0","1");
	imageCalculator("AND create", "Result of 0","2");
	for (i=0;i<3;i++){
	  selectWindow(""+i);
	  close();
	}
	selectWindow("Result of 0");
	close();
	selectWindow("Result of Result of 0");
	rename(img);
	return newArray(lower,upper); 
}
//------------------------------------------------------------------------------------------
function measureAndTable(isTRAP, thr){
	img=replace(getTitle(), "Mask of ", "");
	
	roiManager("Show All with labels");
	roiManager("UseNames", "true");

	
	for (i=0;i<roiManager("count");i++){
		roiManager("Select", i);
		List.setMeasurements; 
		areaScale=List.getValue("Area");
		circ=List.getValue("Circ.");
		AR=List.getValue("AR");
		areaLabel=List.getValue("RawIntDen")/255;
		pctTrap=areaLabel/areaScale;
	
		selectWindow("Measures");
		Table.set("Label", Table.size, img+"-Scale"+(i+1));
		Table.set("Scale area", Table.size-1, areaScale);
		Table.set("Scale circ", Table.size-1, circ);
		Table.set("Scale AR", Table.size-1, AR);


		label="TRAP";
		if(!isTRAP) label="DEMIN";
		
		Table.set(label+" area", Table.size-1, areaLabel);
		if(isTRAP){
			Table.set("TRAP/scale area", Table.size-1, pctTrap);
		}
		if(!isTRAP){
			Table.set("DEMIN/scale area", Table.size-1, pctTrap);
		}
		Table.set("MIN Thr", Table.size-1, thr[0]);
		Table.set("MAX Thr", Table.size-1, thr[1]);

		Table.update;
	}
}

//------------------------------------

function table(){
	needToCreate=!isMeasuresTableOpened();
	if(needToCreate){
		Table.create("Measures");
	}
}
//------------------------------------
function isMeasuresTableOpened(){
	nonImageWindows=getList("window.titles"); //Build the list of all non image windows' titles
	found=false; //By default, consideres the "Measures" table not to have been found
	for(i=0; i<nonImageWindows.length; i++) if(nonImageWindows[i]=="measures") found=true; //If the title of one of the elements is "Measures", changes the status to "found"

	return found;

//------------------save---------------------------//
function SaveOutput(isTrap, dir, img){
	for (i = 0; i < roiManager("count"); i++) {
		roiManager("select", i);
		Roi.setStrokeColor("green");
		roiManager("Update");
	}
	run("Create Selection");
	Roi.setStrokeColor("red");
	Roi.setName("");
	roiManager("Add");

	run("Close All");

	open(dir+img); //Re-open the original image

	roiManager("deselect");
	roiManager("UseNames", "true");
	roiManager("show all with labels");
	run("Flatten");

	getDateAndTime(year, month, dayOfWeek, dayOfMonth, hour, minute, second, msec);
	dateTag=""+year+"-"+IJ.pad((month+1), 2)+"-"+IJ.pad((dayOfMonth), 2);
	
	direct=dir+"analyzed/";
	File.makeDirectory(direct);
	if (isTrap){
		roiManager("Save",direct+img+"_TRAP_RoiSet.zip");
		saveAs("jpeg",direct+dateTag+"_"+img+"_TRAP_analyzed");
		Table.save(direct+dateTag+"_TRAP_Measures.xls");
	}
	else {
		roiManager("Save",direct+img+"_VK_RoiSet.zip");
		saveAs("jpeg",direct+dateTag+"_"+img+"_VK_analyzed");
		Table.save(direct+dateTag+"_VK_Measures.xls");
	}
	
	run ("Close All");
}



//------------------------------------------CAUDAL FIN MINERALIZATION & REGENERATION MACRO--------------------------------------------------//
macro "Caudal fin assay Action Tool - C000D02D0dD13D1cD23D2eD32D41D4eD51D5fD61D71D76D77D79D7fD80D85D90D94D9bD9fDa0Da3Db0Db2DbdDbfDc0Dc1DceDd0DdfDe0Cf00D03D04D05D06D07D14D16D19D24D26D29D2bD33D34D36D39D3bD42D43D44D46D49D4bD52D56D59D5bD62D63D65D66D67D6bD6cD6dD72D73D74D75D7cD81D82D83D84D91D92D93Da1Da2Db1C30fD15D17D25D27D35D37D45D47D53D54D55D57D64"{
	
	Dialog.create("Caudal fin assay");
	Dialog.setInsets(0, 1, 0);
	Dialog.addRadioButtonGroup("Analysis", newArray("Bone mineralization (MIN)","Ray morphometrics (MORP)", "MIN & MORP", "TRAP signal"),4, 4, "Bone mineralization (MIN)");
	Dialog.setInsets(0, 1, 0);
	Dialog.addRadioButtonGroup("Threshold", newArray("Interactive","Not interactive"),1, 2, "Interactive");
	Dialog.setInsets(0, 1, 0);
	Dialog.addMessage(" ");
	Dialog.setInsets(0, 1, 0);
	Dialog.addNumber("Set threshold (0-255)*", 0);
	Dialog.setInsets(0, 1, 0);
	Dialog.addMessage("* Threshold min value depends on \nimage aquisition parameters");
	
	//------
	UserManualCaudalfin="https://github.com/MarcoTarasco/ZFBONE#caudal-fin-assay-";
	html = "<html>"
    +"<h2>Caudal fin assay</h2>"
    +"Please check the online manual and video tutorial available on "
    +"<a href=\""+UserManualCaudalfin+"\">GitHub</a>"
//------
	Dialog.addHelp(html);
	
	
	Dialog.show();
	assay= Dialog.getRadioButton();
	ThresholdMode=Dialog.getRadioButton();
	FinThr=Dialog.getNumber();

	
	if (assay=="Bone mineralization (MIN)") Caudalfin();
	if (assay=="Ray morphometrics (MORP)") Raymorphometrics();
	if (assay=="MIN & MORP") Both();
	if (assay=="TRAP signal") TRAPassay();

}
//------------------------------------------------------
 function Caudalfin() {
	roiManager("reset"); 
	waitForUser("Open Brightfield image");
	if (nImages==0) exit("Open an image!!");  
	brightfield=getTitle();

	waitForUser("Open fluorescence image");
	
	if (nImages==0) exit("Open an image!!"); 
	 
	fluorescence=getTitle();
	path=getDirectory("image")+fluorescence;

	run("Labels...", "color=white font=12 show use");
	

	run("Line Width...", "line=1");
	setTool("line");
	selectWindow(brightfield);
	if(bitDepth()==24) run("16-bit");
	while(selectionType==-1){
		waitForUser("Select STU");
	}
	List.setMeasurements; 
	Stu=List.getValue("Length");

	roiManager("Add"); 
	roiManager("Select", 0);
	roiManager("Set Color", "yellow");
	roiManager("Set Line Width", 3);
	roiManager("Rename", "STU");
	roiManager("Show All without labels"); 
	roiManager("UseNames", "true"); 
	
	
	setTool("polygon");
	selectWindow(brightfield);
	while(selectionType==-1){
		waitForUser("Select REG");
	}
	List.setMeasurements; 
	Reg=List.getValue("Area");
	
	roiManager("Add");
	roiManager("Select", 1);
	roiManager("Set Color", "blue");
	roiManager("Rename", "REG");


	
//Pass to rays measuraments 
	setTool("line");
	run("Select None"); 
	while(selectionType==-1){
		waitForUser("Select RAY, then type (T) to add it to the ROI manager");
	}
	
//i starts at 2 to avoid measuring the first ROIs which are the STU, REG ROI
	Ray=0; 
	for (i=2;i<roiManager("count");i++){
		selectWindow(brightfield);
		roiManager("Select", i);
		roiManager("Set Color", "green");
		roiManager("Rename", "R"+(i-1));
		roiManager("Set Line Width", 1);
		List.setMeasurements; 
		Ray=Ray+List.getValue("Length");
	}
	Ray=Ray/(roiManager("Count")-2);
	
	selectWindow(fluorescence);
	
	thr=colorThresholding1();
	roiManager("deselect");
	roiManager("Select", 1);
	run("Restore Selection");
	List.setMeasurements;
	Min=List.getValue("RawIntDen")/255;
	
	run("Create Selection");
	roiManager("add");
	count=roiManager("count");
	roiManager("Select", count-1);
	roiManager("Set Color", "cyan");
	roiManager("Rename", "threshold");
	
	roiManager("select", newArray(1,count-1));
	roiManager("AND");
	roiManager("add");
	roiManager("Select", count);
	roiManager("Set Color", "red");
	roiManager("Rename", "RMA");
	roiManager("Select", count-1);
	roiManager("delete");

	selectWindow(fluorescence);
	close();
	
//Set result table
	reg_stu=Reg/Stu;
 	min_mray=Min/Ray;
 	min_reg=(Min/Ray)/(Reg/Stu);

	tableopen();
	selectWindow("Measures");
	Table.set("Label", Table.size, fluorescence);
	Table.set("STU", Table.size-1, Stu);
	Table.set("REG", Table.size-1, Reg);
	Table.set("RMA", Table.size-1, Min);
	Table.set("RAYs", Table.size-1, Ray);
    Table.set("RMA/RAYs", Table.size-1, Min/Ray);
    Table.set("REG/STU", Table.size-1, reg_stu);
    Table.set("(RMA/RAYs)/(REG/STU)", Table.size-1, min_reg);
	Table.set("MIN Thr", Table.size-1, thr[0]);
    Table.set("MAX Thr", Table.size-1, thr[1]);

	Table.update;
	
	imgtitle=getTitle;
	dir=getDirectory("image");
	roiManager("deselect");
	roiManager("UseNames", "true");
	roiManager("show all with labels");
	run("Flatten");
	getDateAndTime(year, month, dayOfWeek, dayOfMonth, hour, minute, second, msec);
	dateTag=""+year+"-"+IJ.pad((month+1), 2)+"-"+IJ.pad((dayOfMonth), 2)+"_";
	
	direct=dir+"analyzed/";
	File.makeDirectory(direct);
	roiManager("Save",direct+imgtitle+"_MIN_RoiSet.zip");
	saveAs("jpeg",direct+dateTag+"MIN_"+imgtitle);
	Table.save(direct+dateTag+"MIN_Results.xls");
	run ("Close All");
	
	return path;
}
function tableopen(){
	needToCreate=!isMeasuresTableOpened(); //Need to create=opposite of "has been found"
	if(needToCreate){
		Table.create("Measures");
	}
}
//------------------------------------
function isMeasuresTableOpened(){
	nonImageWindows=getList("window.titles"); //Build the list of all non image windows' titles
	found=false; //By default, consideres the "Measures" table not to have been found
	for(i=0; i<nonImageWindows.length; i++) if(nonImageWindows[i]=="measures") found=true; //If the title of one of the elements is "Measures", changes the status to "found"

	return found;

function colorThresholding1(){	
	
	ori=getTitle();
	if(bitDepth()==24){
	run("Split Channels");
	selectWindow(ori+" (red)");
	rename(ori);
	close(ori+" (green)");
	close(ori+" (blue)");
	}
	else {
		selectWindow(ori);
	}
	run("Enhance Contrast", "saturated=0.35");
	
	setOption("BlackBackground", false);
	run("Threshold...");

	if (ThresholdMode=="Not interactive"){
		setThreshold(FinThr, 255);
	}
		
	if (ThresholdMode=="Interactive"){
		setAutoThreshold("Li dark");
		waitForUser("Adjust threshold then press Ok");
	}
	getThreshold(lower, upper);
	run("Convert to Mask");
	
	return newArray(lower,upper); 

}

//------------------------------------------
function Raymorphometrics() {
//Cleanup
	roiManager("Reset");
	roiManager("Show All with labels");
	run("Labels...", "color=white font=12 show use");
	run("Clear Results");

	if (nImages==0) waitForUser("Open an image!!"); 
	if (nImages==0) exit("No image was opened...");
	run("8-bit");
	autoContrastCF(5, true);
	
	imgtitle=getTitle;
	distanceMap();
	selectWindow(imgtitle);
	//Ask the number rays
	nRays=getNumber("Indicate number of rays to analyze", 16);

	//For each ray:
	for(i=1; i<=nRays; i++){
		selectWindow(imgtitle);
		beep();
	
		waitForUser("-----Start with ray "+i+"------");
	

		askForRoi("multipoint", "Insert a landmark at each IJ", "Green", "Ray_"+i+"-IJ");
	
		

		askForRoi("point", "Insert a landmark at BIF", "Magenta", "Ray_"+i+"-BIF");
		

		askForRoi("multipoint", "Insert a landmark at each IJL", "Red", "Ray_"+i+"-IJL");
	
		

		askForRoi("multipoint", "Insert a landmark at each IJR", "Blue", "Ray_"+i+"-IJR");
		
		indexRoiBifurc=roiManager("Count")-3;
	
		//Compute backbone distances
		roiManager("Select", indexRoiBifurc-1);
		drawpoints (indexRoiBifurc, true); 
		computeDistanceFromRoi(indexRoiBifurc, true);
	
		//Compute width at the bifurcation point
		roiManager("Select", indexRoiBifurc);
		getSelectionCoordinates(xpoints, ypoints);
		getLogWidthBifurcation(xpoints[0], ypoints[0], 10, "Ray_"+i);
	
		
		//Compute left branch distances
		roiManager("Select", indexRoiBifurc+1);
		drawpoints (indexRoiBifurc, false);
		computeDistanceFromRoi(indexRoiBifurc, false);
	
		
		//Compute right branch distances
		roiManager("Select", indexRoiBifurc+2);
		drawpoints (indexRoiBifurc, false);
		computeDistanceFromRoi(indexRoiBifurc, false);
	}
	summarizeColumns();
	SummaryTable();
	SaveOutputBif();
}

//-------------------------------------------------------------------------------------
function askForRoi(tool, msg, color, roiName){
	run("Select None");
	run("Point Tool...", "type=Dot size=Large");
	while(selectionType==-1){
		setTool(tool);
		waitForUser(msg+",\nthen press Ok");
	}
	Roi.setStrokeColor(color);
	Roi.setName(roiName);
	roiManager("Add");
}

//-------------------------------------------------------------------------------------
function getDistance(x1, y1, x2, y2){
	return sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1));
}

//-------------------------------------------------------------------------------------
function computeDistanceFromRoi(indexRoiBifurc, isBeforeBifurc){
	//Check for roi
	if(selectionType!=-1){
		//Retrieve x and y coordinates
		getSelectionCoordinates(xpoints, ypoints);
		roiName=Roi.getName;

		roiManager("Select", indexRoiBifurc);
		getSelectionCoordinates(xBif, yBif);

		if(!isBeforeBifurc){
			distance=getDistance(xBif[0], yBif[0], xpoints[0], ypoints[0]);
			setResult("Label", 0, "S-1");
			setResult(roiName+"-SL", 0, distance);
		}
		
		//For each set of coordinates, compute point(n)-point(n-1)
		for(i=1; i<xpoints.length; i++){
			distance=getDistance(xpoints[i], ypoints[i], xpoints[i-1], ypoints[i-1]);

			line=i-1;
			if(!isBeforeBifurc) line=i;
			setResult("Label", line, "S-"+(line+1));
			setResult(roiName+"-SL", line, distance);
		}

		if(isBeforeBifurc){
			lastIndex=xpoints.length-1;
			distance=getDistance(xBif[0], yBif[0], xpoints[lastIndex], ypoints[lastIndex]);
			setResult("Label", lastIndex, "S-"+(lastIndex+1));
			setResult(roiName+"-SL", lastIndex, distance);
		}

		updateResults();
	}
}

//-------------------------------------------------------------------------------------
function summarizeColumns(){

	if(isTableOpened("Results")){
		selectWindow("Results");
		
		colNames=split(Table.headings, "\t");
	
		
	
		rowNb=Table.size;
	
		setResult("Label", rowNb, "Sum");
		setResult("Label", rowNb+1, "S number");
		setResult("Label", rowNb+1, "Total S/ray");
		setResult("Label", rowNb+2, "Average");
		setResult("Label", rowNb+3, "Std");

		updateResults();
	
		for(i=0; i<colNames.length; i++){
			if(!(colNames[i]=="" || colNames[i]==" " || colNames[i]=="Label")){
				data=Table.getColumn(colNames[i]);
		
				//Remove zeros
				nbNonZeros=0;
				for(j=0; j<data.length; j++) if(data[j]!=0) nbNonZeros++; //Counts within data the number of non zero values
		
				tmp=Array.copy(data);
				data=newArray(nbNonZeros);
				index=0;
		
				for(j=0; j<tmp.length; j++){
					if(tmp[j]!=0){
						data[index]=tmp[j]; //Copies the non zero values
						index++;
					}
				}
				
				Array.getStatistics(data, min, max, mean, stdDev) ;		
		
				setResult(colNames[i], rowNb, mean*nbNonZeros);
				setResult(colNames[i], rowNb+1, nbNonZeros);
				setResult(colNames[i], rowNb+2, mean);
				setResult(colNames[i], rowNb+3, stdDev);
				updateResults();
			}
		}
	}
	Table.rename("Results");
}

//------------create 2nd result table-----------------//
function SummaryTable() {

Table.create("Summary Results");

	for (i = 0; i < roiManager("count")/4; i++) {
		selectWindow("Results");
		StuBif=Table.get("Ray_"+(i+1)+"-IJ-SL", Table.size-1-3); 
		BifIJL=Table.get("Ray_"+(i+1)+"-IJL-SL", Table.size-1-3); 
		BifIJR=Table.get("Ray_"+(i+1)+"-IJR-SL", Table.size-1-3); 
		BifIR=(BifIJL+BifIJR)/2;
		TOTijSL=Table.get("Ray_"+(i+1)+"-IJ-SL", Table.size-1-2);
		TOTijlSL=Table.get("Ray_"+(i+1)+"-IJL-SL", Table.size-1-2);
		TOTijrSL=Table.get("Ray_"+(i+1)+"-IJR-SL", Table.size-1-2);
		AVGijSW=Table.get("Ray_"+(i+1)+"-IJ-SW", Table.size-1-1);
		AVGijlSW=Table.get("Ray_"+(i+1)+"-IJL-SW", Table.size-1-1);
		AVGijrSW=Table.get("Ray_"+(i+1)+"-IJR-SW", Table.size-1-1);
		AVGijSL=Table.get("Ray_"+(i+1)+"-IJ-SL", Table.size-1-1);
		AVGijlSL=Table.get("Ray_"+(i+1)+"-IJL-SL", Table.size-1-1);
		AVGijrSL=Table.get("Ray_"+(i+1)+"-IJR-SL", Table.size-1-1);
//Set summary table
		selectWindow("Summary Results");
		Table.set("Label", Table.size, "Ray_"+(i+1));
		Table.set("STU-BIF", Table.size-1, StuBif);
		Table.set("BIF-IR", Table.size-1, BifIR);
		Table.set("STU-IR", Table.size-1, StuBif+BifIR);	
		Table.set("Tot S-IJ", Table.size-1, TOTijSL);
		Table.set("Tot S-IJL", Table.size-1, TOTijlSL);
		Table.set("Tot S-IJR", Table.size-1, TOTijrSL);
		Table.set("Avg SW-IJ", Table.size-1, AVGijSW);
		Table.set("Avg SW-IJL", Table.size-1, AVGijlSW);
		Table.set("Avg SW-IJR", Table.size-1, AVGijrSW);
		Table.set("Avg SL-IJ", Table.size-1, AVGijSL);
		Table.set("Avg SL-IJL", Table.size-1, AVGijlSL);
		Table.set("Avg SL-IJR", Table.size-1, AVGijrSL);

		Table.update;
		
	}

}

//-------------------------------------------------------------------------------------
function drawpoints(indexRoiBifurc, isBeforeBifurc){
	//Check for roi
	ori=getTitle();
	selectWindow("distanceMap");
	run("Restore Selection");
	
	if(selectionType!=-1){
		//Retrieve x and y coordinates
		getSelectionCoordinates(xpoints, ypoints);
		roiName=Roi.getName;

		roiManager("Select", indexRoiBifurc);
		getSelectionCoordinates(xBif, yBif);

		if(!isBeforeBifurc){
			width=getWidthHalfWay(xBif[0],xpoints[0],yBif[0],ypoints[0],10);
			setResult("Label", 0, "S-1");
			setResult(roiName+"-SW", 0, width);
		}
		
		//For each set of coordinates, compute point(n)-point(n-1)
		for(i=1; i<xpoints.length; i++){
			width=getWidthHalfWay(xpoints[i],xpoints[i-1],ypoints[i],ypoints[i-1],10);
			line=i-1;
			if(!isBeforeBifurc) line=i;
			setResult("Label", line, "S-"+(line+1));
			setResult(roiName+"-SW", line, width);
		}

		if(isBeforeBifurc){
			lastIndex=xpoints.length-1;
			width=getWidthHalfWay(xBif[0],xpoints[lastIndex],yBif[0],ypoints[lastIndex],10);
			setResult("Label", lastIndex, "S-"+(lastIndex+1));
			setResult(roiName+"-SW", lastIndex, width);
		}

		updateResults();
	}
	run("Select None");
	selectWindow(ori);
}


//------------distance MAP-----------------//
function distanceMap() {
	run("Select None");
	run("Duplicate...", "title=distanceMap");
	run("Auto Local Threshold", "method=Niblack radius=25 parameter_1=0 parameter_2=0 white");
	run("Invert LUT");
	run("Fill Holes");
	run("Close-");
	run("Distance Map");
	run("royal");
	setMinAndMax(0, 24);
}
//------------------auto contrast---------------------------//
function autoContrastCF(n, doApply){
	run("8-bit");
	getStatistics(area, mean, min, max, std, histogram);
	setMinAndMax(maxOf(mean-n*std, min), minOf(mean+n*std, max));
	if(doApply) run("Apply LUT");
}	
//------------------getWidthHalfWay---------------------------//
function getWidthHalfWay(x1,x2,y1,y2,enlarge){
	ori=getTitle();
	selectWindow("distanceMap");
	makePoint((x1+x2)/2, (y1+y2)/2);
	run("Enlarge...", "enlarge="+enlarge);// enlarge
	getStatistics(area, mean, min, max, std, histogram);
	run("Select None");
	selectWindow(ori);
	
	return (2*max);
}

//------------------getWidthHalfWay---------------------------//
function getLogWidthBifurcation(x, y, enlarge, roiName){
	width=getWidthHalfWay(x,x,y,y,enlarge);
//	setResult(roiName+"-BIF-W", 0, width);
	updateResults();
}

//------------------SAVE---------------------------//
function SaveOutputBif(){
	
	imgtitle=getTitle;
	dir=getDirectory("image");
	roiManager("deselect");
	roiManager("UseNames", "true");
	roiManager("show all with labels");
	run("Flatten");
	getDateAndTime(year, month, dayOfWeek, dayOfMonth, hour, minute, second, msec);
	dateTag=""+year+"-"+IJ.pad((month+1), 2)+"-"+IJ.pad((dayOfMonth), 2)+"_";
	
	direct=dir+"analyzed/";
	File.makeDirectory(direct);
	roiManager("Save",direct+imgtitle+"_MORP_RoiSet.zip");
	saveAs("jpeg",direct+dateTag+"MORP_"+imgtitle);
	selectWindow("Summary Results");
	Table.save(direct+dateTag+"MORP_Summary_"+imgtitle+".xls");
	Table.reset("Summary Results");
	run("Close");
	selectWindow("Results");
	Table.save(direct+dateTag+"MORP_Results_"+imgtitle+".xls");
	Table.reset("Results");
	run("Close");
	
	
	
	run ("Close All");
}
}

function Both() {
	imgTOpenLater=Caudalfin();
	waitForUser("Let's continue with ray morphometrics analysis");
	beep();
	open(imgTOpenLater);
	Raymorphometrics();
}


//------------------------------------
function isTableOpened(tableTitle){
	nonImageWindows=getList("window.titles"); //Build the list of all non image windows' titles
	found=false; //By default, consideres the "Measures" table not to have been found
	for(i=0; i<nonImageWindows.length; i++) if(nonImageWindows[i]==tableTitle) found=true; //If the title of one of the elements is "Measures", changes the status to "found"

	return found;
}

//------------------------------------------TRAP SIGNAL--------------------------------------------------//

function TRAPassay() {
	run("Clear Results");
	roiManager("reset"); 
	if (nImages==0) waitForUser("Please open a brighfield image");
	if (nImages==0) exit("No image was opened!!"); 
	if(bitDepth()!=24) exit("Open an RGB image!!"); 
	brightfield=getTitle();
	dir=getDirectory("image");
	run("Labels...", "color=black font=12 show use");
	
	//Measures STU on brightfield
	run("Line Width...", "line=1");
	setTool("line");
	selectWindow(brightfield);
	while(selectionType==-1){
		waitForUser("Select STU");
	}
	List.setMeasurements; 
	Stu=List.getValue("Length");

	roiManager("Add"); 
	roiManager("Select", 0);
	roiManager("Set Color", "black");
	roiManager("Rename", "STU");
	roiManager("Show All without labels"); 
	roiManager("UseNames", "true"); 
	
	//Selects REG on brightfield
	setTool("polygon");
	selectWindow(brightfield);
	while(selectionType==-1){
		waitForUser("Select REG");
	}

	List.setMeasurements; 
	Reg=List.getValue("Area");
	
	roiManager("Add");
	roiManager("Select", 1);
	roiManager("Set Color", "blue");
	roiManager("Rename", "REG");

	thr=colorThresholding();

	run("Restore Selection");
	List.setMeasurements;
	Trap=List.getValue("RawIntDen")/255;
	Trap_Reg=Trap/Reg;

	run("Create Selection");
	roiManager("add");
	roiManager("Select", 2);
	roiManager("Set Color", "cyan");
	roiManager("Rename", "threshold");
	
	roiManager("select", newArray(1,2));
	roiManager("AND");
	roiManager("add");
	roiManager("Select", 3);
	roiManager("Set Color", "cyan");
	roiManager("Rename", "TRAP area");
	roiManager("Select", 2);
	roiManager("delete");
	
	open(dir+brightfield); 
	
	roiManager("deselect");
	roiManager("UseNames", "true");
	roiManager("show all with labels");
	run("Flatten");

	
	Table.set("Label", Table.size, brightfield);
	Table.set("STU", Table.size-1, Stu);
	Table.set("REG", Table.size-1, Reg);
	Table.set("TRAP area", Table.size-1, Trap);
	Table.set("TRAP area/(REG/STU)", Table.size-1, Trap_Reg);
	Table.set("MIN Thr", Table.size-1,thr[0]);
	Table.set("MAX Thr", Table.size-1, thr[1]);
	Table.update;

	getDateAndTime(year, month, dayOfWeek, dayOfMonth, hour, minute, second, msec);
	dateTag=""+year+"-"+IJ.pad((month+1), 2)+"-"+IJ.pad((dayOfMonth), 2)+"_";
	
	direct=dir+"analyzed/";
	File.makeDirectory(direct);
	roiManager("Save",direct+brightfield+"_TRAP_RoiSet.zip");
	saveAs("jpeg",direct+dateTag+"TRAP_"+brightfield);
	Table.save(direct+dateTag+"_"+"TRAP_Results.xls");
	run ("Close All");	

}
//Threshold function
function colorThresholding(){	
	min=newArray(3);
	max=newArray(3);
	filter=newArray(3);
	a=getTitle();
	call("ij.plugin.frame.ColorThresholder.RGBtoYUV");
	run("RGB Stack");
	run("Convert Stack to Images");
	selectWindow("Red");
	rename("0");
	selectWindow("Green");
	rename("1");
	selectWindow("Blue");
	rename("2");
	min[0]=0;
	max[0]=255;
	filter[0]="pass";
	min[1]=0;
	max[1]=255;
	filter[1]="pass";
	min[2]=FinThr;
	max[2]=255;
	filter[2]="pass";
	
		selectWindow("2");
		run("Threshold...");
		setThreshold(min[2], max[2]);
		if (ThresholdMode=="Interactive"){
			setAutoThreshold("MaxEntropy dark");
			waitForUser("Adjust threshold, then press Ok");
		}
		getThreshold(min[2], max[2]);
		
	//-----
	for (i=0;i<3;i++){
	  selectWindow(""+i);
	  setThreshold(min[i], max[i]);
	  run("Convert to Mask");
	  if (filter[i]=="stop")  run("Invert");
	}
	imageCalculator("AND create", "0","1");
	imageCalculator("AND create", "Result of 0","2");
	for (i=0;i<3;i++){
	  selectWindow(""+i);
	  close();
	}
	selectWindow("Result of 0");
	close();
	selectWindow("Result of Result of 0");
	rename(brightfield);
	
	brightfield=replace(getTitle(), "Mask of ", "");
	
	return newArray(min[2], max[2]);
	
	}
	

}

//------------------------------------------CAUDAL FIN RAY BONE INTENSITY--------------------------------------------------//
macro "Ray bone intensity Action Tool - C000D01D10D11D12D13D14D15D16D17D18D19D1aD1bD1cD1dD1eD21D2eD3eD4eD52D53D5eD61D62D63D64D6eD70D71D73D74D75D7eD80D81D82D83D84D85D8eD90D91D92D93D94D95D9eDa0Da1Da2Da3Da4Da5DaeDb1Db2Db3Db4DbeDc2Dc3DceDd2Dd3DdeDe1De4DedDeeDefDf0Df5DfeC01fD26D36D46D47D48D49D59D5aD5bD5cD6cD7cD8cD9cDacDbcDccDdcDddCf00D23D33D34D35D37D57D58D69D6aD7aD8aD9aD9bDabDbdCfffD66D76D88D98Da8DaaDb8DbaDc8Dca"{
run("Set Scale...", "distance=0 known=0 pixel=1 unit=pixel");
//-------------------------------user menu setup-------------------------
	Dialog.create("Ray bone intensity");
	Dialog.setInsets(0, 1, 0);
	Dialog.addRadioButtonGroup("Analysis", newArray("Ray analysis","Data pooling"),2, 2, "Ray analysis");
	//------
UserManualCaudalfinRays="https://github.com/MarcoTarasco/ZFBONE#ray-bone-density-";
	html = "<html>"
     +"<h2>Ray bone intensity assay</h2>"
     +"Please check the online manual and video tutorial available on "
     +"<a href=\""+UserManualCaudalfinRays+"\">GitHub</a>"
//------
	Dialog.addHelp(html);
	Dialog.show();
	assay=Dialog.getRadioButton();
	
	if (assay=="Ray analysis") {
		run ("RayAnalysis");
	}
	else {
		run ("Data pooling");
	}

}

macro "RayAnalysis" {
	
	cleanUp();
	if (nImages==0) waitForUser("Open an image!!"); 
	if (nImages==0) exit("No image was opened..."); 
	img=getTitle();
	askForROIs();
	maxArray=getData();
	maxPosition=shiftColumns(maxArray);
	normalize(maxPosition);
	generateXValues();
	fillEmptyCells();
	plotShiftedNormalized(true);
	generateOutput(img);
	saveEverything(img);
	run ("Close All");	
	


//---------------------------------------------
function cleanUp(){
	run("Clear Results");
	roiManager("Reset");
	roiManager("UseNames", "true");
	close("All your data*");//close any window that has this name
}

//---------------------------------------------
function askForROIs(){
	roiManager("Show All");
	
	run("Line Width...", "line=30");
	setTool("polyline");
	
	waitForUser("Select each ray,then type (T) to add it to the ROI manager");
	
	for(i=0; i<roiManager("Count"); i++){
		roiManager("Select", i);
		roiManager("Rename", "Ray"+(i+1));
	}
}

//First we get all the intensity values per point along the rays
function getData(){
	ori=getTitle();
	
	setResult("X", 0, 0);

	whereAreMax=newArray(roiManager("Count"));
	
	for(i=0; i<roiManager("Count"); i++){
		selectWindow(ori);
		roiManager("Select", i);
		run("Plot Profile");
		Plot.getValues(xpoints, ypoints);
		close();
		
		infos=findMaximum(ypoints);
		whereAreMax[i]=infos[0];
		
		Table.setColumn("Y_Ray"+(i+1), ypoints);
		Table.update;
	}

	return whereAreMax;
}

//---------------------------------------------
function fillEmptyCells(){
	headers=split(Table.headings, "\t");
	
	for(i=0; i<headers.length; i++){
		if(headers[i]!="" && headers[i]!=" "){
			originalData=Table.getColumn(headers[i]);
			for(j=originalData.length; j<nResults; j++){
				Table.set(headers[i], j, 0);
			}
			Table.update;
		}
	}
}


//Then we get the maximum intensity value along the rays (should correspond to the STU)
function findMaximum(inputArray){
	position=0;
	max=0;

	for(i=0; i<inputArray.length; i++){
		if(inputArray[i]>max){
			position=i;
			max=inputArray[i];
		}
	}

	return newArray(position, max);
}

//Then we shift all the data of each ray to start at the same point (max intensity)
function shiftColumns(maxArray){
	Array.getStatistics(maxArray, min, maxOfMax, mean, stdDev);

	for(i=0; i<roiManager("Count"); i++){
		originalData=Table.getColumn("Y_Ray"+(i+1));
		if(maxOfMax!=maxArray[i]){
			filler=newArray(maxOfMax-maxArray[i]);
			newData=Array.concat(filler, originalData);
		}else{
			newData=originalData;
		}

		Table.setColumn("Y_Ray"+(i+1)+"_shifted", newData);
		Table.update;
	}
	
	return maxOfMax;

}

//Then we normalize to 1, by making the average of the first 95% all non zero values before the maximum position
function normalize(maxPosition){
	for(i=0; i<roiManager("Count"); i++){
		shiftedData=Table.getColumn("Y_Ray"+(i+1)+"_shifted");
		
		mean=0;
		for(j=0; j<maxPosition; j++){
			if(shiftedData[j]!=0 && mean==0){
				mean=shiftedData[j];
			}
		}
		normalized=newArray(shiftedData.length);

		for(j=0; j<normalized.length; j++) normalized[j]=shiftedData[j]/mean;

		Table.setColumn("Y_Ray"+(i+1)+"_shifted_normalized", normalized);
		Table.update;
	}
}

//---------------------------------------------
function generateXValues(){
	for(i=0; i<nResults;i++) setResult("X", i, i);
	Table.update;
}

//---------------------------------------------
function generateOutput(img){
	selectWindow(img);
	roiManager("Show All");
	roiManager("Show All with labels");
	run("Flatten");
	rename("Flattened");
	w=getWidth();
	selectWindow("All your data");
	run("Duplicate...", "title=Graph");
	run("RGB Color");
	run("Size...", "width="+w+" constrain average interpolation=Bilinear");
	run("Combine...", "stack1=[Flattened] stack2=[Graph] combine");
	rename("Output");
}

//---------------------------------------------
function saveEverything(img){
	selectWindow(img);
	outPath=getDirectory("image")+"analyzed/";
	File.makeDirectory(outPath);
	selectWindow("Output");
	roiManager("Save",outPath+img+"_RoiSet.zip");
	saveAs("Jpeg", outPath+img+"_image-graph.jpg");
	saveAs("Results", outPath+img+"_Results.xls");
}
}

macro "Data pooling"{
	dir=getDirectory("Where are the data ?");
	pullRawData(dir);
	maxArray=getMaximaAllColumns();
	maxPosition=shiftColumns(maxArray);
	normalize(maxPosition);
	fillEmptyCells();
	generateXValues();
	plotShiftedNormalized(false);
	savePulledData(dir);
	run ("Close All");	

//--------------------------------------------------------------------
function pullRawData(dir){
	fileList=getFileList(dir);

	Table.create("Results");
	setResult("X", 0, 0);
	
	for(i=0; i<fileList.length; i++){
		if(endsWith(toLowerCase(fileList[i]), ".xls") && toLowerCase(fileList[i])!="pulled_data.xls"){
			open(dir+fileList[i]);
	
			headers=split(Table.headings, "\t");
			for(j=0; j<headers.length; j++){
				if(lastIndexOf(headers[j], "_")==1){
					selectWindow(fileList[i]);
					data=Table.getColumn(headers[j]);
					selectWindow("Results");
					Table.setColumn(fileList[i]+"_"+headers[j], data);
					Table.update;
				}
			}
	
			close(fileList[i]);
		}
	}
}

//---------------------------------------------
function getMaximaAllColumns(){
	headers=split(Table.headings, "\t");
	
	nCol=0;
	for(i=0; i<headers.length; i++){
		if(headers[i]!="" && headers[i]!=" " && headers[i]!="X") nCol++;
	}

	maxArray=newArray(nCol);
	index=0;

	for(i=0; i<headers.length; i++){
		if(headers[i]!="" && headers[i]!=" " && headers[i]!="X"){
			selectWindow("Results");
			data=Table.getColumn(headers[i]);
			maxInfos=findMaximum(data);
			maxArray[index]=maxInfos[0];
			index++;
		}
	}

	return maxArray;
}


//---------------------------------------------
function fillEmptyCells(){
	headers=split(Table.headings, "\t");
	
	for(i=0; i<headers.length; i++){
		if(headers[i]!="" && headers[i]!=" " && headers[i]!="X"){
			selectWindow("Results");
			originalData=Table.getColumn(headers[i]);
			for(j=originalData.length; j<nResults; j++){
				setResult(headers[i], j, 0);
			}
			Table.update;
		}
	}
}

//Then we get the maximum intensity value along the rays (should correspond to the STU)
function findMaximum(inputArray){
	position=0;
	max=0;

	for(i=0; i<inputArray.length; i++){
		if(inputArray[i]>max){
			position=i;
			max=inputArray[i];
		}
	}

	return newArray(position, max);
}

//Then we shift all the data of each ray to start at the same point (max intensity)
function shiftColumns(maxArray){
	Array.getStatistics(maxArray, min, maxOfMax, mean, stdDev);

	headers=split(Table.headings, "\t");
	index=0;

	for(i=0; i<headers.length; i++){
		if(headers[i]!="" && headers[i]!=" " && headers[i]!="X"){
			selectWindow("Results");
			originalData=Table.getColumn(headers[i]);
			if(maxOfMax!=maxArray[index]){
				filler=newArray(maxOfMax-maxArray[index]);
				newData=Array.concat(filler, originalData);
			}else{
				newData=originalData;
			}
	
			Table.setColumn(headers[i]+"_shifted", newData);
			Table.update;

			index++;
		}
	}
	
	return maxOfMax;

}

//Then we normalize to 1, by making the first point's intensity 1
function normalize(maxPosition){
	headers=split(Table.headings, "\t");
	
	for(i=0; i<headers.length; i++){
		if(indexOf(headers[i], "_shifted")!=-1 && headers[i]!="X"){
			selectWindow("Results");
			shiftedData=Table.getColumn(headers[i]);
			
			norm=0;
			for(j=0; j<maxPosition; j++){
				if(shiftedData[j]!=0 && norm==0){
					norm=shiftedData[j];
				}
			}
			
			normalized=newArray(shiftedData.length);
	
			for(j=0; j<normalized.length; j++) normalized[j]=shiftedData[j]/norm;
	
			Table.setColumn(headers[i]+"_normalized", normalized);
			Table.update;
		}
	}
}

//---------------------------------------------
function generateXValues(){
	selectWindow("Results");
	for(i=0; i<nResults;i++) setResult("X", i, i);
	updateResults();
}

//---------------------------------------------
function plotShiftedNormalized(doLegend){
	colors=newArray("blue", "cyan", "darkGray", "gray", "green", "lightGray", "magenta", "orange", "pink", "red", "yellow");
	Plot.create("All your data", "Position along the ray", "Normalized intensity");

	x=Table.getColumn("X");

	label="";

	headers=split(Table.headings, "\t");
	index=1;
	
	for(i=0; i<headers.length; i++){
		if(indexOf(headers[i], "_shifted_normalized")!=-1){
			y=Table.getColumn(headers[i]);
			Plot.setColor(colors[(index-1)%colors.length]);
			Plot.setLineWidth(2);
			Plot.add("line", x, y);
			label=label+"Ray"+index+"\t";
			index++;
		}
	}
	Plot.setLimits(0, x.length, 0, 1.5);
	if(doLegend) Plot.setLegend(label, "top-right");
	Plot.show();
}

//---------------------------------------------
function savePulledData(dir){
	selectWindow("Results");
	saveAs("Results", dir+"Pulled_data.xls");
	selectWindow("All your data");
	run("Duplicate...", "title=Graph");
	saveAs("Jpeg", dir+"Graph-Pulled_data.jpg");
	close();
}
}
//---------------------------------------------HELP------------------------------------------
macro "Help Action Tool - Cf00D00D01D02D03D04D05D06D07D08D09D0aD0bD0cD0dD0eD0fD10D11D12D13D14D15D16D17D18D19D1aD1bD1cD1dD1eD1fD20D21D22D23D24D25D26D27D28D29D2aD2bD2cD2dD2eD2fD30D31D37D38D39D3aD3bD3cD3dD3eD3fD40D48D49D4aD4bD4cD4dD4eD4fD50D54D55D56D57D58D59D5aD5bD5cD5dD5eD5fD60D63D64D65D66D67D68D69D6aD6bD6cD6dD6eD6fD70D73D74D75D76D77D78D7bD7cD7fD80D83D84D85D86D87D88D8bD8cD8fD90D93D94D95D96D97D9bD9cD9fDa0Da3Da4Da5Da6Da9DaaDabDacDadDaeDafDb0Db8Db9DbaDbbDbcDbdDbeDbfDc0Dc1Dc6Dc7Dc8Dc9DcaDcbDccDcdDceDcfDd0Dd1Dd2Dd3Dd4Dd5Dd6Dd7Dd8Dd9DdaDdbDdcDddDdeDdfDe0De1De2De3De4De5De6De7De8De9DeaDebDecDedDeeDefDf0Df1Df2Df3Df4Df5Df6Df7Df8Df9DfaDfbDfcDfdDfeDff"{
	exec("open", "https://github.com/MarcoTarasco/Zebrafish-BONE-tools/blob/master/README.md");
}
