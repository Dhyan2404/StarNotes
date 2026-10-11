package org.apache.xerces.impl.p117xs.opti;

import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

/* loaded from: classes13.dex */
public class ElementImpl extends DefaultElement {

    /* renamed from: k */
    public SchemaDOM f113014k;

    /* renamed from: l */
    public Attr[] f113015l;

    /* renamed from: m */
    public int f113016m;

    /* renamed from: n */
    public int f113017n;

    /* renamed from: o */
    public int f113018o;

    /* renamed from: p */
    public int f113019p;

    /* renamed from: q */
    public int f113020q;

    /* renamed from: r */
    public int f113021r;

    /* renamed from: s */
    public String f113022s;

    /* renamed from: t */
    public String f113023t;

    public ElementImpl(int i, int i2) {
        this(i, i2, -1);
    }

    /* renamed from: a */
    public static boolean m70295a(String str, String str2) {
        return str == null ? str2 == null : str.equals(str2);
    }

    public String getAnnotation() {
        return this.f113022s;
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultElement, org.w3c.dom.Element
    public String getAttribute(String str) {
        int i = 0;
        while (true) {
            Attr[] attrArr = this.f113015l;
            if (i >= attrArr.length) {
                return "";
            }
            if (attrArr[i].getName().equals(str)) {
                return this.f113015l[i].getValue();
            }
            i++;
        }
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultElement, org.w3c.dom.Element
    public String getAttributeNS(String str, String str2) {
        int i = 0;
        while (true) {
            Attr[] attrArr = this.f113015l;
            if (i >= attrArr.length) {
                return "";
            }
            if (attrArr[i].getLocalName().equals(str2) && m70295a(this.f113015l[i].getNamespaceURI(), str)) {
                return this.f113015l[i].getValue();
            }
            i++;
        }
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultElement, org.w3c.dom.Element
    public Attr getAttributeNode(String str) {
        int i = 0;
        while (true) {
            Attr[] attrArr = this.f113015l;
            if (i >= attrArr.length) {
                return null;
            }
            if (attrArr[i].getName().equals(str)) {
                return this.f113015l[i];
            }
            i++;
        }
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultElement, org.w3c.dom.Element
    public Attr getAttributeNodeNS(String str, String str2) {
        int i = 0;
        while (true) {
            Attr[] attrArr = this.f113015l;
            if (i >= attrArr.length) {
                return null;
            }
            if (attrArr[i].getName().equals(str2) && m70295a(this.f113015l[i].getNamespaceURI(), str)) {
                return this.f113015l[i];
            }
            i++;
        }
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultNode, org.w3c.dom.Node
    public NamedNodeMap getAttributes() {
        return new NamedNodeMapImpl(this.f113015l);
    }

    public int getCharacterOffset() {
        return this.f113021r;
    }

    public int getColumnNumber() {
        return this.f113020q;
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultNode, org.w3c.dom.Node
    public Node getFirstChild() {
        int i = this.f113018o;
        if (i == -1) {
            return null;
        }
        return this.f113014k.f113033l[i][1];
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultNode, org.w3c.dom.Node
    public Node getLastChild() {
        if (this.f113018o == -1) {
            return null;
        }
        int i = 1;
        while (true) {
            NodeImpl[] nodeImplArr = this.f113014k.f113033l[this.f113018o];
            if (i >= nodeImplArr.length) {
                if (i == 1) {
                    i++;
                }
                return nodeImplArr[i - 1];
            }
            if (nodeImplArr[i] == null) {
                return nodeImplArr[i - 1];
            }
            i++;
        }
    }

    public int getLineNumber() {
        return this.f113019p;
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultNode, org.w3c.dom.Node
    public Node getNextSibling() {
        int i = this.f113017n;
        NodeImpl[] nodeImplArr = this.f113014k.f113033l[this.f113016m];
        if (i == nodeImplArr.length - 1) {
            return null;
        }
        return nodeImplArr[i + 1];
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultNode, org.w3c.dom.Node
    public Document getOwnerDocument() {
        return this.f113014k;
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultNode, org.w3c.dom.Node
    public Node getParentNode() {
        return this.f113014k.f113033l[this.f113016m][0];
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultNode, org.w3c.dom.Node
    public Node getPreviousSibling() {
        int i = this.f113017n;
        if (i == 1) {
            return null;
        }
        return this.f113014k.f113033l[this.f113016m][i - 1];
    }

    public String getSyntheticAnnotation() {
        return this.f113023t;
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultElement, org.w3c.dom.Element
    public String getTagName() {
        return this.f113027g;
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultElement, org.w3c.dom.Element
    public boolean hasAttribute(String str) {
        int i = 0;
        while (true) {
            Attr[] attrArr = this.f113015l;
            if (i >= attrArr.length) {
                return false;
            }
            if (attrArr[i].getName().equals(str)) {
                return true;
            }
            i++;
        }
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultElement, org.w3c.dom.Element
    public boolean hasAttributeNS(String str, String str2) {
        int i = 0;
        while (true) {
            Attr[] attrArr = this.f113015l;
            if (i >= attrArr.length) {
                return false;
            }
            if (attrArr[i].getName().equals(str2) && m70295a(this.f113015l[i].getNamespaceURI(), str)) {
                return true;
            }
            i++;
        }
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultNode, org.w3c.dom.Node
    public boolean hasAttributes() {
        return this.f113015l.length != 0;
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultNode, org.w3c.dom.Node
    public boolean hasChildNodes() {
        return this.f113018o != -1;
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultElement, org.w3c.dom.Element
    public void setAttribute(String str, String str2) {
        int i = 0;
        while (true) {
            Attr[] attrArr = this.f113015l;
            if (i >= attrArr.length) {
                return;
            }
            if (attrArr[i].getName().equals(str)) {
                this.f113015l[i].setValue(str2);
                return;
            }
            i++;
        }
    }

    public ElementImpl(int i, int i2, int i3) {
        this.f113016m = -1;
        this.f113017n = -1;
        this.f113018o = -1;
        this.f113029i = (short) 1;
        this.f113019p = i;
        this.f113020q = i2;
        this.f113021r = i3;
    }

    public ElementImpl(String str, String str2, String str3, String str4, int i, int i2) {
        this(str, str2, str3, str4, i, i2, -1);
    }

    public ElementImpl(String str, String str2, String str3, String str4, int i, int i2, int i3) {
        super(str, str2, str3, str4, (short) 1);
        this.f113016m = -1;
        this.f113017n = -1;
        this.f113018o = -1;
        this.f113019p = i;
        this.f113020q = i2;
        this.f113021r = i3;
    }
}
