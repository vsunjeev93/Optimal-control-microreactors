function dydx=bang_bang(x,y,region)
Da=2.29;gamma=10.93;St=70.63;B=-21.04;CP=16.72;psi_max=475.61;

    switch region
        case 1
            dydx(1)=-Da*exp(y(2)/(1+y(2)/gamma))*y(1);
            dydx(2)=B*Da*exp(y(2)/(1+y(2)/gamma))*y(1)+St*(y(3)-y(2));
            dydx(3)=y(4);
            dydx(4)=-(St/CP*(y(2)-y(3))+psi_max/CP);
             dydx(5:8)=-[-Da*exp(y(2)/(1+y(2)/gamma))  B*Da*exp(y(2)/(1+y(2)/gamma)) 0 0;...
             -Da*exp(y(2)/(1+y(2)/gamma))*y(1)/(1+y(2)/gamma)^2  B*Da*exp(y(2)/(1+y(2)/gamma))*y(1)/(1+y(2)/gamma)^2-St 0  -St/CP;...
             0                                    St                                               0  St/CP;...
             0                                   0                                           1 0]*[y(5);y(6);y(7);y(8)]...
             -[0;2*(y(2)-0);0;0];

        case 2
            dydx(1)=-Da*exp(y(2)/(1+y(2)/gamma))*y(1);
            dydx(2)=B*Da*exp(y(2)/(1+y(2)/gamma))*y(1)+St*(y(3)-y(2));
            dydx(3)=y(4);
            dydx(4)=-(St/CP*(y(2)-y(3))+0/CP);
            dydx(5:8)=-[-Da*exp(y(2)/(1+y(2)/gamma))  B*Da*exp(y(2)/(1+y(2)/gamma)) 0 0;...
           -Da*exp(y(2)/(1+y(2)/gamma))*y(1)/(1+y(2)/gamma)^2  B*Da*exp(y(2)/(1+y(2)/gamma))*y(1)/(1+y(2)/gamma)^2-St 0  -St/CP;...
             0                                    St                                               0  St/CP;...
             0                                   0                                           1 0]*[y(5);y(6);y(7);y(8)]...
             -[0;2*(y(2)-0);0;0];

           
    end
