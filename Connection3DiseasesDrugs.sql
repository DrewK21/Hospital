use Hospital
alter table dbo.Diseases
with check add constraint FK_Diseases_Drugs1 foreign key (���_���������_1)
references dbo.Drugs (���_���������)
on update cascade
on delete cascade
;
alter table dbo.Diseases
with check add constraint FK_Diseases_Drugs2 foreign key (���_���������_2)
references dbo.Drugs (���_���������)
on update
no action
;
alter table dbo.Diseases
with check add constraint FK_Diseases_Drugs3 foreign key (���_���������_3)
references dbo.Drugs (���_���������)
on update
no action
;