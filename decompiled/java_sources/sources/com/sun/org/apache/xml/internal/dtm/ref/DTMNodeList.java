package com.sun.org.apache.xml.internal.dtm.ref;

import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import org.w3c.dom.Node;

/* loaded from: classes10.dex */
public class DTMNodeList extends DTMNodeListBase {
    private DTMIterator m_iter;

    private DTMNodeList() {
    }

    public DTMIterator getDTMIterator() {
        return this.m_iter;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMNodeListBase, org.w3c.dom.NodeList
    public int getLength() {
        DTMIterator dTMIterator = this.m_iter;
        if (dTMIterator != null) {
            return dTMIterator.getLength();
        }
        return 0;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMNodeListBase, org.w3c.dom.NodeList
    public Node item(int i) {
        int item;
        DTMIterator dTMIterator = this.m_iter;
        if (dTMIterator == null || (item = dTMIterator.item(i)) == -1) {
            return null;
        }
        return this.m_iter.getDTM(item).getNode(item);
    }

    public DTMNodeList(DTMIterator dTMIterator) {
        if (dTMIterator != null) {
            int currentPos = dTMIterator.getCurrentPos();
            try {
                this.m_iter = dTMIterator.cloneWithReset();
            } catch (CloneNotSupportedException unused) {
                this.m_iter = dTMIterator;
            }
            this.m_iter.setShouldCacheNodes(true);
            this.m_iter.runTo(-1);
            this.m_iter.setCurrentPos(currentPos);
        }
    }
}
