function cost=Bang_bang_sing_bang_objective(z)
    options = bvpset('SingularTerm',[],'AbsTol',10^-320,'RelTol',10^-320);
    xint=[linspace(0,z(1),500) linspace(z(1),z(2),500) linspace(z(2),z(3),500) linspace(z(3),1,500)];
    temp=xint(:);
    [z(1) z(2) z(3)]
    if z(2)<=z(1) | z(3)<=z(2) | z(3)<=z(1)
        cost=10^90
    else
        solinit=bvpinit(temp(:)',[1 1 2 1 1 1 1 -2]);
        sol=bvp4c(@bang_bang_sing_bang,@bang_bang_sing_bang_bc,solinit,options);
        y=deval(sol,temp(:)');
        cost=[trapz(temp(:)',(y(2,:).^2))];
    end
    
    end
