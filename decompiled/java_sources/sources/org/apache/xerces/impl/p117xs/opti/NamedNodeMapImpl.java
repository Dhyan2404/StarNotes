package org.apache.xerces.impl.p117xs.opti;

import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

/* loaded from: classes13.dex */
public class NamedNodeMapImpl implements NamedNodeMap {

    /* renamed from: e */
    public Attr[] f113024e;

    public NamedNodeMapImpl(Attr[] attrArr) {
        this.f113024e = attrArr;
    }

    @Override // org.w3c.dom.NamedNodeMap
    public int getLength() {
        return this.f113024e.length;
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node getNamedItem(String str) {
        int i = 0;
        while (true) {
            Attr[] attrArr = this.f113024e;
            if (i >= attrArr.length) {
                return null;
            }
            if (attrArr[i].getName().equals(str)) {
                return this.f113024e[i];
            }
            i++;
        }
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node getNamedItemNS(String str, String str2) {
        int i = 0;
        while (true) {
            Attr[] attrArr = this.f113024e;
            if (i >= attrArr.length) {
                return null;
            }
            if (attrArr[i].getName().equals(str2) && this.f113024e[i].getNamespaceURI().equals(str)) {
                return this.f113024e[i];
            }
            i++;
        }
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node item(int i) {
        if (i >= 0 || i <= getLength()) {
            return this.f113024e[i];
        }
        return null;
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node removeNamedItem(String str) throws DOMException {
        throw new DOMException((short) 9, "Method not supported");
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node removeNamedItemNS(String str, String str2) throws DOMException {
        throw new DOMException((short) 9, "Method not supported");
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node setNamedItem(Node node) throws DOMException {
        throw new DOMException((short) 9, "Method not supported");
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node setNamedItemNS(Node node) throws DOMException {
        throw new DOMException((short) 9, "Method not supported");
    }
}
