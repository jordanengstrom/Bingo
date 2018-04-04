% Bingo

clear;
close all;
clc;

%Iteratively reads image files into a cellArray
myFolder = './tile-pics';
filePattern = fullfile(myFolder, '*.png');
pngFiles = dir(filePattern);
for j = length(pngFiles):-1:1
   baseFileName = pngFiles(j).name;
   fullFileName = fullfile(myFolder, baseFileName);
   cellArray{j} = fullFileName;
end

n = numel(cellArray);  
totalCards = 5;
for i = 1:totalCards
    aa = figure(i);
    A(i) = montage(cellArray,'Size',[5 5]);
    title('S                     A                     N                     T                     A',...
          'Color','r','FontSize',18);
 
    Q = randperm(n);
    cellArray = cellArray(Q);
    %uncomment next line to save the cards as they're created
    %saveas(aa,sprintf('card%d.png',i));
end