package com.sun.org.apache.xalan.internal.transformer;

import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XNodeSet;
import com.sun.org.apache.xpath.internal.objects.XObject;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class NodeSorter {
    XPathContext m_execContext;
    Vector m_keys;

    /* loaded from: classes10.dex */
    public class NodeCompareElem {
        Object m_key1Value;
        Object m_key2Value;
        int m_node;
        int maxkey = 2;

        public NodeCompareElem(int i) throws TransformerException {
            this.m_node = i;
            if (NodeSorter.this.m_keys.isEmpty()) {
                return;
            }
            NodeSortKey nodeSortKey = (NodeSortKey) NodeSorter.this.m_keys.elementAt(0);
            XObject execute = nodeSortKey.m_selectPat.execute(NodeSorter.this.m_execContext, i, nodeSortKey.m_namespaceContext);
            if (nodeSortKey.m_treatAsNumbers) {
                this.m_key1Value = new Double(execute.num());
            } else {
                this.m_key1Value = nodeSortKey.m_col.getCollationKey(execute.str());
            }
            if (execute.getType() == 4) {
                DTMIterator iterRaw = ((XNodeSet) execute).iterRaw();
                if (-1 == iterRaw.getCurrentNode()) {
                    iterRaw.nextNode();
                }
            }
            if (NodeSorter.this.m_keys.size() > 1) {
                NodeSortKey nodeSortKey2 = (NodeSortKey) NodeSorter.this.m_keys.elementAt(1);
                XObject execute2 = nodeSortKey2.m_selectPat.execute(NodeSorter.this.m_execContext, i, nodeSortKey2.m_namespaceContext);
                if (nodeSortKey2.m_treatAsNumbers) {
                    this.m_key2Value = new Double(execute2.num());
                } else {
                    this.m_key2Value = nodeSortKey2.m_col.getCollationKey(execute2.str());
                }
            }
        }
    }

    public NodeSorter(XPathContext xPathContext) {
        this.m_execContext = xPathContext;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x008e, code lost:
    
        if (r0.m_descending != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0090, code lost:
    
        r2 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0093, code lost:
    
        r2 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x009c, code lost:
    
        if (r0.m_descending != false) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int compare(com.sun.org.apache.xalan.internal.transformer.NodeSorter.NodeCompareElem r12, com.sun.org.apache.xalan.internal.transformer.NodeSorter.NodeCompareElem r13, int r14, com.sun.org.apache.xpath.internal.XPathContext r15) throws javax.xml.transform.TransformerException {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.transformer.NodeSorter.compare(com.sun.org.apache.xalan.internal.transformer.NodeSorter$NodeCompareElem, com.sun.org.apache.xalan.internal.transformer.NodeSorter$NodeCompareElem, int, com.sun.org.apache.xpath.internal.XPathContext):int");
    }

    public void mergesort(Vector vector, Vector vector2, int i, int i2, XPathContext xPathContext) throws TransformerException {
        if (i2 - i > 0) {
            int i3 = (i2 + i) / 2;
            mergesort(vector, vector2, i, i3, xPathContext);
            int i4 = i3 + 1;
            mergesort(vector, vector2, i4, i2, xPathContext);
            for (int i5 = i3; i5 >= i; i5--) {
                if (i5 >= vector2.size()) {
                    vector2.insertElementAt(vector.elementAt(i5), i5);
                } else {
                    vector2.setElementAt(vector.elementAt(i5), i5);
                }
            }
            while (i4 <= i2) {
                int i6 = ((i2 + i3) + 1) - i4;
                if (i6 >= vector2.size()) {
                    vector2.insertElementAt(vector.elementAt(i4), i6);
                } else {
                    vector2.setElementAt(vector.elementAt(i4), i6);
                }
                i4++;
            }
            int i7 = i;
            int i8 = i2;
            while (i <= i2) {
                int compare = i7 == i8 ? -1 : compare((NodeCompareElem) vector2.elementAt(i7), (NodeCompareElem) vector2.elementAt(i8), 0, xPathContext);
                if (compare < 0) {
                    vector.setElementAt(vector2.elementAt(i7), i);
                    i7++;
                } else if (compare > 0) {
                    vector.setElementAt(vector2.elementAt(i8), i);
                    i8--;
                }
                i++;
            }
        }
    }

    public void sort(DTMIterator dTMIterator, Vector vector, XPathContext xPathContext) throws TransformerException {
        this.m_keys = vector;
        int length = dTMIterator.getLength();
        Vector vector2 = new Vector();
        for (int i = 0; i < length; i++) {
            vector2.addElement(new NodeCompareElem(dTMIterator.item(i)));
        }
        mergesort(vector2, new Vector(), 0, length - 1, xPathContext);
        for (int i2 = 0; i2 < length; i2++) {
            dTMIterator.setItem(((NodeCompareElem) vector2.elementAt(i2)).m_node, i2);
        }
        dTMIterator.setCurrentPos(0);
    }
}
