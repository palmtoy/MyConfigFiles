//  $ ./gen.sh MyTimestamp.java ts

import java.util.Date;

public class MyTimestamp {
	public static void main(String[] args) {
		if (args.length == 1) {
			int tsLen = 13;
			String ts = args[0];
			int len = ts.length();
			if(len < tsLen) {
				for(int i = len; i < tsLen; i++) {
					ts += "0";
				}
			} else if(len > tsLen) {
				ts = ts.substring(0, tsLen);
			}
			Date d = new Date(Long.parseLong(ts));
			System.out.println(d);
		} else {
			System.out.println("Please input timestamp(millisec)...");
			return;  
		}
	}
}

