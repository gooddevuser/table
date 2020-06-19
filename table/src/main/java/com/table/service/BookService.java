package com.table.service;

import java.util.List;

import com.table.vo.BookVO;

public interface BookService {

	List<BookVO> showBooks();

	void BookWrite(BookVO book);


}
