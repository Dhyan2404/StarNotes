package com.sun.org.apache.xerces.internal.dom;

import java.util.Vector;
import org.w3c.dom.CharacterData;
import org.w3c.dom.DOMException;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.Node;
import org.w3c.dom.ranges.Range;
import org.w3c.dom.ranges.RangeException;

/* loaded from: classes10.dex */
public class RangeImpl implements Range {
    static final int CLONE_CONTENTS = 2;
    static final int DELETE_CONTENTS = 3;
    static final int EXTRACT_CONTENTS = 1;
    DocumentImpl fDocument;
    Node fEndContainer;
    boolean fIsCollapsed;
    Node fStartContainer;
    Node fInsertNode = null;
    Node fDeleteNode = null;
    Node fSplitNode = null;
    boolean fInsertedFromRange = false;
    Node fRemoveChild = null;
    int fStartOffset = 0;
    int fEndOffset = 0;
    boolean fDetach = false;

    public RangeImpl(DocumentImpl documentImpl) {
        this.fDocument = documentImpl;
        this.fStartContainer = documentImpl;
        this.fEndContainer = documentImpl;
    }

    private Node getRootContainer(Node node) {
        if (node == null) {
            return null;
        }
        while (node.getParentNode() != null) {
            node = node.getParentNode();
        }
        return node;
    }

    private Node getSelectedNode(Node node, int i) {
        if (node.getNodeType() == 3 || i < 0) {
            return node;
        }
        Node firstChild = node.getFirstChild();
        while (firstChild != null && i > 0) {
            i--;
            firstChild = firstChild.getNextSibling();
        }
        return firstChild != null ? firstChild : node;
    }

    private boolean hasLegalRootContainer(Node node) {
        if (node == null) {
            return false;
        }
        short nodeType = getRootContainer(node).getNodeType();
        return nodeType == 2 || nodeType == 9 || nodeType == 11;
    }

    private boolean isLegalContainedNode(Node node) {
        short nodeType;
        return (node == null || (nodeType = node.getNodeType()) == 2 || nodeType == 6 || nodeType == 9 || nodeType == 11 || nodeType == 12) ? false : true;
    }

    private boolean isLegalContainer(Node node) {
        if (node == null) {
            return false;
        }
        while (node != null) {
            short nodeType = node.getNodeType();
            if (nodeType == 6 || nodeType == 10 || nodeType == 12) {
                return false;
            }
            node = node.getParentNode();
        }
        return true;
    }

    private DocumentFragment traverseCommonAncestors(Node node, Node node2, int i) {
        DocumentFragment createDocumentFragment = i != 3 ? this.fDocument.createDocumentFragment() : null;
        Node traverseLeftBoundary = traverseLeftBoundary(node, i);
        if (createDocumentFragment != null) {
            createDocumentFragment.appendChild(traverseLeftBoundary);
        }
        Node parentNode = node.getParentNode();
        int indexOf = indexOf(node2, parentNode) - (indexOf(node, parentNode) + 1);
        Node nextSibling = node.getNextSibling();
        while (indexOf > 0) {
            Node nextSibling2 = nextSibling.getNextSibling();
            Node traverseFullySelected = traverseFullySelected(nextSibling, i);
            if (createDocumentFragment != null) {
                createDocumentFragment.appendChild(traverseFullySelected);
            }
            indexOf--;
            nextSibling = nextSibling2;
        }
        Node traverseRightBoundary = traverseRightBoundary(node2, i);
        if (createDocumentFragment != null) {
            createDocumentFragment.appendChild(traverseRightBoundary);
        }
        if (i != 2) {
            setStartAfter(node);
            collapse(true);
        }
        return createDocumentFragment;
    }

    private DocumentFragment traverseCommonEndContainer(Node node, int i) {
        DocumentFragment createDocumentFragment = i != 3 ? this.fDocument.createDocumentFragment() : null;
        Node traverseLeftBoundary = traverseLeftBoundary(node, i);
        if (createDocumentFragment != null) {
            createDocumentFragment.appendChild(traverseLeftBoundary);
        }
        int indexOf = this.fEndOffset - (indexOf(node, this.fEndContainer) + 1);
        Node nextSibling = node.getNextSibling();
        while (indexOf > 0) {
            Node nextSibling2 = nextSibling.getNextSibling();
            Node traverseFullySelected = traverseFullySelected(nextSibling, i);
            if (createDocumentFragment != null) {
                createDocumentFragment.appendChild(traverseFullySelected);
            }
            indexOf--;
            nextSibling = nextSibling2;
        }
        if (i != 2) {
            setStartAfter(node);
            collapse(true);
        }
        return createDocumentFragment;
    }

    private DocumentFragment traverseCommonStartContainer(Node node, int i) {
        DocumentFragment createDocumentFragment = i != 3 ? this.fDocument.createDocumentFragment() : null;
        Node traverseRightBoundary = traverseRightBoundary(node, i);
        if (createDocumentFragment != null) {
            createDocumentFragment.appendChild(traverseRightBoundary);
        }
        int indexOf = indexOf(node, this.fStartContainer) - this.fStartOffset;
        if (indexOf <= 0) {
            if (i != 2) {
                setEndBefore(node);
                collapse(false);
            }
            return createDocumentFragment;
        }
        Node previousSibling = node.getPreviousSibling();
        while (indexOf > 0) {
            Node previousSibling2 = previousSibling.getPreviousSibling();
            Node traverseFullySelected = traverseFullySelected(previousSibling, i);
            if (createDocumentFragment != null) {
                createDocumentFragment.insertBefore(traverseFullySelected, createDocumentFragment.getFirstChild());
            }
            indexOf--;
            previousSibling = previousSibling2;
        }
        if (i != 2) {
            setEndBefore(node);
            collapse(false);
        }
        return createDocumentFragment;
    }

    private DocumentFragment traverseContents(int i) throws DOMException {
        Node node;
        Node node2 = this.fStartContainer;
        if (node2 == null || (node = this.fEndContainer) == null) {
            return null;
        }
        if (this.fDetach) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        if (node2 == node) {
            return traverseSameContainer(i);
        }
        Node parentNode = node.getParentNode();
        int i2 = 0;
        while (true) {
            Node node3 = node;
            node = parentNode;
            if (node == null) {
                Node node4 = this.fStartContainer;
                Node node5 = node4;
                int i3 = 0;
                for (Node parentNode2 = node4.getParentNode(); parentNode2 != null; parentNode2 = parentNode2.getParentNode()) {
                    if (parentNode2 == this.fEndContainer) {
                        return traverseCommonEndContainer(node5, i);
                    }
                    i3++;
                    node5 = parentNode2;
                }
                int i4 = i3 - i2;
                Node node6 = this.fStartContainer;
                while (i4 > 0) {
                    node6 = node6.getParentNode();
                    i4--;
                }
                Node node7 = this.fEndContainer;
                while (i4 < 0) {
                    node7 = node7.getParentNode();
                    i4++;
                }
                Node parentNode3 = node6.getParentNode();
                Node parentNode4 = node7.getParentNode();
                Node node8 = node7;
                Node node9 = node6;
                Node node10 = parentNode3;
                Node node11 = node8;
                while (node10 != parentNode4) {
                    node9 = node10;
                    node10 = node10.getParentNode();
                    Node node12 = parentNode4;
                    parentNode4 = parentNode4.getParentNode();
                    node11 = node12;
                }
                return traverseCommonAncestors(node9, node11, i);
            }
            if (node == this.fStartContainer) {
                return traverseCommonStartContainer(node3, i);
            }
            i2++;
            parentNode = node.getParentNode();
        }
    }

    private Node traverseFullySelected(Node node, int i) {
        if (i == 1) {
            if (node.getNodeType() != 10) {
                return node;
            }
            throw new DOMException((short) 3, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "HIERARCHY_REQUEST_ERR", null));
        }
        if (i == 2) {
            return node.cloneNode(true);
        }
        if (i != 3) {
            return null;
        }
        node.getParentNode().removeChild(node);
        return null;
    }

    private Node traverseLeftBoundary(Node node, int i) {
        Node selectedNode = getSelectedNode(getStartContainer(), getStartOffset());
        boolean z = selectedNode != getStartContainer();
        if (selectedNode == node) {
            return traverseNode(selectedNode, z, true, i);
        }
        Node parentNode = selectedNode.getParentNode();
        Node traverseNode = traverseNode(parentNode, false, true, i);
        while (parentNode != null) {
            while (selectedNode != null) {
                Node nextSibling = selectedNode.getNextSibling();
                Node traverseNode2 = traverseNode(selectedNode, z, true, i);
                if (i != 3) {
                    traverseNode.appendChild(traverseNode2);
                }
                z = true;
                selectedNode = nextSibling;
            }
            if (parentNode == node) {
                return traverseNode;
            }
            selectedNode = parentNode.getNextSibling();
            parentNode = parentNode.getParentNode();
            Node traverseNode3 = traverseNode(parentNode, false, true, i);
            if (i != 3) {
                traverseNode3.appendChild(traverseNode);
            }
            traverseNode = traverseNode3;
        }
        return null;
    }

    private Node traverseNode(Node node, boolean z, boolean z2, int i) {
        return z ? traverseFullySelected(node, i) : node.getNodeType() == 3 ? traverseTextNode(node, z2, i) : traversePartiallySelected(node, i);
    }

    private Node traversePartiallySelected(Node node, int i) {
        if (i == 1 || i == 2) {
            return node.cloneNode(false);
        }
        return null;
    }

    private Node traverseRightBoundary(Node node, int i) {
        Node selectedNode = getSelectedNode(this.fEndContainer, this.fEndOffset - 1);
        boolean z = selectedNode != this.fEndContainer;
        if (selectedNode == node) {
            return traverseNode(selectedNode, z, false, i);
        }
        Node parentNode = selectedNode.getParentNode();
        Node traverseNode = traverseNode(parentNode, false, false, i);
        while (parentNode != null) {
            while (selectedNode != null) {
                Node previousSibling = selectedNode.getPreviousSibling();
                Node traverseNode2 = traverseNode(selectedNode, z, false, i);
                if (i != 3) {
                    traverseNode.insertBefore(traverseNode2, traverseNode.getFirstChild());
                }
                z = true;
                selectedNode = previousSibling;
            }
            if (parentNode == node) {
                return traverseNode;
            }
            selectedNode = parentNode.getPreviousSibling();
            parentNode = parentNode.getParentNode();
            Node traverseNode3 = traverseNode(parentNode, false, false, i);
            if (i != 3) {
                traverseNode3.appendChild(traverseNode);
            }
            traverseNode = traverseNode3;
        }
        return null;
    }

    private DocumentFragment traverseSameContainer(int i) {
        DocumentFragment createDocumentFragment = i != 3 ? this.fDocument.createDocumentFragment() : null;
        if (this.fStartOffset == this.fEndOffset) {
            return createDocumentFragment;
        }
        if (this.fStartContainer.getNodeType() == 3) {
            String substring = this.fStartContainer.getNodeValue().substring(this.fStartOffset, this.fEndOffset);
            if (i != 2) {
                TextImpl textImpl = (TextImpl) this.fStartContainer;
                int i2 = this.fStartOffset;
                textImpl.deleteData(i2, this.fEndOffset - i2);
                collapse(true);
            }
            if (i == 3) {
                return null;
            }
            createDocumentFragment.appendChild(this.fDocument.createTextNode(substring));
            return createDocumentFragment;
        }
        Node selectedNode = getSelectedNode(this.fStartContainer, this.fStartOffset);
        int i3 = this.fEndOffset - this.fStartOffset;
        while (i3 > 0) {
            Node nextSibling = selectedNode.getNextSibling();
            Node traverseFullySelected = traverseFullySelected(selectedNode, i);
            if (createDocumentFragment != null) {
                createDocumentFragment.appendChild(traverseFullySelected);
            }
            i3--;
            selectedNode = nextSibling;
        }
        if (i != 2) {
            collapse(true);
        }
        return createDocumentFragment;
    }

    private Node traverseTextNode(Node node, boolean z, int i) {
        String substring;
        String substring2;
        String nodeValue = node.getNodeValue();
        if (z) {
            int startOffset = getStartOffset();
            substring = nodeValue.substring(startOffset);
            substring2 = nodeValue.substring(0, startOffset);
        } else {
            int endOffset = getEndOffset();
            substring = nodeValue.substring(0, endOffset);
            substring2 = nodeValue.substring(endOffset);
        }
        if (i != 2) {
            node.setNodeValue(substring2);
        }
        if (i == 3) {
            return null;
        }
        Node cloneNode = node.cloneNode(false);
        cloneNode.setNodeValue(substring);
        return cloneNode;
    }

    public void checkIndex(Node node, int i) throws DOMException {
        if (i < 0) {
            throw new DOMException((short) 1, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INDEX_SIZE_ERR", null));
        }
        short nodeType = node.getNodeType();
        if (nodeType == 3 || nodeType == 4 || nodeType == 8 || nodeType == 7) {
            if (i > node.getNodeValue().length()) {
                throw new DOMException((short) 1, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INDEX_SIZE_ERR", null));
            }
        } else if (i > node.getChildNodes().getLength()) {
            throw new DOMException((short) 1, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INDEX_SIZE_ERR", null));
        }
    }

    @Override // org.w3c.dom.ranges.Range
    public DocumentFragment cloneContents() throws DOMException {
        return traverseContents(2);
    }

    @Override // org.w3c.dom.ranges.Range
    public Range cloneRange() {
        if (this.fDetach) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        Range createRange = this.fDocument.createRange();
        createRange.setStart(this.fStartContainer, this.fStartOffset);
        createRange.setEnd(this.fEndContainer, this.fEndOffset);
        return createRange;
    }

    @Override // org.w3c.dom.ranges.Range
    public void collapse(boolean z) {
        if (this.fDetach) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        if (z) {
            this.fEndContainer = this.fStartContainer;
            this.fEndOffset = this.fStartOffset;
        } else {
            this.fStartContainer = this.fEndContainer;
            this.fStartOffset = this.fEndOffset;
        }
    }

    @Override // org.w3c.dom.ranges.Range
    public short compareBoundaryPoints(short s, Range range) throws DOMException {
        Node endContainer;
        Node node;
        int endOffset;
        int i;
        Node node2;
        Node node3;
        DocumentImpl documentImpl = this.fDocument;
        if (documentImpl.errorChecking) {
            if (this.fDetach) {
                throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if ((documentImpl != range.getStartContainer().getOwnerDocument() && this.fDocument != range.getStartContainer() && range.getStartContainer() != null) || (this.fDocument != range.getEndContainer().getOwnerDocument() && this.fDocument != range.getEndContainer() && range.getStartContainer() != null)) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        if (s == 0) {
            endContainer = range.getStartContainer();
            node = this.fStartContainer;
            endOffset = range.getStartOffset();
            i = this.fStartOffset;
        } else if (s == 1) {
            endContainer = range.getStartContainer();
            node = this.fEndContainer;
            endOffset = range.getStartOffset();
            i = this.fEndOffset;
        } else if (s == 3) {
            endContainer = range.getEndContainer();
            node = this.fStartContainer;
            endOffset = range.getEndOffset();
            i = this.fStartOffset;
        } else {
            endContainer = range.getEndContainer();
            node = this.fEndContainer;
            endOffset = range.getEndOffset();
            i = this.fEndOffset;
        }
        int i2 = 0;
        if (endContainer == node) {
            if (endOffset < i) {
                return (short) 1;
            }
            return endOffset == i ? (short) 0 : (short) -1;
        }
        Node node4 = node;
        for (Node parentNode = node.getParentNode(); parentNode != null; parentNode = parentNode.getParentNode()) {
            if (parentNode == endContainer) {
                return endOffset <= indexOf(node4, endContainer) ? (short) 1 : (short) -1;
            }
            node4 = parentNode;
        }
        Node node5 = endContainer;
        for (Node parentNode2 = endContainer.getParentNode(); parentNode2 != null; parentNode2 = parentNode2.getParentNode()) {
            if (parentNode2 == node) {
                return indexOf(node5, node) < i ? (short) 1 : (short) -1;
            }
            node5 = parentNode2;
        }
        for (Node node6 = endContainer; node6 != null; node6 = node6.getParentNode()) {
            i2++;
        }
        for (Node node7 = node; node7 != null; node7 = node7.getParentNode()) {
            i2--;
        }
        while (i2 > 0) {
            endContainer = endContainer.getParentNode();
            i2--;
        }
        while (i2 < 0) {
            node = node.getParentNode();
            i2++;
        }
        Node parentNode3 = endContainer.getParentNode();
        Node parentNode4 = node.getParentNode();
        while (true) {
            node2 = endContainer;
            endContainer = parentNode3;
            node3 = node;
            node = parentNode4;
            if (endContainer == node) {
                break;
            }
            parentNode3 = endContainer.getParentNode();
            parentNode4 = node.getParentNode();
        }
        for (Node nextSibling = node2.getNextSibling(); nextSibling != null; nextSibling = nextSibling.getNextSibling()) {
            if (nextSibling == node3) {
                return (short) 1;
            }
        }
        return (short) -1;
    }

    @Override // org.w3c.dom.ranges.Range
    public void deleteContents() throws DOMException {
        traverseContents(3);
    }

    public void deleteData(CharacterData characterData, int i, int i2) {
        this.fDeleteNode = characterData;
        characterData.deleteData(i, i2);
        this.fDeleteNode = null;
    }

    @Override // org.w3c.dom.ranges.Range
    public void detach() {
        if (this.fDetach) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        this.fDetach = true;
        this.fDocument.removeRange(this);
    }

    @Override // org.w3c.dom.ranges.Range
    public DocumentFragment extractContents() throws DOMException {
        return traverseContents(1);
    }

    @Override // org.w3c.dom.ranges.Range
    public boolean getCollapsed() {
        if (this.fDetach) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        return this.fStartContainer == this.fEndContainer && this.fStartOffset == this.fEndOffset;
    }

    @Override // org.w3c.dom.ranges.Range
    public Node getCommonAncestorContainer() {
        Object obj = null;
        if (this.fDetach) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        Vector vector = new Vector();
        for (Node node = this.fStartContainer; node != null; node = node.getParentNode()) {
            vector.addElement(node);
        }
        Vector vector2 = new Vector();
        for (Node node2 = this.fEndContainer; node2 != null; node2 = node2.getParentNode()) {
            vector2.addElement(node2);
        }
        int size = vector.size() - 1;
        for (int size2 = vector2.size() - 1; size >= 0 && size2 >= 0 && vector.elementAt(size) == vector2.elementAt(size2); size2--) {
            obj = vector.elementAt(size);
            size--;
        }
        return (Node) obj;
    }

    @Override // org.w3c.dom.ranges.Range
    public Node getEndContainer() {
        if (this.fDetach) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        return this.fEndContainer;
    }

    @Override // org.w3c.dom.ranges.Range
    public int getEndOffset() {
        if (this.fDetach) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        return this.fEndOffset;
    }

    @Override // org.w3c.dom.ranges.Range
    public Node getStartContainer() {
        if (this.fDetach) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        return this.fStartContainer;
    }

    @Override // org.w3c.dom.ranges.Range
    public int getStartOffset() {
        if (this.fDetach) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        return this.fStartOffset;
    }

    public int indexOf(Node node, Node node2) {
        if (node.getParentNode() != node2) {
            return -1;
        }
        int i = 0;
        for (Node firstChild = node2.getFirstChild(); firstChild != node; firstChild = firstChild.getNextSibling()) {
            i++;
        }
        return i;
    }

    public void insertData(CharacterData characterData, int i, String str) {
        this.fInsertNode = characterData;
        characterData.insertData(i, str);
        this.fInsertNode = null;
    }

    @Override // org.w3c.dom.ranges.Range
    public void insertNode(Node node) throws DOMException, RangeException {
        int i;
        if (node == null) {
            return;
        }
        short nodeType = node.getNodeType();
        DocumentImpl documentImpl = this.fDocument;
        if (documentImpl.errorChecking) {
            if (this.fDetach) {
                throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (documentImpl != node.getOwnerDocument()) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
            if (nodeType == 2 || nodeType == 6 || nodeType == 12 || nodeType == 9) {
                throw new RangeExceptionImpl((short) 2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
        }
        this.fInsertedFromRange = true;
        if (this.fStartContainer.getNodeType() == 3) {
            Node parentNode = this.fStartContainer.getParentNode();
            int length = parentNode.getChildNodes().getLength();
            Node cloneNode = this.fStartContainer.cloneNode(false);
            ((TextImpl) cloneNode).setNodeValueInternal(cloneNode.getNodeValue().substring(this.fStartOffset));
            Node node2 = this.fStartContainer;
            ((TextImpl) node2).setNodeValueInternal(node2.getNodeValue().substring(0, this.fStartOffset));
            Node nextSibling = this.fStartContainer.getNextSibling();
            if (nextSibling != null) {
                parentNode.insertBefore(node, nextSibling);
                parentNode.insertBefore(cloneNode, nextSibling);
            } else {
                parentNode.appendChild(node);
                parentNode.appendChild(cloneNode);
            }
            Node node3 = this.fEndContainer;
            if (node3 == this.fStartContainer) {
                this.fEndContainer = cloneNode;
                this.fEndOffset -= this.fStartOffset;
            } else if (node3 == parentNode) {
                this.fEndOffset += parentNode.getChildNodes().getLength() - length;
            }
            signalSplitData(this.fStartContainer, cloneNode, this.fStartOffset);
        } else {
            Node node4 = this.fEndContainer;
            int length2 = node4 == this.fStartContainer ? node4.getChildNodes().getLength() : 0;
            Node firstChild = this.fStartContainer.getFirstChild();
            for (int i2 = 0; i2 < this.fStartOffset && firstChild != null; i2++) {
                firstChild = firstChild.getNextSibling();
            }
            if (firstChild != null) {
                this.fStartContainer.insertBefore(node, firstChild);
            } else {
                this.fStartContainer.appendChild(node);
            }
            Node node5 = this.fEndContainer;
            if (node5 == this.fStartContainer && (i = this.fEndOffset) != 0) {
                this.fEndOffset = i + (node5.getChildNodes().getLength() - length2);
            }
        }
        this.fInsertedFromRange = false;
    }

    public void insertedNodeFromDOM(Node node) {
        if (node == null || this.fInsertNode == node || this.fInsertedFromRange) {
            return;
        }
        Node parentNode = node.getParentNode();
        Node node2 = this.fStartContainer;
        if (parentNode == node2) {
            int indexOf = indexOf(node, node2);
            int i = this.fStartOffset;
            if (indexOf < i) {
                this.fStartOffset = i + 1;
            }
        }
        Node node3 = this.fEndContainer;
        if (parentNode == node3) {
            int indexOf2 = indexOf(node, node3);
            int i2 = this.fEndOffset;
            if (indexOf2 < i2) {
                this.fEndOffset = i2 + 1;
            }
        }
    }

    public boolean isAncestorOf(Node node, Node node2) {
        while (node2 != null) {
            if (node2 == node) {
                return true;
            }
            node2 = node2.getParentNode();
        }
        return false;
    }

    public Node nextNode(Node node, boolean z) {
        Node firstChild;
        if (node == null) {
            return null;
        }
        if (z && (firstChild = node.getFirstChild()) != null) {
            return firstChild;
        }
        Node nextSibling = node.getNextSibling();
        if (nextSibling != null) {
            return nextSibling;
        }
        for (Node parentNode = node.getParentNode(); parentNode != null && parentNode != this.fDocument; parentNode = parentNode.getParentNode()) {
            Node nextSibling2 = parentNode.getNextSibling();
            if (nextSibling2 != null) {
                return nextSibling2;
            }
        }
        return null;
    }

    public void receiveDeletedText(Node node, int i, int i2) {
        if (node == null || this.fDeleteNode == node) {
            return;
        }
        Node node2 = this.fStartContainer;
        if (node == node2 && node2.getNodeType() == 3) {
            int i3 = this.fStartOffset;
            int i4 = i + i2;
            if (i3 > i4) {
                this.fStartOffset = (i3 - i4) + i;
            } else if (i3 > i) {
                this.fStartOffset = i;
            }
        }
        Node node3 = this.fEndContainer;
        if (node == node3 && node3.getNodeType() == 3) {
            int i5 = this.fEndOffset;
            int i6 = i2 + i;
            if (i5 > i6) {
                this.fEndOffset = i + (i5 - i6);
            } else if (i5 > i) {
                this.fEndOffset = i;
            }
        }
    }

    public void receiveInsertedText(Node node, int i, int i2) {
        int i3;
        int i4;
        if (node == null || this.fInsertNode == node) {
            return;
        }
        Node node2 = this.fStartContainer;
        if (node == node2 && node2.getNodeType() == 3 && i < (i4 = this.fStartOffset)) {
            this.fStartOffset = i4 + i2;
        }
        Node node3 = this.fEndContainer;
        if (node == node3 && node3.getNodeType() == 3 && i < (i3 = this.fEndOffset)) {
            this.fEndOffset = i3 + i2;
        }
    }

    public void receiveReplacedText(Node node) {
        if (node == null) {
            return;
        }
        Node node2 = this.fStartContainer;
        if (node == node2 && node2.getNodeType() == 3) {
            this.fStartOffset = 0;
        }
        Node node3 = this.fEndContainer;
        if (node == node3 && node3.getNodeType() == 3) {
            this.fEndOffset = 0;
        }
    }

    public void receiveSplitData(Node node, Node node2, int i) {
        int i2;
        int i3;
        if (node == null || node2 == null || this.fSplitNode == node) {
            return;
        }
        Node node3 = this.fStartContainer;
        if (node == node3 && node3.getNodeType() == 3 && (i3 = this.fStartOffset) > i) {
            this.fStartOffset = i3 - i;
            this.fStartContainer = node2;
        }
        Node node4 = this.fEndContainer;
        if (node == node4 && node4.getNodeType() == 3 && (i2 = this.fEndOffset) > i) {
            this.fEndOffset = i2 - i;
            this.fEndContainer = node2;
        }
    }

    public Node removeChild(Node node, Node node2) {
        this.fRemoveChild = node2;
        Node removeChild = node.removeChild(node2);
        this.fRemoveChild = null;
        return removeChild;
    }

    public void removeNode(Node node) {
        if (node == null || this.fRemoveChild == node) {
            return;
        }
        Node parentNode = node.getParentNode();
        Node node2 = this.fStartContainer;
        if (parentNode == node2) {
            int indexOf = indexOf(node, node2);
            int i = this.fStartOffset;
            if (indexOf < i) {
                this.fStartOffset = i - 1;
            }
        }
        Node node3 = this.fEndContainer;
        if (parentNode == node3) {
            int indexOf2 = indexOf(node, node3);
            int i2 = this.fEndOffset;
            if (indexOf2 < i2) {
                this.fEndOffset = i2 - 1;
            }
        }
        Node node4 = this.fStartContainer;
        if (parentNode == node4 && parentNode == this.fEndContainer) {
            return;
        }
        if (isAncestorOf(node, node4)) {
            this.fStartContainer = parentNode;
            this.fStartOffset = indexOf(node, parentNode);
        }
        if (isAncestorOf(node, this.fEndContainer)) {
            this.fEndContainer = parentNode;
            this.fEndOffset = indexOf(node, parentNode);
        }
    }

    @Override // org.w3c.dom.ranges.Range
    public void selectNode(Node node) throws RangeException {
        if (this.fDocument.errorChecking) {
            if (this.fDetach) {
                throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!isLegalContainer(node.getParentNode()) || !isLegalContainedNode(node)) {
                throw new RangeExceptionImpl((short) 2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.fDocument != node.getOwnerDocument() && this.fDocument != node) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        Node parentNode = node.getParentNode();
        if (parentNode != null) {
            this.fStartContainer = parentNode;
            this.fEndContainer = parentNode;
            int i = 0;
            while (node != null) {
                i++;
                node = node.getPreviousSibling();
            }
            int i2 = i - 1;
            this.fStartOffset = i2;
            this.fEndOffset = i2 + 1;
        }
    }

    @Override // org.w3c.dom.ranges.Range
    public void selectNodeContents(Node node) throws RangeException {
        if (this.fDocument.errorChecking) {
            if (this.fDetach) {
                throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!isLegalContainer(node)) {
                throw new RangeExceptionImpl((short) 2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.fDocument != node.getOwnerDocument() && this.fDocument != node) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        this.fStartContainer = node;
        this.fEndContainer = node;
        Node firstChild = node.getFirstChild();
        int i = 0;
        this.fStartOffset = 0;
        if (firstChild == null) {
            this.fEndOffset = 0;
            return;
        }
        while (firstChild != null) {
            i++;
            firstChild = firstChild.getNextSibling();
        }
        this.fEndOffset = i;
    }

    @Override // org.w3c.dom.ranges.Range
    public void setEnd(Node node, int i) throws RangeException, DOMException {
        if (this.fDocument.errorChecking) {
            if (this.fDetach) {
                throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!isLegalContainer(node)) {
                throw new RangeExceptionImpl((short) 2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.fDocument != node.getOwnerDocument() && this.fDocument != node) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        checkIndex(node, i);
        this.fEndContainer = node;
        this.fEndOffset = i;
        if (getCommonAncestorContainer() == null || (this.fStartContainer == this.fEndContainer && this.fEndOffset < this.fStartOffset)) {
            collapse(false);
        }
    }

    @Override // org.w3c.dom.ranges.Range
    public void setEndAfter(Node node) throws RangeException {
        if (this.fDocument.errorChecking) {
            if (this.fDetach) {
                throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!hasLegalRootContainer(node) || !isLegalContainedNode(node)) {
                throw new RangeExceptionImpl((short) 2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.fDocument != node.getOwnerDocument() && this.fDocument != node) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        this.fEndContainer = node.getParentNode();
        int i = 0;
        while (node != null) {
            i++;
            node = node.getPreviousSibling();
        }
        this.fEndOffset = i;
        if (getCommonAncestorContainer() == null || (this.fStartContainer == this.fEndContainer && this.fEndOffset < this.fStartOffset)) {
            collapse(false);
        }
    }

    @Override // org.w3c.dom.ranges.Range
    public void setEndBefore(Node node) throws RangeException {
        if (this.fDocument.errorChecking) {
            if (this.fDetach) {
                throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!hasLegalRootContainer(node) || !isLegalContainedNode(node)) {
                throw new RangeExceptionImpl((short) 2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.fDocument != node.getOwnerDocument() && this.fDocument != node) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        this.fEndContainer = node.getParentNode();
        int i = 0;
        while (node != null) {
            i++;
            node = node.getPreviousSibling();
        }
        this.fEndOffset = i - 1;
        if (getCommonAncestorContainer() == null || (this.fStartContainer == this.fEndContainer && this.fEndOffset < this.fStartOffset)) {
            collapse(false);
        }
    }

    @Override // org.w3c.dom.ranges.Range
    public void setStart(Node node, int i) throws RangeException, DOMException {
        if (this.fDocument.errorChecking) {
            if (this.fDetach) {
                throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!isLegalContainer(node)) {
                throw new RangeExceptionImpl((short) 2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.fDocument != node.getOwnerDocument() && this.fDocument != node) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        checkIndex(node, i);
        this.fStartContainer = node;
        this.fStartOffset = i;
        if (getCommonAncestorContainer() == null || (this.fStartContainer == this.fEndContainer && this.fEndOffset < this.fStartOffset)) {
            collapse(true);
        }
    }

    @Override // org.w3c.dom.ranges.Range
    public void setStartAfter(Node node) throws RangeException {
        if (this.fDocument.errorChecking) {
            if (this.fDetach) {
                throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!hasLegalRootContainer(node) || !isLegalContainedNode(node)) {
                throw new RangeExceptionImpl((short) 2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.fDocument != node.getOwnerDocument() && this.fDocument != node) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        this.fStartContainer = node.getParentNode();
        int i = 0;
        while (node != null) {
            i++;
            node = node.getPreviousSibling();
        }
        this.fStartOffset = i;
        if (getCommonAncestorContainer() == null || (this.fStartContainer == this.fEndContainer && this.fEndOffset < this.fStartOffset)) {
            collapse(true);
        }
    }

    @Override // org.w3c.dom.ranges.Range
    public void setStartBefore(Node node) throws RangeException {
        if (this.fDocument.errorChecking) {
            if (this.fDetach) {
                throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!hasLegalRootContainer(node) || !isLegalContainedNode(node)) {
                throw new RangeExceptionImpl((short) 2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.fDocument != node.getOwnerDocument() && this.fDocument != node) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        this.fStartContainer = node.getParentNode();
        int i = 0;
        while (node != null) {
            i++;
            node = node.getPreviousSibling();
        }
        this.fStartOffset = i - 1;
        if (getCommonAncestorContainer() == null || (this.fStartContainer == this.fEndContainer && this.fEndOffset < this.fStartOffset)) {
            collapse(true);
        }
    }

    public void signalSplitData(Node node, Node node2, int i) {
        this.fSplitNode = node;
        this.fDocument.splitData(node, node2, i);
        this.fSplitNode = null;
    }

    @Override // org.w3c.dom.ranges.Range
    public void surroundContents(Node node) throws DOMException, RangeException {
        if (node == null) {
            return;
        }
        short nodeType = node.getNodeType();
        if (this.fDocument.errorChecking) {
            if (this.fDetach) {
                throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (nodeType == 2 || nodeType == 6 || nodeType == 12 || nodeType == 10 || nodeType == 9 || nodeType == 11) {
                throw new RangeExceptionImpl((short) 2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
        }
        Node node2 = this.fStartContainer;
        Node node3 = this.fEndContainer;
        if (node2.getNodeType() == 3) {
            node2 = this.fStartContainer.getParentNode();
        }
        if (this.fEndContainer.getNodeType() == 3) {
            node3 = this.fEndContainer.getParentNode();
        }
        if (node2 != node3) {
            throw new RangeExceptionImpl((short) 1, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "BAD_BOUNDARYPOINTS_ERR", null));
        }
        DocumentFragment extractContents = extractContents();
        insertNode(node);
        node.appendChild(extractContents);
        selectNode(node);
    }

    @Override // org.w3c.dom.ranges.Range
    public String toString() {
        Node nextNode;
        if (this.fDetach) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        Node node = this.fStartContainer;
        Node node2 = this.fEndContainer;
        StringBuffer stringBuffer = new StringBuffer();
        if (this.fStartContainer.getNodeType() == 3 || this.fStartContainer.getNodeType() == 4) {
            Node node3 = this.fStartContainer;
            if (node3 == this.fEndContainer) {
                stringBuffer.append(node3.getNodeValue().substring(this.fStartOffset, this.fEndOffset));
                return stringBuffer.toString();
            }
            stringBuffer.append(node3.getNodeValue().substring(this.fStartOffset));
            nextNode = nextNode(node, true);
        } else {
            nextNode = node.getFirstChild();
            if (this.fStartOffset > 0) {
                for (int i = 0; i < this.fStartOffset && nextNode != null; i++) {
                    nextNode = nextNode.getNextSibling();
                }
            }
            if (nextNode == null) {
                nextNode = nextNode(this.fStartContainer, false);
            }
        }
        if (this.fEndContainer.getNodeType() != 3 && this.fEndContainer.getNodeType() != 4) {
            int i2 = this.fEndOffset;
            Node firstChild = this.fEndContainer.getFirstChild();
            while (i2 > 0 && firstChild != null) {
                i2--;
                firstChild = firstChild.getNextSibling();
            }
            node2 = firstChild == null ? nextNode(this.fEndContainer, false) : firstChild;
        }
        while (nextNode != node2 && nextNode != null) {
            if (nextNode.getNodeType() == 3 || nextNode.getNodeType() == 4) {
                stringBuffer.append(nextNode.getNodeValue());
            }
            nextNode = nextNode(nextNode, true);
        }
        if (this.fEndContainer.getNodeType() == 3 || this.fEndContainer.getNodeType() == 4) {
            stringBuffer.append(this.fEndContainer.getNodeValue().substring(0, this.fEndOffset));
        }
        return stringBuffer.toString();
    }
}
