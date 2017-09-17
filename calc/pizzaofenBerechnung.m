%Berechnung der ben�tigten Materialien

%Masse in Meter
Di = 0.55;       %Innendurchmesser
wa = 0.08;        %Wandst�rke
Da = Di+2*wa;   %Aussendurchmesser

%Werkstoffdaten
rohBet = 2000;  %Dichte Beton kg/m^3

%Volumen unter annahme einer Kugel
V = 4/3*pi*((Da/2)^3 - (Di/2)^3)

mBet = V*rohBet

%kosten
ms = 25;        %Sack in halt in kg
kb = 70;        %kosten f�r 25kg Feuerfest ziment
ks = 35;        %kosten f�r 25kg Schamott
c = 1/2.5;        %Mischverh�ltnis Beton - Schamott (1:c)

gesk = mBet/ms*c*kb+mBet/ms*(1-c)*ks