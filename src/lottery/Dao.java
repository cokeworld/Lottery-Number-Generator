package lottery;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.TreeSet;

public class Dao {
	public static Set<Integer> makeNum() {
		int max = 44;
		int numbersNeeded = 6;
		
		if (max < numbersNeeded)
		{
		    throw new IllegalArgumentException("Can't ask for more numbers than are available");
		}
		
		Random rng = new Random();
		Set<Integer> generated = new TreeSet<Integer>();
		for(int i=0; i<numbersNeeded; i++) {
		    Integer next = rng.nextInt(max) + 1;
		    generated.add(next);
		}
		return generated; 
	}
	
	public static void main(String[] args) {}
}
