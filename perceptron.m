%% AND
clear all; close all; clc;

net = newp([0 1; -2 2], 1);
A = [0 0 1 1];
B = [0 1 0 1];
P = [A;B];
T = [0 0 0 1];
net = init(net);
Wyj_przed_treningiem = sim(net,P)
net = train(net,P,T)
Wyj_po_treningu = sim(net,P)

%% OR
clear all; close all; clc;

net = newp([0 1; -2 2], 1);
A = [0 0 1 1];
B = [0 1 0 1];
P = [A;B];
T = [0 1 1 1];
net = init(net);
Wyj_przed_treningiem = sim(net,P)
net = train(net,P,T)
Wyj_po_treningu = sim(net,P)

%% NAND
clear all; close all; clc;

net = newp([0 1; -2 2], 1);
A = [0 0 1 1];
B = [0 1 0 1];
P = [A;B];
T = [1 1 1 0];
net = init(net);
Wyj_przed_treningiem = sim(net,P)
net = train(net,P,T)
Wyj_po_treningu = sim(net,P)

%% NOR
clear all; close all; clc;

net = newp([0 1; -2 2], 1);
A = [0 0 1 1];
B = [0 1 0 1];
P = [A;B];
T = [1 0 0 0];
net = init(net);
Wyj_przed_treningiem = sim(net,P)
net = train(net,P,T)
Wyj_po_treningu = sim(net,P)

%% XOR
clear all; close all; clc;

net = newp([0 1; -2 2], 1);
A = [0 0 1 1];
B = [0 1 0 1];
P = [A;B];
T = [0 1 1 0];
net = init(net);
Wyj_przed_treningiem = sim(net,P)
net = train(net,P,T)
Wyj_po_treningu = sim(net,P)

%% XNOR
clear all; close all; clc;

net = newp([0 1; -2 2], 1);
A = [0 0 1 1];
B = [0 1 0 1];
P = [A;B];
T = [1 0 0 1];
net = init(net);
Wyj_przed_treningiem = sim(net,P)
net = train(net,P,T)
Wyj_po_treningu = sim(net,P)

%% NOT
clear all; close all; clc;

net = newp([0 1; -2 2], 1);
A = [0 1];
B = [0 0 ];
P = [A;B];
T = [1 0 ];
net = init(net);
Wyj_przed_treningiem = sim(net,P)
net = train(net,P,T)
Wyj_po_treningu = sim(net,P)