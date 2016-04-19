package commonTool;

import java.util.Random;

/**
 * Created by admin on 2016/4/19.
 */
public class generateStr {

    /**
     * 生成随机数字和字符的字符串
     * @return
     */

    public static String getRandomString() {               /*length表示生成字符串的长度*/
        String base = "abcdefghijklmnopqrstuvwxyz0123456789"; //生成字符串从此序列中取
        Random random = new Random();
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < 11; i++) {
            int number = random.nextInt(base.length());
            sb.append(base.charAt(number));
        }
        return sb.toString();
    }
}
