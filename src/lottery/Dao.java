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
		int numbersNeeded = 10;
		
		if (max < numbersNeeded)
		{
		    throw new IllegalArgumentException("Can't ask for more numbers than are available");
		}
		
		Random rng = new Random(); // Ideally just create one instance globally
		// Note: use LinkedHashSet to maintain insertion order
		Set<Integer> generated = new TreeSet<Integer>();
		for(int i=1; i<numbersNeeded; i++) {
		    Integer next = rng.nextInt(max) + 1;
		    // As we're adding to a set, this will automatically do a containment check
		    generated.add(next);
		}
		return generated; 
	}
	
	public static void main(String[] args) {}
}
