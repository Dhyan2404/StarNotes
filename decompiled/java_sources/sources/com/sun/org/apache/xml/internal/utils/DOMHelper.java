package com.sun.org.apache.xml.internal.utils;

import com.sun.org.apache.xml.internal.dtm.ref.DTMNodeProxy;
import com.sun.org.apache.xml.internal.res.XMLMessages;
import java.util.Hashtable;
import java.util.Vector;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;
import org.scribe.oauth.OAuth20ServiceImpl;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.Entity;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.Text;

/* loaded from: classes10.dex */
public class DOMHelper {
    protected static final NSInfo m_NSInfoUnProcWithXMLNS = new NSInfo(false, true);
    protected static final NSInfo m_NSInfoUnProcWithoutXMLNS = new NSInfo(false, false);
    protected static final NSInfo m_NSInfoUnProcNoAncestorXMLNS = new NSInfo(false, false, 2);
    protected static final NSInfo m_NSInfoNullWithXMLNS = new NSInfo(true, true);
    protected static final NSInfo m_NSInfoNullWithoutXMLNS = new NSInfo(true, false);
    protected static final NSInfo m_NSInfoNullNoAncestorXMLNS = new NSInfo(true, false, 2);
    Hashtable m_NSInfos = new Hashtable();
    protected Vector m_candidateNoAncestorXMLNS = new Vector();
    protected Document m_DOMFactory = null;

    public static Document createDocument(boolean z) {
        try {
            DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
            newInstance.setNamespaceAware(true);
            newInstance.setValidating(true);
            if (z) {
                try {
                    newInstance.setFeature("http://javax.xml.XMLConstants/feature/secure-processing", true);
                } catch (ParserConfigurationException unused) {
                }
            }
            return newInstance.newDocumentBuilder().newDocument();
        } catch (ParserConfigurationException unused2) {
            throw new RuntimeException(XMLMessages.createXMLMessage("ER_CREATEDOCUMENT_NOT_SUPPORTED", null));
        }
    }

    public static String getNodeData(Node node) {
        FastStringBuffer fastStringBuffer = StringBufferPool.get();
        try {
            getNodeData(node, fastStringBuffer);
            return fastStringBuffer.length() > 0 ? fastStringBuffer.toString() : "";
        } finally {
            StringBufferPool.free(fastStringBuffer);
        }
    }

    public static Node getParentOfNode(Node node) throws RuntimeException {
        if (2 != node.getNodeType()) {
            return node.getParentNode();
        }
        Document ownerDocument = node.getOwnerDocument();
        DOMImplementation implementation = ownerDocument.getImplementation();
        if (implementation != null && implementation.hasFeature("Core", OAuth20ServiceImpl.f115984c)) {
            return ((Attr) node).getOwnerElement();
        }
        Element documentElement = ownerDocument.getDocumentElement();
        if (documentElement != null) {
            return locateAttrParent(documentElement, node);
        }
        throw new RuntimeException(XMLMessages.createXMLMessage("ER_CHILD_HAS_NO_OWNER_DOCUMENT_ELEMENT", null));
    }

    public static boolean isNodeAfter(Node node, Node node2) {
        if (node == node2 || isNodeTheSame(node, node2)) {
            return true;
        }
        Node parentOfNode = getParentOfNode(node);
        Node parentOfNode2 = getParentOfNode(node2);
        if (parentOfNode == parentOfNode2 || isNodeTheSame(parentOfNode, parentOfNode2)) {
            if (parentOfNode != null) {
                return isNodeAfterSibling(parentOfNode, node, node2);
            }
            return true;
        }
        int i = 2;
        int i2 = 2;
        while (parentOfNode != null) {
            i2++;
            parentOfNode = getParentOfNode(parentOfNode);
        }
        while (parentOfNode2 != null) {
            i++;
            parentOfNode2 = getParentOfNode(parentOfNode2);
        }
        if (i2 < i) {
            int i3 = i - i2;
            for (int i4 = 0; i4 < i3; i4++) {
                node2 = getParentOfNode(node2);
            }
        } else if (i2 > i) {
            int i5 = i2 - i;
            for (int i6 = 0; i6 < i5; i6++) {
                node = getParentOfNode(node);
            }
        }
        Node node3 = null;
        Node node4 = null;
        while (node != null) {
            if (node == node2 || isNodeTheSame(node, node2)) {
                return node3 == null ? i2 < i : isNodeAfterSibling(node, node3, node4);
            }
            node3 = node;
            node = getParentOfNode(node);
            node4 = node2;
            node2 = getParentOfNode(node2);
        }
        return true;
    }

    private static boolean isNodeAfterSibling(Node node, Node node2, Node node3) {
        short nodeType = node2.getNodeType();
        short nodeType2 = node3.getNodeType();
        if (2 != nodeType && 2 == nodeType2) {
            return false;
        }
        if (2 != nodeType || 2 == nodeType2) {
            if (2 != nodeType) {
                boolean z = false;
                boolean z2 = false;
                for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
                    if (node2 == firstChild || isNodeTheSame(node2, firstChild)) {
                        if (z) {
                            return false;
                        }
                        z2 = true;
                    } else if (node3 == firstChild || isNodeTheSame(node3, firstChild)) {
                        if (!z2) {
                            z = true;
                        }
                    }
                }
                return false;
            }
            NamedNodeMap attributes = node.getAttributes();
            int length = attributes.getLength();
            boolean z3 = false;
            boolean z4 = false;
            for (int i = 0; i < length; i++) {
                Node item = attributes.item(i);
                if (node2 == item || isNodeTheSame(node2, item)) {
                    if (z3) {
                        return false;
                    }
                    z4 = true;
                } else if (node3 == item || isNodeTheSame(node3, item)) {
                    if (!z4) {
                        z3 = true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public static boolean isNodeTheSame(Node node, Node node2) {
        return ((node instanceof DTMNodeProxy) && (node2 instanceof DTMNodeProxy)) ? ((DTMNodeProxy) node).equals(node2) : node == node2;
    }

    private static Node locateAttrParent(Element element, Node node) {
        Node node2 = element.getAttributeNode(node.getNodeName()) == node ? element : null;
        if (node2 == null) {
            for (Node firstChild = element.getFirstChild(); firstChild != null && (1 != firstChild.getNodeType() || (node2 = locateAttrParent((Element) firstChild, node)) == null); firstChild = firstChild.getNextSibling()) {
            }
        }
        return node2;
    }

    public Document getDOMFactory() {
        if (this.m_DOMFactory == null) {
            this.m_DOMFactory = createDocument();
        }
        return this.m_DOMFactory;
    }

    public Element getElementByID(String str, Document document) {
        return null;
    }

    public String getExpandedAttributeName(Attr attr) {
        String namespaceOfNode = getNamespaceOfNode(attr);
        if (namespaceOfNode == null) {
            return getLocalNameOfNode(attr);
        }
        return namespaceOfNode + ":" + getLocalNameOfNode(attr);
    }

    public String getExpandedElementName(Element element) {
        String namespaceOfNode = getNamespaceOfNode(element);
        if (namespaceOfNode == null) {
            return getLocalNameOfNode(element);
        }
        return namespaceOfNode + ":" + getLocalNameOfNode(element);
    }

    public short getLevel(Node node) {
        short s = 1;
        while (true) {
            node = getParentOfNode(node);
            if (node == null) {
                return s;
            }
            s = (short) (s + 1);
        }
    }

    public String getLocalNameOfNode(Node node) {
        String nodeName = node.getNodeName();
        int indexOf = nodeName.indexOf(58);
        return indexOf < 0 ? nodeName : nodeName.substring(indexOf + 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [org.w3c.dom.Element] */
    /* JADX WARN: Type inference failed for: r4v1, types: [org.w3c.dom.Node] */
    /* JADX WARN: Type inference failed for: r4v2, types: [org.w3c.dom.Node] */
    public String getNamespaceForPrefix(String str, Element element) {
        Attr attributeNode;
        if (str.equals("xml")) {
            return "http://www.w3.org/XML/1998/namespace";
        }
        String str2 = "xmlns";
        if (str.equals("xmlns")) {
            return "http://www.w3.org/2000/xmlns/";
        }
        if (str != "") {
            str2 = "xmlns:" + str;
        }
        while (element != 0) {
            short nodeType = element.getNodeType();
            if (nodeType != 1 && nodeType != 5) {
                break;
            }
            if (nodeType == 1 && (attributeNode = element.getAttributeNode(str2)) != null) {
                return attributeNode.getNodeValue();
            }
            element = getParentOfNode(element);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getNamespaceOfNode(org.w3c.dom.Node r19) {
        /*
            Method dump skipped, instructions count: 389
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.utils.DOMHelper.getNamespaceOfNode(org.w3c.dom.Node):java.lang.String");
    }

    public Node getRoot(Node node) {
        Node node2 = null;
        while (node != null) {
            Node node3 = node;
            node = getParentOfNode(node);
            node2 = node3;
        }
        return node2;
    }

    public Node getRootNode(Node node) {
        short nodeType = node.getNodeType();
        return (9 == nodeType || 11 == nodeType) ? node : node.getOwnerDocument();
    }

    public String getUniqueID(Node node) {
        return "N" + Integer.toHexString(node.hashCode()).toUpperCase();
    }

    public String getUnparsedEntityURI(String str, Document document) {
        NamedNodeMap entities;
        Entity entity;
        DocumentType doctype = document.getDoctype();
        if (doctype == null || (entities = doctype.getEntities()) == null || (entity = (Entity) entities.getNamedItem(str)) == null || entity.getNotationName() == null) {
            return "";
        }
        String systemId = entity.getSystemId();
        return systemId == null ? entity.getPublicId() : systemId;
    }

    public boolean isIgnorableWhitespace(Text text) {
        return false;
    }

    public boolean isNamespaceNode(Node node) {
        if (2 != node.getNodeType()) {
            return false;
        }
        String nodeName = node.getNodeName();
        return nodeName.startsWith("xmlns:") || nodeName.equals("xmlns");
    }

    public void setDOMFactory(Document document) {
        this.m_DOMFactory = document;
    }

    public boolean shouldStripSourceNode(Node node) throws TransformerException {
        return false;
    }

    public static void getNodeData(Node node, FastStringBuffer fastStringBuffer) {
        short nodeType = node.getNodeType();
        if (nodeType != 1) {
            if (nodeType == 2) {
                fastStringBuffer.append(node.getNodeValue());
                return;
            } else if (nodeType == 3 || nodeType == 4) {
                fastStringBuffer.append(node.getNodeValue());
                return;
            } else if (nodeType != 9 && nodeType != 11) {
                return;
            }
        }
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            getNodeData(firstChild, fastStringBuffer);
        }
    }

    public static Document createDocument() {
        return createDocument(false);
    }
}
