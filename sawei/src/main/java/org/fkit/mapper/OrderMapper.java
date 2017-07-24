package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.mapping.FetchType;
import org.fkit.domain.Order;

public interface OrderMapper {
    
	@Select("select * from `order`")
	@Results({ @Result(id = true, column = "id", property = "id"),
		@Result(column = "shoe_id", property = "shoe", many = @Many(select = "org.fkit.mapper.ShoeMapper.selectByShoeId", fetchType = FetchType.LAZY)),		
		@Result(column = "count", property = "count"), @Result(column = "shoe_id", property = "shoe_id")})
	List<Order> findAll();
	//加入订单 
    @Insert("insert into `order`(shoe_id,count) values(#{shoe_id},#{count})")
	@Options(useGeneratedKeys = true, keyProperty = "id")
	int saveOrder(Order order);
  //通过ID寻找shoe
    @Select("select * from `order` where shoe_id=#{shoe_id}")
	@Results({ @Result(id = true, column = "id", property = "id"),
			@Result(column = "shoe_id", property = "shoe", many = @Many(select = "org.fkit.mapper.ShoeMapper.selectByShoeId", fetchType = FetchType.LAZY)),				
			@Result(column = "count", property = "count"), @Result(column = "shoe_id", property = "shoe_id") })
	Order findWithId(@Param("shoe_id") int shoe_id);
  //增加shoe数量
    @Update("update `order` set count=count+1 where shoe_id=#{shoe_id}")
	void addOrder(Order order);
    //删除商品
    @Delete("delete from `order` where shoe_id=#{shoe_id}")
	void removeOrder(Order order);
}
