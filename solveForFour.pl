% gprolog
% consult("printer.pl")
% L = []
% printer(L)

printer(L) :-

L = [
    UNUN,
    UNDEUX,
    DEUXUN,
    DEUXDEUX,
    TROISUN,
    TROISDEUX,
    QUATREUN,
    QUATREDEUX
],

fd_domain(L, 0, 7),
fd_all_different(L),

UNDEUX - UNUN #= 2,
DEUXDEUX - DEUXUN #= 3,
TROISDEUX - TROISUN #= 4,
QUATREDEUX - QUATREUN #= 5,

fd_labeling(L).