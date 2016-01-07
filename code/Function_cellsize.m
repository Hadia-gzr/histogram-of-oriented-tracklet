function [ NumGridPixel ] = Function_cellsize(options )

ImageName1    =  imread(options.ImageName);
NumGridPixel_cell2 = size(ImageName1,2)/options.Yinput;
NumGridPixel_cell1 = size(ImageName1,1)/options.Xinput;
NumGridPixel = round((NumGridPixel_cell2+NumGridPixel_cell1)/2);
end

