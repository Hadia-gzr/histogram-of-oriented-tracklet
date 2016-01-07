function [P,D] = genarate_cellmatrix( options)

[Wim,Him,~]=size(imread(options.ImageName));
D=[options.NumGridPixel_x options.NumGridPixel_y options.tracklet_length];
x_patch = [];
y_patch = [];
t_patch = [];
for i=1:options.Init
r = randsample(1:Wim-(options.NumGridPixel_x+1),1);
c= randsample(1:Him-(options.NumGridPixel_y+1),1);
f = randsample(1:options.nFrame-options.tracklet_length,1);
    x_patch = [x_patch; r];
    y_patch = [y_patch; c];
    t_patch = [t_patch; f];
end
P = [x_patch y_patch t_patch];

