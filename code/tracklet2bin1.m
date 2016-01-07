function bin_tracklet = tracklet2bin1(options,tracklet_m,tracklet_o)

bin_tracklet1 = zeros(options.numbin,options.number_of_orientation);
range_m=linspace(0,options.max_magnitude_all,options.numbin);
range_o=linspace(-pi,pi/4,8);
Mag1=hist(tracklet_m,range_m);
Ori1=hist(tracklet_o,range_o);
bin_tracklet1(Mag1==1,Ori1==1)=1;
bin_tracklet=bin_tracklet1(:)';
%W=double(trk(i).y(floor(size(trk(i).y,1)/2)))/(size(ImageName,1));%%%%%%%normalization magnitude(camera motion)
%W=double(trk(i).y(floor(size(trk(i).y,2)/2)))/(size(ImageName,1));%%%%%%%normalization magnitude(camera motion)
end

