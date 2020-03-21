use Hospital
alter table dbo.Diseases
with check add constraint FK_Diseases_Drugs1 foreign key (Код_лекарства_1)
references dbo.Drugs (Код_лекарства)
on update cascade
on delete cascade
;
alter table dbo.Diseases
with check add constraint FK_Diseases_Drugs2 foreign key (Код_лекарства_2)
references dbo.Drugs (Код_лекарства)
on update
no action
;
alter table dbo.Diseases
with check add constraint FK_Diseases_Drugs3 foreign key (Код_лекарства_3)
references dbo.Drugs (Код_лекарства)
on update
no action
;