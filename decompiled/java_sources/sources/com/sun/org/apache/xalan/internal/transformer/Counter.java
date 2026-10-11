package com.sun.org.apache.xalan.internal.transformer;

import com.sun.org.apache.xalan.internal.templates.ElemNumber;
import com.sun.org.apache.xpath.internal.NodeSetDTM;
import com.sun.org.apache.xpath.internal.XPathContext;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class Counter {
    static final int MAXCOUNTNODES = 500;
    NodeSetDTM m_countNodes;
    int m_countResult;
    ElemNumber m_numberElem;
    int m_countNodesStartCount = 0;
    int m_fromNode = -1;

    public Counter(ElemNumber elemNumber, NodeSetDTM nodeSetDTM) throws TransformerException {
        this.m_countNodes = nodeSetDTM;
        this.m_numberElem = elemNumber;
    }

    public int getLast() {
        int size = this.m_countNodes.size();
        if (size > 0) {
            return this.m_countNodes.elementAt(size - 1);
        }
        return -1;
    }

    public int getPreviouslyCounted(XPathContext xPathContext, int i) {
        int size = this.m_countNodes.size();
        this.m_countResult = 0;
        int i2 = size - 1;
        while (true) {
            if (i2 < 0) {
                break;
            }
            int elementAt = this.m_countNodes.elementAt(i2);
            if (i == elementAt) {
                this.m_countResult = i2 + 1 + this.m_countNodesStartCount;
                break;
            }
            if (xPathContext.getDTM(elementAt).isNodeAfter(elementAt, i)) {
                break;
            }
            i2--;
        }
        return this.m_countResult;
    }
}
