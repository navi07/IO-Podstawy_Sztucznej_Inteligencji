%% Sprawozdanie 3 
close all; clear all; clc;

% Min i max wejsc sieci :
PR=[0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1;   
    0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1;];

% Ilosc neuronow w kazdej z warstw : 
S=[40 20 20]; 

% Funkcja NEWFF :
net = newff(PR,S,{'tansig','tansig','tansig'},'traingda');

   %A B C D E F G H I J K L N O P R S T U Y
Input=[0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1;
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
Output=[1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 
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
net.trainParam.epochs = 10000; % Max epochs
net.trainParam.mu = 0.01; % Wspó³czynnik uczenia
net.trainParam.goal = 0.01; % Blad sredniokwadratowy

% Uczenie :
net = train(net, Input, Output);

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
K = [1; 0; 0; 1; 1; 0; 1; 0; 1; 1; 0; 0; 1; 0; 1; 0; 1; 0; 0; 1];
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
efekt=sim(net, A);

% Szukanie najwiekszej wartosci :
max=1;
for i=1:1:20
    if (efekt(max)<efekt(i))
        max=i;
    end;
end

% Wypisywanie jaka to litera : 
switch max
    case 1
        disp('Litera : A')
        disp(efekt(1))
    case 2
        disp('Litera : B')
        disp(efekt(2))
    case 3
        disp('Litera : C')
        disp(efekt(3))
    case 4
        disp('Litera : D')
        disp(efekt(4))
    case 5
        disp('Litera : E')
        disp(efekt(5))
    case 6
        disp('Litera : F')
        disp(efekt(6))
    case 7
        disp('Litera : G')
        disp(efekt(7))
    case 8
        disp('Litera : H')
        disp(efekt(8))
    case 9
        disp('Litera : I')
        disp(efekt(9))
    case 10
        disp('Litera : J')
        disp(efekt(10))
    case 11
        disp('Litera : K')
        disp(efekt(11))
    case 12
        disp('Litera : L')
        disp(efekt(12))
    case 13
        disp('Litera : N')
        disp(efekt(13))
    case 14
        disp('Litera : O')
        disp(efekt(14))
    case 15
        disp('Litera : P')
        disp(efekt(15))
    case 16
        disp('Litera : R')
        disp(efekt(16))
    case 17
        disp('Litera : S')
        disp(efekt(17))
    case 18
        disp('Litera : T')
        disp(efekt(18))
    case 19
        disp('Litera : U')
        disp(efekt(19))
    case 20
        disp('Litera : Y')
        disp(efekt(20))
    otherwise
        disp('Wystapil blad')
end
