use std::cmp::Ordering;

pub fn main() {
    let my_age = 19;
    let voting_age = 18;
    match my_age.cmp(&voting_age) {
        Ordering::Less => println!("I'm not old enough to vote"),
        Ordering::Equal => println!("I'm old enough to vote"),
        Ordering::Greater => println!("I'm old enough to vote and then some to fuck"),
    }
}
