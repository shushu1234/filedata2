import java.util.ArrayList;
import java.util.List;

import com.shushu.domain.Kind;
import com.shushu.service.KindService;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// Date date = new Date();
		// SimpleDateFormat simpleDateFormat = new SimpleDateFormat(
		// "yyyy-MM-dd hh:mm:ss");
		// System.out.println(simpleDateFormat.format(date));
		// List<String> list1 = new ArrayList<String>();
		// list1.add("ac");
		// list1.add("bcs");
		// List<Integer> list2 = new ArrayList<Integer>();
		// list2.add(5);
		// list2.add(6);
		//
		// System.out.println(list2.toArray());
		// String name = UUID.randomUUID().toString();
		// System.out.println(name);

		List<Kind> kinds = new ArrayList<Kind>();
		kinds = new KindService().list();
		for (Kind kind : kinds) {
			System.out.println(kind.toString());
		}
	}

}
