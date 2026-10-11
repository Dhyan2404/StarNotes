package com.sun.org.apache.xpath.internal.patterns;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xml.internal.dtm.Axis;
import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser;
import com.sun.org.apache.xpath.internal.Expression;
import com.sun.org.apache.xpath.internal.ExpressionOwner;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.XPathVisitor;
import com.sun.org.apache.xpath.internal.axes.SubContextList;
import com.sun.org.apache.xpath.internal.compiler.PsuedoNames;
import com.sun.org.apache.xpath.internal.objects.XNumber;
import com.sun.org.apache.xpath.internal.objects.XObject;
import java.util.Vector;
import javax.xml.transform.TransformerException;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes10.dex */
public class StepPattern extends NodeTest implements SubContextList, ExpressionOwner {
    private static final boolean DEBUG_MATCHES = false;
    static final long serialVersionUID = 9071668960168152644L;
    protected int m_axis;
    Expression[] m_predicates;
    StepPattern m_relativePathPattern;
    String m_targetString;

    /* loaded from: classes10.dex */
    public class PredOwner implements ExpressionOwner {
        int m_index;

        public PredOwner(int i) {
            this.m_index = i;
        }

        @Override // com.sun.org.apache.xpath.internal.ExpressionOwner
        public Expression getExpression() {
            return StepPattern.this.m_predicates[this.m_index];
        }

        @Override // com.sun.org.apache.xpath.internal.ExpressionOwner
        public void setExpression(Expression expression) {
            expression.exprSetParent(StepPattern.this);
            StepPattern.this.m_predicates[this.m_index] = expression;
        }
    }

    public StepPattern(int i, String str, String str2, int i2, int i3) {
        super(i, str, str2);
        this.m_axis = i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0050, code lost:
    
        throw new java.lang.Error("Why: Should never have been called");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean checkProximityPosition(com.sun.org.apache.xpath.internal.XPathContext r8, int r9, com.sun.org.apache.xml.internal.dtm.DTM r10, int r11, int r12) {
        /*
            r7 = this;
            r0 = 12
            com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser r10 = r10.getAxisTraverser(r0)     // Catch: javax.xml.transform.TransformerException -> L7f
            int r0 = r10.first(r11)     // Catch: javax.xml.transform.TransformerException -> L7f
        La:
            r1 = -1
            r2 = 0
            r3 = 1
            if (r1 == r0) goto L7b
            r8.pushCurrentNode(r0)     // Catch: java.lang.Throwable -> L76
            com.sun.org.apache.xpath.internal.objects.XNumber r1 = com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_NONE     // Catch: java.lang.Throwable -> L76
            com.sun.org.apache.xpath.internal.objects.XObject r4 = super.execute(r8, r0)     // Catch: java.lang.Throwable -> L76
            if (r1 == r4) goto L6e
            r8.pushSubContextList(r7)     // Catch: java.lang.Throwable -> L69
            r1 = r2
        L1e:
            if (r1 >= r9) goto L5b
            r8.pushPredicatePos(r1)     // Catch: java.lang.Throwable -> L69
            com.sun.org.apache.xpath.internal.Expression[] r4 = r7.m_predicates     // Catch: java.lang.Throwable -> L56
            r4 = r4[r1]     // Catch: java.lang.Throwable -> L56
            com.sun.org.apache.xpath.internal.objects.XObject r4 = r4.execute(r8)     // Catch: java.lang.Throwable -> L56
            int r5 = r4.getType()     // Catch: java.lang.Throwable -> L51
            r6 = 2
            if (r6 == r5) goto L49
            boolean r5 = r4.boolWithSideEffects()     // Catch: java.lang.Throwable -> L51
            if (r5 != 0) goto L40
            r4.detach()     // Catch: java.lang.Throwable -> L56
            r8.popPredicatePos()     // Catch: java.lang.Throwable -> L69
            r1 = r2
            goto L5c
        L40:
            r4.detach()     // Catch: java.lang.Throwable -> L56
            r8.popPredicatePos()     // Catch: java.lang.Throwable -> L69
            int r1 = r1 + 1
            goto L1e
        L49:
            java.lang.Error r7 = new java.lang.Error     // Catch: java.lang.Throwable -> L51
            java.lang.String r9 = "Why: Should never have been called"
            r7.<init>(r9)     // Catch: java.lang.Throwable -> L51
            throw r7     // Catch: java.lang.Throwable -> L51
        L51:
            r7 = move-exception
            r4.detach()     // Catch: java.lang.Throwable -> L56
            throw r7     // Catch: java.lang.Throwable -> L56
        L56:
            r7 = move-exception
            r8.popPredicatePos()     // Catch: java.lang.Throwable -> L69
            throw r7     // Catch: java.lang.Throwable -> L69
        L5b:
            r1 = r3
        L5c:
            r8.popSubContextList()     // Catch: java.lang.Throwable -> L76
            if (r1 == 0) goto L63
            int r12 = r12 + (-1)
        L63:
            if (r12 >= r3) goto L6e
            r8.popCurrentNode()     // Catch: javax.xml.transform.TransformerException -> L7f
            return r2
        L69:
            r7 = move-exception
            r8.popSubContextList()     // Catch: java.lang.Throwable -> L76
            throw r7     // Catch: java.lang.Throwable -> L76
        L6e:
            r8.popCurrentNode()     // Catch: javax.xml.transform.TransformerException -> L7f
            int r0 = r10.next(r11, r0)     // Catch: javax.xml.transform.TransformerException -> L7f
            goto La
        L76:
            r7 = move-exception
            r8.popCurrentNode()     // Catch: javax.xml.transform.TransformerException -> L7f
            throw r7     // Catch: javax.xml.transform.TransformerException -> L7f
        L7b:
            if (r12 != r3) goto L7e
            r2 = r3
        L7e:
            return r2
        L7f:
            r7 = move-exception
            java.lang.RuntimeException r8 = new java.lang.RuntimeException
            java.lang.String r7 = r7.getMessage()
            r8.<init>(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xpath.internal.patterns.StepPattern.checkProximityPosition(com.sun.org.apache.xpath.internal.XPathContext, int, com.sun.org.apache.xml.internal.dtm.DTM, int, int):boolean");
    }

    private final int getProximityPosition(XPathContext xPathContext, int i, boolean z) {
        boolean z2;
        int currentNode = xPathContext.getCurrentNode();
        DTM dtm = xPathContext.getDTM(currentNode);
        int parent = dtm.getParent(currentNode);
        try {
            DTMAxisTraverser axisTraverser = dtm.getAxisTraverser(3);
            int i2 = 0;
            for (int first = axisTraverser.first(parent); -1 != first; first = axisTraverser.next(parent, first)) {
                try {
                    xPathContext.pushCurrentNode(first);
                    if (NodeTest.SCORE_NONE != super.execute(xPathContext, first)) {
                        try {
                            xPathContext.pushSubContextList(this);
                            for (int i3 = 0; i3 < i; i3++) {
                                xPathContext.pushPredicatePos(i3);
                                try {
                                    XObject execute = this.m_predicates[i3].execute(xPathContext);
                                    try {
                                        if (2 == execute.getType()) {
                                            if (i2 + 1 != ((int) execute.numWithSideEffects())) {
                                                z2 = false;
                                                break;
                                            }
                                        } else {
                                            if (!execute.boolWithSideEffects()) {
                                                z2 = false;
                                                break;
                                            }
                                        }
                                    } finally {
                                    }
                                } finally {
                                }
                            }
                            z2 = true;
                            if (z2) {
                                i2++;
                            }
                            if (!z && first == currentNode) {
                                return i2;
                            }
                        } finally {
                            xPathContext.popSubContextList();
                        }
                    }
                    xPathContext.popCurrentNode();
                } finally {
                    xPathContext.popCurrentNode();
                }
            }
            return i2;
        } catch (TransformerException e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    @Override // com.sun.org.apache.xpath.internal.patterns.NodeTest
    public void calcScore() {
        if (getPredicateCount() > 0 || this.m_relativePathPattern != null) {
            this.m_score = NodeTest.SCORE_OTHER;
        } else {
            super.calcScore();
        }
        if (this.m_targetString == null) {
            calcTargetString();
        }
    }

    public void calcTargetString() {
        int whatToShow = getWhatToShow();
        if (whatToShow == -1) {
            this.m_targetString = "*";
            return;
        }
        if (whatToShow == 1) {
            String str = this.m_name;
            if ("*" == str) {
                this.m_targetString = "*";
                return;
            } else {
                this.m_targetString = str;
                return;
            }
        }
        if (whatToShow == 4 || whatToShow == 8 || whatToShow == 12) {
            this.m_targetString = PsuedoNames.PSEUDONAME_TEXT;
            return;
        }
        if (whatToShow == 128) {
            this.m_targetString = PsuedoNames.PSEUDONAME_COMMENT;
        } else if (whatToShow == 256 || whatToShow == 1280) {
            this.m_targetString = "/";
        } else {
            this.m_targetString = "*";
        }
    }

    public void callSubtreeVisitors(XPathVisitor xPathVisitor) {
        Expression[] expressionArr = this.m_predicates;
        if (expressionArr != null) {
            int length = expressionArr.length;
            for (int i = 0; i < length; i++) {
                PredOwner predOwner = new PredOwner(i);
                if (xPathVisitor.visitPredicate(predOwner, this.m_predicates[i])) {
                    this.m_predicates[i].callVisitors(predOwner, xPathVisitor);
                }
            }
        }
        StepPattern stepPattern = this.m_relativePathPattern;
        if (stepPattern != null) {
            stepPattern.callVisitors(this, xPathVisitor);
        }
    }

    @Override // com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.XPathVisitable
    public void callVisitors(ExpressionOwner expressionOwner, XPathVisitor xPathVisitor) {
        if (xPathVisitor.visitMatchPattern(expressionOwner, this)) {
            callSubtreeVisitors(xPathVisitor);
        }
    }

    @Override // com.sun.org.apache.xpath.internal.Expression
    public boolean canTraverseOutsideSubtree() {
        int predicateCount = getPredicateCount();
        for (int i = 0; i < predicateCount; i++) {
            if (getPredicate(i).canTraverseOutsideSubtree()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.Expression
    public boolean deepEquals(Expression expression) {
        if (!super.deepEquals(expression)) {
            return false;
        }
        StepPattern stepPattern = (StepPattern) expression;
        Expression[] expressionArr = this.m_predicates;
        if (expressionArr != null) {
            int length = expressionArr.length;
            Expression[] expressionArr2 = stepPattern.m_predicates;
            if (expressionArr2 == null || expressionArr2.length != length) {
                return false;
            }
            for (int i = 0; i < length; i++) {
                if (!this.m_predicates[i].deepEquals(stepPattern.m_predicates[i])) {
                    return false;
                }
            }
        } else if (stepPattern.m_predicates != null) {
            return false;
        }
        StepPattern stepPattern2 = this.m_relativePathPattern;
        return stepPattern2 != null ? stepPattern2.deepEquals(stepPattern.m_relativePathPattern) : stepPattern.m_relativePathPattern == null;
    }

    @Override // com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.Expression
    public XObject execute(XPathContext xPathContext, int i) throws TransformerException {
        DTM dtm = xPathContext.getDTM(i);
        if (dtm != null) {
            return execute(xPathContext, i, dtm, dtm.getExpandedTypeID(i));
        }
        return NodeTest.SCORE_NONE;
    }

    public final boolean executePredicates(XPathContext xPathContext, DTM dtm, int i) throws TransformerException {
        int predicateCount = getPredicateCount();
        try {
            xPathContext.pushSubContextList(this);
            boolean z = false;
            for (int i2 = 0; i2 < predicateCount; i2++) {
                xPathContext.pushPredicatePos(i2);
                try {
                    XObject execute = this.m_predicates[i2].execute(xPathContext);
                    try {
                        if (2 == execute.getType()) {
                            int num = (int) execute.num();
                            if (z) {
                                r1 = num == 1;
                            } else if (checkProximityPosition(xPathContext, i2, dtm, i, num)) {
                                z = true;
                            } else {
                                execute.detach();
                            }
                            break;
                        }
                        if (!execute.boolWithSideEffects()) {
                            execute.detach();
                            break;
                        }
                    } finally {
                        execute.detach();
                    }
                } finally {
                    xPathContext.popPredicatePos();
                }
            }
            r1 = true;
            return r1;
        } finally {
            xPathContext.popSubContextList();
        }
    }

    public final XObject executeRelativePathPattern(XPathContext xPathContext, DTM dtm, int i) throws TransformerException {
        XObject xObject = NodeTest.SCORE_NONE;
        DTMAxisTraverser axisTraverser = dtm.getAxisTraverser(this.m_axis);
        int first = axisTraverser.first(i);
        while (true) {
            if (-1 == first) {
                break;
            }
            try {
                xPathContext.pushCurrentNode(first);
                xObject = execute(xPathContext);
                if (xObject != NodeTest.SCORE_NONE) {
                    break;
                }
                xPathContext.popCurrentNode();
                first = axisTraverser.next(i, first);
            } finally {
                xPathContext.popCurrentNode();
            }
        }
        return xObject;
    }

    @Override // com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.Expression
    public void fixupVariables(Vector vector, int i) {
        super.fixupVariables(vector, i);
        if (this.m_predicates != null) {
            int i2 = 0;
            while (true) {
                Expression[] expressionArr = this.m_predicates;
                if (i2 >= expressionArr.length) {
                    break;
                }
                expressionArr[i2].fixupVariables(vector, i);
                i2++;
            }
        }
        StepPattern stepPattern = this.m_relativePathPattern;
        if (stepPattern != null) {
            stepPattern.fixupVariables(vector, i);
        }
    }

    public int getAxis() {
        return this.m_axis;
    }

    @Override // com.sun.org.apache.xpath.internal.ExpressionOwner
    public Expression getExpression() {
        return this.m_relativePathPattern;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.SubContextList
    public int getLastPos(XPathContext xPathContext) {
        return getProximityPosition(xPathContext, xPathContext.getPredicatePos(), true);
    }

    public double getMatchScore(XPathContext xPathContext, int i) throws TransformerException {
        xPathContext.pushCurrentNode(i);
        xPathContext.pushCurrentExpressionNode(i);
        try {
            return execute(xPathContext).num();
        } finally {
            xPathContext.popCurrentNode();
            xPathContext.popCurrentExpressionNode();
        }
    }

    public Expression getPredicate(int i) {
        return this.m_predicates[i];
    }

    public final int getPredicateCount() {
        Expression[] expressionArr = this.m_predicates;
        if (expressionArr == null) {
            return 0;
        }
        return expressionArr.length;
    }

    public Expression[] getPredicates() {
        return this.m_predicates;
    }

    public StepPattern getRelativePathPattern() {
        return this.m_relativePathPattern;
    }

    public String getTargetString() {
        return this.m_targetString;
    }

    public void setAxis(int i) {
        this.m_axis = i;
    }

    @Override // com.sun.org.apache.xpath.internal.ExpressionOwner
    public void setExpression(Expression expression) {
        expression.exprSetParent(this);
        this.m_relativePathPattern = (StepPattern) expression;
    }

    public void setPredicates(Expression[] expressionArr) {
        this.m_predicates = expressionArr;
        if (expressionArr != null) {
            for (Expression expression : expressionArr) {
                expression.exprSetParent(this);
            }
        }
        calcScore();
    }

    public void setRelativePathPattern(StepPattern stepPattern) {
        this.m_relativePathPattern = stepPattern;
        stepPattern.exprSetParent(this);
        calcScore();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (StepPattern stepPattern = this; stepPattern != null; stepPattern = stepPattern.m_relativePathPattern) {
            if (stepPattern != this) {
                stringBuffer.append("/");
            }
            stringBuffer.append(Axis.getNames(stepPattern.m_axis));
            stringBuffer.append("::");
            int i = stepPattern.m_whatToShow;
            if (20480 == i) {
                stringBuffer.append("doc()");
            } else if (65536 == i) {
                stringBuffer.append("function()");
            } else if (-1 == i) {
                stringBuffer.append("node()");
            } else if (4 == i) {
                stringBuffer.append("text()");
            } else if (64 == i) {
                stringBuffer.append("processing-instruction(");
                String str = stepPattern.m_name;
                if (str != null) {
                    stringBuffer.append(str);
                }
                stringBuffer.append(MotionUtils.f31762d);
            } else if (128 == i) {
                stringBuffer.append("comment()");
            } else if (stepPattern.m_name != null) {
                if (2 == i) {
                    stringBuffer.append("@");
                }
                if (stepPattern.m_namespace != null) {
                    stringBuffer.append("{");
                    stringBuffer.append(stepPattern.m_namespace);
                    stringBuffer.append("}");
                }
                stringBuffer.append(stepPattern.m_name);
            } else if (2 == i) {
                stringBuffer.append("@");
            } else if (1280 == i) {
                stringBuffer.append("doc-root()");
            } else {
                stringBuffer.append("?" + Integer.toHexString(stepPattern.m_whatToShow));
            }
            if (stepPattern.m_predicates != null) {
                for (int i2 = 0; i2 < stepPattern.m_predicates.length; i2++) {
                    stringBuffer.append(IteratorUtils.f104923a);
                    stringBuffer.append(stepPattern.m_predicates[i2]);
                    stringBuffer.append(IteratorUtils.f104924b);
                }
            }
        }
        return stringBuffer.toString();
    }

    public StepPattern(int i, int i2, int i3) {
        super(i);
        this.m_axis = i2;
    }

    @Override // com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.Expression
    public XObject execute(XPathContext xPathContext) throws TransformerException {
        return execute(xPathContext, xPathContext.getCurrentNode());
    }

    @Override // com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.Expression
    public XObject execute(XPathContext xPathContext, int i, DTM dtm, int i2) throws TransformerException {
        if (this.m_whatToShow == 65536) {
            StepPattern stepPattern = this.m_relativePathPattern;
            if (stepPattern != null) {
                return stepPattern.execute(xPathContext);
            }
            return NodeTest.SCORE_NONE;
        }
        XObject execute = super.execute(xPathContext, i, dtm, i2);
        XNumber xNumber = NodeTest.SCORE_NONE;
        if (execute == xNumber) {
            return xNumber;
        }
        if (getPredicateCount() != 0 && !executePredicates(xPathContext, dtm, i)) {
            return xNumber;
        }
        StepPattern stepPattern2 = this.m_relativePathPattern;
        return stepPattern2 != null ? stepPattern2.executeRelativePathPattern(xPathContext, dtm, i) : execute;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.SubContextList
    public int getProximityPosition(XPathContext xPathContext) {
        return getProximityPosition(xPathContext, xPathContext.getPredicatePos(), false);
    }
}
