close all; clear all; clc;

           	       %A B C D E F G H I K L J M N O P R S T U
INPUT =                [0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1;
			1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 0 0;
			1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 0 1;
			0 0 1 0 1 1 1 1 0 1 1 0 1 0 0 0 1 0 1 0;%
			1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1;
			0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0;
			0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1;
			1 1 0 1 0 0 0 1 0 1 0 0 1 1 1 1 0 0 1 0;%
			1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0;
			1 1 0 0 1 1 0 1 0 0 1 0 0 0 1 1 1 1 0 1;
			1 1 0 0 1 1 1 1 0 0 0 0 1 0 1 1 1 0 0 0;
			1 0 0 1 0 0 1 1 0 1 0 0 1 1 0 0 0 0 1 0;%
			1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0;
			0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1;
			0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0;
			1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 0 1 0 1 0;%
			1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 0 0;
			0 1 1 1 1 0 1 0 0 0 0 1 0 1 0 0 1 1 1 1;
			0 1 1 1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 1 0;
			1 0 1 0 1 0 1 1 0 1 1 1 1 0 0 1 0 0 0 0;%
			];
			
% Parametry sieci Kohonena :
dimensions = [4 5]; 
coverSteps = 100;
initNeighbor = 1;
topologyFcn = 'gridtop';
distanceFcn = 'dist';

% Tworzenie SOM : 
net = selforgmap(dimensions,coverSteps,initNeighbor,topologyFcn,distanceFcn);
net.trainParam.epochs = 2000;

% Trenowanie sieci : 
[net,tr] = train(net,INPUT);
y = net(INPUT);
classes = vec2ind(y);
