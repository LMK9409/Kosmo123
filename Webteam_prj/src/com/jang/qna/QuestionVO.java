package com.jang.qna;

import java.util.ArrayList;

public class QuestionVO {
	//question
	private int q_seq;
	private int m_seq;
	private String q_text;
	private String q_regdate;
	private String q_gubun;
	
	//answer
	private ArrayList<AnswerVO> answerlist;
	
	//code_list
	private ArrayList<Code_listVO> codelist;
	
	//member
	private ArrayList<MemberVO> memberlist;
	
	
	public ArrayList<AnswerVO> getAnswerlist() {
		return answerlist;
	}
	public void setAnswerlist(ArrayList<AnswerVO> answerlist) {
		this.answerlist = answerlist;
	}
	public ArrayList<Code_listVO> getCodelist() {
		return codelist;
	}
	public void setCodelist(ArrayList<Code_listVO> codelist) {
		this.codelist = codelist;
	}
	public ArrayList<MemberVO> getMemberlist() {
		return memberlist;
	}
	public void setMemberlist(ArrayList<MemberVO> memberlist) {
		this.memberlist = memberlist;
	}
	
	//question
	public int getQ_seq() {
		return q_seq;
	}
	public void setQ_seq(int q_seq) {
		this.q_seq = q_seq;
	}
	public int getM_seq() {
		return m_seq;
	}
	public void setM_seq(int m_seq) {
		this.m_seq = m_seq;
	}
	public String getQ_text() {
		return q_text;
	}
	public void setQ_text(String q_text) {
		this.q_text = q_text;
	}
	public String getQ_regdate() {
		return q_regdate;
	}
	public void setQ_regdate(String q_regdate) {
		this.q_regdate = q_regdate;
	}
	public String getQ_gubun() {
		return q_gubun;
	}
	public void setQ_gubun(String q_gubun) {
		this.q_gubun = q_gubun;
	}
	
	
}
