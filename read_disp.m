clear
close all

bwr = createcolormap(20,[0,0,1;1,1,1;1,0,0]);

fdir = '~/Dropbox/miyashita/dataset/noto2024';
fname = 'usgs_20240103_surface_deformation.disp.txt';

dat = readmatrix(fullfile(fdir,fname),"FileType","text","CommentStyle",'#');

lon = dat(:,1);
lat = dat(:,2);
uz = dat(:,6);
% scatter(lon,lat,[],uz,"filled");
% axis equal tight;
% grid on

LON = reshape(lon,[40,40])';
LAT = reshape(lat,[40,40])';
UZ = reshape(uz,[40,40])';

pcolor(LON,LAT,UZ); shading flat
axis equal tight
grid on
colormap(bwr)
caxis([-0.5,0.5]);
colorbar;
