substitute_with_all_from_list([], _, _, []).
substitute_with_all_from_list([E | T], E, New, R):- !,
    substitute_with_all_from_list(T, E, New, RT),
    append(New, RT, R).
substitute_with_all_from_list([H | T], E, New, [H | R]):-
    substitute_with_all_from_list(T, E, New, R).

append([], L, L).
append([H | T], L, [H | R]):-
    append(T, L, R).

substitute_with_all_from_list_first_in_sublist([], _, []).
substitute_with_all_from_list_first_in_sublist([H | T], New, [RH | R]):-
    is_list(H), !,
    H = [HofH | _],  
    substitute_with_all_from_list_first_in_sublist(T, New, R),
    substitute_with_all_from_list(H, HofH, New, RH).
substitute_with_all_from_list_first_in_sublist([H | T], New, [H | R]):-
	substitute_with_all_from_list_first_in_sublist(T, New, R).