use runtime::call_dynamic;

#[test]
fn load() {
    let val = call_dynamic().unwrap();

    assert_eq!(val, 5);
}
