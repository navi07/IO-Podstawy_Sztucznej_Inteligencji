close all; clear all; clc;

INPUT = iris_dataset;
size(INPUT);
plot(INPUT(1,:),INPUT(2,:),'g.');
hold on; grid on;

% Parametry sieci :
dimensions = [8 8];
coverSteps = 100;
initNeighbor = 0;
topologyFcn = 'gridtop';
distanceFcn = 'dist';

% Tworzenie SOM ( Self organizing map - 8x8 ) :
net = selforgmap(dimensions,coverSteps,initNeighbor,topologyFcn,distanceFcn);
net.trainParam.epochs = 1000;
net.trainFcn = 'trainbu';

% Trenowanie sieci :
[net,tr] = train(net,INPUT);
y = net(INPUT);
classes = vec2ind(y);
plotsompos(net,INPUT);
grid on