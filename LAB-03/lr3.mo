model lr3

Real y11(start=32500);
Real y21(start=13800);
parameter Real a=0.12;
parameter Real b=0.54;
parameter Real c=0.4;
parameter Real d=0.27;

Real y12(start=32500);
Real y22(start=13800);
parameter Real a2=0.26;
parameter Real b2=0.8;
parameter Real c2=0.62;
parameter Real d2=0.13;

equation
  der(y11) = -a*y11 - b*y21 + abs(sin(time+1));
  der(y21) = -c*y11 - d*y21 + abs(cos(time+1));

 
equation
  der(y12) = -a2*y12 - b2*y22 + abs(sin(2*time));
  der(y22) = -c2*y12*y22 - d2*y22 + abs(cos(2*time));

end lr3;