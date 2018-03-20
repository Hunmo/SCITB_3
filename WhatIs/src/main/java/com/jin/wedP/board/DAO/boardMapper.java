package com.jin.wedP.board.DAO;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;

import com.jin.wedP.board.vo.board;
import com.jin.wedP.reply.vo.Reply;


public interface boardMapper {
	//게시글 저장
	public void write(board board);
	//검색 후의 현재 페이지 목록
	public ArrayList<board> selectBoardAll(HashMap<String, Object> hMap, RowBounds rb);
	//조회수 1 증가
	public int addHits(int boardnum);
	//글번호로 해당 게시글 검색
	public board readList(int boardnum);
	//검색 후의 총 글 개수
	public int getTotal(HashMap<String, Object> hMap);
	//글번호와 아이디로 해당 게시글 삭제
	public int deleteBoard(board board);
	//글 수정
	public int updateBoard(board board);
	
	//리플 저장
	public int insertReply(Reply reply);
	//한 게시물의 리플 목록
	public ArrayList<Reply> listReply(int boardnum);
	//리플번호와 아이디로 해당 리플 삭제
	public int deleteReply(Reply reply);
	//리플 수정
	public int updateReply(Reply reply);
}
