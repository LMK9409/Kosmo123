package com.jang.point;

import org.apache.ibatis.session.SqlSession;

import com.jang.common.MyBatisFactory;

public class PointDAO {
	public int insert(PointVO vo) {
		SqlSession conn= null;
		int res = 0;
		try {
			conn = MyBatisFactory.getFactory().openSession();
			res = conn.insert("pointRecharge", vo);
			conn.commit();
		}finally {
			conn.close();
		} 
		return res;
	} 
}
