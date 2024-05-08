

pub fn main() {
    let st3= String::from("z,a,d,e,r,w,c");
    let mut v1: Vec<char>= st3.chars().collect();
    v1.sort();
    v1.dedup();
    for char in v1{
        println!("{}", char);
    };
    let st4: &str = "Random string";
    let mut st5= st4.to_string();
    println!("{}", st5);
}
