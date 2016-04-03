%http://rosettacode.org/wiki/Determine_if_a_string_is_numeric#Prolog
numeric_string(String) :-
    atom_string(Atom, String),
    atom_number(Atom, _).


test_strings(Strings) :-
    forall( member(String, Strings),
            ( ( numeric_string(String)
              ->  Result = a
              ;   Result = 'not a' ),
              format('~w is ~w number.~n', [String, Result])
            )
          ).
