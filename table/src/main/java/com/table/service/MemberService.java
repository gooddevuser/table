package com.table.service;

import com.table.vo.MemberVO;

public interface MemberService {

	void addMember(MemberVO member);

	MemberVO selectMember(MemberVO member);

	MemberVO findMemberid(MemberVO member);

	MemberVO findEmail(MemberVO member);

	void passwdUpdate(MemberVO member);


}
