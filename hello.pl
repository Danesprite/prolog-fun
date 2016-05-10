% http://www.swi-prolog.org/FAQ/UnixExe.html
% For UNIX executable: swipl -o hello -g hello -c hello.pl
hello :-
    hello(10, 0).
hello(N, N) :- halt.
hello(N, C) :-
    format('Hello world!~n'),
    NewC is C + 1,
    hello(N, NewC).
