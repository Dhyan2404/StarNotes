package com.sun.org.apache.xpath.internal;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xml.internal.utils.DOM2Helper;
import com.sun.org.apache.xpath.internal.axes.ContextNodeList;
import com.sun.org.apache.xpath.internal.res.XPATHMessages;
import org.w3c.dom.DOMException;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.traversal.NodeFilter;
import org.w3c.dom.traversal.NodeIterator;

/* loaded from: classes10.dex */
public class NodeSet implements NodeList, NodeIterator, Cloneable, ContextNodeList {
    private int m_blocksize;
    protected transient boolean m_cacheNodes;
    protected int m_firstFree;
    private transient int m_last;
    Node[] m_map;
    private int m_mapSize;
    protected transient boolean m_mutable;
    protected transient int m_next;

    public NodeSet() {
        this.m_next = 0;
        this.m_mutable = true;
        this.m_cacheNodes = true;
        this.m_last = 0;
        this.m_firstFree = 0;
        this.m_blocksize = 32;
        this.m_mapSize = 0;
    }

    public void addElement(Node node) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESET_NOT_MUTABLE", null));
        }
        int i = this.m_firstFree;
        int i2 = i + 1;
        int i3 = this.m_mapSize;
        if (i2 >= i3) {
            Node[] nodeArr = this.m_map;
            if (nodeArr == null) {
                int i4 = this.m_blocksize;
                this.m_map = new Node[i4];
                this.m_mapSize = i4;
            } else {
                int i5 = i3 + this.m_blocksize;
                this.m_mapSize = i5;
                Node[] nodeArr2 = new Node[i5];
                System.arraycopy(nodeArr, 0, nodeArr2, 0, i + 1);
                this.m_map = nodeArr2;
            }
        }
        Node[] nodeArr3 = this.m_map;
        int i6 = this.m_firstFree;
        nodeArr3[i6] = node;
        this.m_firstFree = i6 + 1;
    }

    public void addNode(Node node) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESET_NOT_MUTABLE", null));
        }
        addElement(node);
    }

    public int addNodeInDocOrder(Node node, boolean z, XPathContext xPathContext) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESET_NOT_MUTABLE", null));
        }
        boolean z2 = true;
        if (z) {
            int size = size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                Node elementAt = elementAt(size);
                if (elementAt == node) {
                    size = -2;
                    break;
                }
                if (!DOM2Helper.isNodeAfter(node, elementAt)) {
                    break;
                }
                size--;
            }
            if (size == -2) {
                return -1;
            }
            int i = size + 1;
            insertElementAt(node, i);
            return i;
        }
        int size2 = size();
        int i2 = 0;
        while (true) {
            if (i2 >= size2) {
                z2 = false;
                break;
            }
            if (item(i2).equals(node)) {
                break;
            }
            i2++;
        }
        if (z2) {
            return size2;
        }
        addElement(node);
        return size2;
    }

    public void addNodes(NodeList nodeList) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESET_NOT_MUTABLE", null));
        }
        if (nodeList != null) {
            int length = nodeList.getLength();
            for (int i = 0; i < length; i++) {
                Node item = nodeList.item(i);
                if (item != null) {
                    addElement(item);
                }
            }
        }
    }

    public void addNodesInDocOrder(NodeList nodeList, XPathContext xPathContext) {
        if (this.m_mutable) {
            int length = nodeList.getLength();
            for (int i = 0; i < length; i++) {
                Node item = nodeList.item(i);
                if (item != null) {
                    addNodeInDocOrder(item, xPathContext);
                }
            }
            return;
        }
        throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESET_NOT_MUTABLE", null));
    }

    public void appendNodes(NodeSet nodeSet) {
        int size = nodeSet.size();
        Node[] nodeArr = this.m_map;
        if (nodeArr == null) {
            int i = this.m_blocksize + size;
            this.m_mapSize = i;
            this.m_map = new Node[i];
        } else {
            int i2 = this.m_firstFree;
            int i3 = i2 + size;
            int i4 = this.m_mapSize;
            if (i3 >= i4) {
                int i5 = i4 + this.m_blocksize + size;
                this.m_mapSize = i5;
                Node[] nodeArr2 = new Node[i5];
                System.arraycopy(nodeArr, 0, nodeArr2, 0, i2 + size);
                this.m_map = nodeArr2;
            }
        }
        System.arraycopy(nodeSet.m_map, 0, this.m_map, this.m_firstFree, size);
        this.m_firstFree += size;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.ContextNodeList
    public Object clone() throws CloneNotSupportedException {
        NodeSet nodeSet = (NodeSet) super.clone();
        Node[] nodeArr = this.m_map;
        if (nodeArr != null && nodeArr == nodeSet.m_map) {
            Node[] nodeArr2 = new Node[nodeArr.length];
            nodeSet.m_map = nodeArr2;
            Node[] nodeArr3 = this.m_map;
            System.arraycopy(nodeArr3, 0, nodeArr2, 0, nodeArr3.length);
        }
        return nodeSet;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.ContextNodeList
    public NodeIterator cloneWithReset() throws CloneNotSupportedException {
        NodeSet nodeSet = (NodeSet) clone();
        nodeSet.reset();
        return nodeSet;
    }

    public boolean contains(Node node) {
        runTo(-1);
        if (this.m_map == null) {
            return false;
        }
        for (int i = 0; i < this.m_firstFree; i++) {
            Node node2 = this.m_map[i];
            if (node2 != null && node2.equals(node)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.w3c.dom.traversal.NodeIterator
    public void detach() {
    }

    public Node elementAt(int i) {
        Node[] nodeArr = this.m_map;
        if (nodeArr == null) {
            return null;
        }
        return nodeArr[i];
    }

    @Override // com.sun.org.apache.xpath.internal.axes.ContextNodeList
    public Node getCurrentNode() {
        if (!this.m_cacheNodes) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESET_CANNOT_INDEX", null));
        }
        int i = this.m_next;
        Node elementAt = i < this.m_firstFree ? elementAt(i) : null;
        this.m_next = i;
        return elementAt;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.ContextNodeList
    public int getCurrentPos() {
        return this.m_next;
    }

    @Override // org.w3c.dom.traversal.NodeIterator
    public boolean getExpandEntityReferences() {
        return true;
    }

    @Override // org.w3c.dom.traversal.NodeIterator
    public NodeFilter getFilter() {
        return null;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.ContextNodeList
    public int getLast() {
        return this.m_last;
    }

    @Override // org.w3c.dom.NodeList
    public int getLength() {
        runTo(-1);
        return size();
    }

    @Override // org.w3c.dom.traversal.NodeIterator
    public Node getRoot() {
        return null;
    }

    public boolean getShouldCacheNodes() {
        return this.m_cacheNodes;
    }

    @Override // org.w3c.dom.traversal.NodeIterator
    public int getWhatToShow() {
        return -17;
    }

    public int indexOf(Node node, int i) {
        runTo(-1);
        if (this.m_map == null) {
            return -1;
        }
        while (i < this.m_firstFree) {
            Node node2 = this.m_map[i];
            if (node2 != null && node2.equals(node)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public void insertElementAt(Node node, int i) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESET_NOT_MUTABLE", null));
        }
        Node[] nodeArr = this.m_map;
        if (nodeArr == null) {
            int i2 = this.m_blocksize;
            this.m_map = new Node[i2];
            this.m_mapSize = i2;
        } else {
            int i3 = this.m_firstFree;
            int i4 = i3 + 1;
            int i5 = this.m_mapSize;
            if (i4 >= i5) {
                int i6 = i5 + this.m_blocksize;
                this.m_mapSize = i6;
                Node[] nodeArr2 = new Node[i6];
                System.arraycopy(nodeArr, 0, nodeArr2, 0, i3 + 1);
                this.m_map = nodeArr2;
            }
        }
        int i7 = this.m_firstFree;
        if (i <= i7 - 1) {
            Node[] nodeArr3 = this.m_map;
            System.arraycopy(nodeArr3, i, nodeArr3, i + 1, i7 - i);
        }
        this.m_map[i] = node;
        this.m_firstFree++;
    }

    public void insertNode(Node node, int i) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESET_NOT_MUTABLE", null));
        }
        insertElementAt(node, i);
    }

    @Override // com.sun.org.apache.xpath.internal.axes.ContextNodeList
    public boolean isFresh() {
        return this.m_next == 0;
    }

    @Override // org.w3c.dom.NodeList
    public Node item(int i) {
        runTo(i);
        return elementAt(i);
    }

    @Override // org.w3c.dom.traversal.NodeIterator
    public Node nextNode() throws DOMException {
        if (this.m_next >= size()) {
            return null;
        }
        Node elementAt = elementAt(this.m_next);
        this.m_next++;
        return elementAt;
    }

    public final Node peepOrNull() {
        int i;
        Node[] nodeArr = this.m_map;
        if (nodeArr == null || (i = this.m_firstFree) <= 0) {
            return null;
        }
        return nodeArr[i - 1];
    }

    public final Node peepTail() {
        return this.m_map[this.m_firstFree - 1];
    }

    public final Node peepTailSub1() {
        return this.m_map[this.m_firstFree - 2];
    }

    public final Node pop() {
        int i = this.m_firstFree - 1;
        this.m_firstFree = i;
        Node[] nodeArr = this.m_map;
        Node node = nodeArr[i];
        nodeArr[i] = null;
        return node;
    }

    public final Node popAndTop() {
        int i = this.m_firstFree - 1;
        this.m_firstFree = i;
        Node[] nodeArr = this.m_map;
        nodeArr[i] = null;
        if (i == 0) {
            return null;
        }
        return nodeArr[i - 1];
    }

    public final void popPair() {
        int i = this.m_firstFree - 2;
        this.m_firstFree = i;
        Node[] nodeArr = this.m_map;
        nodeArr[i] = null;
        nodeArr[i + 1] = null;
    }

    public final void popQuick() {
        int i = this.m_firstFree - 1;
        this.m_firstFree = i;
        this.m_map[i] = null;
    }

    @Override // org.w3c.dom.traversal.NodeIterator
    public Node previousNode() throws DOMException {
        if (!this.m_cacheNodes) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESET_CANNOT_ITERATE", null));
        }
        int i = this.m_next;
        if (i - 1 <= 0) {
            return null;
        }
        int i2 = i - 1;
        this.m_next = i2;
        return elementAt(i2);
    }

    public final void push(Node node) {
        int i = this.m_firstFree;
        int i2 = i + 1;
        int i3 = this.m_mapSize;
        if (i2 >= i3) {
            Node[] nodeArr = this.m_map;
            if (nodeArr == null) {
                int i4 = this.m_blocksize;
                this.m_map = new Node[i4];
                this.m_mapSize = i4;
            } else {
                int i5 = i3 + this.m_blocksize;
                this.m_mapSize = i5;
                Node[] nodeArr2 = new Node[i5];
                System.arraycopy(nodeArr, 0, nodeArr2, 0, i2);
                this.m_map = nodeArr2;
            }
        }
        this.m_map[i] = node;
        this.m_firstFree = i2;
    }

    public final void pushPair(Node node, Node node2) {
        Node[] nodeArr = this.m_map;
        if (nodeArr == null) {
            int i = this.m_blocksize;
            this.m_map = new Node[i];
            this.m_mapSize = i;
        } else {
            int i2 = this.m_firstFree;
            int i3 = i2 + 2;
            int i4 = this.m_mapSize;
            if (i3 >= i4) {
                int i5 = i4 + this.m_blocksize;
                this.m_mapSize = i5;
                Node[] nodeArr2 = new Node[i5];
                System.arraycopy(nodeArr, 0, nodeArr2, 0, i2);
                this.m_map = nodeArr2;
            }
        }
        Node[] nodeArr3 = this.m_map;
        int i6 = this.m_firstFree;
        nodeArr3[i6] = node;
        nodeArr3[i6 + 1] = node2;
        this.m_firstFree = i6 + 2;
    }

    public void removeAllElements() {
        if (this.m_map == null) {
            return;
        }
        for (int i = 0; i < this.m_firstFree; i++) {
            this.m_map[i] = null;
        }
        this.m_firstFree = 0;
    }

    public boolean removeElement(Node node) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESET_NOT_MUTABLE", null));
        }
        if (this.m_map == null) {
            return false;
        }
        for (int i = 0; i < this.m_firstFree; i++) {
            Node node2 = this.m_map[i];
            if (node2 != null && node2.equals(node)) {
                int i2 = this.m_firstFree;
                if (i < i2 - 1) {
                    Node[] nodeArr = this.m_map;
                    System.arraycopy(nodeArr, i + 1, nodeArr, i, (i2 - i) - 1);
                }
                int i3 = this.m_firstFree - 1;
                this.m_firstFree = i3;
                this.m_map[i3] = null;
                return true;
            }
        }
        return false;
    }

    public void removeElementAt(int i) {
        Node[] nodeArr = this.m_map;
        if (nodeArr == null) {
            return;
        }
        int i2 = this.m_firstFree;
        if (i >= i2) {
            throw new ArrayIndexOutOfBoundsException(i + CloudStorageConstants.OPERATION_GREATER_EQUAL + this.m_firstFree);
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(i);
        }
        if (i < i2 - 1) {
            System.arraycopy(nodeArr, i + 1, nodeArr, i, (i2 - i) - 1);
        }
        int i3 = this.m_firstFree - 1;
        this.m_firstFree = i3;
        this.m_map[i3] = null;
    }

    public void removeNode(Node node) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESET_NOT_MUTABLE", null));
        }
        removeElement(node);
    }

    @Override // com.sun.org.apache.xpath.internal.axes.ContextNodeList
    public void reset() {
        this.m_next = 0;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.ContextNodeList
    public void runTo(int i) {
        if (!this.m_cacheNodes) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESET_CANNOT_INDEX", null));
        }
        if (i < 0 || this.m_next >= this.m_firstFree) {
            this.m_next = this.m_firstFree - 1;
        } else {
            this.m_next = i;
        }
    }

    @Override // com.sun.org.apache.xpath.internal.axes.ContextNodeList
    public void setCurrentPos(int i) {
        if (!this.m_cacheNodes) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESET_CANNOT_INDEX", null));
        }
        this.m_next = i;
    }

    public void setElementAt(Node node, int i) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESET_NOT_MUTABLE", null));
        }
        if (this.m_map == null) {
            int i2 = this.m_blocksize;
            this.m_map = new Node[i2];
            this.m_mapSize = i2;
        }
        this.m_map[i] = node;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.ContextNodeList
    public void setLast(int i) {
        this.m_last = i;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.ContextNodeList
    public void setShouldCacheNodes(boolean z) {
        if (!isFresh()) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_CANNOT_CALL_SETSHOULDCACHENODE", null));
        }
        this.m_cacheNodes = z;
        this.m_mutable = true;
    }

    public final void setTail(Node node) {
        this.m_map[this.m_firstFree - 1] = node;
    }

    public final void setTailSub1(Node node) {
        this.m_map[this.m_firstFree - 2] = node;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.ContextNodeList
    public int size() {
        return this.m_firstFree;
    }

    public void addNodes(NodeSet nodeSet) {
        if (this.m_mutable) {
            addNodes((NodeIterator) nodeSet);
            return;
        }
        throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESET_NOT_MUTABLE", null));
    }

    public void addNodesInDocOrder(NodeIterator nodeIterator, XPathContext xPathContext) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESET_NOT_MUTABLE", null));
        }
        while (true) {
            Node nextNode = nodeIterator.nextNode();
            if (nextNode == null) {
                return;
            } else {
                addNodeInDocOrder(nextNode, xPathContext);
            }
        }
    }

    public int indexOf(Node node) {
        runTo(-1);
        if (this.m_map == null) {
            return -1;
        }
        for (int i = 0; i < this.m_firstFree; i++) {
            Node node2 = this.m_map[i];
            if (node2 != null && node2.equals(node)) {
                return i;
            }
        }
        return -1;
    }

    public NodeSet(int i) {
        this.m_next = 0;
        this.m_mutable = true;
        this.m_cacheNodes = true;
        this.m_last = 0;
        this.m_firstFree = 0;
        this.m_blocksize = i;
        this.m_mapSize = 0;
    }

    public void addNodes(NodeIterator nodeIterator) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESET_NOT_MUTABLE", null));
        }
        if (nodeIterator == null) {
            return;
        }
        while (true) {
            Node nextNode = nodeIterator.nextNode();
            if (nextNode == null) {
                return;
            } else {
                addElement(nextNode);
            }
        }
    }

    private boolean addNodesInDocOrder(int i, int i2, int i3, NodeList nodeList, XPathContext xPathContext) {
        if (this.m_mutable) {
            Node item = nodeList.item(i3);
            while (true) {
                if (i2 < i) {
                    break;
                }
                Node elementAt = elementAt(i2);
                if (elementAt == item) {
                    i2 = -2;
                    break;
                }
                if (DOM2Helper.isNodeAfter(item, elementAt)) {
                    i2--;
                } else {
                    insertElementAt(item, i2 + 1);
                    int i4 = i3 - 1;
                    if (i4 > 0 && !addNodesInDocOrder(0, i2, i4, nodeList, xPathContext)) {
                        addNodesInDocOrder(i2, size() - 1, i4, nodeList, xPathContext);
                    }
                }
            }
            if (i2 == -1) {
                insertElementAt(item, 0);
            }
            return false;
        }
        throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESET_NOT_MUTABLE", null));
    }

    public int addNodeInDocOrder(Node node, XPathContext xPathContext) {
        if (this.m_mutable) {
            return addNodeInDocOrder(node, true, xPathContext);
        }
        throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESET_NOT_MUTABLE", null));
    }

    public NodeSet(NodeList nodeList) {
        this(32);
        addNodes(nodeList);
    }

    public NodeSet(NodeSet nodeSet) {
        this(32);
        addNodes((NodeIterator) nodeSet);
    }

    public NodeSet(NodeIterator nodeIterator) {
        this(32);
        addNodes(nodeIterator);
    }

    public NodeSet(Node node) {
        this(32);
        addNode(node);
    }
}
