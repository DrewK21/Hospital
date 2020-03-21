use Hospital
alter table dbo.Workers
with check add constraint FK_Workers_Theme foreign key (Код_должности)
references dbo.Theme (Код_должности)
on update cascade
on delete cascade
;