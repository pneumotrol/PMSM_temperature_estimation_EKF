function f = state_equation(in1,in2)
%STATE_EQUATION
%    F = STATE_EQUATION(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 23.2.
%    2024/03/29 16:09:40

u1 = in2(1,:);
u2 = in2(2,:);
u3 = in2(3,:);
u4 = in2(4,:);
u5 = in2(5,:);
x1 = in1(1,:);
x2 = in1(2,:);
x3 = in1(3,:);
x4 = in1(4,:);
t2 = u5.*8.23411846958803e-4;
t3 = u4.*1.934108350992651e-2;
t4 = x1.*2.500316732921214e-2;
t5 = x2.*2.500316732921214e-2;
t6 = x3.*2.500316732921214e-2;
t7 = x4.*3.935103415550916e-2;
et1 = t2+t3+t5+t6+t7-x1.*1.0869845232386e-1;
et2 = u1.^2.*(x1.*3.93e-3-1.717295e-1).*1.284522481255733e-4;
et3 = t2+t3+t4+t6+t7-x2.*1.0869845232386e-1;
et4 = u2.^2.*(x2.*3.93e-3-1.717295e-1).*1.284522481255733e-4;
et5 = t2+t3+t4+t5+t7-x3.*1.0869845232386e-1;
et6 = u3.^2.*(x3.*3.93e-3-1.717295e-1).*1.284522481255733e-4;
et7 = u5.*3.736530937075711e-3+x1.*1.984107103619443e-2+x2.*1.984107103619443e-2;
et8 = x3.*1.984107103619443e-2-x4.*5.952321310858328e-2;
f = [et1+et2;et3+et4;et5+et6;et7+et8];
end
