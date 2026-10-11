package com.sun.org.apache.xpath.internal.axes;

import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.patterns.NodeTest;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class UnionChildIterator extends ChildTestIterator {
    static final long serialVersionUID = 3500298482193003495L;
    private PredicatedNodeTest[] m_nodeTests;

    public UnionChildIterator() {
        super(null);
        this.m_nodeTests = null;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.PredicatedNodeTest
    public short acceptNode(int i) {
        XPathContext xPathContext = getXPathContext();
        try {
            try {
                xPathContext.pushCurrentNode(i);
                int i2 = 0;
                while (true) {
                    PredicatedNodeTest[] predicatedNodeTestArr = this.m_nodeTests;
                    if (i2 >= predicatedNodeTestArr.length) {
                        xPathContext.popCurrentNode();
                        return (short) 3;
                    }
                    PredicatedNodeTest predicatedNodeTest = predicatedNodeTestArr[i2];
                    if (predicatedNodeTest.execute(xPathContext, i) != NodeTest.SCORE_NONE) {
                        if (predicatedNodeTest.getPredicateCount() <= 0) {
                            return (short) 1;
                        }
                        if (predicatedNodeTest.executePredicates(i, xPathContext)) {
                            return (short) 1;
                        }
                    }
                    i2++;
                }
            } catch (TransformerException e) {
                throw new RuntimeException(e.getMessage());
            }
        } finally {
            xPathContext.popCurrentNode();
        }
    }

    public void addNodeTest(PredicatedNodeTest predicatedNodeTest) {
        PredicatedNodeTest[] predicatedNodeTestArr = this.m_nodeTests;
        if (predicatedNodeTestArr == null) {
            this.m_nodeTests = r0;
            PredicatedNodeTest[] predicatedNodeTestArr2 = {predicatedNodeTest};
        } else {
            int length = predicatedNodeTestArr.length;
            PredicatedNodeTest[] predicatedNodeTestArr3 = new PredicatedNodeTest[length + 1];
            this.m_nodeTests = predicatedNodeTestArr3;
            System.arraycopy(predicatedNodeTestArr, 0, predicatedNodeTestArr3, 0, length);
            this.m_nodeTests[length] = predicatedNodeTest;
        }
        predicatedNodeTest.exprSetParent(this);
    }

    @Override // com.sun.org.apache.xpath.internal.axes.PredicatedNodeTest, com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.Expression
    public void fixupVariables(Vector vector, int i) {
        super.fixupVariables(vector, i);
        if (this.m_nodeTests == null) {
            return;
        }
        int i2 = 0;
        while (true) {
            PredicatedNodeTest[] predicatedNodeTestArr = this.m_nodeTests;
            if (i2 >= predicatedNodeTestArr.length) {
                return;
            }
            predicatedNodeTestArr[i2].fixupVariables(vector, i);
            i2++;
        }
    }
}
