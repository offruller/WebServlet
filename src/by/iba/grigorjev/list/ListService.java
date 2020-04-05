package by.iba.grigorjev.list;

import java.util.ArrayList;
import java.util.List;

public class ListService {
    private static List<Person> groupList = new ArrayList();
    static {
        groupList.add(new Person("Alexander","+375293229928", "asgrigorjev@tut.by"));
        groupList.add(new Person("Zoya","+375333749491", "zoya_ventimiglia@gmail.com"));
        groupList.add(new Person("Marina","+375296875385","marina.shulyak@mail.ru"));
    }
    static public List<Person> retrieveList() {
        return groupList;
    }
    static public void addPerson(Person person) {
        groupList.add(new Person(person));
    }
}
