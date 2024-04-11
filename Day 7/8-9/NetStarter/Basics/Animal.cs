class Animal{
    internal string name;
    internal string bodycolor;
    internal string scientificname;
    internal int weight;
    internal int limbs;
   internal void PrintDetails(){
    Console.Writeline($" {name} {bodycolor} {scientificname} {weight} {limbs}");
    }
}