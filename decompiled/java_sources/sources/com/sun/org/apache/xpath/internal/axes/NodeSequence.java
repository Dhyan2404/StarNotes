package com.sun.org.apache.xpath.internal.axes;

import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.dtm.DTMManager;
import com.sun.org.apache.xml.internal.utils.NodeVector;
import com.sun.org.apache.xpath.internal.NodeSetDTM;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XObject;
import java.util.Vector;

/* loaded from: classes10.dex */
public class NodeSequence extends XObject implements DTMIterator, Cloneable, PathComponent {
    static final long serialVersionUID = 3866261934726581044L;
    protected DTMManager m_dtmMgr;
    protected DTMIterator m_iter;
    protected int m_last;
    protected int m_next;

    public NodeSequence(DTMIterator dTMIterator, int i, XPathContext xPathContext, boolean z) {
        this.m_last = -1;
        this.m_next = 0;
        setIter(dTMIterator);
        setRoot(i, xPathContext);
        setShouldCacheNodes(z);
    }

    public void SetVector(NodeVector nodeVector) {
        this.m_obj = nodeVector;
    }

    public int addNodeInDocOrder(int i) {
        assertion(hasCache(), "addNodeInDocOrder must be done on a mutable sequence!");
        NodeVector vector = getVector();
        int size = vector.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            int elementAt = vector.elementAt(size);
            if (elementAt == i) {
                size = -2;
                break;
            }
            if (!this.m_dtmMgr.getDTM(i).isNodeAfter(i, elementAt)) {
                break;
            }
        }
        if (size == -2) {
            return -1;
        }
        int i2 = size + 1;
        vector.insertElementAt(i, i2);
        return i2;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void allowDetachToRelease(boolean z) {
        if (!z && !hasCache()) {
            setShouldCacheNodes(true);
        }
        DTMIterator dTMIterator = this.m_iter;
        if (dTMIterator != null) {
            dTMIterator.allowDetachToRelease(z);
        }
        super.allowDetachToRelease(z);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public Object clone() throws CloneNotSupportedException {
        NodeSequence nodeSequence = (NodeSequence) super.clone();
        DTMIterator dTMIterator = this.m_iter;
        if (dTMIterator != null) {
            nodeSequence.m_iter = (DTMIterator) dTMIterator.clone();
        }
        return nodeSequence;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public DTMIterator cloneWithReset() throws CloneNotSupportedException {
        NodeSequence nodeSequence = (NodeSequence) super.clone();
        nodeSequence.m_next = 0;
        return nodeSequence;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void detach() {
        DTMIterator dTMIterator = this.m_iter;
        if (dTMIterator != null) {
            dTMIterator.detach();
        }
        super.detach();
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject, com.sun.org.apache.xpath.internal.Expression
    public void fixupVariables(Vector vector, int i) {
        super.fixupVariables(vector, i);
    }

    @Override // com.sun.org.apache.xpath.internal.axes.PathComponent
    public int getAnalysisBits() {
        DTMIterator dTMIterator = this.m_iter;
        if (dTMIterator == null || !(dTMIterator instanceof PathComponent)) {
            return 0;
        }
        return ((PathComponent) dTMIterator).getAnalysisBits();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int getAxis() {
        DTMIterator dTMIterator = this.m_iter;
        if (dTMIterator != null) {
            return dTMIterator.getAxis();
        }
        assertion(false, "Can not getAxis from a non-iterated node sequence!");
        return 0;
    }

    public final DTMIterator getContainedIter() {
        return this.m_iter;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int getCurrentNode() {
        if (!hasCache()) {
            DTMIterator dTMIterator = this.m_iter;
            if (dTMIterator != null) {
                return dTMIterator.getCurrentNode();
            }
            return -1;
        }
        int i = this.m_next - 1;
        NodeVector vector = getVector();
        if (i < 0 || i >= vector.size()) {
            return -1;
        }
        return vector.elementAt(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int getCurrentPos() {
        return this.m_next;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public DTM getDTM(int i) {
        if (getDTMManager() != null) {
            return getDTMManager().getDTM(i);
        }
        assertion(false, "Can not get a DTM Unless a DTMManager has been set!");
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public DTMManager getDTMManager() {
        return this.m_dtmMgr;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public boolean getExpandEntityReferences() {
        DTMIterator dTMIterator = this.m_iter;
        if (dTMIterator != null) {
            return dTMIterator.getExpandEntityReferences();
        }
        return true;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int getLength() {
        if (!hasCache()) {
            int i = this.m_last;
            if (-1 != i) {
                return i;
            }
            int length = this.m_iter.getLength();
            this.m_last = length;
            return length;
        }
        DTMIterator dTMIterator = this.m_iter;
        if (dTMIterator instanceof NodeSetDTM) {
            return dTMIterator.getLength();
        }
        if (-1 == this.m_last) {
            int i2 = this.m_next;
            runTo(-1);
            this.m_next = i2;
        }
        return this.m_last;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int getRoot() {
        DTMIterator dTMIterator = this.m_iter;
        if (dTMIterator != null) {
            return dTMIterator.getRoot();
        }
        return -1;
    }

    public NodeVector getVector() {
        return (NodeVector) this.m_obj;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int getWhatToShow() {
        if (hasCache()) {
            return -17;
        }
        return this.m_iter.getWhatToShow();
    }

    public boolean hasCache() {
        return this.m_obj != null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public boolean isDocOrdered() {
        DTMIterator dTMIterator = this.m_iter;
        if (dTMIterator != null) {
            return dTMIterator.isDocOrdered();
        }
        return true;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public boolean isFresh() {
        return this.m_next == 0;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public boolean isMutable() {
        return hasCache();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int item(int i) {
        setCurrentPos(i);
        int nextNode = nextNode();
        this.m_next = i;
        return nextNode;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int nextNode() {
        NodeVector vector = getVector();
        if (vector != null) {
            if (this.m_next < vector.size()) {
                int elementAt = vector.elementAt(this.m_next);
                this.m_next++;
                return elementAt;
            }
            if (-1 != this.m_last || this.m_iter == null) {
                this.m_next++;
                return -1;
            }
        }
        DTMIterator dTMIterator = this.m_iter;
        if (dTMIterator == null) {
            return -1;
        }
        int nextNode = dTMIterator.nextNode();
        if (-1 == nextNode) {
            int i = this.m_next;
            this.m_last = i;
            this.m_next = i + 1;
        } else if (!hasCache()) {
            this.m_next++;
        } else if (this.m_iter.isDocOrdered()) {
            getVector().addElement(nextNode);
            this.m_next++;
        } else if (addNodeInDocOrder(nextNode) >= 0) {
            this.m_next++;
        }
        return nextNode;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int previousNode() {
        if (!hasCache()) {
            this.m_iter.previousNode();
            int currentPos = this.m_iter.getCurrentPos();
            this.m_next = currentPos;
            return currentPos;
        }
        int i = this.m_next;
        if (i <= 0) {
            return -1;
        }
        int i2 = i - 1;
        this.m_next = i2;
        return item(i2);
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void reset() {
        this.m_next = 0;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void runTo(int i) {
        if (-1 == i) {
            int i2 = this.m_next;
            do {
            } while (-1 != nextNode());
            this.m_next = i2;
        } else {
            if (this.m_next == i) {
                return;
            }
            if (hasCache() && this.m_next < getVector().size()) {
                this.m_next = i;
                return;
            }
            if (getVector() != null || i >= this.m_next) {
                while (this.m_next < i && -1 != nextNode()) {
                }
                return;
            }
            while (this.m_next >= i && -1 != previousNode()) {
            }
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void setCurrentPos(int i) {
        runTo(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void setItem(int i, int i2) {
        NodeVector vector = getVector();
        if (vector == null) {
            this.m_iter.setItem(i, i2);
        } else {
            vector.setElementAt(i, i2);
            this.m_last = vector.size();
        }
    }

    public final void setIter(DTMIterator dTMIterator) {
        this.m_iter = dTMIterator;
    }

    public void setRoot(int i, Object obj) {
        if (this.m_iter == null) {
            assertion(false, "Can not setRoot on a non-iterated NodeSequence!");
            return;
        }
        this.m_dtmMgr = ((XPathContext) obj).getDTMManager();
        this.m_iter.setRoot(i, obj);
        if (this.m_iter.isDocOrdered()) {
            return;
        }
        if (!hasCache()) {
            setShouldCacheNodes(true);
        }
        runTo(-1);
        this.m_next = 0;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void setShouldCacheNodes(boolean z) {
        if (!z) {
            SetVector(null);
        } else {
            if (hasCache()) {
                return;
            }
            SetVector(new NodeVector());
        }
    }

    public NodeSequence(Object obj) {
        super(obj);
        this.m_last = -1;
        this.m_next = 0;
        if (obj != null) {
            assertion(obj instanceof NodeVector, "Must have a NodeVector as the object for NodeSequence!");
            if (obj instanceof DTMIterator) {
                DTMIterator dTMIterator = (DTMIterator) obj;
                setIter(dTMIterator);
                this.m_last = dTMIterator.getLength();
            }
        }
    }

    public NodeSequence(DTMManager dTMManager) {
        super(new NodeVector());
        this.m_next = 0;
        this.m_last = 0;
        this.m_dtmMgr = dTMManager;
    }

    public NodeSequence() {
        this.m_last = -1;
        this.m_next = 0;
    }
}
