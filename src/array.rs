pub fn arry() {
    let arr = [1, 2, 3, 4, 5, 6, 7, 8];
    let mut loop_idx = 0;
    loop {
        if arr[loop_idx] % 2 == 0 {
            loop_idx += 1;
            continue;
        }
        if arr[loop_idx] == 8 {
            break;
        }
        println!("val : {}", arr[loop_idx]);
        loop_idx += 1;
    }
}
