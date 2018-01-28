package com.cmp.dao;

import java.util.List;

import com.cmp.model.Status;

public interface StatusDAO {
	List<Status> listStatus(Integer start, Integer length);
	long countStatus();
}
