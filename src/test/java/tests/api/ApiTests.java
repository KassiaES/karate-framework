package tests.api;

import com.intuit.karate.junit5.Karate;

class ApiTests {

    @Karate.Test
    Karate testApi() {
        return Karate.run("classpath:tests/api").relativeTo(getClass());
    }
    
    @Karate.Test
    Karate testGetUsers() {
        return Karate.run("classpath:tests/api/GET-Users.feature").relativeTo(getClass());
    }
    
    @Karate.Test
    Karate testPostUsers() {
        return Karate.run("classpath:tests/api/POST-Users.feature").relativeTo(getClass());
    }
    
    @Karate.Test
    Karate testPutUsers() {
        return Karate.run("classpath:tests/api/PUT-Users.feature").relativeTo(getClass());
    }
    
    @Karate.Test
    Karate testDeleteUsers() {
        return Karate.run("classpath:tests/api/DELETE-Users.feature").relativeTo(getClass());
    }
}