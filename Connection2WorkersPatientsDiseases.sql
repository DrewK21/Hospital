use Hospital
alter table dbo.Patients
with check add constraint FK_Patients_Workers foreign key (���_����������)
references dbo.Workers (���_����������)
on update cascade
on delete cascade
;

alter table dbo.Patients
with check add constraint FK_Patients_Diseases foreign key (���_�������)
references dbo.Diseases (���_�������)
on update cascade
on delete cascade
;