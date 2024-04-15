import java.util.Arrays;

public class Solution {
	static void rotate(int[] arr, int K) {
		for (int i = 0; i < K; i++) {
			rotateByOne(arr);
		}
	}

	static void rotateByOne(int[] arr) {
		int lastElement = arr[arr.length - 1];

		for (int i = arr.length - 1; i >= 1; i--) {
			arr[i] = arr[i - 1];
		}

		arr[0] = lastElement;
	}

	static int[] rotateOnePass(int[] arr, int N, int K) {
		int[] temp = new int[N];
		int index = 0;
		for (int i = K; i < N; i++) {
			temp[i] = arr[index++];
		}
		for (int i = 0; i < K; i++) {
			temp[i] = arr[index++];
		}
		return temp;
	}

	public static void main(String[] args) {
		int[] arr = { 1, 2, 3, 4, 5, 6 };
		int N = arr.length;
		int K = 8;
		//
		// 2N + x

		K = K % N;
		if (K == 0) {
			System.out.println(Arrays.toString(arr));
		} else {
			// rotate(arr, K);
			// System.out.println(Arrays.toString(arr));
			System.out.println(Arrays.toString(rotateOnePass(arr, N, K)));
		}

	}

	/*
	 * K=1
	 * {6, 1, 2, 3, 4, 5}
	 * K=2
	 * {5, 6, 1, 2, 3, 4}
	 */
}

// O (K * N)