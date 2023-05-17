
	create table Employee(
	EmployeeId int primary key,
	EmpName varchar(20),
	EmpEmail varchar(30),
	ContactNo int 
	);
	
	Create table Project(
	ProjectId int primary key,
	title varchar(20),
	description varchar(50),
	duration int 
	);

	create table task(
	taskID int primary key,
	projId int,
	empId int,
	description varchar(20),
	startDate date,
	endDate date,
	foreign key(empId) references Employee(EmployeeId),	
    foreign key(projId) references Project(ProjectId)
	);

	create table TaskAssignement(
	taskAssignmentId int primary key,
	taskid int,
	Assign date,
	status varchar(20),
	submission date,
	foreign key(taskid) references task(taskID)
	);
