package com.sunia.HTREnginev2;

import java.util.List;
import org.w3c.dom.DOMException;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

/* loaded from: classes5.dex */
public class eci implements NamedNodeMap {

    /* renamed from: e */
    public List<? extends Node> f68811e;

    public eci(List<? extends Node> list) {
        this.f68811e = list;
    }

    @Override // org.w3c.dom.NamedNodeMap
    public int getLength() {
        return this.f68811e.size();
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node getNamedItem(String str) {
        for (Node node : this.f68811e) {
            if (str.equals(node.getNodeName())) {
                return node;
            }
        }
        return null;
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node getNamedItemNS(String str, String str2) {
        return getNamedItem(str2);
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node item(int i) {
        return this.f68811e.get(i);
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node removeNamedItem(String str) {
        throw new DOMException((short) 7, "This NamedNodeMap is read-only!");
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node removeNamedItemNS(String str, String str2) {
        return removeNamedItem(str2);
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node setNamedItem(Node node) {
        throw new DOMException((short) 7, "This NamedNodeMap is read-only!");
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node setNamedItemNS(Node node) {
        return setNamedItem(node);
    }
}
