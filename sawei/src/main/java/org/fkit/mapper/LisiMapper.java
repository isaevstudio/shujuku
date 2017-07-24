package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.mapping.FetchType;

import org.fkit.domain.Lisi;

public interface LisiMapper {
	//遍历shoe
    @Select("select * from lisi")
	@Results({ @Result(id = true, column = "id", property = "id"),
		@Result(column = "shoe_id", property = "shoe", many = @Many(select = "org.fkit.mapper.ShoeMapper.selectByShoeId", fetchType = FetchType.LAZY)),		
	    @Result(column = "shoe_id", property = "shoe_id")})
	List<Lisi> findAll();
    
    //通过ID寻找shoe
    @Select("select * from lisi where shoe_id=#{shoe_id}")
	@Results({ @Result(id = true, column = "id", property = "id"),
			@Result(column = "shoe_id", property = "shoe", many = @Many(select = "org.fkit.mapper.ShoeMapper.selectByShoeId", fetchType = FetchType.LAZY)),				
			 @Result(column = "shoe_id", property = "shoe_id") })
	Lisi findWithId(@Param("shoe_id") int shoe_id);
   //进行收藏
    @Insert("insert into lisi(shoe_id) values(#{shoe_id})")
	@Options(useGeneratedKeys = true, keyProperty = "id")
	int saveLisi(Lisi lisi);

}
