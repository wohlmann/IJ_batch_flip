macro "batch flip" {
	run("Close All");
	print("\\Clear")
	dir1=getDirectory("Please choose directory containing the images");
	list=getFileList(dir1);
	print("processing directory: "+dir1+"");
	setBatchMode(true);
	while (nImages>0) {				
		selectImage(nImages);
		close();
	}
	N=0;
	for (i=0; i<list.length; i++) {
		N++;
		print("Image: "+N+"");
		path = dir1+list[i];
		open(""+path+"");
		title1= getTitle;
		print("flipping Image: "+title1+"");
		selectWindow(""+title1+"");
		run("Flip Horizontally");
		run("Save");
		print("saved");
		print("___");
	}
		print(""+N+" images flipped and saved");
		showMessage("Report", ""+N+" images flipped and saved");
}
//JW_03.07.20