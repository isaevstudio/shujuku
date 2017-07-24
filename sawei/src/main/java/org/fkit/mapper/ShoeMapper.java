package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Shoe;

public interface ShoeMapper {
	/**
	 * 查询所有shoe
	 * 
	 * @return xiuxianshoe对象集合
	 */
	//查询所有xiuxianshoe的集合
	@Select("select * from shoe where shoetype=#{shoetype}")
	List<Shoe> xxfindAll(@Param("shoetype") String shoetype);
	
	
	@Select("select * from shoe where id=#{id}")
	@Results({ @Result(id = true, column = "id", property = "id"), @Result(column = "shoeimage", property = "shoeimage"),
			@Result(column = "shoenumber", property = "shoenumber"), @Result(column = "shoetype", property = "shoetype"),
			@Result(column = "shoename", property = "shoename"),
			@Result(column = "shoeintro", property = "shoeintro"), @Result(column = "shoeprice", property = "shoeprice"),
			@Result(column = "shoecount", property = "shoecount"),@Result(column = "remark", property = "shoeimage")})
	List<Shoe> selectByShoeId(int id);
	/**
	 * 查询所有shoe
	 * 
	 * @return paobushoe对象集合
	 */
	//查询所有科技书的集合
	@Select("select * from shoe  where shoetype=#{shoetype}")
	List<Shoe> pbfindAll(@Param("shoetype") String shoetype);
	/**
	 * 查询所有shoe
	 * 
	 * @return lanqiushoe对象集合
	 */
	
	
	//查询所有lanqiushoe的集合
	@Select("select * from shoe where shoetype=#{shoetype}")
	List<Shoe>lqfindAll(@Param("shoetype") String shoetype);
    
    
  
    
    //查询所有huabanshoe的集合
	@Select("select * from shoe where shoetype=#{shoetype}")
	List<Shoe> hbfindAll(@Param("shoetype") String shoetype);

	@Select("select * from shoe")
	List<Shoe> getAll();

	  @Insert("insert into shoe(shoeimage,shoename,shoenumber,shoetype,shoeintro,shoeprice,shoecount) values(#{shoeimage},#{shoename},#{shoenumber},#{shoetype},#{shoeintro},#{shoeprice},#{shoecount})")
		 @Options(useGeneratedKeys = true, keyProperty = "id")
		 int saveShoe(Shoe shoe);
//鞋子下架
	  @Delete("delete from shoe where id=#{id}")
	  void deleteshoeid(Shoe shoe);
	  //通过鞋子ID找鞋
	  // 
	    @Select("select * from shoe where id=#{id}")
		@Results({ @Result(id = true, column = "id", property = "id"), @Result(column = "shoeimage", property = "shoeimage"),
				@Result(column = "shoenumber", property = "shoenumber"), @Result(column = "shoetype", property = "shoetype"),
				@Result(column = "shoename", property = "shoename"),
				@Result(column = "shoeintro", property = "shoeintro"), @Result(column = "shoeprice", property = "shoeprice"),
				@Result(column = "shoecount", property = "shoecount"),@Result(column = "remark", property = "shoeimage")})
	  		Shoe findWithId(@Param("id") int id);
	    

	  	
}

