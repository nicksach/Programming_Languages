infer(Value,Type):-integer(Value),Type=int, write("INFER "), write(Value), write(" : int.").

infer(Value,Type):-float(Value), Type=dbl, write("INFER "), write(Value), write(" : double.").

infer(Value,Type):-string(Value),Type=str,write("INFER "),write('"'), write(Value),write('"'), write(": string.   ").