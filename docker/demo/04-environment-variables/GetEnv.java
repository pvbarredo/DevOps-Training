class GetEnv {

    public static void main(String[] args) {

        System.out.println("\n-- CONTAINER ENVIRONMENT VARIABLES --");
        System.getenv().forEach((k, v) -> System.out.println(k + ":" + v));
    }
}
