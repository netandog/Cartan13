////////////
// X0(44) //
////////////

load "coleman.m";

Q:=y^5+12*x^2*y^3-14*x^2*y^2+(13*x^4+6*x^2)*y-(11*x^6+6*x^4+x^2); // equation found by Yang
p:=7;
N:=20;
data:=coleman_data(Q,p,N);

P1:=set_point(1,1,data);
P2:=set_bad_point(0,[1,0,0,0,0],false,data);

coleman_integrals_on_basis(P1,P2,data:e:=75);
/*
(O(7^9) O(7^9) O(7^9) O(7^9) -9435851 + O(7^9) 133705101*7^-1 + O(7^9) 15108811 + O(7^9) -101383043*7^-1 + O(7^9))
9
*/

// In fact, all Coleman integrals of regular differentials between rational points seem to vanish:

Qpoints:=Q_points(data,1000);

Qpoints;
/*
[
    rec<recformat<x, b, inf, xt, bt, index> | 
        x := 1 + O(7^20),
        b := [ 1 + O(7^20), 1 + O(7^20), 1 + O(7^20), 1 + O(7^20), -2 + O(7^20) 
            ],
        inf := false>,
    rec<recformat<x, b, inf, xt, bt, index> | 
        x := 0,
        b := [ 1 + O(7^20), 0, 0, 0, 0 ],
        inf := false>,
    rec<recformat<x, b, inf, xt, bt, index> | 
        x := 7253842390692000 + O(7^20),
        b := [ 1 + O(7^20), -21761527172076000 + O(7^20), 15826565216055273 + 
            O(7^20), 32312570649446182 + O(7^20), -14507684781384000 + O(7^20) 
        ],
        inf := false>,
    rec<recformat<x, b, inf, xt, bt, index> | 
        x := -1 + O(7^20),
        b := [ 1 + O(7^20), 1 + O(7^20), 1 + O(7^20), -1 + O(7^20), 2 + O(7^20) 
            ],
        inf := false>,
    rec<recformat<x, b, inf, xt, bt, index> | 
        x := -7253842390692000 + O(7^20),
        b := [ 1 + O(7^20), -21761527172076000 + O(7^20), 15826565216055273 + 
            O(7^20), -32312570649446182 + O(7^20), 14507684781384000 + O(7^20) 
        ],
        inf := false>,
    rec<recformat<x, b, inf, xt, bt, index> | 
        x := 0,
        b := [ 1 + O(7^20), 0, 0, 0, 0 ],
        inf := true>
]
*/

for i:=2 to #Qpoints do
 coleman_integrals_on_basis(Qpoints[1],Qpoints[i],data:e:=75);
end for;
/*
(O(7^9) O(7^9) O(7^9) O(7^9) -9435851 + O(7^9) 133705101*7^-1 + O(7^9) 15108811 
    + O(7^9) -101383043*7^-1 + O(7^9))
9
(O(7^17) O(7^17) O(7^17) O(7^17) -11077643524975*7 + O(7^17) 
    364282152938117*7^-1 + O(7^17) 46526102772951 + O(7^17) 
    -195409631413203*7^-1 + O(7^17))
17
(O(7^17) O(7^17) O(7^17) O(7^17) O(7^17) 396448347401473*7^-1 + O(7^17) O(7^17) 
    455955808031019*7^-1 + O(7^17))
17
(O(7^17) O(7^17) O(7^17) O(7^17) -11077643524975*7 + O(7^17) 32166194463356*7^-1
    + O(7^17) 46526102772951 + O(7^17) 651365439444222*7^-1 + O(7^17))
17
(O(7^17) O(7^17) O(7^17) O(7^17) -100806556141826 + O(7^17) 
    -615982625254488*7^-1 + O(7^17) -98867968406330 + O(7^17) 
    -586228894939715*7^-1 + O(7^17))
17
*/