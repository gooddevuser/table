package com.table.service;

import java.util.List;

import com.table.mapper.BookMapper;
import com.table.vo.BookVO;

import lombok.Setter;

public class BookServiceImpl implements BookService {
	
	@Setter
	private BookMapper bookMapper;
	
	@Override
	public List<BookVO> showBooks() {		
		return bookMapper.showBooks();
	}

	@Override
	public void BookWrite(BookVO book) {
		bookMapper.BookWrite();
		
	}

	
}