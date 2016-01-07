function linear_index = seq2bin1(options,trk_magnitude,trk_orientation)
% 
% tic
% bin_all = zeros(size(trk_magnitude,1),options.number_of_orientation.*options.numbin);
% 
% for trk = 1 : size(trk_magnitude,1)
%     tracklet_m = sum(trk_magnitude(trk,:)); % ok
%     tracklet_o = trk_orientation(trk,:); 
%     bin_tracklet = tracklet2bin1(options,tracklet_m,tracklet_o);
%     bin_all(trk,:) = bin_tracklet;
% end
% toc

% ALE

mags1 =(trk_magnitude');
mags =mags1';
ors = trk_orientation;
 options.small = options.max_magnitude_all^(1/options.numbin);
 range_m = options.small.^(1:options.numbin);
% range_m=linspace(0,options.max_magnitude_all,options.numbin);
range_o=linspace(-pi,pi/4,8);

[~,id_mag] = min( abs( bsxfun( @minus, range_m',mags') ) );
[~,id_or] = min( abs( bsxfun( @minus, range_o',ors') ) );

linear_index = sub2ind( [options.numbin, 8 ],id_mag,id_or);
% hot_descriptor = reshape( histc( linear_index , 1:options.numbin*8  ),  [options.numbin, 8 ] );


