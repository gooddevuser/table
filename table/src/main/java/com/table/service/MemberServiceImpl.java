package com.table.service;

import com.table.mapper.MemberMapper;
import com.table.vo.MemberVO;

import lombok.Setter;

public class MemberServiceImpl implements MemberService {
	
	@Setter
	private MemberMapper memberMapper;

	@Override
	public void addMember(MemberVO member) {
		memberMapper.addMember(member);
		
	}

	@Override
	public MemberVO selectMember(MemberVO member) {
		return memberMapper.selectMember(member);
	}

	@Override
	public MemberVO findMemberid(MemberVO member) {		
		return memberMapper.findMemberid(member);
	}

	@Override
	public MemberVO findEmail(MemberVO member) {
		return memberMapper.findEmail(member);
	}

	@Override
	public void passwdUpdate(MemberVO member) {
		memberMapper.passwdUpdate2(member);
		
	}

	
}