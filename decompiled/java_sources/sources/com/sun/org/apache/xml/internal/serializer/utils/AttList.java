package com.sun.org.apache.xml.internal.serializer.utils;

import org.w3c.dom.Attr;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.xml.sax.Attributes;

/* loaded from: classes10.dex */
public final class AttList implements Attributes {
    NamedNodeMap m_attrs;
    DOM2Helper m_dh;
    int m_lastIndex;

    public AttList(NamedNodeMap namedNodeMap, DOM2Helper dOM2Helper) {
        this.m_attrs = namedNodeMap;
        this.m_lastIndex = namedNodeMap.getLength() - 1;
        this.m_dh = dOM2Helper;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0029 A[SYNTHETIC] */
    @Override // org.xml.sax.Attributes
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getIndex(java.lang.String r4, java.lang.String r5) {
        /*
            r3 = this;
            org.w3c.dom.NamedNodeMap r0 = r3.m_attrs
            int r0 = r0.getLength()
            int r0 = r0 + (-1)
        L8:
            if (r0 < 0) goto L2d
            org.w3c.dom.NamedNodeMap r1 = r3.m_attrs
            org.w3c.dom.Node r1 = r1.item(r0)
            java.lang.String r2 = r1.getNamespaceURI()
            if (r2 != 0) goto L19
            if (r4 != 0) goto L2a
            goto L1f
        L19:
            boolean r2 = r2.equals(r4)
            if (r2 == 0) goto L2a
        L1f:
            java.lang.String r1 = r1.getLocalName()
            boolean r1 = r1.equals(r5)
            if (r1 == 0) goto L2a
            return r0
        L2a:
            int r0 = r0 + (-1)
            goto L8
        L2d:
            r3 = -1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.serializer.utils.AttList.getIndex(java.lang.String, java.lang.String):int");
    }

    @Override // org.xml.sax.Attributes
    public int getLength() {
        return this.m_attrs.getLength();
    }

    @Override // org.xml.sax.Attributes
    public String getLocalName(int i) {
        return this.m_dh.getLocalNameOfNode((Attr) this.m_attrs.item(i));
    }

    @Override // org.xml.sax.Attributes
    public String getQName(int i) {
        return ((Attr) this.m_attrs.item(i)).getName();
    }

    @Override // org.xml.sax.Attributes
    public String getType(int i) {
        return "CDATA";
    }

    @Override // org.xml.sax.Attributes
    public String getURI(int i) {
        String namespaceOfNode = this.m_dh.getNamespaceOfNode((Attr) this.m_attrs.item(i));
        return namespaceOfNode == null ? "" : namespaceOfNode;
    }

    @Override // org.xml.sax.Attributes
    public String getValue(int i) {
        return ((Attr) this.m_attrs.item(i)).getValue();
    }

    @Override // org.xml.sax.Attributes
    public String getType(String str) {
        return "CDATA";
    }

    @Override // org.xml.sax.Attributes
    public String getValue(String str) {
        Attr attr = (Attr) this.m_attrs.getNamedItem(str);
        if (attr != null) {
            return attr.getValue();
        }
        return null;
    }

    @Override // org.xml.sax.Attributes
    public String getType(String str, String str2) {
        return "CDATA";
    }

    @Override // org.xml.sax.Attributes
    public String getValue(String str, String str2) {
        Node namedItemNS = this.m_attrs.getNamedItemNS(str, str2);
        if (namedItemNS == null) {
            return null;
        }
        return namedItemNS.getNodeValue();
    }

    @Override // org.xml.sax.Attributes
    public int getIndex(String str) {
        for (int length = this.m_attrs.getLength() - 1; length >= 0; length--) {
            if (this.m_attrs.item(length).getNodeName().equals(str)) {
                return length;
            }
        }
        return -1;
    }
}
