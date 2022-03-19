model lab6_2
  parameter  Real a=0.01;
  parameter  Real b=0.02;  

  Real S(start=11900);
  Real I(start=290);
  Real R(start=52);
equation
    der(S) = -a*S;
    der(I) = a*S-b*I;
    der(R) = b*I;
    
    annotation(experiment(StartTime=0, StopTime=300, Tplerance=1e-06,Interval=0.05));
end lab6_2;
