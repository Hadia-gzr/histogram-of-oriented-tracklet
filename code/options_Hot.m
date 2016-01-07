options.run_name = '\18_03_2015\all\';
options.dataset_path='..\Data\Input\Ped1_Tracklet';
options.working_path ='..\Data\Working';
options.input='..\Data\Input';
options.output='..\Data\Output';
% options.datasetcategory='UCSDped1';
options.dataroot='..\Data\Input';
options.Trackletfolder='TrackletOverlap-11';
% options.output_path='';
options.TextName='**.txt';%%%%%type of tracklet file for reading from folder
options.ImageFormat='**.tif';%the name of image that use for counting the number of image are in the folder
options.number_of_orientation=8;
options.tracklet_length_cell=[5,11,21];
options.numbin_cell=[3,5,8,16,24,36,48,60];
options.Xinput_all=[2,4,8];
options.Yinput_all=[3,6,12];
options.FileTracklet='';
options.OverLaprang=1;
options.addpath1='..\..\Utility\Vl_feat\vlfeat-0.9.18\toolbox';
options.addpath2='..\..\Utility\libsvm-3.17\matlab';
options.addpath3='..\..\Utility\pwmetric';
options.noise=[2,2,2];
% options.ImageName= ;% put one image of dataset for using size X*Y of image
% DirFolderHof=(fullfile(options.input,sprintf('UCSDped%d',options.datasetcategory),'Test\Test001\001.tif'));
