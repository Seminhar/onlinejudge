package commonTool;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by admin on 2016/4/19.
 */
public class generateTimeFormat {
    /**
     * 生成时间格式
     * @return
     */
    public static String getTimes(){
        Date date=new Date();
        SimpleDateFormat dateF = new SimpleDateFormat("yyyy-MM-dd-HH:mm");
        String timeF = dateF.format(date);
        return timeF.toString();
    }
}
