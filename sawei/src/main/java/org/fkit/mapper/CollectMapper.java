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
import org.apache.ibatis.mapping.FetchType;
import org.fkit.domain.Collect;

public interface CollectMapper {
	//删除商品
    @Delete("delete from collect where shoe_id=#{shoe_id}")
	void removeCollect(Collect collect);
    
    //遍历shoe
    @Select("select * from collect")
	@Results({ @Result(id = true, column = "id", property = "id"),
		@Result(column = "shoe_id", property = "shoe", many = @Many(select = "org.fkit.mapper.ShoeMapper.selectByShoeId", fetchType = FetchType.LAZY)),		
	    @Result(column = "shoe_id", property = "shoe_id")})
	List<Collect> findAll();
    
    //通过ID寻找shoe
    @Select("select * from collect where shoe_id=#{shoe_id}")
	@Results({ @Result(id = true, column = "id", property = "id"),
			@Result(column = "shoe_id", property = "shoe", many = @Many(select = "org.fkit.mapper.ShoeMapper.selectByShoeId", fetchType = FetchType.LAZY)),				
			 @Result(column = "shoe_id", property = "shoe_id") })
	Collect findWithId(@Param("shoe_id") int shoe_id);
   //进行收藏
    @Insert("insert into collect(shoe_id) values(#{shoe_id})")
	@Options(useGeneratedKeys = true, keyProperty = "id")
	int saveCollect(Collect collect);
    //清空收藏
    @Delete("delete from collect ")
	void clearCollect();
}
