%Script to show the general correlation step in ASWMS, on mapview  
close all

figure
mkfig_EARmap_basic
hold on
stas = [0 event.stadata(6).stla event.stadata(6).stlo;0 event.stadata(10).stla event.stadata(10).stlo;...
    0 event.stadata(11).stla event.stadata(11).stlo;];

gcf
set(gcf,'Position',[440 82 1001 716]);
m_coord('geographic');
%good connection sta 1 and 2
m_plot(stas([1,2],3),stas([1:2],2),'color',[0 0.5 0],'linewidth',2);
%bad connection sta 1 and 3
m_plot(stas([1,3],3),stas([1,3],2),'color','r','linewidth',2);

%stations atop
m_plot(stas(:,3),stas(:,2),'v','markersize',12,'color','r','markerfacecolor','w');
ax1 = axes(gcf,'pos',[0.47 0.57 0.25 0.1]); hold on

%good sta 1
plot(ax1,event.stadata(6).data,'k','linewidth',1)
set(ax1,'color','none','xticklabel',[],'yticklabel',[]);
set(ax1,'Xcolor','none','Ycolor','none')
%good sta 2
ax2 = axes(gcf,'pos',[0.34 0.395 0.25 0.1]); hold on
plot(ax2,event.stadata(10).data,'k','linewidth',1)
set(ax2,'color','none','xticklabel',[],'yticklabel',[]);
set(ax2,'Xcolor','none','Ycolor','none')
%bad sta 1
ax3 = axes(gcf,'pos',[0.63 0.268 0.25 0.1]); hold on
plot(ax3,event.stadata(2).data,'r','linewidth',1)% trace is bad
set(ax3,'color','none','xticklabel',[],'yticklabel',[]);
set(ax3,'Xcolor','none','Ycolor','none')



