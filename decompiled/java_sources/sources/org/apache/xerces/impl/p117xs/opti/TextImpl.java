package org.apache.xerces.impl.p117xs.opti;

import com.sun.org.apache.xpath.internal.compiler.PsuedoNames;
import org.w3c.dom.DOMException;
import org.w3c.dom.Node;

/* loaded from: classes13.dex */
public class TextImpl extends DefaultText {

    /* renamed from: k */
    public String f113055k;

    /* renamed from: l */
    public SchemaDOM f113056l;

    /* renamed from: m */
    public int f113057m;

    /* renamed from: n */
    public int f113058n;

    public TextImpl(StringBuffer stringBuffer, SchemaDOM schemaDOM, int i, int i2) {
        this.f113055k = null;
        this.f113056l = null;
        this.f113055k = stringBuffer.toString();
        this.f113056l = schemaDOM;
        this.f113057m = i;
        this.f113058n = i2;
        this.f113028h = null;
        this.f113026f = null;
        this.f113025e = null;
        this.f113027g = null;
        this.f113029i = (short) 3;
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultText, org.w3c.dom.CharacterData
    public String getData() throws DOMException {
        return this.f113055k;
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultText, org.w3c.dom.CharacterData
    public int getLength() {
        String str = this.f113055k;
        if (str == null) {
            return 0;
        }
        return str.length();
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultNode, org.w3c.dom.Node
    public Node getNextSibling() {
        int i = this.f113058n;
        NodeImpl[] nodeImplArr = this.f113056l.f113033l[this.f113057m];
        if (i == nodeImplArr.length - 1) {
            return null;
        }
        return nodeImplArr[i + 1];
    }

    @Override // org.apache.xerces.impl.p117xs.opti.NodeImpl, org.apache.xerces.impl.p117xs.opti.DefaultNode, org.w3c.dom.Node
    public String getNodeName() {
        return PsuedoNames.PSEUDONAME_TEXT;
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultNode, org.w3c.dom.Node
    public Node getParentNode() {
        return this.f113056l.f113033l[this.f113057m][0];
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultNode, org.w3c.dom.Node
    public Node getPreviousSibling() {
        int i = this.f113058n;
        if (i == 1) {
            return null;
        }
        return this.f113056l.f113033l[this.f113057m][i - 1];
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultText, org.w3c.dom.CharacterData
    public String substringData(int i, int i2) throws DOMException {
        String str = this.f113055k;
        if (str == null) {
            return null;
        }
        if (i2 < 0 || i < 0 || i > str.length()) {
            throw new DOMException((short) 1, "parameter error");
        }
        int i3 = i2 + i;
        int length = this.f113055k.length();
        String str2 = this.f113055k;
        return i3 >= length ? str2.substring(i) : str2.substring(i, i3);
    }
}
