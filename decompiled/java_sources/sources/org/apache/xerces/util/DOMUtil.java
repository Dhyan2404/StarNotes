package org.apache.xerces.util;

import java.lang.reflect.Method;
import java.util.Hashtable;
import org.apache.xerces.dom.AttrImpl;
import org.apache.xerces.dom.DocumentImpl;
import org.apache.xerces.impl.p117xs.opti.ElementImpl;
import org.apache.xerces.impl.p117xs.opti.NodeImpl;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.ls.LSException;

/* loaded from: classes13.dex */
public class DOMUtil {

    /* renamed from: org.apache.xerces.util.DOMUtil$a */
    /* loaded from: classes13.dex */
    public static class C20086a {

        /* renamed from: a */
        public static Method f113488a;

        /* renamed from: b */
        public static boolean f113489b;

        /* renamed from: c */
        public static /* synthetic */ Class f113490c;

        static {
            try {
                Class cls = f113490c;
                if (cls == null) {
                    cls = class$("java.lang.Throwable");
                    f113490c = cls;
                }
                Class<?>[] clsArr = new Class[1];
                Class<?> cls2 = f113490c;
                if (cls2 == null) {
                    cls2 = class$("java.lang.Throwable");
                    f113490c = cls2;
                }
                clsArr[0] = cls2;
                f113488a = cls.getMethod("initCause", clsArr);
                f113489b = true;
            } catch (Exception unused) {
                f113488a = null;
                f113489b = false;
            }
        }

        public static /* synthetic */ Class class$(String str) {
            try {
                return Class.forName(str);
            } catch (ClassNotFoundException e) {
                throw new NoClassDefFoundError(e.getMessage());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [org.w3c.dom.Node] */
    /* JADX WARN: Type inference failed for: r13v1, types: [org.w3c.dom.Node] */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5, types: [org.w3c.dom.Node] */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r4v11, types: [org.w3c.dom.ProcessingInstruction] */
    /* JADX WARN: Type inference failed for: r4v13, types: [org.w3c.dom.Comment] */
    /* JADX WARN: Type inference failed for: r4v2, types: [org.w3c.dom.Element] */
    /* JADX WARN: Type inference failed for: r4v3, types: [org.w3c.dom.Node] */
    /* JADX WARN: Type inference failed for: r4v5, types: [org.w3c.dom.Text] */
    /* JADX WARN: Type inference failed for: r4v7, types: [org.w3c.dom.CDATASection] */
    /* JADX WARN: Type inference failed for: r4v9, types: [org.w3c.dom.EntityReference] */
    public static void copyInto(Node node, Node node2) throws DOMException {
        ?? createElement;
        Document ownerDocument = node2.getOwnerDocument();
        boolean z = ownerDocument instanceof DocumentImpl;
        Node node3 = node;
        Node node4 = node3;
        while (node3 != null) {
            short nodeType = node3.getNodeType();
            if (nodeType == 1) {
                createElement = ownerDocument.createElement(node3.getNodeName());
                NamedNodeMap attributes = node3.getAttributes();
                int length = attributes.getLength();
                for (int i = 0; i < length; i++) {
                    Attr attr = (Attr) attributes.item(i);
                    String nodeName = attr.getNodeName();
                    createElement.setAttribute(nodeName, attr.getNodeValue());
                    if (z && !attr.getSpecified()) {
                        ((AttrImpl) createElement.getAttributeNode(nodeName)).setSpecified(false);
                    }
                }
            } else if (nodeType == 3) {
                createElement = ownerDocument.createTextNode(node3.getNodeValue());
            } else if (nodeType == 4) {
                createElement = ownerDocument.createCDATASection(node3.getNodeValue());
            } else if (nodeType == 5) {
                createElement = ownerDocument.createEntityReference(node3.getNodeName());
            } else if (nodeType == 7) {
                createElement = ownerDocument.createProcessingInstruction(node3.getNodeName(), node3.getNodeValue());
            } else {
                if (nodeType != 8) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("can't copy node type, ");
                    stringBuffer.append((int) nodeType);
                    stringBuffer.append(" (");
                    stringBuffer.append(node3.getNodeName());
                    stringBuffer.append(')');
                    throw new IllegalArgumentException(stringBuffer.toString());
                }
                createElement = ownerDocument.createComment(node3.getNodeValue());
            }
            node2.appendChild(createElement);
            if (node3.hasChildNodes()) {
                node4 = node3;
                node3 = node3.getFirstChild();
                node2 = createElement;
            } else {
                node3 = node3.getNextSibling();
                node2 = node2;
                while (node3 == null && node4 != node) {
                    node3 = node4.getNextSibling();
                    node4 = node4.getParentNode();
                    node2 = node2.getParentNode();
                }
            }
        }
    }

    public static DOMException createDOMException(short s, Throwable th) {
        DOMException dOMException = new DOMException(s, th != null ? th.getMessage() : null);
        if (th != null && C20086a.f113489b) {
            try {
                C20086a.f113488a.invoke(dOMException, th);
            } catch (Exception unused) {
            }
        }
        return dOMException;
    }

    public static LSException createLSException(short s, Throwable th) {
        LSException lSException = new LSException(s, th != null ? th.getMessage() : null);
        if (th != null && C20086a.f113489b) {
            try {
                C20086a.f113488a.invoke(lSException, th);
            } catch (Exception unused) {
            }
        }
        return lSException;
    }

    public static String getAnnotation(Node node) {
        if (node instanceof ElementImpl) {
            return ((ElementImpl) node).getAnnotation();
        }
        return null;
    }

    public static Attr getAttr(Element element, String str) {
        return element.getAttributeNode(str);
    }

    public static Attr getAttrNS(Element element, String str, String str2) {
        return element.getAttributeNodeNS(str, str2);
    }

    public static String getAttrValue(Element element, String str) {
        return element.getAttribute(str);
    }

    public static String getAttrValueNS(Element element, String str, String str2) {
        return element.getAttributeNS(str, str2);
    }

    public static Attr[] getAttrs(Element element) {
        NamedNodeMap attributes = element.getAttributes();
        Attr[] attrArr = new Attr[attributes.getLength()];
        for (int i = 0; i < attributes.getLength(); i++) {
            attrArr[i] = (Attr) attributes.item(i);
        }
        return attrArr;
    }

    public static String getChildText(Node node) {
        String childText;
        if (node == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            short nodeType = firstChild.getNodeType();
            if (nodeType == 3) {
                childText = firstChild.getNodeValue();
            } else if (nodeType == 4) {
                childText = getChildText(firstChild);
            }
            stringBuffer.append(childText);
        }
        return stringBuffer.toString();
    }

    public static Document getDocument(Node node) {
        return node.getOwnerDocument();
    }

    public static Element getFirstChildElement(Node node) {
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild.getNodeType() == 1) {
                return (Element) firstChild;
            }
        }
        return null;
    }

    public static Element getFirstChildElementNS(Node node, String str, String str2) {
        String namespaceURI;
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild.getNodeType() == 1 && (namespaceURI = firstChild.getNamespaceURI()) != null && namespaceURI.equals(str) && firstChild.getLocalName().equals(str2)) {
                return (Element) firstChild;
            }
        }
        return null;
    }

    public static Element getFirstVisibleChildElement(Node node) {
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild.getNodeType() == 1 && !isHidden(firstChild)) {
                return (Element) firstChild;
            }
        }
        return null;
    }

    public static Element getLastChildElement(Node node) {
        for (Node lastChild = node.getLastChild(); lastChild != null; lastChild = lastChild.getPreviousSibling()) {
            if (lastChild.getNodeType() == 1) {
                return (Element) lastChild;
            }
        }
        return null;
    }

    public static Element getLastChildElementNS(Node node, String str, String str2) {
        String namespaceURI;
        for (Node lastChild = node.getLastChild(); lastChild != null; lastChild = lastChild.getPreviousSibling()) {
            if (lastChild.getNodeType() == 1 && (namespaceURI = lastChild.getNamespaceURI()) != null && namespaceURI.equals(str) && lastChild.getLocalName().equals(str2)) {
                return (Element) lastChild;
            }
        }
        return null;
    }

    public static Element getLastVisibleChildElement(Node node) {
        for (Node lastChild = node.getLastChild(); lastChild != null; lastChild = lastChild.getPreviousSibling()) {
            if (lastChild.getNodeType() == 1 && !isHidden(lastChild)) {
                return (Element) lastChild;
            }
        }
        return null;
    }

    public static String getLocalName(Node node) {
        String localName = node.getLocalName();
        return localName != null ? localName : node.getNodeName();
    }

    public static String getName(Node node) {
        return node.getNodeName();
    }

    public static String getNamespaceURI(Node node) {
        return node.getNamespaceURI();
    }

    public static Element getNextSiblingElement(Node node) {
        do {
            node = node.getNextSibling();
            if (node == null) {
                return null;
            }
        } while (node.getNodeType() != 1);
        return (Element) node;
    }

    public static Element getNextSiblingElementNS(Node node, String str, String str2) {
        String namespaceURI;
        while (true) {
            node = node.getNextSibling();
            if (node == null) {
                return null;
            }
            if (node.getNodeType() == 1 && (namespaceURI = node.getNamespaceURI()) != null && namespaceURI.equals(str) && node.getLocalName().equals(str2)) {
                return (Element) node;
            }
        }
    }

    public static Element getNextVisibleSiblingElement(Node node) {
        while (true) {
            node = node.getNextSibling();
            if (node == null) {
                return null;
            }
            if (node.getNodeType() == 1 && !isHidden(node)) {
                return (Element) node;
            }
        }
    }

    public static Element getParent(Element element) {
        Node parentNode = element.getParentNode();
        if (parentNode instanceof Element) {
            return (Element) parentNode;
        }
        return null;
    }

    public static String getPrefix(Node node) {
        return node.getPrefix();
    }

    public static Element getRoot(Document document) {
        return document.getDocumentElement();
    }

    public static String getSyntheticAnnotation(Node node) {
        if (node instanceof ElementImpl) {
            return ((ElementImpl) node).getSyntheticAnnotation();
        }
        return null;
    }

    public static String getValue(Attr attr) {
        return attr.getValue();
    }

    public static boolean isHidden(Node node) {
        if (node instanceof NodeImpl) {
            return ((NodeImpl) node).getReadOnly();
        }
        if (node instanceof org.apache.xerces.dom.NodeImpl) {
            return ((org.apache.xerces.dom.NodeImpl) node).getReadOnly();
        }
        return false;
    }

    public static void setHidden(Node node) {
        if (node instanceof NodeImpl) {
            ((NodeImpl) node).setReadOnly(true, false);
        } else if (node instanceof org.apache.xerces.dom.NodeImpl) {
            ((org.apache.xerces.dom.NodeImpl) node).setReadOnly(true, false);
        }
    }

    public static void setVisible(Node node) {
        if (node instanceof NodeImpl) {
            ((NodeImpl) node).setReadOnly(false, false);
        } else if (node instanceof org.apache.xerces.dom.NodeImpl) {
            ((org.apache.xerces.dom.NodeImpl) node).setReadOnly(false, false);
        }
    }

    public static Element getFirstChildElement(Node node, String str) {
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild.getNodeType() == 1 && firstChild.getNodeName().equals(str)) {
                return (Element) firstChild;
            }
        }
        return null;
    }

    public static Element getFirstChildElementNS(Node node, String[][] strArr) {
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild.getNodeType() == 1) {
                for (int i = 0; i < strArr.length; i++) {
                    String namespaceURI = firstChild.getNamespaceURI();
                    if (namespaceURI != null && namespaceURI.equals(strArr[i][0]) && firstChild.getLocalName().equals(strArr[i][1])) {
                        return (Element) firstChild;
                    }
                }
            }
        }
        return null;
    }

    public static Element getFirstVisibleChildElement(Node node, Hashtable hashtable) {
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild.getNodeType() == 1 && !isHidden(firstChild, hashtable)) {
                return (Element) firstChild;
            }
        }
        return null;
    }

    public static Element getLastChildElement(Node node, String str) {
        for (Node lastChild = node.getLastChild(); lastChild != null; lastChild = lastChild.getPreviousSibling()) {
            if (lastChild.getNodeType() == 1 && lastChild.getNodeName().equals(str)) {
                return (Element) lastChild;
            }
        }
        return null;
    }

    public static Element getLastChildElementNS(Node node, String[][] strArr) {
        for (Node lastChild = node.getLastChild(); lastChild != null; lastChild = lastChild.getPreviousSibling()) {
            if (lastChild.getNodeType() == 1) {
                for (int i = 0; i < strArr.length; i++) {
                    String namespaceURI = lastChild.getNamespaceURI();
                    if (namespaceURI != null && namespaceURI.equals(strArr[i][0]) && lastChild.getLocalName().equals(strArr[i][1])) {
                        return (Element) lastChild;
                    }
                }
            }
        }
        return null;
    }

    public static Element getLastVisibleChildElement(Node node, Hashtable hashtable) {
        for (Node lastChild = node.getLastChild(); lastChild != null; lastChild = lastChild.getPreviousSibling()) {
            if (lastChild.getNodeType() == 1 && !isHidden(lastChild, hashtable)) {
                return (Element) lastChild;
            }
        }
        return null;
    }

    public static Element getNextSiblingElement(Node node, String str) {
        while (true) {
            node = node.getNextSibling();
            if (node == null) {
                return null;
            }
            if (node.getNodeType() == 1 && node.getNodeName().equals(str)) {
                return (Element) node;
            }
        }
    }

    public static Element getNextSiblingElementNS(Node node, String[][] strArr) {
        while (true) {
            node = node.getNextSibling();
            if (node == null) {
                return null;
            }
            if (node.getNodeType() == 1) {
                for (int i = 0; i < strArr.length; i++) {
                    String namespaceURI = node.getNamespaceURI();
                    if (namespaceURI != null && namespaceURI.equals(strArr[i][0]) && node.getLocalName().equals(strArr[i][1])) {
                        return (Element) node;
                    }
                }
            }
        }
    }

    public static Element getNextVisibleSiblingElement(Node node, Hashtable hashtable) {
        while (true) {
            node = node.getNextSibling();
            if (node == null) {
                return null;
            }
            if (node.getNodeType() == 1 && !isHidden(node, hashtable)) {
                return (Element) node;
            }
        }
    }

    public static boolean isHidden(Node node, Hashtable hashtable) {
        return node instanceof NodeImpl ? ((NodeImpl) node).getReadOnly() : hashtable.containsKey(node);
    }

    public static void setHidden(Node node, Hashtable hashtable) {
        if (node instanceof NodeImpl) {
            ((NodeImpl) node).setReadOnly(true, false);
        } else {
            hashtable.put(node, "");
        }
    }

    public static void setVisible(Node node, Hashtable hashtable) {
        if (node instanceof NodeImpl) {
            ((NodeImpl) node).setReadOnly(false, false);
        } else {
            hashtable.remove(node);
        }
    }

    public static Element getFirstChildElement(Node node, String str, String str2, String str3) {
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild.getNodeType() == 1) {
                Element element = (Element) firstChild;
                if (element.getNodeName().equals(str) && element.getAttribute(str2).equals(str3)) {
                    return element;
                }
            }
        }
        return null;
    }

    public static Element getLastChildElement(Node node, String str, String str2, String str3) {
        for (Node lastChild = node.getLastChild(); lastChild != null; lastChild = lastChild.getPreviousSibling()) {
            if (lastChild.getNodeType() == 1) {
                Element element = (Element) lastChild;
                if (element.getNodeName().equals(str) && element.getAttribute(str2).equals(str3)) {
                    return element;
                }
            }
        }
        return null;
    }

    public static Element getNextSiblingElement(Node node, String str, String str2, String str3) {
        while (true) {
            node = node.getNextSibling();
            if (node == null) {
                return null;
            }
            if (node.getNodeType() == 1) {
                Element element = (Element) node;
                if (element.getNodeName().equals(str) && element.getAttribute(str2).equals(str3)) {
                    return element;
                }
            }
        }
    }

    public static Element getFirstChildElement(Node node, String[] strArr) {
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild.getNodeType() == 1) {
                for (String str : strArr) {
                    if (firstChild.getNodeName().equals(str)) {
                        return (Element) firstChild;
                    }
                }
            }
        }
        return null;
    }

    public static Element getLastChildElement(Node node, String[] strArr) {
        for (Node lastChild = node.getLastChild(); lastChild != null; lastChild = lastChild.getPreviousSibling()) {
            if (lastChild.getNodeType() == 1) {
                for (String str : strArr) {
                    if (lastChild.getNodeName().equals(str)) {
                        return (Element) lastChild;
                    }
                }
            }
        }
        return null;
    }

    public static Element getNextSiblingElement(Node node, String[] strArr) {
        while (true) {
            node = node.getNextSibling();
            if (node == null) {
                return null;
            }
            if (node.getNodeType() == 1) {
                for (String str : strArr) {
                    if (node.getNodeName().equals(str)) {
                        return (Element) node;
                    }
                }
            }
        }
    }
}
