package lottery;

import java.util.ArrayList;
import java.util.Random;

public class Dao {
	public static ArrayList<Integer> makeNum() {
		int numberCount = 7;
		ArrayList<Integer> numList = new ArrayList<>();
		for(int i = 0; i<numberCount; i++) {
			Random random = new Random();
			int num = random.nextInt(44) +1;
			numList.add(num);
		}
		return numList;
	}
	
	public static void main(String[] args) {}
}
