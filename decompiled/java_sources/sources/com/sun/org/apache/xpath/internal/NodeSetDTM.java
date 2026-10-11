package com.sun.org.apache.xpath.internal;

import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.dtm.DTMFilter;
import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.dtm.DTMManager;
import com.sun.org.apache.xml.internal.utils.NodeVector;
import com.sun.org.apache.xpath.internal.res.XPATHMessages;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.traversal.NodeIterator;

/* loaded from: classes10.dex */
public class NodeSetDTM extends NodeVector implements DTMIterator, Cloneable {
    static final long serialVersionUID = 7686480133331317070L;
    protected transient boolean m_cacheNodes;
    private transient int m_last;
    DTMManager m_manager;
    protected transient boolean m_mutable;
    protected transient int m_next;
    protected int m_root;

    public NodeSetDTM(DTMManager dTMManager) {
        this.m_next = 0;
        this.m_mutable = true;
        this.m_cacheNodes = true;
        this.m_root = -1;
        this.m_last = 0;
        this.m_manager = dTMManager;
    }

    @Override // com.sun.org.apache.xml.internal.utils.NodeVector
    public void addElement(int i) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESETDTM_NOT_MUTABLE", null));
        }
        super.addElement(i);
    }

    public void addNode(int i) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESETDTM_NOT_MUTABLE", null));
        }
        addElement(i);
    }

    public int addNodeInDocOrder(int i, boolean z, XPathContext xPathContext) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESETDTM_NOT_MUTABLE", null));
        }
        boolean z2 = true;
        if (z) {
            int size = size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                int elementAt = elementAt(size);
                if (elementAt == i) {
                    size = -2;
                    break;
                }
                if (!xPathContext.getDTM(i).isNodeAfter(i, elementAt)) {
                    break;
                }
                size--;
            }
            if (size == -2) {
                return -1;
            }
            int i2 = size + 1;
            insertElementAt(i, i2);
            return i2;
        }
        int size2 = size();
        int i3 = 0;
        while (true) {
            if (i3 >= size2) {
                z2 = false;
                break;
            }
            if (i3 == i) {
                break;
            }
            i3++;
        }
        if (z2) {
            return size2;
        }
        addElement(i);
        return size2;
    }

    public void addNodes(DTMIterator dTMIterator) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESETDTM_NOT_MUTABLE", null));
        }
        if (dTMIterator == null) {
            return;
        }
        while (true) {
            int nextNode = dTMIterator.nextNode();
            if (-1 == nextNode) {
                return;
            } else {
                addElement(nextNode);
            }
        }
    }

    public void addNodesInDocOrder(DTMIterator dTMIterator, XPathContext xPathContext) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESETDTM_NOT_MUTABLE", null));
        }
        while (true) {
            int nextNode = dTMIterator.nextNode();
            if (-1 == nextNode) {
                return;
            } else {
                addNodeInDocOrder(nextNode, xPathContext);
            }
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void allowDetachToRelease(boolean z) {
    }

    @Override // com.sun.org.apache.xml.internal.utils.NodeVector
    public void appendNodes(NodeVector nodeVector) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESETDTM_NOT_MUTABLE", null));
        }
        super.appendNodes(nodeVector);
    }

    @Override // com.sun.org.apache.xml.internal.utils.NodeVector, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public Object clone() throws CloneNotSupportedException {
        return (NodeSetDTM) super.clone();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public DTMIterator cloneWithReset() throws CloneNotSupportedException {
        NodeSetDTM nodeSetDTM = (NodeSetDTM) clone();
        nodeSetDTM.reset();
        return nodeSetDTM;
    }

    @Override // com.sun.org.apache.xml.internal.utils.NodeVector
    public boolean contains(int i) {
        runTo(-1);
        return super.contains(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void detach() {
    }

    @Override // com.sun.org.apache.xml.internal.utils.NodeVector
    public int elementAt(int i) {
        runTo(i);
        return super.elementAt(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int getAxis() {
        return -1;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int getCurrentNode() {
        if (!this.m_cacheNodes) {
            throw new RuntimeException("This NodeSetDTM can not do indexing or counting functions!");
        }
        int i = this.m_next;
        int i2 = i > 0 ? i - 1 : i;
        int elementAt = i2 < this.m_firstFree ? elementAt(i2) : -1;
        this.m_next = i;
        return elementAt;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int getCurrentPos() {
        return this.m_next;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public DTM getDTM(int i) {
        return this.m_manager.getDTM(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public DTMManager getDTMManager() {
        return this.m_manager;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public boolean getExpandEntityReferences() {
        return true;
    }

    public DTMFilter getFilter() {
        return null;
    }

    public int getLast() {
        return this.m_last;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int getLength() {
        runTo(-1);
        return size();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int getRoot() {
        int i = this.m_root;
        if (-1 != i) {
            return i;
        }
        if (size() > 0) {
            return item(0);
        }
        return -1;
    }

    public boolean getShouldCacheNodes() {
        return this.m_cacheNodes;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int getWhatToShow() {
        return -17;
    }

    @Override // com.sun.org.apache.xml.internal.utils.NodeVector
    public int indexOf(int i, int i2) {
        runTo(-1);
        return super.indexOf(i, i2);
    }

    @Override // com.sun.org.apache.xml.internal.utils.NodeVector
    public void insertElementAt(int i, int i2) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESETDTM_NOT_MUTABLE", null));
        }
        super.insertElementAt(i, i2);
    }

    public void insertNode(int i, int i2) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESETDTM_NOT_MUTABLE", null));
        }
        insertElementAt(i, i2);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public boolean isDocOrdered() {
        return true;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public boolean isFresh() {
        return this.m_next == 0;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public boolean isMutable() {
        return this.m_mutable;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int item(int i) {
        runTo(i);
        return elementAt(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int nextNode() {
        if (this.m_next >= size()) {
            return -1;
        }
        int elementAt = elementAt(this.m_next);
        this.m_next++;
        return elementAt;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int previousNode() {
        if (!this.m_cacheNodes) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESETDTM_CANNOT_ITERATE", null));
        }
        int i = this.m_next;
        if (i - 1 <= 0) {
            return -1;
        }
        int i2 = i - 1;
        this.m_next = i2;
        return elementAt(i2);
    }

    @Override // com.sun.org.apache.xml.internal.utils.NodeVector
    public void removeAllElements() {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESETDTM_NOT_MUTABLE", null));
        }
        super.removeAllElements();
    }

    @Override // com.sun.org.apache.xml.internal.utils.NodeVector
    public boolean removeElement(int i) {
        if (this.m_mutable) {
            return super.removeElement(i);
        }
        throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESETDTM_NOT_MUTABLE", null));
    }

    @Override // com.sun.org.apache.xml.internal.utils.NodeVector
    public void removeElementAt(int i) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESETDTM_NOT_MUTABLE", null));
        }
        super.removeElementAt(i);
    }

    public void removeNode(int i) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESETDTM_NOT_MUTABLE", null));
        }
        removeElement(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void reset() {
        this.m_next = 0;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void runTo(int i) {
        if (!this.m_cacheNodes) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESETDTM_CANNOT_INDEX", null));
        }
        if (i < 0 || this.m_next >= this.m_firstFree) {
            this.m_next = this.m_firstFree - 1;
        } else {
            this.m_next = i;
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void setCurrentPos(int i) {
        if (!this.m_cacheNodes) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESETDTM_CANNOT_INDEX", null));
        }
        this.m_next = i;
    }

    @Override // com.sun.org.apache.xml.internal.utils.NodeVector
    public void setElementAt(int i, int i2) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESETDTM_NOT_MUTABLE", null));
        }
        super.setElementAt(i, i2);
    }

    public void setEnvironment(Object obj) {
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void setItem(int i, int i2) {
        if (!this.m_mutable) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESETDTM_NOT_MUTABLE", null));
        }
        super.setElementAt(i, i2);
    }

    public void setLast(int i) {
        this.m_last = i;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void setRoot(int i, Object obj) {
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void setShouldCacheNodes(boolean z) {
        if (!isFresh()) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_CANNOT_CALL_SETSHOULDCACHENODE", null));
        }
        this.m_cacheNodes = z;
        this.m_mutable = true;
    }

    @Override // com.sun.org.apache.xml.internal.utils.NodeVector
    public int size() {
        return super.size();
    }

    @Override // com.sun.org.apache.xml.internal.utils.NodeVector
    public int indexOf(int i) {
        runTo(-1);
        return super.indexOf(i);
    }

    public NodeSetDTM(int i, int i2, DTMManager dTMManager) {
        super(i);
        this.m_next = 0;
        this.m_mutable = true;
        this.m_cacheNodes = true;
        this.m_root = -1;
        this.m_last = 0;
        this.m_manager = dTMManager;
    }

    public int addNodeInDocOrder(int i, XPathContext xPathContext) {
        if (this.m_mutable) {
            return addNodeInDocOrder(i, true, xPathContext);
        }
        throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESETDTM_NOT_MUTABLE", null));
    }

    public NodeSetDTM(NodeSetDTM nodeSetDTM) {
        this.m_next = 0;
        this.m_mutable = true;
        this.m_cacheNodes = true;
        this.m_root = -1;
        this.m_last = 0;
        this.m_manager = nodeSetDTM.getDTMManager();
        this.m_root = nodeSetDTM.getRoot();
        addNodes(nodeSetDTM);
    }

    public NodeSetDTM(DTMIterator dTMIterator) {
        this.m_next = 0;
        this.m_mutable = true;
        this.m_cacheNodes = true;
        this.m_root = -1;
        this.m_last = 0;
        this.m_manager = dTMIterator.getDTMManager();
        this.m_root = dTMIterator.getRoot();
        addNodes(dTMIterator);
    }

    public NodeSetDTM(NodeIterator nodeIterator, XPathContext xPathContext) {
        this.m_next = 0;
        this.m_mutable = true;
        this.m_cacheNodes = true;
        this.m_root = -1;
        this.m_last = 0;
        this.m_manager = xPathContext.getDTMManager();
        while (true) {
            Node nextNode = nodeIterator.nextNode();
            if (nextNode == null) {
                return;
            } else {
                addNodeInDocOrder(xPathContext.getDTMHandleFromNode(nextNode), xPathContext);
            }
        }
    }

    public NodeSetDTM(NodeList nodeList, XPathContext xPathContext) {
        this.m_next = 0;
        this.m_mutable = true;
        this.m_cacheNodes = true;
        this.m_root = -1;
        this.m_last = 0;
        this.m_manager = xPathContext.getDTMManager();
        int length = nodeList.getLength();
        for (int i = 0; i < length; i++) {
            addNode(xPathContext.getDTMHandleFromNode(nodeList.item(i)));
        }
    }

    public NodeSetDTM(int i, DTMManager dTMManager) {
        this.m_next = 0;
        this.m_mutable = true;
        this.m_cacheNodes = true;
        this.m_root = -1;
        this.m_last = 0;
        this.m_manager = dTMManager;
        addNode(i);
    }
}
