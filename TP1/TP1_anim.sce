Nt=50;
t=linspace(0,2*%pi,Nt);
x=cos(t);
y=sin(t);

x1=cos(2*t);
y1=sin(2*t);



for i=1:Nt-1
    subplot(2,2,1)
    plot2d(x([i:i+1]),y([i:i+1]),2,rect=[-1.1,-1.1,1.1,1.1])
    plot2d(x([i:i+1]),y([i:i+1]),-4,rect=[-1.1,-1.1,1.1,1.1])
    if i==1
        xlabel('x')
        ylabel('y')
        xtitle('cos(t),sin(t)')
    end
    subplot(2,2,3)
    plot2d(x1([i:i+1]),y1([i:i+1]),5,rect=[-1.1,-1.1,1.1,1.1])
    plot2d(x1([i:i+1]),y1([i:i+1]),-5)
    if i==1
        xlabel('x')
        ylabel('y')
        xtitle('cos(2t),sin(2t)')
    end
    subplot(2,2,2)
    plot2d(t([i:i+1]),x([i:i+1]),1,rect=[0,-1,2*%pi,1])
    plot2d(t([i:i+1]),y([i:i+1]),2)
    if i==1
        xlabel('t')
        ylabel('x,y')
        xtitle('cos(t),sin(t)')
    end
    subplot(2,2,4)
    plot2d(t([i:i+1]),x1([i:i+1]),3,rect=[0,-1,2*%pi,1])
    plot2d(t([i:i+1]),y1([i:i+1]),4)
    if i==1
        xlabel('t')
        ylabel('x,y')
        xtitle('cos(2t),sin(2t)')
    end
    xpause(500000)
end
