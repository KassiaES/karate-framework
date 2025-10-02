package tests;

import com.intuit.karate.junit5.Karate;

class DropdownTest {

    @Karate.Test
    Karate testDropdown() {
        return Karate.run("Dropdown").relativeTo(getClass());
    }
}