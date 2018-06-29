use CPL;
alter table SysUser add Gender bit;
alter table SysUser add PostalCode nvarchar(10);
alter table SysUser add Country nvarchar(30);
alter table SysUser add City nvarchar(30);
alter table SysUser add StreetAddress nvarchar(100);
alter table SysUser drop column Address;

insert into LangDetail values (1, 'Name', 'Name');
insert into LangDetail values (1, 'Gender', 'Gender');
insert into LangDetail values (1, 'Male', 'Male');
insert into LangDetail values (1, 'Female', 'Female');
insert into LangDetail values (1, 'DOB', 'Date of birth');
insert into LangDetail values (1, 'FirstName', 'First name');
insert into LangDetail values (1, 'LastName', 'Last name');
insert into LangDetail values (1, 'Year', 'Year');
insert into LangDetail values (1, 'Month', 'Month');
insert into LangDetail values (1, 'Day', 'Day');
insert into LangDetail values (1, 'StreetAddress', 'Street address');
insert into LangDetail values (1, 'Country', 'Country');
insert into LangDetail values (1, 'City', 'City');
insert into LangDetail values (1, 'Address', 'Address');
insert into LangDetail values (1, 'PostalCode', 'Postal code');
insert into LangDetail values (1, 'Mobile', 'Mobile');
insert into LangDetail values (1, 'Save', 'Save');
insert into LangDetail values (1, 'NonExistingAccount', 'Non-existing account');
insert into LangDetail values (1, 'PersonalInfoUpdated', 'Your account profile is updated!');

insert into LangDetail values (1, 'FirstNameRequired', 'Please fill in first name');
insert into LangDetail values (1, 'LastNameRequired', 'Please fill in last name');
insert into LangDetail values (1, 'StreetAddressRequired', 'Please fill in street address');
insert into LangDetail values (1, 'CountryRequired', 'Please fill in country');
insert into LangDetail values (1, 'CityRequired', 'Please fill in city');
insert into LangDetail values (1, 'StreetAddress', 'Please fill in street address');
insert into LangDetail values (1, 'PostalCodeRequired', 'Please fill in postal code');
insert into LangDetail values (1, 'MobileRequired', 'Please fill in mobile number');
insert into LangDetail values (1, 'InvalidDOB', 'Date of birth is invalid');