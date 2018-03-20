package com.jin.wedP.board.DAO;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jin.wedP.board.vo.board;
import com.jin.wedP.reply.vo.Reply;



@Repository
public class boardDAO {

	
	private static final Logger logger = LoggerFactory.getLogger(boardDAO.class);
	
	@Autowired
	SqlSession session;
	
	//글쓰기
	public void write(board board){
		
		boardMapper mapper = session.getMapper(boardMapper.class);
		
		try {
			
			mapper.write(board);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	//글 번호로 게시글 읽기
	public board readList(int boardnum) {
		boardMapper mapper = session.getMapper(boardMapper.class);
		System.out.println("다오 !!!: "+boardnum);
		board board = null;
		try {
			
			//해당 번호의 글정보 읽기
			board = mapper.readList(boardnum);
			System.out.println("보낸거 1");
			//조회수 1증가
			mapper.addHits(boardnum);
			System.out.println("보낸거 2");
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return board;
	}
	
	//글 전체 조회
	public int getTotal(HashMap<String, Object> hMap) {
		boardMapper mapper = session.getMapper(boardMapper.class);
		int total = 0 ;
		try {
			
			total = mapper.getTotal(hMap);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return total;
	}
	
	
	//글 전체 가져오기
	public ArrayList<board> selectBoardAll(HashMap<String, Object> hMap, int startRecord, int countPerPage){
		
	ArrayList<board> list = null;
		
	boardMapper mapper = session.getMapper(boardMapper.class);
	
	//전체 검색 결과 중 읽을 시작위치와 개수
	RowBounds rb = new RowBounds(startRecord, countPerPage);
	try {
			//검색어와 읽을 범위를 전달
			list = mapper.selectBoardAll(hMap, rb);
			System.out.println(list);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return list;
		
	}
	/**
	 * 글 번호로 해당 게시글 삭제
	 * @param 삭제할 글 번호와 로그인아이디가 포함된 정보
	 * @return 삭제된 글 개수
	 */
	public int deleteBoard(board board) {
		boardMapper mapper = session.getMapper(boardMapper.class);
		int result = 0;
		try {
			//검색어와 읽을 범위를 전달
			result = mapper.deleteBoard(board);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return result;
	}

	/**
	 * 게시글 수정
	 * @param board 수정할 글 정보
	 * @return 수정된 글 개수
	 */
	public int updateBoard(board board) {
		boardMapper mapper = session.getMapper(boardMapper.class);
		int result = 0;
		try {
			//검색어와 읽을 범위를 전달
			result = mapper.updateBoard(board);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return result;
	}

	/**
	 * 리플 저장
	 * @param reply 저장할 리플 정보
	 */
	public int insertReply(Reply reply) {
		boardMapper mapper = session.getMapper(boardMapper.class);
		
		int result = 0;
		try {
			result = mapper.insertReply(reply);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/**
	 * 한 게시글의 리플 목록 읽기
	 * @param boardnum 본문 글번호
	 * @return 리플목록
	 */
	public ArrayList<Reply> listReply(int boardnum) {
		boardMapper mapper = session.getMapper(boardMapper.class);
		ArrayList<Reply> replylist = mapper.listReply(boardnum);
		return replylist;
	}

	/**
	 * 리플 번호로 해당 리플 삭제
	 * @param reply 삭제할 리플 번호와 로그인아이디가 포함된 정보
	 * @return 삭제된 리플 개수
	 */
	public int deleteReply(Reply reply) {
		boardMapper mapper = session.getMapper(boardMapper.class);
		int result = mapper.deleteReply(reply);
		return result;
	}

	/**
	 * 리플 수정
	 * @param reply 수정할 리플 정보
	 * @return 수정된 리플 개수
	 */
	public int updateReply(Reply reply) {
		boardMapper mapper = session.getMapper(boardMapper.class);
		System.out.println("다오 : "+reply);
		int result = mapper.updateReply(reply);
		return result;
	}
}
