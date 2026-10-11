package org.apache.xerces.dom;

import com.sun.org.apache.xalan.internal.res.XSLTErrorResources;
import com.sun.org.apache.xpath.internal.compiler.PsuedoNames;
import org.w3c.dom.CharacterData;
import org.w3c.dom.DOMException;
import org.w3c.dom.Node;
import org.w3c.dom.Text;

/* loaded from: classes13.dex */
public class TextImpl extends CharacterDataImpl implements CharacterData, Text {
    static final long serialVersionUID = -5294980852957403469L;

    public TextImpl() {
    }

    private boolean canModifyNext(Node node) {
        boolean z = false;
        for (Node nextSibling = node.getNextSibling(); nextSibling != null; nextSibling = nextSibling.getNextSibling()) {
            short nodeType = nextSibling.getNodeType();
            if (nodeType == 5) {
                Node firstChild = nextSibling.getFirstChild();
                if (firstChild == null) {
                    return false;
                }
                while (firstChild != null) {
                    short nodeType2 = firstChild.getNodeType();
                    if (nodeType2 != 3 && nodeType2 != 4) {
                        if (nodeType2 != 5) {
                            return !z;
                        }
                        if (!canModifyNext(firstChild)) {
                            return false;
                        }
                    }
                    firstChild = firstChild.getNextSibling();
                    z = true;
                }
            } else if (nodeType != 3 && nodeType != 4) {
                return true;
            }
        }
        return true;
    }

    private boolean canModifyPrev(Node node) {
        boolean z = false;
        for (Node previousSibling = node.getPreviousSibling(); previousSibling != null; previousSibling = previousSibling.getPreviousSibling()) {
            short nodeType = previousSibling.getNodeType();
            if (nodeType == 5) {
                Node lastChild = previousSibling.getLastChild();
                if (lastChild == null) {
                    return false;
                }
                while (lastChild != null) {
                    short nodeType2 = lastChild.getNodeType();
                    if (nodeType2 != 3 && nodeType2 != 4) {
                        if (nodeType2 != 5) {
                            return !z;
                        }
                        if (!canModifyPrev(lastChild)) {
                            return false;
                        }
                    }
                    lastChild = lastChild.getPreviousSibling();
                    z = true;
                }
            } else if (nodeType != 3 && nodeType != 4) {
                return true;
            }
        }
        return true;
    }

    private boolean getWholeTextBackward(Node node, StringBuffer stringBuffer, Node node2) {
        boolean z = node2 != null && node2.getNodeType() == 5;
        while (node != null) {
            short nodeType = node.getNodeType();
            if (nodeType == 5) {
                if (getWholeTextBackward(node.getLastChild(), stringBuffer, node)) {
                    return true;
                }
            } else {
                if (nodeType != 3 && nodeType != 4) {
                    return true;
                }
                ((TextImpl) node).insertTextContent(stringBuffer);
            }
            node = node.getPreviousSibling();
        }
        if (!z) {
            return false;
        }
        getWholeTextBackward(node2.getPreviousSibling(), stringBuffer, node2.getParentNode());
        return true;
    }

    private boolean getWholeTextForward(Node node, StringBuffer stringBuffer, Node node2) {
        boolean z = node2 != null && node2.getNodeType() == 5;
        while (node != null) {
            short nodeType = node.getNodeType();
            if (nodeType == 5) {
                if (getWholeTextForward(node.getFirstChild(), stringBuffer, node)) {
                    return true;
                }
            } else {
                if (nodeType != 3 && nodeType != 4) {
                    return true;
                }
                ((NodeImpl) node).getTextContent(stringBuffer);
            }
            node = node.getNextSibling();
        }
        if (!z) {
            return false;
        }
        getWholeTextForward(node2.getNextSibling(), stringBuffer, node2.getParentNode());
        return true;
    }

    private boolean hasTextOnlyChildren(Node node) {
        if (node == null) {
            return false;
        }
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            short nodeType = firstChild.getNodeType();
            if (nodeType == 5) {
                return hasTextOnlyChildren(firstChild);
            }
            if (nodeType != 3 && nodeType != 4 && nodeType != 5) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public String getNodeName() {
        return PsuedoNames.PSEUDONAME_TEXT;
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public short getNodeType() {
        return (short) 3;
    }

    @Override // org.w3c.dom.Text
    public String getWholeText() {
        if (needsSyncData()) {
            synchronizeData();
        }
        StringBuffer stringBuffer = new StringBuffer();
        String str = this.data;
        if (str != null && str.length() != 0) {
            stringBuffer.append(this.data);
        }
        getWholeTextBackward(getPreviousSibling(), stringBuffer, getParentNode());
        String stringBuffer2 = stringBuffer.toString();
        stringBuffer.setLength(0);
        getWholeTextForward(getNextSibling(), stringBuffer, getParentNode());
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append(stringBuffer2);
        stringBuffer3.append(stringBuffer.toString());
        return stringBuffer3.toString();
    }

    public void insertTextContent(StringBuffer stringBuffer) throws DOMException {
        String nodeValue = getNodeValue();
        if (nodeValue != null) {
            stringBuffer.insert(0, nodeValue);
        }
    }

    @Override // org.w3c.dom.Text
    public boolean isElementContentWhitespace() {
        if (needsSyncData()) {
            synchronizeData();
        }
        return internalIsIgnorableWhitespace();
    }

    public boolean isIgnorableWhitespace() {
        if (needsSyncData()) {
            synchronizeData();
        }
        return internalIsIgnorableWhitespace();
    }

    public String removeData() {
        String str = this.data;
        this.data = "";
        return str;
    }

    public void replaceData(String str) {
        this.data = str;
    }

    @Override // org.w3c.dom.Text
    public Text replaceWholeText(String str) throws DOMException {
        Text text;
        if (needsSyncData()) {
            synchronizeData();
        }
        Node parentNode = getParentNode();
        if (str == null || str.length() == 0) {
            if (parentNode != null) {
                parentNode.removeChild(this);
            }
            return null;
        }
        if (ownerDocument().errorChecking) {
            if (!canModifyPrev(this)) {
                throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
            }
            if (!canModifyNext(this)) {
                throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
            }
        }
        if (isReadOnly()) {
            text = ownerDocument().createTextNode(str);
            if (parentNode == null) {
                return text;
            }
            parentNode.insertBefore(text, this);
            parentNode.removeChild(this);
        } else {
            setData(str);
            text = this;
        }
        while (true) {
            Node previousSibling = text.getPreviousSibling();
            if (previousSibling != null && (previousSibling.getNodeType() == 3 || previousSibling.getNodeType() == 4 || (previousSibling.getNodeType() == 5 && hasTextOnlyChildren(previousSibling)))) {
                parentNode.removeChild(previousSibling);
            }
        }
        while (true) {
            Node nextSibling = text.getNextSibling();
            if (nextSibling != null && (nextSibling.getNodeType() == 3 || nextSibling.getNodeType() == 4 || (nextSibling.getNodeType() == 5 && hasTextOnlyChildren(nextSibling)))) {
                parentNode.removeChild(nextSibling);
            }
        }
        return text;
    }

    public void setIgnorableWhitespace(boolean z) {
        if (needsSyncData()) {
            synchronizeData();
        }
        isIgnorableWhitespace(z);
    }

    public void setValues(CoreDocumentImpl coreDocumentImpl, String str) {
        this.flags = (short) 0;
        this.nextSibling = null;
        this.previousSibling = null;
        setOwnerDocument(coreDocumentImpl);
        this.data = str;
    }

    @Override // org.w3c.dom.Text
    public Text splitText(int i) throws DOMException {
        if (isReadOnly()) {
            throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
        }
        if (needsSyncData()) {
            synchronizeData();
        }
        if (i < 0 || i > this.data.length()) {
            throw new DOMException((short) 1, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INDEX_SIZE_ERR", null));
        }
        Text createTextNode = getOwnerDocument().createTextNode(this.data.substring(i));
        setNodeValue(this.data.substring(0, i));
        Node parentNode = getParentNode();
        if (parentNode != null) {
            parentNode.insertBefore(createTextNode, this.nextSibling);
        }
        return createTextNode;
    }

    public TextImpl(CoreDocumentImpl coreDocumentImpl, String str) {
        super(coreDocumentImpl, str);
    }
}
