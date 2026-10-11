package org.apache.xerces.util;

import org.apache.xerces.xni.parser.XMLInputSource;
import org.w3c.dom.Node;

/* loaded from: classes13.dex */
public final class DOMInputSource extends XMLInputSource {

    /* renamed from: a */
    public Node f113487a;

    public DOMInputSource() {
        this(null);
    }

    /* renamed from: a */
    public static String m70569a(Node node) {
        if (node != null) {
            try {
                return node.getBaseURI();
            } catch (Exception | NoSuchMethodError unused) {
            }
        }
        return null;
    }

    public Node getNode() {
        return this.f113487a;
    }

    public void setNode(Node node) {
        this.f113487a = node;
    }

    public DOMInputSource(Node node) {
        super(null, m70569a(node), null);
        this.f113487a = node;
    }

    public DOMInputSource(Node node, String str) {
        super(null, str, null);
        this.f113487a = node;
    }
}
