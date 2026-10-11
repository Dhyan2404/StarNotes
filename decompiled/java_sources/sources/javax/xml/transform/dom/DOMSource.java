package javax.xml.transform.dom;

import javax.xml.transform.Source;
import org.w3c.dom.Node;

/* loaded from: classes5.dex */
public class DOMSource implements Source {
    public static final String FEATURE = "http://javax.xml.transform.dom.DOMSource/feature";

    /* renamed from: e */
    public Node f98042e;

    /* renamed from: f */
    public String f98043f;

    public DOMSource() {
    }

    public Node getNode() {
        return this.f98042e;
    }

    @Override // javax.xml.transform.Source
    public String getSystemId() {
        return this.f98043f;
    }

    public void setNode(Node node) {
        this.f98042e = node;
    }

    @Override // javax.xml.transform.Source
    public void setSystemId(String str) {
        this.f98043f = str;
    }

    public DOMSource(Node node) {
        setNode(node);
    }

    public DOMSource(Node node, String str) {
        setNode(node);
        setSystemId(str);
    }
}
