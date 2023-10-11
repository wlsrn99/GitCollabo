package com.multi.mvc005;

import org.springframework.stereotype.Service;

@Service
public class ComputerService {

	public int total(ComputerDTO computerDTO) {
		return computerDTO.getPrice() + computerDTO.getPrice2();
	}
}