package com.sun.org.apache.xpath.internal.axes;

import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser;
import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xpath.internal.Expression;
import com.sun.org.apache.xpath.internal.VariableStack;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.patterns.NodeTest;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class DescendantIterator extends LocPathIterator {
    static final long serialVersionUID = -1190338607743976938L;
    protected int m_axis;
    protected int m_extendedTypeID;
    protected transient DTMAxisTraverser m_traverser;

    /* JADX WARN: Removed duplicated region for block: B:17:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DescendantIterator(com.sun.org.apache.xpath.internal.compiler.Compiler r7, int r8, int r9) throws javax.xml.transform.TransformerException {
        /*
            r6 = this;
            r0 = 0
            r6.<init>(r7, r8, r9, r0)
            int r8 = com.sun.org.apache.xpath.internal.compiler.OpMap.getFirstChildPos(r8)
            int r1 = r7.getOp(r8)
            r2 = 1
            r3 = 42
            if (r3 != r1) goto L13
            r4 = r2
            goto L14
        L13:
            r4 = r0
        L14:
            r5 = 48
            if (r5 != r1) goto L1a
            r4 = r2
            goto L2a
        L1a:
            r5 = 50
            if (r5 != r1) goto L2a
            int r1 = r7.getNextStepPos(r8)
            int r1 = r7.getOp(r1)
            if (r1 != r3) goto L2b
            r4 = r2
            goto L2b
        L2a:
            r2 = r0
        L2b:
            int r1 = r7.getNextStepPos(r8)
            r3 = -1
            if (r1 <= 0) goto L3a
            int r5 = r7.getOp(r1)
            if (r3 == r5) goto L3a
            r8 = r1
            goto L2b
        L3a:
            r1 = 65536(0x10000, float:9.18355E-41)
            r9 = r9 & r1
            if (r9 == 0) goto L40
            goto L41
        L40:
            r0 = r4
        L41:
            if (r2 == 0) goto L4f
            if (r0 == 0) goto L4a
            r9 = 18
            r6.m_axis = r9
            goto L58
        L4a:
            r9 = 17
            r6.m_axis = r9
            goto L58
        L4f:
            if (r0 == 0) goto L55
            r9 = 5
            r6.m_axis = r9
            goto L58
        L55:
            r9 = 4
            r6.m_axis = r9
        L58:
            int r9 = r7.getWhatToShow(r8)
            r0 = r9 & 67
            if (r0 == 0) goto L6f
            if (r9 != r3) goto L63
            goto L6f
        L63:
            java.lang.String r0 = r7.getStepNS(r8)
            java.lang.String r1 = r7.getStepLocalName(r8)
            r6.initNodeTest(r9, r0, r1)
            goto L72
        L6f:
            r6.initNodeTest(r9)
        L72:
            r6.initPredicateInfo(r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xpath.internal.axes.DescendantIterator.<init>(com.sun.org.apache.xpath.internal.compiler.Compiler, int, int):void");
    }

    @Override // com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xpath.internal.Expression
    public int asNode(XPathContext xPathContext) throws TransformerException {
        if (getPredicateCount() > 0) {
            return super.asNode(xPathContext);
        }
        int currentNode = xPathContext.getCurrentNode();
        DTM dtm = xPathContext.getDTM(currentNode);
        DTMAxisTraverser axisTraverser = dtm.getAxisTraverser(this.m_axis);
        String localName = getLocalName();
        String namespace = getNamespace();
        int i = this.m_whatToShow;
        return (-1 == i || localName == "*" || namespace == "*") ? axisTraverser.first(currentNode) : axisTraverser.first(currentNode, dtm.getExpandedTypeID(namespace, localName, NodeTest.getNodeTypeTest(i)));
    }

    @Override // com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public DTMIterator cloneWithReset() throws CloneNotSupportedException {
        DescendantIterator descendantIterator = (DescendantIterator) super.cloneWithReset();
        descendantIterator.m_traverser = this.m_traverser;
        descendantIterator.resetProximityPositions();
        return descendantIterator;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.PredicatedNodeTest, com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.Expression
    public boolean deepEquals(Expression expression) {
        return super.deepEquals(expression) && this.m_axis == ((DescendantIterator) expression).m_axis;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void detach() {
        if (this.m_allowDetach) {
            this.m_traverser = null;
            this.m_extendedTypeID = 0;
            super.detach();
        }
    }

    @Override // com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int getAxis() {
        return this.m_axis;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int nextNode() {
        VariableStack variableStack;
        int i;
        int first;
        if (this.m_foundLast) {
            return -1;
        }
        if (-1 == this.m_lastFetched) {
            resetProximityPositions();
        }
        if (-1 != this.m_stackFrame) {
            variableStack = this.m_execContext.getVarStack();
            i = variableStack.getStackFrame();
            variableStack.setStackFrame(this.m_stackFrame);
        } else {
            variableStack = null;
            i = 0;
        }
        do {
            try {
                int i2 = this.m_extendedTypeID;
                if (i2 == 0) {
                    int i3 = this.m_lastFetched;
                    first = -1 == i3 ? this.m_traverser.first(this.m_context) : this.m_traverser.next(this.m_context, i3);
                    this.m_lastFetched = first;
                } else {
                    int i4 = this.m_lastFetched;
                    first = -1 == i4 ? this.m_traverser.first(this.m_context, i2) : this.m_traverser.next(this.m_context, i4, i2);
                    this.m_lastFetched = first;
                }
                if (-1 == first || 1 == acceptNode(first)) {
                    break;
                }
            } finally {
                if (-1 != this.m_stackFrame) {
                    variableStack.setStackFrame(i);
                }
            }
        } while (first != -1);
        if (-1 != first) {
            this.m_pos++;
            return first;
        }
        this.m_foundLast = true;
        if (-1 != this.m_stackFrame) {
            variableStack.setStackFrame(i);
        }
        return -1;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void setRoot(int i, Object obj) {
        super.setRoot(i, obj);
        this.m_traverser = this.m_cdtm.getAxisTraverser(this.m_axis);
        String localName = getLocalName();
        String namespace = getNamespace();
        int i2 = this.m_whatToShow;
        if (-1 == i2 || "*".equals(localName) || "*".equals(namespace)) {
            this.m_extendedTypeID = 0;
        } else {
            this.m_extendedTypeID = this.m_cdtm.getExpandedTypeID(namespace, localName, NodeTest.getNodeTypeTest(i2));
        }
    }

    public DescendantIterator() {
        super(null);
        this.m_axis = 18;
        initNodeTest(-1);
    }
}
