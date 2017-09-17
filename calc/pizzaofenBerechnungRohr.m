clc;
%Berechnung der benötigten Materialien

%Masse in Meter
Di = 0.6;       %Innendurchmesser
Li = 0.6;        %Länge innen
wa = 0.06;        %Wandstärke
wb = 0.05;         %Stärke Boden
Da = Di+2*wa;   %Aussendurchmesser
A = Di*Li;

%Werkstoffdaten
%rohBet = 2000;  %Dichte Beton kg/m^3
Vecim = 13e-3;    %Volumen pro 25kg Zement
Ves = 25/1800;     %25 l Sand pro Zementsack
%Vek = 40e-3;    %40 l Kies pro zementsack
Veinh = Vecim + 2.5*Ves %Volumen aus einem Zementsack

%Kosten pro Einheit
keinh = 46+2.5*13.5;

%Volumen unter annahme eines Zylinders
Vz = 1/2*(pi*((Da)^2 - (Di)^2)/4)*Li
Vf = Da^2*pi/4*wa
vb = A*wb
V = Vz + Vf+vb

AnzE = V/Veinh
gesk = AnzE*keinh

