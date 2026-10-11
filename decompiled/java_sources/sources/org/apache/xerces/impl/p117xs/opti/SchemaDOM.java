package org.apache.xerces.impl.p117xs.opti;

import com.bumptech.glide.load.engine.GlideException;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import com.sunia.HTREnginev2.b2m;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Enumeration;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XMLString;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

/* loaded from: classes13.dex */
public class SchemaDOM extends DefaultDocument {

    /* renamed from: s */
    public static final int f113031s = 15;

    /* renamed from: t */
    public static final int f113032t = 10;

    /* renamed from: l */
    public NodeImpl[][] f113033l;

    /* renamed from: m */
    public ElementImpl f113034m;

    /* renamed from: n */
    public int f113035n;

    /* renamed from: o */
    public int f113036o;

    /* renamed from: p */
    public boolean f113037p;

    /* renamed from: q */
    public boolean f113038q;

    /* renamed from: r */
    public StringBuffer f113039r = null;

    public SchemaDOM() {
        reset();
    }

    public static void indent(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            System.out.print(' ');
        }
    }

    /* renamed from: j */
    public static String m70296j(String str, int i) {
        String str2;
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length);
        stringBuffer.append(str.substring(0, i));
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt == '\"') {
                str2 = SerializerConstants.ENTITY_QUOT;
            } else if (charAt == '<') {
                str2 = "&lt;";
            } else if (charAt == '&') {
                str2 = "&amp;";
            } else if (charAt == '\t') {
                str2 = "&#x9;";
            } else if (charAt == '\n') {
                str2 = SerializerConstants.ENTITY_CRLF;
            } else if (charAt == '\r') {
                str2 = "&#xD;";
            } else {
                stringBuffer.append(charAt);
                i++;
            }
            stringBuffer.append(str2);
            i++;
        }
        return stringBuffer.toString();
    }

    /* renamed from: k */
    public static String m70297k(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == '\"' || charAt == '<' || charAt == '&' || charAt == '\t' || charAt == '\n' || charAt == '\r') {
                return m70296j(str, i);
            }
        }
        return str;
    }

    public static void traverse(Node node, int i) {
        indent(i);
        PrintStream printStream = System.out;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("<");
        stringBuffer.append(node.getNodeName());
        printStream.print(stringBuffer.toString());
        if (node.hasAttributes()) {
            NamedNodeMap attributes = node.getAttributes();
            for (int i2 = 0; i2 < attributes.getLength(); i2++) {
                PrintStream printStream2 = System.out;
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(GlideException.C1935a.f14609h);
                stringBuffer2.append(((Attr) attributes.item(i2)).getName());
                stringBuffer2.append("=\"");
                stringBuffer2.append(((Attr) attributes.item(i2)).getValue());
                stringBuffer2.append("\"");
                printStream2.print(stringBuffer2.toString());
            }
        }
        if (!node.hasChildNodes()) {
            System.out.println(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
            return;
        }
        System.out.println(">");
        int i3 = i + 4;
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            traverse(firstChild, i3);
        }
        indent(i3 - 4);
        PrintStream printStream3 = System.out;
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append(XMLStreamWriterImpl.OPEN_END_TAG);
        stringBuffer3.append(node.getNodeName());
        stringBuffer3.append(">");
        printStream3.println(stringBuffer3.toString());
    }

    /* renamed from: a */
    public void m70298a(XMLString xMLString) {
        String str;
        if (this.f113038q) {
            this.f113039r.append(xMLString.f113585ch, xMLString.offset, xMLString.length);
            return;
        }
        StringBuffer stringBuffer = this.f113039r;
        for (int i = xMLString.offset; i < xMLString.offset + xMLString.length; i++) {
            char c = xMLString.f113585ch[i];
            if (c == '&') {
                str = "&amp;";
            } else if (c == '<') {
                str = "&lt;";
            } else if (c == '>') {
                str = "&gt;";
            } else if (c == '\r') {
                str = "&#xD;";
            } else {
                stringBuffer.append(c);
            }
            stringBuffer.append(str);
        }
    }

    /* renamed from: b */
    public void m70299b(String str) {
        this.f113039r.append(str);
    }

    /* renamed from: c */
    public void m70300c(XMLString xMLString) {
        this.f113039r.append(XMLStreamWriterImpl.START_COMMENT);
        int i = xMLString.length;
        if (i > 0) {
            this.f113039r.append(xMLString.f113585ch, xMLString.offset, i);
        }
        this.f113039r.append(XMLStreamWriterImpl.END_COMMENT);
    }

    /* renamed from: d */
    public void m70301d(QName qName, ElementImpl elementImpl) {
        StringBuffer stringBuffer = this.f113039r;
        stringBuffer.append("\n</");
        stringBuffer.append(qName.rawname);
        stringBuffer.append(">");
        elementImpl.f113022s = this.f113039r.toString();
        this.f113039r = null;
    }

    /* renamed from: e */
    public void m70302e() {
        this.f113039r.append("]]>");
        this.f113038q = false;
    }

    public ElementImpl emptyElement(QName qName, XMLAttributes xMLAttributes, int i, int i2) {
        return emptyElement(qName, xMLAttributes, i, i2, -1);
    }

    public void endElement() {
        int i = this.f113034m.f113016m;
        this.f113035n = i;
        this.f113034m = (ElementImpl) this.f113033l[i][0];
    }

    /* renamed from: f */
    public void m70303f(String str) {
        StringBuffer stringBuffer = this.f113039r;
        stringBuffer.append(XMLStreamWriterImpl.OPEN_END_TAG);
        stringBuffer.append(str);
        stringBuffer.append(">");
    }

    /* renamed from: g */
    public void m70304g(QName qName) {
        m70303f(qName.rawname);
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultDocument, org.w3c.dom.Document
    public Element getDocumentElement() {
        return (ElementImpl) this.f113033l[0][1];
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultDocument, org.w3c.dom.Document
    public DOMImplementation getImplementation() {
        return b2m.m53158a();
    }

    /* renamed from: h */
    public void m70305h(String str, boolean z) {
        if (!z) {
            StringBuffer stringBuffer = this.f113039r;
            stringBuffer.append(XMLStreamWriterImpl.OPEN_END_TAG);
            stringBuffer.append(str);
            stringBuffer.append(">");
            return;
        }
        StringBuffer stringBuffer2 = this.f113039r;
        stringBuffer2.append("\n</");
        stringBuffer2.append(str);
        stringBuffer2.append(">");
        this.f113034m.f113023t = this.f113039r.toString();
        this.f113039r = null;
    }

    /* renamed from: i */
    public void m70306i(QName qName, boolean z) {
        m70305h(qName.rawname, z);
    }

    /* renamed from: l */
    public final void m70307l(QName qName, XMLAttributes xMLAttributes, ElementImpl elementImpl) {
        int i;
        elementImpl.f113025e = qName.prefix;
        elementImpl.f113026f = qName.localpart;
        elementImpl.f113027g = qName.rawname;
        elementImpl.f113028h = qName.uri;
        elementImpl.f113014k = this;
        Attr[] attrArr = new Attr[xMLAttributes.getLength()];
        boolean z = false;
        for (int i2 = 0; i2 < xMLAttributes.getLength(); i2++) {
            attrArr[i2] = new AttrImpl(elementImpl, xMLAttributes.getPrefix(i2), xMLAttributes.getLocalName(i2), xMLAttributes.getQName(i2), xMLAttributes.getURI(i2), xMLAttributes.getValue(i2));
        }
        elementImpl.f113015l = attrArr;
        if (this.f113036o == this.f113033l.length) {
            m70309n();
        }
        NodeImpl[][] nodeImplArr = this.f113033l;
        NodeImpl nodeImpl = nodeImplArr[this.f113035n][0];
        ElementImpl elementImpl2 = this.f113034m;
        if (nodeImpl != elementImpl2) {
            int i3 = this.f113036o;
            nodeImplArr[i3][0] = elementImpl2;
            this.f113036o = i3 + 1;
            this.f113035n = i3;
        }
        int i4 = 1;
        while (true) {
            NodeImpl[][] nodeImplArr2 = this.f113033l;
            i = this.f113035n;
            NodeImpl[] nodeImplArr3 = nodeImplArr2[i];
            if (i4 >= nodeImplArr3.length) {
                break;
            }
            if (nodeImplArr3[i4] == null) {
                z = true;
                break;
            }
            i4++;
        }
        if (!z) {
            m70310o(i);
        }
        NodeImpl[][] nodeImplArr4 = this.f113033l;
        int i5 = this.f113035n;
        nodeImplArr4[i5][i4] = elementImpl;
        this.f113034m.f113018o = i5;
        elementImpl.f113016m = i5;
        elementImpl.f113017n = i4;
    }

    /* renamed from: m */
    public void m70308m(String str, XMLString xMLString) {
        StringBuffer stringBuffer = this.f113039r;
        stringBuffer.append("<?");
        stringBuffer.append(str);
        if (xMLString.length > 0) {
            StringBuffer stringBuffer2 = this.f113039r;
            stringBuffer2.append(' ');
            stringBuffer2.append(xMLString.f113585ch, xMLString.offset, xMLString.length);
        }
        this.f113039r.append("?>");
    }

    /* renamed from: n */
    public final void m70309n() {
        NodeImpl[][] nodeImplArr = this.f113033l;
        int length = nodeImplArr.length + 15;
        NodeImpl[][] nodeImplArr2 = new NodeImpl[length];
        System.arraycopy(nodeImplArr, 0, nodeImplArr2, 0, nodeImplArr.length);
        for (int length2 = this.f113033l.length; length2 < length; length2++) {
            nodeImplArr2[length2] = new NodeImpl[10];
        }
        this.f113033l = nodeImplArr2;
    }

    /* renamed from: o */
    public final void m70310o(int i) {
        NodeImpl[] nodeImplArr = this.f113033l[i];
        NodeImpl[] nodeImplArr2 = new NodeImpl[nodeImplArr.length + 10];
        System.arraycopy(nodeImplArr, 0, nodeImplArr2, 0, nodeImplArr.length);
        this.f113033l[i] = nodeImplArr2;
    }

    /* renamed from: p */
    public void m70311p(String str, XMLAttributes xMLAttributes, NamespaceContext namespaceContext) {
        if (this.f113039r == null) {
            this.f113039r = new StringBuffer(256);
        }
        StringBuffer stringBuffer = this.f113039r;
        stringBuffer.append("<");
        stringBuffer.append(str);
        stringBuffer.append(" ");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < xMLAttributes.getLength(); i++) {
            String value = xMLAttributes.getValue(i);
            String prefix = xMLAttributes.getPrefix(i);
            String qName = xMLAttributes.getQName(i);
            String str2 = XMLSymbols.PREFIX_XMLNS;
            if (prefix == str2 || qName == str2) {
                arrayList.add(prefix == str2 ? xMLAttributes.getLocalName(i) : XMLSymbols.EMPTY_STRING);
            }
            StringBuffer stringBuffer2 = this.f113039r;
            stringBuffer2.append(qName);
            stringBuffer2.append("=\"");
            stringBuffer2.append(m70297k(value));
            stringBuffer2.append("\" ");
        }
        Enumeration allPrefixes = namespaceContext.getAllPrefixes();
        while (allPrefixes.hasMoreElements()) {
            String str3 = (String) allPrefixes.nextElement();
            String uri = namespaceContext.getURI(str3);
            if (uri == null) {
                uri = XMLSymbols.EMPTY_STRING;
            }
            if (!arrayList.contains(str3)) {
                if (str3 == XMLSymbols.EMPTY_STRING) {
                    StringBuffer stringBuffer3 = this.f113039r;
                    stringBuffer3.append("xmlns");
                    stringBuffer3.append("=\"");
                    stringBuffer3.append(m70297k(uri));
                    stringBuffer3.append("\" ");
                } else {
                    StringBuffer stringBuffer4 = this.f113039r;
                    stringBuffer4.append("xmlns:");
                    stringBuffer4.append(str3);
                    stringBuffer4.append("=\"");
                    stringBuffer4.append(m70297k(uri));
                    stringBuffer4.append("\" ");
                }
            }
        }
        this.f113039r.append(">\n");
    }

    public void printDOM() {
    }

    /* renamed from: q */
    public void m70312q(QName qName, XMLAttributes xMLAttributes, NamespaceContext namespaceContext) {
        m70311p(qName.rawname, xMLAttributes, namespaceContext);
    }

    /* renamed from: r */
    public void m70313r() {
        this.f113038q = true;
        this.f113039r.append("<![CDATA[");
    }

    public void reset() {
        if (this.f113033l != null) {
            for (int i = 0; i < this.f113033l.length; i++) {
                int i2 = 0;
                while (true) {
                    NodeImpl[] nodeImplArr = this.f113033l[i];
                    if (i2 >= nodeImplArr.length) {
                        break;
                    }
                    nodeImplArr[i2] = null;
                    i2++;
                }
            }
        }
        this.f113033l = new NodeImpl[15];
        ElementImpl elementImpl = new ElementImpl(0, 0, 0);
        this.f113034m = elementImpl;
        elementImpl.f113027g = "DOCUMENT_NODE";
        this.f113035n = 0;
        this.f113036o = 1;
        this.f113038q = false;
        for (int i3 = 0; i3 < 15; i3++) {
            this.f113033l[i3] = new NodeImpl[10];
        }
        this.f113033l[this.f113035n][0] = this.f113034m;
    }

    /* renamed from: s */
    public void m70314s(String str, XMLAttributes xMLAttributes) {
        StringBuffer stringBuffer = this.f113039r;
        stringBuffer.append("<");
        stringBuffer.append(str);
        for (int i = 0; i < xMLAttributes.getLength(); i++) {
            String value = xMLAttributes.getValue(i);
            StringBuffer stringBuffer2 = this.f113039r;
            stringBuffer2.append(" ");
            stringBuffer2.append(xMLAttributes.getQName(i));
            stringBuffer2.append("=\"");
            stringBuffer2.append(m70297k(value));
            stringBuffer2.append("\"");
        }
        this.f113039r.append(">");
    }

    public ElementImpl startElement(QName qName, XMLAttributes xMLAttributes, int i, int i2) {
        return startElement(qName, xMLAttributes, i, i2, -1);
    }

    /* renamed from: t */
    public void m70315t(QName qName, XMLAttributes xMLAttributes) {
        m70314s(qName.rawname, xMLAttributes);
    }

    public ElementImpl emptyElement(QName qName, XMLAttributes xMLAttributes, int i, int i2, int i3) {
        ElementImpl elementImpl = new ElementImpl(i, i2, i3);
        m70307l(qName, xMLAttributes, elementImpl);
        return elementImpl;
    }

    public ElementImpl startElement(QName qName, XMLAttributes xMLAttributes, int i, int i2, int i3) {
        ElementImpl elementImpl = new ElementImpl(i, i2, i3);
        m70307l(qName, xMLAttributes, elementImpl);
        this.f113034m = elementImpl;
        return elementImpl;
    }
}
