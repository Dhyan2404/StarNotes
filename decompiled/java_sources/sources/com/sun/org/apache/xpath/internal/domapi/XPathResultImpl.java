package com.sun.org.apache.xpath.internal.domapi;

import com.sun.org.apache.xpath.internal.XPath;
import com.sun.org.apache.xpath.internal.objects.XObject;
import com.sun.org.apache.xpath.internal.res.XPATHErrorResources;
import com.sun.org.apache.xpath.internal.res.XPATHMessages;
import javax.xml.transform.TransformerException;
import org.w3c.dom.DOMException;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.events.Event;
import org.w3c.dom.events.EventListener;
import org.w3c.dom.events.EventTarget;
import org.w3c.dom.traversal.NodeIterator;
import org.w3c.dom.xpath.XPathException;
import org.w3c.dom.xpath.XPathResult;

/* loaded from: classes10.dex */
class XPathResultImpl implements XPathResult, EventListener {
    private final Node m_contextNode;
    private boolean m_isInvalidIteratorState = false;
    private NodeIterator m_iterator;
    private NodeList m_list;
    private final XObject m_resultObj;
    private final short m_resultType;
    private final XPath m_xpath;

    public XPathResultImpl(short s, XObject xObject, Node node, XPath xPath) {
        this.m_iterator = null;
        this.m_list = null;
        if (!isValidType(s)) {
            throw new XPathException((short) 2, XPATHMessages.createXPATHMessage("ER_INVALID_XPATH_TYPE", new Object[]{new Integer(s)}));
        }
        if (xObject == null) {
            throw new XPathException((short) 1, XPATHMessages.createXPATHMessage("ER_EMPTY_XPATH_RESULT", null));
        }
        this.m_resultObj = xObject;
        this.m_contextNode = node;
        this.m_xpath = xPath;
        if (s == 0) {
            this.m_resultType = getTypeFromXObject(xObject);
        } else {
            this.m_resultType = s;
        }
        short s2 = this.m_resultType;
        if (s2 == 5 || s2 == 4) {
            addEventListener();
        }
        short s3 = this.m_resultType;
        if (s3 == 5 || s3 == 4 || s3 == 8 || s3 == 9) {
            try {
                this.m_iterator = xObject.nodeset();
            } catch (TransformerException unused) {
                throw new XPathException((short) 2, XPATHMessages.createXPATHMessage("ER_INCOMPATIBLE_TYPES", new Object[]{this.m_xpath.getPatternString(), getTypeString(getTypeFromXObject(this.m_resultObj)), getTypeString(this.m_resultType)}));
            }
        } else if (s3 == 6 || s3 == 7) {
            try {
                this.m_list = xObject.nodelist();
            } catch (TransformerException unused2) {
                throw new XPathException((short) 2, XPATHMessages.createXPATHMessage("ER_INCOMPATIBLE_TYPES", new Object[]{this.m_xpath.getPatternString(), getTypeString(getTypeFromXObject(this.m_resultObj)), getTypeString(this.m_resultType)}));
            }
        }
    }

    private void addEventListener() {
        Node node = this.m_contextNode;
        if (node instanceof EventTarget) {
            ((EventTarget) node).addEventListener("DOMSubtreeModified", this, true);
        }
    }

    private short getTypeFromXObject(XObject xObject) {
        int type = xObject.getType();
        if (type == 1) {
            return (short) 3;
        }
        if (type == 2) {
            return (short) 1;
        }
        if (type != 3) {
            return (type == 4 || type == 5) ? (short) 4 : (short) 0;
        }
        return (short) 2;
    }

    private String getTypeString(int i) {
        switch (i) {
            case 0:
                return "ANY_TYPE";
            case 1:
                return "NUMBER_TYPE";
            case 2:
                return "STRING_TYPE";
            case 3:
                return "BOOLEAN";
            case 4:
                return "UNORDERED_NODE_ITERATOR_TYPE";
            case 5:
                return "ORDERED_NODE_ITERATOR_TYPE";
            case 6:
                return "UNORDERED_NODE_SNAPSHOT_TYPE";
            case 7:
                return "ORDERED_NODE_SNAPSHOT_TYPE";
            case 8:
                return "ANY_UNORDERED_NODE_TYPE";
            case 9:
                return "FIRST_ORDERED_NODE_TYPE";
            default:
                return "#UNKNOWN";
        }
    }

    private boolean isNamespaceNode(Node node) {
        if (node == null || node.getNodeType() != 2) {
            return false;
        }
        return node.getNodeName().startsWith("xmlns:") || node.getNodeName().equals("xmlns");
    }

    public static boolean isValidType(short s) {
        switch (s) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            default:
                return false;
        }
    }

    private void removeEventListener() {
        Node node = this.m_contextNode;
        if (node instanceof EventTarget) {
            ((EventTarget) node).removeEventListener("DOMSubtreeModified", this, true);
        }
    }

    @Override // org.w3c.dom.xpath.XPathResult
    public boolean getBooleanValue() throws XPathException {
        if (getResultType() != 3) {
            throw new XPathException((short) 2, XPATHMessages.createXPATHMessage("ER_CANT_CONVERT_TO_BOOLEAN", new Object[]{this.m_xpath.getPatternString(), getTypeString(this.m_resultType)}));
        }
        try {
            return this.m_resultObj.bool();
        } catch (TransformerException e) {
            throw new XPathException((short) 2, e.getMessage());
        }
    }

    @Override // org.w3c.dom.xpath.XPathResult
    public boolean getInvalidIteratorState() {
        return this.m_isInvalidIteratorState;
    }

    @Override // org.w3c.dom.xpath.XPathResult
    public double getNumberValue() throws XPathException {
        if (getResultType() != 1) {
            throw new XPathException((short) 2, XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_CANT_CONVERT_XPATHRESULTTYPE_TO_NUMBER, new Object[]{this.m_xpath.getPatternString(), getTypeString(this.m_resultType)}));
        }
        try {
            return this.m_resultObj.num();
        } catch (Exception e) {
            throw new XPathException((short) 2, e.getMessage());
        }
    }

    @Override // org.w3c.dom.xpath.XPathResult
    public short getResultType() {
        return this.m_resultType;
    }

    @Override // org.w3c.dom.xpath.XPathResult
    public Node getSingleNodeValue() throws XPathException {
        short s = this.m_resultType;
        if (s != 8 && s != 9) {
            throw new XPathException((short) 2, XPATHMessages.createXPATHMessage("ER_CANT_CONVERT_TO_SINGLENODE", new Object[]{this.m_xpath.getPatternString(), getTypeString(this.m_resultType)}));
        }
        try {
            NodeIterator nodeset = this.m_resultObj.nodeset();
            if (nodeset == null) {
                return null;
            }
            Node nextNode = nodeset.nextNode();
            return isNamespaceNode(nextNode) ? new XPathNamespaceImpl(nextNode) : nextNode;
        } catch (TransformerException e) {
            throw new XPathException((short) 2, e.getMessage());
        }
    }

    @Override // org.w3c.dom.xpath.XPathResult
    public int getSnapshotLength() throws XPathException {
        short s = this.m_resultType;
        if (s == 6 || s == 7) {
            return this.m_list.getLength();
        }
        throw new XPathException((short) 2, XPATHMessages.createXPATHMessage("ER_CANT_GET_SNAPSHOT_LENGTH", new Object[]{this.m_xpath.getPatternString(), getTypeString(this.m_resultType)}));
    }

    @Override // org.w3c.dom.xpath.XPathResult
    public String getStringValue() throws XPathException {
        if (getResultType() != 2) {
            throw new XPathException((short) 2, XPATHMessages.createXPATHMessage("ER_CANT_CONVERT_TO_STRING", new Object[]{this.m_xpath.getPatternString(), this.m_resultObj.getTypeString()}));
        }
        try {
            return this.m_resultObj.str();
        } catch (Exception e) {
            throw new XPathException((short) 2, e.getMessage());
        }
    }

    @Override // org.w3c.dom.events.EventListener
    public void handleEvent(Event event) {
        if (event.getType().equals("DOMSubtreeModified")) {
            this.m_isInvalidIteratorState = true;
            removeEventListener();
        }
    }

    @Override // org.w3c.dom.xpath.XPathResult
    public Node iterateNext() throws XPathException, DOMException {
        short s = this.m_resultType;
        if (s != 4 && s != 5) {
            throw new XPathException((short) 2, XPATHMessages.createXPATHMessage("ER_NON_ITERATOR_TYPE", new Object[]{this.m_xpath.getPatternString(), getTypeString(this.m_resultType)}));
        }
        if (getInvalidIteratorState()) {
            throw new DOMException((short) 11, XPATHMessages.createXPATHMessage("ER_DOC_MUTATED", null));
        }
        Node nextNode = this.m_iterator.nextNode();
        if (nextNode == null) {
            removeEventListener();
        }
        return isNamespaceNode(nextNode) ? new XPathNamespaceImpl(nextNode) : nextNode;
    }

    @Override // org.w3c.dom.xpath.XPathResult
    public Node snapshotItem(int i) throws XPathException {
        short s = this.m_resultType;
        if (s != 6 && s != 7) {
            throw new XPathException((short) 2, XPATHMessages.createXPATHMessage("ER_NON_SNAPSHOT_TYPE", new Object[]{this.m_xpath.getPatternString(), getTypeString(this.m_resultType)}));
        }
        Node item = this.m_list.item(i);
        return isNamespaceNode(item) ? new XPathNamespaceImpl(item) : item;
    }
}
