package arrays;

import java.util.Random;

public class _00_ArrayCheatSheet {
	public static void main(String[] args) {
		//1. make an array of 5 Strings
		String[] words = new String[5];
		words[0] = "hello";
		words[1] = "hey";
		words[2] = "hi";
		words[3] = "what's up";
		words[4] = "how's life";
		//2. print the third element in the array
		System.out.println(words[2]);
		//3. set the third element to a different value
		words[2] = "changing";
		//4. print the third element again
		System.out.println(words[2]);
		//5. use a for loop to print all the values in the array
		//   BE SURE TO USE THE ARRAY'S length VARIABLE
		for(int i = 0; i<words.length; i++) {
			System.out.println(words[i]);
		}
		
		//6. make an array of 50 integers
		int[] nums = new int[50];
		//7. use a for loop to make every value of the integer array a random number
		Random rand = new Random();
		for(int i=0; i<nums.length; i++) {
			nums[i] = rand.nextInt(200);
		}
		//8. without printing the entire array, print only the smallest number in the array
		int smallest = nums[0];
		for(int value : nums) {
if(value<smallest) {
	smallest = value;
}
		}
		System.out.println(smallest);
		System.out.println("----");
		//9 print the entire array to see if step 8 was correct
		for(int value : nums) {
			System.out.println(value);
		}
		//10. print the largest number in the array.
		System.out.println("---");
		int largest = nums[0];
		for(int values:nums) {
		if(largest<values) {
			largest = values;
		}
		}
		System.out.println(largest);
	}
}
