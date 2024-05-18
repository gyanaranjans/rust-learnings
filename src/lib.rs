#![allow(unused)]
use rand::Rng;
use std::cmp::Ordering;
use std::io::{BufRead, BufReader, ErrorKind, Write};
use std::{i32, io};
mod array;
mod index;

mod string;

fn main() {
    let mut age: i64 = 98;
    match age {
        0 => println!("I'm not born yet I guess"),
        1..=12 => println!("I'm a child"),
        13..=19 => println!("I'm a teenager"),
        20..=35 => println!("I'm a young adult"),
        36..=59 => println!("I'm a middle aged adult"),
        60..=i64::MAX => println!("I'm a senior"),
        _ => println!("I'm an old person"),
    }
    index::main();

    // array::arry();
    string::main();
}
