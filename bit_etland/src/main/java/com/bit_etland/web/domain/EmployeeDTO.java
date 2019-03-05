package com.bit_etland.web.domain;

import lombok.Data;

public @Data class EmployeeDTO {
	private String emploueeId, manager, name, birthDate, photo, notes;
}
