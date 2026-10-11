package com.twelvemonkeys.xml;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import com.twelvemonkeys.lang.StringUtil;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import java.util.Date;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.mortbay.util.MultiPartWriter;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.ProcessingInstruction;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class XMLSerializer {

    /* renamed from: a */
    public final OutputStream f94431a;

    /* renamed from: b */
    public final Charset f94432b;

    /* renamed from: c */
    public final C17023a f94433c = new C17023a();

    /* renamed from: com.twelvemonkeys.xml.XMLSerializer$a */
    /* loaded from: classes10.dex */
    public static class C17023a implements Cloneable {

        /* renamed from: e */
        public String f94434e = "\t";

        /* renamed from: f */
        public int f94435f = 0;

        /* renamed from: g */
        public boolean f94436g = false;

        /* renamed from: h */
        public boolean f94437h = false;

        /* renamed from: i */
        public String f94438i;

        /* renamed from: a */
        public C17023a m60823a() {
            try {
                return (C17023a) clone();
            } catch (CloneNotSupportedException e) {
                throw new Error(e);
            }
        }

        /* renamed from: b */
        public C17023a m60824b() {
            C17023a m60823a = m60823a();
            m60823a.f94435f++;
            return m60823a;
        }
    }

    public XMLSerializer(OutputStream outputStream, String str) {
        this.f94431a = outputStream;
        this.f94432b = Charset.forName(str);
    }

    /* renamed from: a */
    public static int m60804a(String str, int i, int i2, StringBuilder sb, String str2) {
        sb.append(str.substring(i, i2));
        sb.append(str2);
        return i2 + 1;
    }

    /* renamed from: b */
    public static void m60805b(PrintWriter printWriter, C17023a c17023a) {
        for (int i = 0; i < c17023a.f94435f; i++) {
            printWriter.print(c17023a.f94434e);
        }
    }

    /* renamed from: c */
    public static String m60806c(String str) {
        int m60808e = m60808e(str);
        if (m60808e < 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.substring(0, m60808e));
        sb.ensureCapacity(str.length() + 16);
        int i = m60808e;
        while (m60808e < str.length()) {
            char charAt = str.charAt(m60808e);
            if (charAt == '\"') {
                i = m60804a(str, i, m60808e, sb, SerializerConstants.ENTITY_QUOT);
            } else if (charAt == '&') {
                i = m60804a(str, i, m60808e, sb, "&amp;");
            }
            m60808e++;
        }
        sb.append(str.substring(i));
        return sb.toString();
    }

    /* renamed from: d */
    public static String m60807d(String str) {
        int m60809f = m60809f(str);
        if (m60809f < 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.substring(0, m60809f));
        sb.ensureCapacity(str.length() + 30);
        int i = m60809f;
        while (m60809f < str.length()) {
            char charAt = str.charAt(m60809f);
            if (charAt == '&') {
                i = m60804a(str, i, m60809f, sb, "&amp;");
            } else if (charAt == '<') {
                i = m60804a(str, i, m60809f, sb, "&lt;");
            } else if (charAt == '>') {
                i = m60804a(str, i, m60809f, sb, "&gt;");
            }
            m60809f++;
        }
        sb.append(str.substring(i));
        return sb.toString();
    }

    /* renamed from: e */
    public static int m60808e(String str) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == '\"' || charAt == '&') {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: f */
    public static int m60809f(String str) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == '&' || charAt == '<' || charAt == '>') {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: g */
    public static void m60810g(Node node, C17023a c17023a) {
        Node namedItem;
        NamedNodeMap attributes = node.getAttributes();
        if (attributes == null || (namedItem = attributes.getNamedItem(Constants.ATTRNAME_XMLSPACE)) == null) {
            return;
        }
        if ("preserve".equals(namedItem.getNodeValue())) {
            c17023a.f94436g = true;
        } else if ("default".equals(namedItem.getNodeValue())) {
            c17023a.f94436g = false;
        }
    }

    /* renamed from: h */
    public static String m60811h(String str) {
        if (str.contains("]]>")) {
            throw new IllegalArgumentException("Malformed input document: CDATA block may not contain the string ']]>'");
        }
        return str;
    }

    /* renamed from: i */
    public static String m60812i(String str) {
        if (str.contains(MultiPartWriter.f115320h)) {
            throw new IllegalArgumentException("Malformed input document: Comment may not contain the string '--'");
        }
        return str;
    }

    public static void main(String[] strArr) throws IOException, SAXException {
        DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
        newInstance.setNamespaceAware(true);
        try {
            DocumentBuilder newDocumentBuilder = newInstance.newDocumentBuilder();
            DOMImplementation dOMImplementation = newDocumentBuilder.getDOMImplementation();
            Document createDocument = dOMImplementation.createDocument("http://www.twelvemonkeys.com/xml/test", Constants.ATTRNAME_TEST, dOMImplementation.createDocumentType(Constants.ATTRNAME_TEST, null, null));
            Element documentElement = createDocument.getDocumentElement();
            createDocument.insertBefore(createDocument.createComment(new Date().toString()), documentElement);
            Node createElement = createDocument.createElement("sub");
            documentElement.appendChild(createElement);
            Element createElementNS = createDocument.createElementNS("http://more.com/1999/namespace", "more:more");
            createElementNS.setAttribute("foo", Constants.ATTRNAME_TEST);
            createElementNS.setAttribute("bar", "'really' \"legal\" & ok");
            createElement.appendChild(createElementNS);
            createElementNS.appendChild(createDocument.createTextNode("Simply some text."));
            createElementNS.appendChild(createDocument.createCDATASection("&something escaped;"));
            createElementNS.appendChild(createDocument.createTextNode("More & <more>!"));
            createElementNS.appendChild(createDocument.createTextNode("\"<<'&'>>\""));
            createElement.appendChild(createDocument.createElement("another"));
            Element createElement2 = createDocument.createElement("yet-another");
            createElement2.setAttribute("this-one", "with-params");
            createElement.appendChild(createElement2);
            Element createElementNS2 = createDocument.createElementNS("http://www.twelvemonkeys.com/xml/test", "pre");
            createElementNS2.setAttributeNS("http://www.w3.org/XML/1998/namespace", Constants.ATTRNAME_XMLSPACE, "preserve");
            createElementNS2.appendChild(createDocument.createTextNode(" \t \n\r some text & white ' '   \n   "));
            createElement.appendChild(createElementNS2);
            Element createElementNS3 = createDocument.createElementNS("http://www.twelvemonkeys.com/xml/test", "tight");
            createElementNS3.setAttributeNS("http://www.w3.org/XML/1998/namespace", Constants.ATTRNAME_XMLSPACE, "preserve");
            createElementNS3.appendChild(createDocument.createTextNode("no-space-around-me"));
            createElement.appendChild(createElementNS3);
            System.out.println("XMLSerializer:");
            XMLSerializer xMLSerializer = new XMLSerializer(System.out, "UTF-8");
            xMLSerializer.serialize(createDocument);
            System.out.println();
            System.out.println("DOMSerializer:");
            DOMSerializer dOMSerializer = new DOMSerializer(System.out, "UTF-8");
            dOMSerializer.setPrettyPrint(true);
            dOMSerializer.serialize(createDocument);
            System.out.println();
            System.out.println("\n");
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            new XMLSerializer(byteArrayOutputStream, "UTF-8").serialize(createDocument);
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            new DOMSerializer(byteArrayOutputStream2, "UTF-8").serialize(createDocument);
            Document parse = newDocumentBuilder.parse(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
            System.out.println("XMLSerializer reparsed XMLSerializer:");
            xMLSerializer.serialize(parse);
            System.out.println();
            System.out.println("DOMSerializer reparsed XMLSerializer:");
            dOMSerializer.serialize(parse);
            System.out.println();
            Document parse2 = newDocumentBuilder.parse(new ByteArrayInputStream(byteArrayOutputStream2.toByteArray()));
            System.out.println("XMLSerializer reparsed DOMSerializer:");
            xMLSerializer.serialize(parse2);
            System.out.println();
            System.out.println("DOMSerializer reparsed DOMSerializer:");
            dOMSerializer.serialize(parse2);
            System.out.println();
        } catch (ParserConfigurationException e) {
            throw ((IOException) new IOException(e.getMessage()).initCause(e));
        }
    }

    public final XMLSerializer indentation(String str) {
        C17023a c17023a = this.f94433c;
        if (str == null) {
            str = "\t";
        }
        c17023a.f94434e = str;
        return this;
    }

    /* renamed from: j */
    public final void m60813j(PrintWriter printWriter, Node node) {
        printWriter.print("<![CDATA[");
        printWriter.print(m60811h(node.getNodeValue()));
        printWriter.println("]]>");
    }

    /* renamed from: k */
    public final void m60814k(PrintWriter printWriter, Node node, C17023a c17023a) {
        if (c17023a.f94437h) {
            return;
        }
        String nodeValue = node.getNodeValue();
        m60812i(nodeValue);
        if (nodeValue.startsWith(" ")) {
            printWriter.print(XMLStreamWriterImpl.START_COMMENT);
        } else {
            printWriter.print("<!-- ");
        }
        printWriter.print(nodeValue);
        if (nodeValue.endsWith(" ")) {
            printWriter.println(XMLStreamWriterImpl.END_COMMENT);
        } else {
            printWriter.println(" -->");
        }
    }

    /* renamed from: l */
    public final void m60815l(PrintWriter printWriter, DocumentType documentType) {
        if (documentType != null) {
            printWriter.print("<!DOCTYPE ");
            printWriter.print(documentType.getName());
            String publicId = documentType.getPublicId();
            if (!StringUtil.isEmpty(publicId)) {
                printWriter.print(" PUBLIC ");
                printWriter.print(publicId);
            }
            String systemId = documentType.getSystemId();
            if (!StringUtil.isEmpty(systemId)) {
                if (StringUtil.isEmpty(publicId)) {
                    printWriter.print(" SYSTEM \"");
                } else {
                    printWriter.print(" \"");
                }
                printWriter.print(systemId);
                printWriter.print("\"");
            }
            String internalSubset = documentType.getInternalSubset();
            if (!StringUtil.isEmpty(internalSubset)) {
                printWriter.print(" [ ");
                printWriter.print(internalSubset);
                printWriter.print(" ]");
            }
            printWriter.println(">");
        }
    }

    /* renamed from: m */
    public final void m60816m(PrintWriter printWriter, Node node, C17023a c17023a) {
        if (node.hasChildNodes()) {
            NodeList childNodes = node.getChildNodes();
            for (int i = 0; i < childNodes.getLength(); i++) {
                m60818o(printWriter, childNodes.item(i), c17023a);
            }
        }
    }

    /* renamed from: n */
    public final void m60817n(PrintWriter printWriter, Element element, C17023a c17023a) {
        printWriter.print("<");
        printWriter.print(element.getTagName());
        String namespaceURI = element.getNamespaceURI();
        if (namespaceURI != null && !namespaceURI.equals(c17023a.f94438i)) {
            String prefix = element.getPrefix();
            if (prefix == null) {
                c17023a.f94438i = namespaceURI;
                printWriter.print(" xmlns");
            } else {
                printWriter.print(" xmlns:");
                printWriter.print(prefix);
            }
            printWriter.print("=\"");
            printWriter.print(namespaceURI);
            printWriter.print("\"");
        }
        if (element.hasAttributes()) {
            NamedNodeMap attributes = element.getAttributes();
            for (int i = 0; i < attributes.getLength(); i++) {
                Attr attr = (Attr) attributes.item(i);
                String name = attr.getName();
                if (!name.startsWith("xmlns") || (name.length() != 5 && name.charAt(5) != ':')) {
                    printWriter.print(" ");
                    printWriter.print(name);
                    printWriter.print("=\"");
                    printWriter.print(m60806c(attr.getValue()));
                    printWriter.print("\"");
                }
            }
        }
        if (!element.hasChildNodes()) {
            if (element.getNodeValue() == null) {
                printWriter.println(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
                return;
            }
            printWriter.print(">");
            printWriter.print(element.getNodeValue());
            printWriter.print(XMLStreamWriterImpl.OPEN_END_TAG);
            printWriter.print(element.getTagName());
            printWriter.println(">");
            return;
        }
        printWriter.print(">");
        if (!c17023a.f94436g) {
            printWriter.println();
        }
        NodeList childNodes = element.getChildNodes();
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            m60818o(printWriter, childNodes.item(i2), c17023a.m60824b());
        }
        if (!c17023a.f94436g) {
            m60805b(printWriter, c17023a);
        }
        printWriter.print(XMLStreamWriterImpl.OPEN_END_TAG);
        printWriter.print(element.getTagName());
        printWriter.println(">");
    }

    /* renamed from: o */
    public final void m60818o(PrintWriter printWriter, Node node, C17023a c17023a) {
        if (node.getNodeType() != 3) {
            m60805b(printWriter, c17023a);
        }
        switch (node.getNodeType()) {
            case 1:
                boolean z = c17023a.f94436g;
                m60810g(node, c17023a);
                m60817n(printWriter, (Element) node, c17023a);
                c17023a.f94436g = z;
                return;
            case 2:
                throw new IllegalArgumentException("Malformed input Document: Attribute nodes should only occur inside Element nodes");
            case 3:
                m60820q(printWriter, node, c17023a);
                return;
            case 4:
                m60813j(printWriter, node);
                return;
            case 5:
            case 6:
            default:
                throw new InternalError("Lazy programmer never implemented serialization of " + node.getClass());
            case 7:
                m60819p(printWriter, (ProcessingInstruction) node);
                return;
            case 8:
                m60814k(printWriter, node, c17023a);
                return;
            case 9:
            case 11:
                m60816m(printWriter, node, c17023a);
                return;
            case 10:
                m60815l(printWriter, (DocumentType) node);
                return;
        }
    }

    /* renamed from: p */
    public final void m60819p(PrintWriter printWriter, ProcessingInstruction processingInstruction) {
        printWriter.print("\n<?");
        printWriter.print(processingInstruction.getTarget());
        String data = processingInstruction.getData();
        if (data != null) {
            printWriter.print(" ");
            printWriter.print(data);
        }
        printWriter.println("?>");
    }

    /* renamed from: q */
    public final void m60820q(PrintWriter printWriter, Node node, C17023a c17023a) {
        String nodeValue = node.getNodeValue();
        if (c17023a.f94436g) {
            printWriter.print(m60807d(nodeValue));
        } else {
            if (StringUtil.isEmpty(nodeValue)) {
                return;
            }
            String m60807d = m60807d(nodeValue.trim());
            m60805b(printWriter, c17023a);
            printWriter.println(m60807d);
        }
    }

    /* renamed from: r */
    public final void m60821r(PrintWriter printWriter, Node node, C17023a c17023a) {
        m60818o(printWriter, node, c17023a);
    }

    /* renamed from: s */
    public final void m60822s(PrintWriter printWriter) {
        printWriter.print("<?xml version=\"1.0\" encoding=\"");
        printWriter.print(this.f94432b.name());
        printWriter.println("\"?>");
    }

    public void serialize(Document document) {
        serialize(document, true);
    }

    public final XMLSerializer stripComments(boolean z) {
        this.f94433c.f94437h = z;
        return this;
    }

    public void serialize(Node node, boolean z) {
        PrintWriter printWriter = new PrintWriter(new OutputStreamWriter(this.f94431a, this.f94432b));
        if (z) {
            try {
                m60822s(printWriter);
            } finally {
                printWriter.flush();
            }
        }
        m60821r(printWriter, node, this.f94433c.m60823a());
    }
}
