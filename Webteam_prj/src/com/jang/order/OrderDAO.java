package com.jang.order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;


import com.jang.common.MyBatisFactory;

public class OrderDAO {
  
 
 

   
   
   
   /**
    * 회원 정보 수정을 위한 모든 정보 가져오기
    * @param userId
    * @return
    */
   public  ArrayList<orderVO> select() {
      SqlSession conn =null;
      ArrayList<orderVO> resList =null;
      try {
         conn = MyBatisFactory.getFactory().openSession();
         resList =(ArrayList)conn.selectList("orderNameSpace.orderAll");   
      }catch(Exception e) {
    	  conn.close();
      }
      return resList;
   }
   
   
}