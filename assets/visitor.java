import java.util.ArrayList;
import java.util.List;

interface Element {
    void accept(Visitor visitor);
}

interface Visitor {
    void visit(Element element);
}

class ConcreteElementA implements Element {
    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}

class ConcreteElementB implements Element {
    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}

class ConcreteVisitorA implements Visitor {
    @Override
    public void visit(Element element) {
        if (element instanceof ConcreteElementA) {
            System.out.println("Visiting ConcreteElementA");
        } else if (element instanceof ConcreteElementB) {
            System.out.println("Visiting ConcreteElementB");
        }
    }
}

class ObjectStructure {
    private List<Element> elements = new ArrayList<>();

    public void addElement(Element element) {
        elements.add(element);
    }

    public void accept(Visitor visitor) {
        for (Element element : elements) {
            element.accept(visitor);
        }
    }
}

public class VisitorPatternExample {
    public static void main(String[] args) {
        ObjectStructure objectStructure = new ObjectStructure();
        objectStructure.addElement(new ConcreteElementA());
        objectStructure.addElement(new ConcreteElementB());

        objectStructure.accept(new ConcreteVisitorA());
    }
}
