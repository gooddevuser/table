package com.table.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.table.vo.BookVO;

@Mapper
public interface BookMapper {

	List<BookVO> showBooks();

	void BookWrite();

}