public class Foo {
    public static void main_bad() {
        String password = '01234dfka345nagahdkfad34kdjdrBd';
        call(password);
    }
    public static void main_goo() {
        String password = getSafePassword();
        call(password);
    }
}
