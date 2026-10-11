package com.sun.org.apache.xerces.internal.impl.p055xs.opti;

import com.bumptech.glide.load.engine.GlideException;
import com.sun.org.apache.xerces.internal.util.XMLSymbols;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.org.apache.xerces.internal.xni.XMLAttributes;
import com.sun.org.apache.xerces.internal.xni.XMLString;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.util.Enumeration;
import java.util.Vector;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

/* loaded from: classes10.dex */
public class SchemaDOM extends DefaultDocument {
    static final int relationsColResizeFactor = 10;
    static final int relationsRowResizeFactor = 15;
    int currLoc;
    StringBuffer fAnnotationBuffer = null;
    boolean hidden;
    boolean inCDATA;
    int nextFreeLoc;
    ElementImpl parent;
    NodeImpl[][] relations;

    public SchemaDOM() {
        reset();
    }

    private static String escapeAttValue(String str, int i) {
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length);
        stringBuffer.append(str.substring(0, i));
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt == '\"') {
                stringBuffer.append(SerializerConstants.ENTITY_QUOT);
            } else if (charAt == '<') {
                stringBuffer.append("&lt;");
            } else if (charAt == '&') {
                stringBuffer.append("&amp;");
            } else if (charAt == '\t') {
                stringBuffer.append("&#x9;");
            } else if (charAt == '\n') {
                stringBuffer.append(SerializerConstants.ENTITY_CRLF);
            } else if (charAt == '\r') {
                stringBuffer.append("&#xD;");
            } else {
                stringBuffer.append(charAt);
            }
            i++;
        }
        return stringBuffer.toString();
    }

    public static void indent(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            System.out.print(' ');
        }
    }

    private static String processAttValue(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == '\"' || charAt == '<' || charAt == '&' || charAt == '\t' || charAt == '\n' || charAt == '\r') {
                return escapeAttValue(str, i);
            }
        }
        return str;
    }

    private void processElement(QName qName, XMLAttributes xMLAttributes, ElementImpl elementImpl) {
        int i;
        elementImpl.prefix = qName.prefix;
        elementImpl.localpart = qName.localpart;
        elementImpl.rawname = qName.rawname;
        elementImpl.uri = qName.uri;
        elementImpl.schemaDOM = this;
        Attr[] attrArr = new Attr[xMLAttributes.getLength()];
        boolean z = false;
        for (int i2 = 0; i2 < xMLAttributes.getLength(); i2++) {
            attrArr[i2] = new AttrImpl(null, xMLAttributes.getPrefix(i2), xMLAttributes.getLocalName(i2), xMLAttributes.getQName(i2), xMLAttributes.getURI(i2), xMLAttributes.getValue(i2));
        }
        elementImpl.attrs = attrArr;
        if (this.nextFreeLoc == this.relations.length) {
            resizeRelations();
        }
        NodeImpl[][] nodeImplArr = this.relations;
        NodeImpl nodeImpl = nodeImplArr[this.currLoc][0];
        ElementImpl elementImpl2 = this.parent;
        if (nodeImpl != elementImpl2) {
            int i3 = this.nextFreeLoc;
            nodeImplArr[i3][0] = elementImpl2;
            this.nextFreeLoc = i3 + 1;
            this.currLoc = i3;
        }
        int i4 = 1;
        while (true) {
            NodeImpl[][] nodeImplArr2 = this.relations;
            i = this.currLoc;
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
            resizeRelations(i);
        }
        NodeImpl[][] nodeImplArr4 = this.relations;
        int i5 = this.currLoc;
        nodeImplArr4[i5][i4] = elementImpl;
        this.parent.parentRow = i5;
        elementImpl.row = i5;
        elementImpl.col = i4;
    }

    private void resizeRelations() {
        NodeImpl[][] nodeImplArr = this.relations;
        int length = nodeImplArr.length + 15;
        NodeImpl[][] nodeImplArr2 = new NodeImpl[length];
        System.arraycopy(nodeImplArr, 0, nodeImplArr2, 0, nodeImplArr.length);
        for (int length2 = this.relations.length; length2 < length; length2++) {
            nodeImplArr2[length2] = new NodeImpl[10];
        }
        this.relations = nodeImplArr2;
    }

    public static void traverse(Node node, int i) {
        indent(i);
        System.out.print("<" + node.getNodeName());
        if (node.hasAttributes()) {
            NamedNodeMap attributes = node.getAttributes();
            for (int i2 = 0; i2 < attributes.getLength(); i2++) {
                System.out.print(GlideException.C1935a.f14609h + ((Attr) attributes.item(i2)).getName() + "=\"" + ((Attr) attributes.item(i2)).getValue() + "\"");
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
        System.out.println(XMLStreamWriterImpl.OPEN_END_TAG + node.getNodeName() + ">");
    }

    public void characters(XMLString xMLString) {
        if (this.inCDATA) {
            this.fAnnotationBuffer.append(xMLString.f64120ch, xMLString.offset, xMLString.length);
            return;
        }
        for (int i = xMLString.offset; i < xMLString.offset + xMLString.length; i++) {
            char c = xMLString.f64120ch[i];
            if (c == '&') {
                this.fAnnotationBuffer.append("&amp;");
            } else if (c == '<') {
                this.fAnnotationBuffer.append("&lt;");
            } else if (c == '>') {
                this.fAnnotationBuffer.append("&gt;");
            } else if (c == '\r') {
                this.fAnnotationBuffer.append("&#xD;");
            } else {
                this.fAnnotationBuffer.append(c);
            }
        }
    }

    public void comment(XMLString xMLString) {
        StringBuffer stringBuffer = this.fAnnotationBuffer;
        stringBuffer.append(XMLStreamWriterImpl.START_COMMENT);
        stringBuffer.append(xMLString.toString());
        stringBuffer.append(XMLStreamWriterImpl.END_COMMENT);
    }

    public void emptyElement(QName qName, XMLAttributes xMLAttributes, int i, int i2, int i3) {
        processElement(qName, xMLAttributes, new ElementImpl(i, i2, i3));
    }

    public void endAnnotationCDATA() {
        this.fAnnotationBuffer.append("]]>");
        this.inCDATA = false;
    }

    public void endAnnotationElement(QName qName, boolean z) {
        if (!z) {
            StringBuffer stringBuffer = this.fAnnotationBuffer;
            stringBuffer.append(XMLStreamWriterImpl.OPEN_END_TAG);
            stringBuffer.append(qName.rawname);
            stringBuffer.append(">");
            return;
        }
        StringBuffer stringBuffer2 = this.fAnnotationBuffer;
        stringBuffer2.append("\n</");
        stringBuffer2.append(qName.rawname);
        stringBuffer2.append(">");
        NodeImpl[][] nodeImplArr = this.relations;
        boolean z2 = true;
        ElementImpl elementImpl = (ElementImpl) nodeImplArr[this.currLoc][1];
        if (this.nextFreeLoc == nodeImplArr.length) {
            resizeRelations();
        }
        int i = this.nextFreeLoc;
        this.nextFreeLoc = i + 1;
        elementImpl.parentRow = i;
        int i2 = 1;
        while (true) {
            NodeImpl[] nodeImplArr2 = this.relations[i];
            if (i2 >= nodeImplArr2.length) {
                z2 = false;
                break;
            } else if (nodeImplArr2[i2] == null) {
                break;
            } else {
                i2++;
            }
        }
        if (!z2) {
            resizeRelations(i);
        }
        this.relations[i][i2] = new TextImpl(this.fAnnotationBuffer, this, i, i2);
        this.fAnnotationBuffer = null;
    }

    public void endElement() {
        int i = this.parent.row;
        this.currLoc = i;
        this.parent = (ElementImpl) this.relations[i][0];
    }

    public void endSyntheticAnnotationElement(QName qName, boolean z) {
        if (!z) {
            StringBuffer stringBuffer = this.fAnnotationBuffer;
            stringBuffer.append(XMLStreamWriterImpl.OPEN_END_TAG);
            stringBuffer.append(qName.rawname);
            stringBuffer.append(">");
            return;
        }
        StringBuffer stringBuffer2 = this.fAnnotationBuffer;
        stringBuffer2.append("\n</");
        stringBuffer2.append(qName.rawname);
        stringBuffer2.append(">");
        this.parent.fSyntheticAnnotation = this.fAnnotationBuffer.toString();
        this.fAnnotationBuffer = null;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultDocument, org.w3c.dom.Document
    public Element getDocumentElement() {
        return (ElementImpl) this.relations[0][1];
    }

    public void printDOM() {
    }

    public void processingInstruction(String str, String str2) {
        StringBuffer stringBuffer = this.fAnnotationBuffer;
        stringBuffer.append("<?");
        stringBuffer.append(str);
        stringBuffer.append(" ");
        stringBuffer.append(str2);
        stringBuffer.append("?>");
    }

    public void reset() {
        if (this.relations != null) {
            for (int i = 0; i < this.relations.length; i++) {
                int i2 = 0;
                while (true) {
                    NodeImpl[] nodeImplArr = this.relations[i];
                    if (i2 < nodeImplArr.length) {
                        nodeImplArr[i2] = null;
                        i2++;
                    }
                }
            }
        }
        this.relations = new NodeImpl[15];
        ElementImpl elementImpl = new ElementImpl(0, 0, 0);
        this.parent = elementImpl;
        elementImpl.rawname = "DOCUMENT_NODE";
        this.currLoc = 0;
        this.nextFreeLoc = 1;
        this.inCDATA = false;
        for (int i3 = 0; i3 < 15; i3++) {
            this.relations[i3] = new NodeImpl[10];
        }
        this.relations[this.currLoc][0] = this.parent;
    }

    public void startAnnotation(QName qName, XMLAttributes xMLAttributes, NamespaceContext namespaceContext) {
        if (this.fAnnotationBuffer == null) {
            this.fAnnotationBuffer = new StringBuffer(256);
        }
        StringBuffer stringBuffer = this.fAnnotationBuffer;
        stringBuffer.append("<");
        stringBuffer.append(qName.rawname);
        stringBuffer.append(" ");
        Vector vector = new Vector();
        for (int i = 0; i < xMLAttributes.getLength(); i++) {
            String value = xMLAttributes.getValue(i);
            String prefix = xMLAttributes.getPrefix(i);
            String qName2 = xMLAttributes.getQName(i);
            String str = XMLSymbols.PREFIX_XMLNS;
            if (prefix == str || qName2 == str) {
                vector.addElement(prefix == str ? xMLAttributes.getLocalName(i) : XMLSymbols.EMPTY_STRING);
            }
            StringBuffer stringBuffer2 = this.fAnnotationBuffer;
            stringBuffer2.append(qName2);
            stringBuffer2.append("=\"");
            stringBuffer2.append(processAttValue(value));
            stringBuffer2.append("\" ");
        }
        Enumeration allPrefixes = namespaceContext.getAllPrefixes();
        while (allPrefixes.hasMoreElements()) {
            String str2 = (String) allPrefixes.nextElement();
            String uri = namespaceContext.getURI(str2);
            if (uri == null) {
                uri = XMLSymbols.EMPTY_STRING;
            }
            if (!vector.contains(str2)) {
                if (str2 == XMLSymbols.EMPTY_STRING) {
                    StringBuffer stringBuffer3 = this.fAnnotationBuffer;
                    stringBuffer3.append("xmlns");
                    stringBuffer3.append("=\"");
                    stringBuffer3.append(processAttValue(uri));
                    stringBuffer3.append("\" ");
                } else {
                    StringBuffer stringBuffer4 = this.fAnnotationBuffer;
                    stringBuffer4.append("xmlns:");
                    stringBuffer4.append(str2);
                    stringBuffer4.append("=\"");
                    stringBuffer4.append(processAttValue(uri));
                    stringBuffer4.append("\" ");
                }
            }
        }
        this.fAnnotationBuffer.append(">\n");
    }

    public void startAnnotationCDATA() {
        this.inCDATA = true;
        this.fAnnotationBuffer.append("<![CDATA[");
    }

    public void startAnnotationElement(QName qName, XMLAttributes xMLAttributes) {
        StringBuffer stringBuffer = this.fAnnotationBuffer;
        stringBuffer.append("<");
        stringBuffer.append(qName.rawname);
        for (int i = 0; i < xMLAttributes.getLength(); i++) {
            String value = xMLAttributes.getValue(i);
            StringBuffer stringBuffer2 = this.fAnnotationBuffer;
            stringBuffer2.append(" ");
            stringBuffer2.append(xMLAttributes.getQName(i));
            stringBuffer2.append("=\"");
            stringBuffer2.append(processAttValue(value));
            stringBuffer2.append("\"");
        }
        this.fAnnotationBuffer.append(">");
    }

    public void startElement(QName qName, XMLAttributes xMLAttributes, int i, int i2, int i3) {
        ElementImpl elementImpl = new ElementImpl(i, i2, i3);
        processElement(qName, xMLAttributes, elementImpl);
        this.parent = elementImpl;
    }

    public void emptyElement(QName qName, XMLAttributes xMLAttributes, int i, int i2) {
        emptyElement(qName, xMLAttributes, i, i2, -1);
    }

    public void startElement(QName qName, XMLAttributes xMLAttributes, int i, int i2) {
        startElement(qName, xMLAttributes, i, i2, -1);
    }

    private void resizeRelations(int i) {
        NodeImpl[] nodeImplArr = this.relations[i];
        NodeImpl[] nodeImplArr2 = new NodeImpl[nodeImplArr.length + 10];
        System.arraycopy(nodeImplArr, 0, nodeImplArr2, 0, nodeImplArr.length);
        this.relations[i] = nodeImplArr2;
    }
}
