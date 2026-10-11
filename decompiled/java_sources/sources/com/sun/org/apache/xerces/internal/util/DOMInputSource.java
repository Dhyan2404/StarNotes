package com.sun.org.apache.xerces.internal.util;

import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import org.w3c.dom.Node;

/* loaded from: classes10.dex */
public final class DOMInputSource extends XMLInputSource {
    private Node fNode;

    public DOMInputSource() {
        this(null);
    }

    private static String getSystemIdFromNode(Node node) {
        if (node != null) {
            try {
                return node.getBaseURI();
            } catch (Exception | NoSuchMethodError unused) {
            }
        }
        return null;
    }

    public Node getNode() {
        return this.fNode;
    }

    public void setNode(Node node) {
        this.fNode = node;
    }

    public DOMInputSource(Node node) {
        super(null, getSystemIdFromNode(node), null);
        this.fNode = node;
    }

    public DOMInputSource(Node node, String str) {
        super(null, str, null);
        this.fNode = node;
    }
}
