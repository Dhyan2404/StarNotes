package com.sun.org.apache.xpath.internal.patterns;

import com.sun.org.apache.xpath.internal.Expression;
import com.sun.org.apache.xpath.internal.ExpressionOwner;
import com.sun.org.apache.xpath.internal.XPathVisitor;
import java.util.Vector;

/* loaded from: classes10.dex */
public class FunctionPattern extends StepPattern {
    static final long serialVersionUID = -5426793413091209944L;
    Expression m_functionExpr;

    /* loaded from: classes10.dex */
    public class FunctionOwner implements ExpressionOwner {
        public FunctionOwner() {
        }

        @Override // com.sun.org.apache.xpath.internal.ExpressionOwner
        public Expression getExpression() {
            return FunctionPattern.this.m_functionExpr;
        }

        @Override // com.sun.org.apache.xpath.internal.ExpressionOwner
        public void setExpression(Expression expression) {
            expression.exprSetParent(FunctionPattern.this);
            FunctionPattern.this.m_functionExpr = expression;
        }
    }

    public FunctionPattern(Expression expression, int i, int i2) {
        super(0, null, null, i, i2);
        this.m_functionExpr = expression;
    }

    @Override // com.sun.org.apache.xpath.internal.patterns.StepPattern, com.sun.org.apache.xpath.internal.patterns.NodeTest
    public final void calcScore() {
        this.m_score = NodeTest.SCORE_OTHER;
        if (this.m_targetString == null) {
            calcTargetString();
        }
    }

    @Override // com.sun.org.apache.xpath.internal.patterns.StepPattern
    public void callSubtreeVisitors(XPathVisitor xPathVisitor) {
        this.m_functionExpr.callVisitors(new FunctionOwner(), xPathVisitor);
        super.callSubtreeVisitors(xPathVisitor);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0016, code lost:
    
        r3 = com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_NONE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x001c, code lost:
    
        r2.detach();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x001f, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0008, code lost:
    
        if (r2 != null) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x000a, code lost:
    
        r0 = r2.nextNode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000f, code lost:
    
        if ((-1) == r0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
    
        if (r0 != r4) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0013, code lost:
    
        r3 = com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_OTHER;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001a, code lost:
    
        if (r3 != com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_OTHER) goto L15;
     */
    @Override // com.sun.org.apache.xpath.internal.patterns.StepPattern, com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.Expression
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sun.org.apache.xpath.internal.objects.XObject execute(com.sun.org.apache.xpath.internal.XPathContext r3, int r4) throws javax.xml.transform.TransformerException {
        /*
            r2 = this;
            com.sun.org.apache.xpath.internal.Expression r2 = r2.m_functionExpr
            com.sun.org.apache.xml.internal.dtm.DTMIterator r2 = r2.asIterator(r3, r4)
            com.sun.org.apache.xpath.internal.objects.XNumber r3 = com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_NONE
            if (r2 == 0) goto L1c
        La:
            int r0 = r2.nextNode()
            r1 = -1
            if (r1 == r0) goto L1c
            if (r0 != r4) goto L16
            com.sun.org.apache.xpath.internal.objects.XNumber r3 = com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_OTHER
            goto L18
        L16:
            com.sun.org.apache.xpath.internal.objects.XNumber r3 = com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_NONE
        L18:
            com.sun.org.apache.xpath.internal.objects.XNumber r0 = com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_OTHER
            if (r3 != r0) goto La
        L1c:
            r2.detach()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xpath.internal.patterns.FunctionPattern.execute(com.sun.org.apache.xpath.internal.XPathContext, int):com.sun.org.apache.xpath.internal.objects.XObject");
    }

    @Override // com.sun.org.apache.xpath.internal.patterns.StepPattern, com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.Expression
    public void fixupVariables(Vector vector, int i) {
        super.fixupVariables(vector, i);
        this.m_functionExpr.fixupVariables(vector, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001c, code lost:
    
        r0.detach();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0016, code lost:
    
        r1 = com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_NONE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x001f, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0008, code lost:
    
        if (r0 != null) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x000a, code lost:
    
        r3 = r0.nextNode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000f, code lost:
    
        if ((-1) == r3) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
    
        if (r3 != r2) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0013, code lost:
    
        r1 = com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_OTHER;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001a, code lost:
    
        if (r1 != com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_OTHER) goto L15;
     */
    @Override // com.sun.org.apache.xpath.internal.patterns.StepPattern, com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.Expression
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sun.org.apache.xpath.internal.objects.XObject execute(com.sun.org.apache.xpath.internal.XPathContext r1, int r2, com.sun.org.apache.xml.internal.dtm.DTM r3, int r4) throws javax.xml.transform.TransformerException {
        /*
            r0 = this;
            com.sun.org.apache.xpath.internal.Expression r0 = r0.m_functionExpr
            com.sun.org.apache.xml.internal.dtm.DTMIterator r0 = r0.asIterator(r1, r2)
            com.sun.org.apache.xpath.internal.objects.XNumber r1 = com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_NONE
            if (r0 == 0) goto L1f
        La:
            int r3 = r0.nextNode()
            r4 = -1
            if (r4 == r3) goto L1c
            if (r3 != r2) goto L16
            com.sun.org.apache.xpath.internal.objects.XNumber r1 = com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_OTHER
            goto L18
        L16:
            com.sun.org.apache.xpath.internal.objects.XNumber r1 = com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_NONE
        L18:
            com.sun.org.apache.xpath.internal.objects.XNumber r3 = com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_OTHER
            if (r1 != r3) goto La
        L1c:
            r0.detach()
        L1f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xpath.internal.patterns.FunctionPattern.execute(com.sun.org.apache.xpath.internal.XPathContext, int, com.sun.org.apache.xml.internal.dtm.DTM, int):com.sun.org.apache.xpath.internal.objects.XObject");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0020, code lost:
    
        r3.detach();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001a, code lost:
    
        r4 = com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_NONE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0023, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x000c, code lost:
    
        if (r3 != null) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x000e, code lost:
    
        r1 = r3.nextNode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0013, code lost:
    
        if ((-1) == r1) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
    
        if (r1 != r0) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0017, code lost:
    
        r4 = com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_OTHER;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
    
        if (r4 != com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_OTHER) goto L15;
     */
    @Override // com.sun.org.apache.xpath.internal.patterns.StepPattern, com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.Expression
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sun.org.apache.xpath.internal.objects.XObject execute(com.sun.org.apache.xpath.internal.XPathContext r4) throws javax.xml.transform.TransformerException {
        /*
            r3 = this;
            int r0 = r4.getCurrentNode()
            com.sun.org.apache.xpath.internal.Expression r3 = r3.m_functionExpr
            com.sun.org.apache.xml.internal.dtm.DTMIterator r3 = r3.asIterator(r4, r0)
            com.sun.org.apache.xpath.internal.objects.XNumber r4 = com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_NONE
            if (r3 == 0) goto L23
        Le:
            int r1 = r3.nextNode()
            r2 = -1
            if (r2 == r1) goto L20
            if (r1 != r0) goto L1a
            com.sun.org.apache.xpath.internal.objects.XNumber r4 = com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_OTHER
            goto L1c
        L1a:
            com.sun.org.apache.xpath.internal.objects.XNumber r4 = com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_NONE
        L1c:
            com.sun.org.apache.xpath.internal.objects.XNumber r1 = com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_OTHER
            if (r4 != r1) goto Le
        L20:
            r3.detach()
        L23:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xpath.internal.patterns.FunctionPattern.execute(com.sun.org.apache.xpath.internal.XPathContext):com.sun.org.apache.xpath.internal.objects.XObject");
    }
}
