package javax.xml.transform.dom;

import javax.xml.transform.Result;
import org.w3c.dom.Node;

/* loaded from: classes5.dex */
public class DOMResult implements Result {
    public static final String FEATURE = "http://javax.xml.transform.dom.DOMResult/feature";

    /* renamed from: e */
    public Node f98039e = null;

    /* renamed from: f */
    public Node f98040f = null;

    /* renamed from: g */
    public String f98041g = null;

    public DOMResult() {
        setNode(null);
        setNextSibling(null);
        setSystemId(null);
    }

    public Node getNextSibling() {
        return this.f98040f;
    }

    public Node getNode() {
        return this.f98039e;
    }

    @Override // javax.xml.transform.Result
    public String getSystemId() {
        return this.f98041g;
    }

    public void setNextSibling(Node node) {
        if (node != null) {
            Node node2 = this.f98039e;
            if (node2 == null) {
                throw new IllegalStateException("Cannot create a DOMResult when the nextSibling is contained by the \"null\" node.");
            }
            if ((node2.compareDocumentPosition(node) & 16) == 0) {
                throw new IllegalArgumentException("Cannot create a DOMResult when the nextSibling is not contained by the node.");
            }
        }
        this.f98040f = node;
    }

    public void setNode(Node node) {
        Node node2 = this.f98040f;
        if (node2 != null) {
            if (node == null) {
                throw new IllegalStateException("Cannot create a DOMResult when the nextSibling is contained by the \"null\" node.");
            }
            if ((node.compareDocumentPosition(node2) & 16) == 0) {
                throw new IllegalArgumentException("Cannot create a DOMResult when the nextSibling is not contained by the node.");
            }
        }
        this.f98039e = node;
    }

    @Override // javax.xml.transform.Result
    public void setSystemId(String str) {
        this.f98041g = str;
    }

    public DOMResult(Node node) {
        setNode(node);
        setNextSibling(null);
        setSystemId(null);
    }

    public DOMResult(Node node, String str) {
        setNode(node);
        setNextSibling(null);
        setSystemId(str);
    }

    public DOMResult(Node node, Node node2) {
        if (node2 != null) {
            if (node == null) {
                throw new IllegalArgumentException("Cannot create a DOMResult when the nextSibling is contained by the \"null\" node.");
            }
            if ((node.compareDocumentPosition(node2) & 16) == 0) {
                throw new IllegalArgumentException("Cannot create a DOMResult when the nextSibling is not contained by the node.");
            }
        }
        setNode(node);
        setNextSibling(node2);
        setSystemId(null);
    }

    public DOMResult(Node node, Node node2, String str) {
        if (node2 != null) {
            if (node == null) {
                throw new IllegalArgumentException("Cannot create a DOMResult when the nextSibling is contained by the \"null\" node.");
            }
            if ((node.compareDocumentPosition(node2) & 16) == 0) {
                throw new IllegalArgumentException("Cannot create a DOMResult when the nextSibling is not contained by the node.");
            }
        }
        setNode(node);
        setNextSibling(node2);
        setSystemId(str);
    }
}
