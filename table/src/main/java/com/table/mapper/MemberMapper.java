package com.table.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.table.vo.MemberVO;

@Mapper
public interface MemberMapper {

	void addMember(MemberVO member);

	MemberVO selectMember(MemberVO member);
	
	MemberVO findMemberid(MemberVO member);

	MemberVO findEmail(MemberVO member);

	void passwdUpdate2(MemberVO member);
	
}