t1(���-��,1).
t1(�����,1).
t1(����,1).
t1(�������,1).
t1(�������,2).
t1(�����,2).
t1(�������,2).
t1(�����_�_��������������,2).
t1(���������_�����,2).
t1(�������,2).
t1(������,2).
t1(����,2).
t1(������,3).
t1(����_�_��������,3).
t1(���������,3).
t1(������,3).
t1(��������,3).
t1(�������_��_���������,3).

t2(���-��,1).
t2(�����,1).
t2(����,1).
t2(�������,1).
t2(�������,2).
t2(�����,3).
t2(�������,2).
t2(�����_�_��������������,2).
t2(���������_�����,2).
t2(�������,2).
t2(������,2).
t2(����,2).
t2(������,3).
t2(����_�_��������,3).
t2(���������,2).
t2(������,2).
t2(��������,2).
t2(�������_��_���������,3).

t3(���-��,4).
t3(�����,4).
t3(����,2).
t3(�������,2).
t3(�������,1).
t3(�����,2).
t3(�������,2).
t3(�����_�_��������������,1).
t3(���������_�����,4).
t3(�������,2).
t3(������,2).
t3(����,4).
t3(������,3).
t3(����_�_��������,4).
t3(���������,2).
t3(������,4).
t3(��������,4).
t3(�������_��_���������,2).

t4(���-��,0).
t4(�����,1).
t4(����,1).
t4(�������,1).
t4(�������,1).
t4(�����,1).
t4(�������,1).
t4(�����_�_��������������,0).
t4(���������_�����,1).
t4(�������,1).
t4(������,1).
t4(����,1).
t4(������,1).
t4(����_�_��������,1).
t4(���������,1).
t4(������,1).
t4(��������,1).
t4(�������_��_���������,1).

t5(���-��,1).
t5(�����,1).
t5(����,1).
t5(�������,0).
t5(�������,0).
t5(�����,1).
t5(�������,1).
t5(�����_�_��������������,0).
t5(���������_�����,0).
t5(�������,1).
t5(������,1).
t5(����,1).
t5(������,0).
t5(����_�_��������,1).
t5(���������,0).
t5(������,1).
t5(��������,0).
t5(�������_��_���������,0).

t6(���-��,1).
t6(�����,1).
t6(����,1).
t6(�������,1).
t6(�������,1).
t6(�����,1).
t6(�������,1).
t6(�����_�_��������������,1).
t6(���������_�����,1).
t6(�������,1).
t6(������,1).
t6(����,1).
t6(������,1).
t6(����_�_��������,0).
t6(���������,0).
t6(������,1).
t6(��������,0).
t6(�������_��_���������,1).

t7(���-��,1).
t7(�����,1).
t7(����,1).
t7(�������,4).
t7(�������,3).
t7(�����,2).
t7(�������,2).
t7(�����_�_��������������,1).
t7(���������_�����,4).
t7(�������,1).
t7(������,4).
t7(����,1).
t7(������,3).
t7(����_�_��������,4).
t7(���������,3).
t7(������,3).
t7(��������,3).
t7(�������_��_���������,3).

t8(���-��,1).
t8(�����,1).
t8(����,1).
t8(�������,0).
t8(�������,1).
t8(�����,1).
t8(�������,1).
t8(�����_�_��������������,1).
t8(���������_�����,0).
t8(�������,0).
t8(������,0).
t8(����,1).
t8(������,0).
t8(����_�_��������,0).
t8(���������,1).
t8(������,1).
t8(��������,1).
t8(�������_��_���������,1).

t9(���-��,1).
t9(�����,1).
t9(����,1).
t9(�������,1).
t9(�������,1).
t9(�����,1).
t9(�������,1).
t9(�����_�_��������������,1).
t9(���������_�����,1).
t9(�������,1).
t9(������,1).
t9(����,1).
t9(������,1).
t9(����_�_��������,1).
t9(���������,1).
t9(������,0).
t9(��������,0).
t9(�������_��_���������,1).

t10(���-��,0).
t10(�����,0).
t10(����,0).
t10(�������,0).
t10(�������,0).
t10(�����,1).
t10(�������,0).
t10(�����_�_��������������,1).
t10(���������_�����,0).
t10(�������,1).
t10(������,0).
t10(����,0).
t10(������,1).
t10(����_�_��������,1).
t10(���������,1).
t10(������,1).
t10(��������,1).
t10(�������_��_���������,1).


q1(X1):-write("��� �����"), nl, write("1-������"), nl, write("2-������"), nl, write("3-������"),nl, read(X1).
q2(X2):-write("��� ������"), nl, write("1-� �������� �����"), nl, write("2-� ������� �������"), nl,write("3-� ��������/��������/�� ����� ��������"),nl, read(X2).
q3(X3):-write("��� ����� ����� �����?"), nl, write("1-�����������"), nl, write("2-�������"),nl, write("3-����������"),nl, write("4-������"), nl, read(X3).
q4(X4):-write("�������� �� ��� ������������?"), nl, write("0-��"), nl, write("1-���"), nl, read(X4).
q5(X5):-write("�������� �� ��� �������� ��������?"), nl, write("0-��"), nl, write("1-���"), nl, read(X5).
q6(X6):-write("�������� �� ��� ������?"), nl, write("0-��"), nl, write("1-���"), nl, read(X6).
q7(X7):-write("��� �����"),nl, write("1-�������"), nl, write("2-�������"),nl, write("3-����������"),nl, write("4-���-�� ������"), nl, read(X7).
q8(X8):-write("��� ������ ��������?"), nl, write("0-��"), nl, write("1-���"), nl,read(X8).
q9(X9):-write("��� ������ � ����������?"), nl, write("0-��"), nl, write("1-���"), nl, read(X9).
q10(X10):-write("�������� �� ��� �����?"), nl, write("0-��"), nl, write("1-���"), nl, read(X10).

rez:-q1(X1),q2(X2),q3(X3),q4(X4),q5(X5),q6(X6),q7(X7),q8(X8),q9(X9),q10(X10),t1(X,X1),t2(X,X2),t3(X,X3),t4(X,X4),t5(X,X5),t6(X,X6),t7(X,X7),t8(X,X8),t9(X,X9),t10(X,X10),write(X).

rez1:-q1(X1),((findall(X,t1(X,X1),L),length(L,N),N==1,nl,write(L),nl,abort());true),
    q2(X2),((findall(X,(t1(X,X1),t2(X,X2)),L),length(L,N),N==1,nl,write(L),nl,abort());true),
    q3(X3),((findall(X,(t1(X,X1),t2(X,X2),t3(X,X3)),L),length(L,N),N==1,nl,write(L),nl,abort());true),
    q4(X4),((findall(X,(t1(X,X1),t2(X,X2),t3(X,X3),t4(X,X4)),L),length(L,N),N==1,nl,write(L),nl,abort());true),
    q5(X5),((findall(X,(t1(X,X1),t2(X,X2),t3(X,X3),t4(X,X4),t5(X,X5)),L),t6(L,N),N==1,nl,write(L),nl,abort());true),
    q6(X6),((findall(X,(t1(X,X1),t2(X,X2),t3(X,X3),t4(X,X4),t5(X,X5),t6(X,X6)),L),length(L,N),N==1,nl,write(L),nl,abort());true),
    q7(X7),((findall(X,(t1(X,X1),t2(X,X2),t3(X,X3),t4(X,X4),t5(X,X5),t6(X,X6),t7(X,X7)),L),length(L,N),N==1,nl,write(L),nl,abort());true),
    q8(X8),((findall(X,(t1(X,X1),t2(X,X2),t3(X,X3),t4(X,X4),t5(X,X5),t6(X,X6),t7(X,X7),t8(X,X8)),L),length(L,N),N==1,nl,write(L),nl,abort());true),
    q9(X9),((findall(X,(t1(X,X1),t2(X,X2),t3(X,X3),t4(X,X4),t5(X,X5),t6(X,X6),t7(X,X7),t8n(X,X8),t9(X,X9)),L),length(L,N),N==1,nl,write(L),nl,abort());true),
    q10(X10),((findall(X,(t1(X,X1),t2(X,X2),t3(X,X3),t4(X,X4),t5(X,X5),t6(X,X6),t7(X,X7),t8(X,X8),t9(X,X9),t10(X,X10)),L),length(L,N),N==1,nl,write(L),nl,abort());true).