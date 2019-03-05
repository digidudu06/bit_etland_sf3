package com.bit_etland.web.enums;
/*emploueeId, manager, name, birthDate, photo, notes*/
public enum EmployeeSQL {
	REGISTER, COUNT, ACCESS;
	@Override
	public String toString() {
		StringBuffer query= new StringBuffer();
		switch (this) {
		case REGISTER:
			query.append("INSERT INTO EMPLOYEES(EMPLOYEE_ID,MANAGER,NAME,BIRTH_DATE,PHOTO,NOTES)"
					+ " VALUES("
					+ "EMP_SEQ.NEXTVAL, ?, ?, ?, '7', ?)");
			break;
		case COUNT:
			query.append("SELECT COUNT(*) COUNT FROM EMPLOYEES");
			break;
		case ACCESS: 
			query.append("SELECT NAME FROM EMPLOYEES " + 
					"WHERE EMPLOYEE_ID LIKE ? AND NAME LIKE ?");
			break;
		}
		return query.toString();
	}
}
