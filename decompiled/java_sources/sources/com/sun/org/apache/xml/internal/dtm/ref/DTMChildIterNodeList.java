package com.sun.org.apache.xml.internal.dtm.ref;

import com.sun.org.apache.xml.internal.dtm.DTM;
import org.w3c.dom.Node;

/* loaded from: classes10.dex */
public class DTMChildIterNodeList extends DTMNodeListBase {
    private int m_firstChild;
    private DTM m_parentDTM;

    private DTMChildIterNodeList() {
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMNodeListBase, org.w3c.dom.NodeList
    public int getLength() {
        int i = this.m_firstChild;
        int i2 = 0;
        while (i != -1) {
            i2++;
            i = this.m_parentDTM.getNextSibling(i);
        }
        return i2;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMNodeListBase, org.w3c.dom.NodeList
    public Node item(int i) {
        int i2 = this.m_firstChild;
        while (true) {
            i--;
            if (i < 0 || i2 == -1) {
                break;
            }
            i2 = this.m_parentDTM.getNextSibling(i2);
        }
        if (i2 == -1) {
            return null;
        }
        return this.m_parentDTM.getNode(i2);
    }

    public DTMChildIterNodeList(DTM dtm, int i) {
        this.m_parentDTM = dtm;
        this.m_firstChild = dtm.getFirstChild(i);
    }
}
