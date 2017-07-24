import static org.junit.Assert.*;

import java.util.List;

import org.fkit.domain.Shoe;
import org.fkit.service.ShoeService;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class Shoetest extends BaseJUnit{
	@Autowired
    private ShoeService shoeService;

	@Test
	public void shoetest() {
		List<Shoe> shoe_list=shoeService.getAll();
		System.out.println(shoe_list);
	}
	//找单独特定的鞋
	 @Test
	 public void shoetest1(){
		 Shoe shoe=shoeService.findwithid(9);
		 System.out.println("我的第九双鞋子是："+shoe);
	 }

}
