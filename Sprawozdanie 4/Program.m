%% Sprawozdanie 4 
close all; clear all; clc;

% Min i max wejsc sieci :
PR = [0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1;   
    0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1;];

% Ilosc neuronow w kazdej z warstw : 
S = 20;

% Funkcja NEWFF :
net = newff(PR,S,{'tansig'},'trainlm','learnh');


        %A B C D E F G H I J K L N O P R S T U Y
Input = [0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1;
        1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 0 0;
        1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 0 1;
        0 0 1 0 1 1 1 1 0 1 1 0 1 0 0 0 1 0 1 0;
        1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1;
        0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0;
        0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1;
        1 1 0 1 0 0 0 1 0 1 0 0 1 1 1 1 0 0 1 0;
        1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0;
        1 1 0 0 1 1 0 1 0 0 1 0 0 0 1 1 1 1 0 1;
        1 1 0 0 1 1 1 1 0 0 0 0 1 0 1 1 1 0 0 0;
        1 0 0 1 0 0 1 1 0 1 0 0 1 1 0 0 0 0 1 0;
        1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0;
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1;
        0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0;
        1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 0 1 0 1 0;
        1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 0 0;
        0 1 1 1 1 0 1 0 0 0 0 1 0 1 0 0 1 1 1 1;
        0 1 1 1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 1 0;
        1 0 1 0 1 0 1 1 0 1 1 1 1 0 0 1 0 0 0 0;
        ];
    
        %A B C D E F G H I J K L N O P R S T U Y
Output =[1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 
        0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 
        0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 
        0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 
        0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 
        0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 
        0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0; 
        0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0; 
        0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0; 
        0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0; 
        0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0; 
        0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0; 
        0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0; 
        0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0; 
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0; 
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0; 
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0; 
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0; 
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0; 
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1; 
        ];

% Parametry uczenia sie : 
lp.dr = 0.5; % Wspó³czynnik zapominania
lp.lr = 0.9; % Wspó³czynnik uczenia siê
parameters = learnh([0],Input,[0],[0],Output,[0],[0],[0],[0],[0],lp,[0]);

net.trainParam.epochs = 1000; % Max epochs
net.trainParam.goal = 0.001; % Cel wydajnoœci
net.trainParam.lr = 0.5; % WskaŸnik nauki

% Uczenie :
net = train(net, Input, parameters);

% Dane testowe :
A = [0; 1; 1; 0; 1; 0; 0; 1; 1; 1; 1; 1; 1; 0; 0; 1; 1; 0; 0; 1];
B = [1; 1; 1; 0; 1; 0; 0; 1; 1; 1; 1; 0; 1; 0; 0; 1; 1; 1; 1; 0];
C = [0; 1; 1; 1; 1; 0; 0; 0; 1; 0; 0; 0; 1; 0; 0; 0; 0; 1; 1; 1];
D = [1; 1; 1; 0; 1; 0; 0; 1; 1; 0; 0; 1; 1; 0; 0; 1; 1; 1; 1; 0];
E = [1; 1; 1; 1; 1; 0; 0; 0; 1; 1; 1; 0; 1; 0; 0; 0; 1; 1; 1; 1];
F = [1; 1; 1; 1; 1; 0; 0; 0; 1; 1; 1; 0; 1; 0; 0; 0; 1; 0; 0; 0];
G = [0; 1; 1; 1; 1; 0; 0; 0; 1; 0; 1; 1; 1; 0; 0; 1; 0; 1; 1; 1];
H = [1; 0; 0; 1; 1; 0; 0; 1; 1; 1; 1; 1; 1; 0; 0; 1; 1; 0; 0; 1];
I = [1; 0; 0; 0; 1; 0; 0; 0; 1; 0; 0; 0; 1; 0; 0; 0; 1; 0; 0; 0];
J = [1; 1; 1; 1; 0; 0; 0; 1; 0; 0; 0; 1; 1; 0; 0; 1; 0; 1; 1; 1];
L = [1; 0; 0; 1; 1; 0; 1; 0; 1; 1; 0; 0; 1; 0; 1; 0; 1; 0; 0; 1];
L = [1; 0; 0; 0; 1; 0; 0; 0; 1; 0; 0; 0; 1; 0; 0; 0; 1; 1; 1; 1];
N = [1; 0; 0; 1; 1; 1; 0; 1; 1; 0; 1; 1; 1; 0; 0; 1; 1; 0; 0; 1];     
O = [0; 1; 1; 0; 1; 0; 0; 1; 1; 0; 0; 1; 1; 0; 0; 1; 0; 1; 1; 0];      
P = [1; 1; 1; 0; 1; 0; 0; 1; 1; 1; 1; 0; 1; 0; 0; 0; 1; 0; 0; 0];     
R = [1; 1; 1; 0; 1; 0; 0; 1; 1; 1; 1; 0; 1; 0; 1; 0; 1; 0; 0; 1];      
S = [0; 1; 1; 1; 1; 0; 0; 0; 0; 1; 1; 0; 0; 0; 0; 1; 1; 1; 1; 0];
T = [1; 1; 1; 0; 0; 1; 0; 0; 0; 1; 0; 0; 0; 1; 0; 0; 0; 1; 0; 0];
U = [1; 0; 0; 1; 1; 0; 0; 1; 1; 0; 0; 1; 1; 0; 0; 1; 0; 1; 1; 0];     
Y = [1; 0; 1; 0; 1; 0; 1; 0; 0; 1; 0; 0; 0; 1; 0; 0; 0; 1; 0; 0]; 
     
% Symulacje : 
effect_1 = parameters;
effect_2 = sim(net, A);

disp('Regula Hebba:')
disp('A = '),disp(sum(effect_1(1,':')));
disp('B = '),disp(sum(effect_1(2,':')));
disp('C = '),disp(sum(effect_1(3,':')));
disp('D = '),disp(sum(effect_1(4,':')));
disp('E = '),disp(sum(effect_1(5,':')));
disp('F = '),disp(sum(effect_1(6,':')));
disp('G = '),disp(sum(effect_1(7,':')));
disp('H = '),disp(sum(effect_1(8,':')));
disp('I = '),disp(sum(effect_1(9,':')));
disp('J = '),disp(sum(effect_1(10,':')));
disp('K = '),disp(sum(effect_1(11,':')));
disp('L = '),disp(sum(effect_1(12,':')));
disp('N = '),disp(sum(effect_1(13,':')));
disp('O = '),disp(sum(effect_1(14,':')));
disp('P = '),disp(sum(effect_1(15,':')));
disp('R = '),disp(sum(effect_1(16,':')));
disp('S = '),disp(sum(effect_1(17,':')));
disp('T = '),disp(sum(effect_1(18,':')));
disp('U = '),disp(sum(effect_1(19,':')));
disp('Y = '),disp(sum(effect_1(20,':')));
effect_1=effect_2;

% Wyznaczone wartosci wyjsciowe dla wszystkich liter : 
disp('Wartosci wyjsciowe algorytmu dla wszystkich liter:')
disp('A = '),disp(effect_1(1));
disp('B = '),disp(effect_1(2));
disp('C = '),disp(effect_1(3));
disp('D = '),disp(effect_1(4));
disp('E = '),disp(effect_1(5));
disp('F = '),disp(effect_1(6));
disp('G = '),disp(effect_1(7));
disp('H = '),disp(effect_1(8));
disp('I = '),disp(effect_1(9));
disp('J = '),disp(effect_1(10));
disp('K = '),disp(effect_1(11));
disp('L = '),disp(effect_1(12));
disp('N = '),disp(effect_1(13));
disp('O = '),disp(effect_1(14));
disp('P = '),disp(effect_1(15));
disp('R = '),disp(effect_1(16));
disp('S = '),disp(effect_1(17));
disp('T = '),disp(effect_1(18));
disp('U = '),disp(effect_1(19));
disp('Y = '),disp(effect_1(20));
