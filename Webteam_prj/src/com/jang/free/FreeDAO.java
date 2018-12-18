package com.jang.free;
 
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.jang.common.MyBatisFactory;
import com.jang.free.FreeVO;

public class FreeDAO { 
	public ArrayList<FreeVO> selectAll(){
		SqlSession conn=null;
		ArrayList<FreeVO> resList = null;
		try {
			conn=MyBatisFactory.getFactory().openSession(); 
			resList=(ArrayList)conn.selectList("freeNameSpace.freeAll");
		}catch(Exception e) {
			conn.close();
		}
		return resList;
	}
	public  FreeVO selectOne(int fseq) {
	      SqlSession conn =null;
	      FreeVO res =null;
	      try {
	         conn = MyBatisFactory.getFactory().openSession(); 
	         res =(FreeVO)conn.selectOne("freeNameSpace.freeOne",fseq);   
	      }catch(Exception e) {
	    	  conn.close();
	      }
	      return res;
	   }
	
}
