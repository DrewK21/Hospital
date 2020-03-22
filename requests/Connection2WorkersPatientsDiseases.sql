use Hospital
alter table dbo.Patients
with check add constraint FK_Patients_Workers foreign key (Код_сотрудника)
references dbo.Workers (Код_сотрудника)
on update cascade
on delete cascade
;

alter table dbo.Patients
with check add constraint FK_Patients_Diseases foreign key (Код_болезни)
references dbo.Diseases (Код_болезни)
on update cascade
on delete cascade
;