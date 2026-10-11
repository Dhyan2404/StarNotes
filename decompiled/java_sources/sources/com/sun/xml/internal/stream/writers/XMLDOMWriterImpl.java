package com.sun.xml.internal.stream.writers;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import javax.xml.namespace.NamespaceContext;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamWriter;
import javax.xml.transform.dom.DOMResult;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.xml.sax.helpers.NamespaceSupport;

/* loaded from: classes10.dex */
public class XMLDOMWriterImpl implements XMLStreamWriter {
    private Node currentNode;
    private NamespaceSupport namespaceContext;
    private boolean[] needContextPop;
    private Node node;
    private Document ownerDoc;
    private StringBuffer stringBuffer;
    private Method mXmlVersion = null;
    private int resizeValue = 20;
    private int depth = 0;

    public XMLDOMWriterImpl(DOMResult dOMResult) {
        this.ownerDoc = null;
        this.currentNode = null;
        this.node = null;
        this.namespaceContext = null;
        this.needContextPop = null;
        this.stringBuffer = null;
        Node node = dOMResult.getNode();
        this.node = node;
        if (node.getNodeType() == 9) {
            this.ownerDoc = (Document) this.node;
        } else {
            this.ownerDoc = this.node.getOwnerDocument();
            this.currentNode = this.node;
        }
        getDLThreeMethods();
        this.stringBuffer = new StringBuffer();
        this.needContextPop = new boolean[this.resizeValue];
        this.namespaceContext = new NamespaceSupport();
    }

    private void getDLThreeMethods() {
        try {
            this.mXmlVersion = this.ownerDoc.getClass().getMethod("setXmlVersion", String.class);
        } catch (NoSuchMethodException unused) {
            this.mXmlVersion = null;
        } catch (SecurityException unused2) {
            this.mXmlVersion = null;
        }
    }

    private Node getNode() {
        Node node = this.currentNode;
        return node == null ? this.ownerDoc : node;
    }

    private String getQName(String str, String str2) {
        this.stringBuffer.setLength(0);
        this.stringBuffer.append(str);
        this.stringBuffer.append(":");
        this.stringBuffer.append(str2);
        return this.stringBuffer.toString();
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void close() throws XMLStreamException {
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void flush() throws XMLStreamException {
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public NamespaceContext getNamespaceContext() {
        return null;
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public String getPrefix(String str) throws XMLStreamException {
        NamespaceSupport namespaceSupport = this.namespaceContext;
        if (namespaceSupport != null) {
            return namespaceSupport.getPrefix(str);
        }
        return null;
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public Object getProperty(String str) throws IllegalArgumentException {
        throw new UnsupportedOperationException();
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void setDefaultNamespace(String str) throws XMLStreamException {
        this.namespaceContext.declarePrefix("", str);
        boolean[] zArr = this.needContextPop;
        int i = this.depth;
        if (zArr[i]) {
            return;
        }
        zArr[i] = true;
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void setNamespaceContext(NamespaceContext namespaceContext) throws XMLStreamException {
        throw new UnsupportedOperationException();
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void setPrefix(String str, String str2) throws XMLStreamException {
        if (str == null) {
            throw new XMLStreamException("Prefix cannot be null");
        }
        this.namespaceContext.declarePrefix(str, str2);
        boolean[] zArr = this.needContextPop;
        int i = this.depth;
        if (zArr[i]) {
            return;
        }
        zArr[i] = true;
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeAttribute(String str, String str2) throws XMLStreamException {
        if (this.currentNode.getNodeType() == 1) {
            Attr createAttribute = this.ownerDoc.createAttribute(str);
            createAttribute.setValue(str2);
            ((Element) this.currentNode).setAttributeNode(createAttribute);
        } else {
            throw new IllegalStateException("Current DOM Node type  is " + ((int) this.currentNode.getNodeType()) + "and does not allow attributes to be set ");
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeCData(String str) throws XMLStreamException {
        if (str == null) {
            throw new XMLStreamException("CDATA cannot be null");
        }
        getNode().appendChild(this.ownerDoc.createCDATASection(str));
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeCharacters(String str) throws XMLStreamException {
        this.currentNode.appendChild(this.ownerDoc.createTextNode(str));
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeComment(String str) throws XMLStreamException {
        getNode().appendChild(this.ownerDoc.createComment(str));
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeDTD(String str) throws XMLStreamException {
        throw new UnsupportedOperationException();
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeDefaultNamespace(String str) throws XMLStreamException {
        if (this.currentNode.getNodeType() == 1) {
            ((Element) this.currentNode).setAttributeNS("http://www.w3.org/2000/xmlns/", "xmlns", str);
            return;
        }
        throw new IllegalStateException("Current DOM Node type  is " + ((int) this.currentNode.getNodeType()) + "and does not allow attributes to be set ");
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeEmptyElement(String str) throws XMLStreamException {
        Document document = this.ownerDoc;
        if (document != null) {
            Element createElement = document.createElement(str);
            Node node = this.currentNode;
            if (node != null) {
                node.appendChild(createElement);
            } else {
                this.ownerDoc.appendChild(createElement);
            }
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeEndDocument() throws XMLStreamException {
        this.currentNode = null;
        int i = 0;
        while (true) {
            int i2 = this.depth;
            if (i >= i2) {
                this.depth = 0;
                return;
            }
            boolean[] zArr = this.needContextPop;
            if (zArr[i2]) {
                zArr[i2] = false;
                this.namespaceContext.popContext();
            }
            this.depth--;
            i++;
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeEndElement() throws XMLStreamException {
        Node parentNode = this.currentNode.getParentNode();
        if (this.currentNode.getNodeType() == 9) {
            this.currentNode = null;
        } else {
            this.currentNode = parentNode;
        }
        boolean[] zArr = this.needContextPop;
        int i = this.depth;
        if (zArr[i]) {
            zArr[i] = false;
            this.namespaceContext.popContext();
        }
        this.depth--;
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeEntityRef(String str) throws XMLStreamException {
        this.currentNode.appendChild(this.ownerDoc.createEntityReference(str));
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeNamespace(String str, String str2) throws XMLStreamException {
        if (str2 == null) {
            throw new XMLStreamException("NamespaceURI cannot be null");
        }
        if (str == null) {
            throw new XMLStreamException("prefix cannot be null");
        }
        ((Element) this.currentNode).setAttributeNS("http://www.w3.org/2000/xmlns/", str.equals("") ? "xmlns" : getQName("xmlns", str), str2);
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeProcessingInstruction(String str) throws XMLStreamException {
        if (str != null) {
            this.currentNode.appendChild(this.ownerDoc.createProcessingInstruction(str, ""));
            return;
        }
        throw new XMLStreamException("Target cannot be null");
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeStartDocument() throws XMLStreamException {
        try {
            Method method = this.mXmlVersion;
            if (method != null) {
                method.invoke(this.ownerDoc, "1.0");
            }
        } catch (IllegalAccessException e) {
            throw new XMLStreamException(e);
        } catch (InvocationTargetException e2) {
            throw new XMLStreamException(e2);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeStartElement(String str) throws XMLStreamException {
        Document document = this.ownerDoc;
        if (document != null) {
            Element createElement = document.createElement(str);
            Node node = this.currentNode;
            if (node != null) {
                node.appendChild(createElement);
            } else {
                this.ownerDoc.appendChild(createElement);
            }
            this.currentNode = createElement;
        }
        if (this.needContextPop[this.depth]) {
            this.namespaceContext.pushContext();
        }
        this.depth++;
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeCharacters(char[] cArr, int i, int i2) throws XMLStreamException {
        this.currentNode.appendChild(this.ownerDoc.createTextNode(new String(cArr, i, i2)));
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeProcessingInstruction(String str, String str2) throws XMLStreamException {
        if (str != null) {
            this.currentNode.appendChild(this.ownerDoc.createProcessingInstruction(str, str2));
            return;
        }
        throw new XMLStreamException("Target cannot be null");
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeStartDocument(String str) throws XMLStreamException {
        try {
            Method method = this.mXmlVersion;
            if (method != null) {
                method.invoke(this.ownerDoc, str);
            }
        } catch (IllegalAccessException e) {
            throw new XMLStreamException(e);
        } catch (InvocationTargetException e2) {
            throw new XMLStreamException(e2);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeAttribute(String str, String str2, String str3) throws XMLStreamException {
        if (this.currentNode.getNodeType() != 1) {
            throw new IllegalStateException("Current DOM Node type  is " + ((int) this.currentNode.getNodeType()) + "and does not allow attributes to be set ");
        }
        if (str == null) {
            throw new XMLStreamException("NamespaceURI cannot be null");
        }
        if (str2 != null) {
            NamespaceSupport namespaceSupport = this.namespaceContext;
            String prefix = namespaceSupport != null ? namespaceSupport.getPrefix(str) : null;
            if (prefix != null) {
                if (!prefix.equals("")) {
                    str2 = getQName(prefix, str2);
                }
                Attr createAttributeNS = this.ownerDoc.createAttributeNS(str, str2);
                createAttributeNS.setValue(str3);
                ((Element) this.currentNode).setAttributeNode(createAttributeNS);
                return;
            }
            throw new XMLStreamException("Namespace URI " + str + "is not bound to any prefix");
        }
        throw new XMLStreamException("Local name cannot be null");
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeEmptyElement(String str, String str2) throws XMLStreamException {
        if (this.ownerDoc != null) {
            if (str == null) {
                throw new XMLStreamException("NamespaceURI cannot be null");
            }
            if (str2 != null) {
                NamespaceSupport namespaceSupport = this.namespaceContext;
                String prefix = namespaceSupport != null ? namespaceSupport.getPrefix(str) : null;
                if (prefix != null) {
                    if (!"".equals(prefix)) {
                        str2 = getQName(prefix, str2);
                    }
                    Element createElementNS = this.ownerDoc.createElementNS(str, str2);
                    Node node = this.currentNode;
                    if (node != null) {
                        node.appendChild(createElementNS);
                        return;
                    } else {
                        this.ownerDoc.appendChild(createElementNS);
                        return;
                    }
                }
                throw new XMLStreamException("Namespace URI " + str + "is not bound to any prefix");
            }
            throw new XMLStreamException("Local name cannot be null");
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeStartDocument(String str, String str2) throws XMLStreamException {
        try {
            Method method = this.mXmlVersion;
            if (method != null) {
                method.invoke(this.ownerDoc, str2);
            }
        } catch (IllegalAccessException e) {
            throw new XMLStreamException(e);
        } catch (InvocationTargetException e2) {
            throw new XMLStreamException(e2);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeStartElement(String str, String str2) throws XMLStreamException {
        if (this.ownerDoc != null) {
            if (str == null) {
                throw new XMLStreamException("NamespaceURI cannot be null");
            }
            if (str2 != null) {
                NamespaceSupport namespaceSupport = this.namespaceContext;
                String prefix = namespaceSupport != null ? namespaceSupport.getPrefix(str) : null;
                if (prefix != null) {
                    if (!"".equals(prefix)) {
                        str2 = getQName(prefix, str2);
                    }
                    Element createElementNS = this.ownerDoc.createElementNS(str, str2);
                    Node node = this.currentNode;
                    if (node != null) {
                        node.appendChild(createElementNS);
                    } else {
                        this.ownerDoc.appendChild(createElementNS);
                    }
                    this.currentNode = createElementNS;
                } else {
                    throw new XMLStreamException("Namespace URI " + str + "is not bound to any prefix");
                }
            } else {
                throw new XMLStreamException("Local name cannot be null");
            }
        }
        if (this.needContextPop[this.depth]) {
            this.namespaceContext.pushContext();
        }
        this.depth++;
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeAttribute(String str, String str2, String str3, String str4) throws XMLStreamException {
        if (this.currentNode.getNodeType() != 1) {
            throw new IllegalStateException("Current DOM Node type  is " + ((int) this.currentNode.getNodeType()) + "and does not allow attributes to be set ");
        }
        if (str2 == null) {
            throw new XMLStreamException("NamespaceURI cannot be null");
        }
        if (str3 == null) {
            throw new XMLStreamException("Local name cannot be null");
        }
        if (str != null) {
            if (!str.equals("")) {
                str3 = getQName(str, str3);
            }
            Attr createAttributeNS = this.ownerDoc.createAttributeNS(str2, str3);
            createAttributeNS.setValue(str4);
            ((Element) this.currentNode).setAttributeNodeNS(createAttributeNS);
            return;
        }
        throw new XMLStreamException("prefix cannot be null");
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeEmptyElement(String str, String str2, String str3) throws XMLStreamException {
        if (this.ownerDoc != null) {
            if (str3 == null) {
                throw new XMLStreamException("NamespaceURI cannot be null");
            }
            if (str2 == null) {
                throw new XMLStreamException("Local name cannot be null");
            }
            if (str != null) {
                if (!"".equals(str)) {
                    str2 = getQName(str, str2);
                }
                Element createElementNS = this.ownerDoc.createElementNS(str3, str2);
                Node node = this.currentNode;
                if (node != null) {
                    node.appendChild(createElementNS);
                    return;
                } else {
                    this.ownerDoc.appendChild(createElementNS);
                    return;
                }
            }
            throw new XMLStreamException("Prefix cannot be null");
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeStartElement(String str, String str2, String str3) throws XMLStreamException {
        if (this.ownerDoc != null) {
            if (str3 == null) {
                throw new XMLStreamException("NamespaceURI cannot be null");
            }
            if (str2 == null) {
                throw new XMLStreamException("Local name cannot be null");
            }
            if (str != null) {
                if (!str.equals("")) {
                    str2 = getQName(str, str2);
                }
                Element createElementNS = this.ownerDoc.createElementNS(str3, str2);
                Node node = this.currentNode;
                if (node != null) {
                    node.appendChild(createElementNS);
                } else {
                    this.ownerDoc.appendChild(createElementNS);
                }
                this.currentNode = createElementNS;
                if (this.needContextPop[this.depth]) {
                    this.namespaceContext.pushContext();
                }
                this.depth++;
                return;
            }
            throw new XMLStreamException("Prefix cannot be null");
        }
    }
}
