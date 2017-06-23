import java.text.SimpleDateFormat;
import java.util.Date;

import com.shushu.utils.FileUtils;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		System.out.println(simpleDateFormat.format(date));
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

		// List<Kind> kinds = new ArrayList<Kind>();
		// kinds = new KindService().list();
		// for (Kind kind : kinds) {
		// System.out.println(kind.toString());
		// }

		String string = "### 你好" + " 经过我们的审核，你的文件已经通过，并且开放下载了。"

		+ " 感谢你的参与";
		String filename = FileUtils.write(string);
		System.out.println(filename);
		String str = FileUtils
				.read("/home/shushu/log/778b2ea6-bf55-4bb1-b21b-d080e8ab5d28.md");
		System.out.println(str);
	}

}
