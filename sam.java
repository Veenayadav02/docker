class sam
{
	public static void main(String[] args) {
		int a = 1, b = 2, c=3;
		int d = ++a + ++c - ++b + a++ - ++c + ++b -b++;
		System.out.println("a :"+a);
		System.out.println("b :"+b);
		System.out.println("c :"+c);
		System.out.println("d :"+d);
	}
}
