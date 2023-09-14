using System;

namespace ConsoleApp1
{
    public class Point
    {
        int x, y;
        public Point(int x, int y)
        {
            this.x = x;
            this.y = y;
        }
        public int getX()
        {
            return x;
        }
        public int getY()
        {
            return y;
        }
        public void setX(int x)
        {
            this.x = x;
        }
        public void setY(int y)
        {
            this.y = y;
        }
        public double dist(Point p)
        {
            return Math.Sqrt((x - p.getX()) * (x - p.getX()) + (y - p.getY())* (y - p.getY()));
        }
        public string toString()
        {
            return "x: " + x + "\ny: " + y;
        }
    }
    public class Triag
    {
        Point A,B,C;
        public Triag(Point A, Point B, Point C)
        {
            this.A = A;
            this.B = B;
            this.C = C;
        }
        public double Per()
        {
            return A.dist(B) + B.dist(C) + C.dist(A);
        }
        public double S()
        {
            double per = Per()/2;
            return Math.Sqrt(per * (per - A.dist(B)) * (per - B.dist(C)) * (per - C.dist(A)));
        }
        public string toString()
        {
            return " A( " + A.getX() + ", " + A.getY() +")\n B(" + B.getX() + ", " + B.getY() + ")\n C(" + C.getX() + ", " + C.getY() + ")";
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            int choose = Int32.Parse(Console.ReadLine());
            Point A = new Point(0, 0), B = new Point(0, 0), C = new Point(0, 0);
            Triag tri = new Triag(A, B, C);
            if (choose == '1')
            {
                A = new Point(0, 0);
                B = new Point(0, 4);
                C = new Point(4, 0);
                tri = new Triag(A, B, C);
                Console.WriteLine("Hello World!");
            }
           else
            {
                int x, y;
                Console.WriteLine("A: ");
                x = Int32.Parse(Console.ReadLine());
                y = Int32.Parse(Console.ReadLine());
                A = new Point(x, y);
                Console.WriteLine("B: ");
                x = Int32.Parse(Console.ReadLine());
                y = Int32.Parse(Console.ReadLine());
                B = new Point(x, y);
                Console.WriteLine("C: ");
                x = Int32.Parse(Console.ReadLine());
                y = Int32.Parse(Console.ReadLine());
                C = new Point(x, y);
                tri = new Triag(A, B, C);
            }
            Console.WriteLine(tri.toString());
            Console.WriteLine("P = " + tri.Per() + "\n");
            Console.WriteLine("S = " + tri.S());
        }
    }
}
