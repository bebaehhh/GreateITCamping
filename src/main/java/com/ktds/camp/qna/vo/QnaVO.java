package com.ktds.camp.qna.vo;

import java.sql.Timestamp;

public class QnaVO {

	private int qnaId;
	private String qnaTitle;
	private String qnaContent;
	private String qnaWriter;
	private String qnaPassword;
	private String qnaSecretYn;
	private Timestamp qnaWriteDate;
	private String qnaAnswer;
	private int qnaViewCount;
	private String mId;

	public int getQnaId() {
		return qnaId;
	}

	public void setQnaId(int qnaId) {
		this.qnaId = qnaId;
	}

	public String getQnaTitle() {
		return qnaTitle;
	}

	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	public String getQnaContent() {
		return qnaContent;
	}

	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}

	public String getQnaWriter() {
		return qnaWriter;
	}

	public void setQnaWriter(String qnaWriter) {
		this.qnaWriter = qnaWriter;
	}

	public String getQnaPassword() {
		return qnaPassword;
	}

	public void setQnaPassword(String qnaPassword) {
		this.qnaPassword = qnaPassword;
	}

	public String getQnaSecretYn() {
		return qnaSecretYn;
	}

	public void setQnaSecretYn(String qnaSecretYn) {
		this.qnaSecretYn = qnaSecretYn;
	}

	public Timestamp getQnaWriteDate() {
		return qnaWriteDate;
	}

	public void setQnaWriteDate(Timestamp qnaWriteDate) {
		this.qnaWriteDate = qnaWriteDate;
	}

	public String getQnaAnswer() {
		return qnaAnswer;
	}

	public void setQnaAnswer(String qnaAnswer) {
		this.qnaAnswer = qnaAnswer;
	}

	public int getQnaViewCount() {
		return qnaViewCount;
	}

	public void setQnaViewCount(int qnaViewCount) {
		this.qnaViewCount = qnaViewCount;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

}
