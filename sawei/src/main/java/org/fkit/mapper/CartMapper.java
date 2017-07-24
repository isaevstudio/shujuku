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
import org.fkit.domain.Cart;

public interface CartMapper {
	    
	@Select("select * from cart")
	@Results({ @Result(id = true, column = "id", property = "id"),
		@Result(column = "shoe_id", property = "shoe", many = @Many(select = "org.fkit.mapper.ShoeMapper.selectByShoeId", fetchType = FetchType.LAZY)),		
		@Result(column = "count", property = "count"), @Result(column = "shoe_id", property = "shoe_id")})
	List<Cart> findAll();
	
	    //加入购物车
	    @Insert("insert into cart(shoe_id,count) values(#{shoe_id},#{count})")
		@Options(useGeneratedKeys = true, keyProperty = "id")
		int saveCart(Cart cart);
         //通过ID寻找shoe
	       @Select("select * from cart where shoe_id=#{shoe_id}")
		@Results({ @Result(id = true, column = "id", property = "id"),
				@Result(column = "shoe_id", property = "shoe", many = @Many(select = "org.fkit.mapper.ShoeMapper.selectByShoeId", fetchType = FetchType.LAZY)),				
				@Result(column = "count", property = "count"), @Result(column = "shoe_id", property = "shoe_id") })
		Cart findWithId(@Param("shoe_id") Integer shoe_id);
        //增加shoe数量
	    @Update("update cart set count=count+1 where shoe_id=#{shoe_id}")
		void addCart(Cart cart);
        //清空购物车
	    @Delete("delete from cart ")
		void clearCart();
	    //减少购物车商品数量
	    @Update("update cart set count=count-1 where shoe_id=#{shoe_id}")
		void reduceCart(Cart cart);
	    //删除商品
	    @Delete("delete from cart where shoe_id=#{shoe_id}")
		void removeCart(Cart cart);


}
