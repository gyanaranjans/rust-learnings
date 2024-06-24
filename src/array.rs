pub fn arry() {
    let arr = [1, 2, 3, 4, 5, 6, 7, 8];
    for &num in arr.iter() {
        if num == 8 {
            break;
        }
        if num % 2 != 0 {
            println!("val : {}", num);
        }
    }
}
