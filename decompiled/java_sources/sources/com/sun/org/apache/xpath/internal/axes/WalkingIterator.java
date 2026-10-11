package com.sun.org.apache.xpath.internal.axes;

import com.sun.org.apache.xml.internal.utils.PrefixResolver;
import com.sun.org.apache.xpath.internal.Expression;
import com.sun.org.apache.xpath.internal.ExpressionOwner;
import com.sun.org.apache.xpath.internal.VariableStack;
import com.sun.org.apache.xpath.internal.XPathVisitor;
import com.sun.org.apache.xpath.internal.compiler.Compiler;
import com.sun.org.apache.xpath.internal.compiler.OpMap;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class WalkingIterator extends LocPathIterator implements ExpressionOwner {
    static final long serialVersionUID = 9110225941815665906L;
    protected AxesWalker m_firstWalker;
    protected AxesWalker m_lastUsedWalker;

    public WalkingIterator(Compiler compiler, int i, int i2, boolean z) throws TransformerException {
        super(compiler, i, i2, z);
        int firstChildPos = OpMap.getFirstChildPos(i);
        if (z) {
            AxesWalker loadWalkers = WalkerFactory.loadWalkers(this, compiler, firstChildPos, 0);
            this.m_firstWalker = loadWalkers;
            this.m_lastUsedWalker = loadWalkers;
        }
    }

    @Override // com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.XPathVisitable
    public void callVisitors(ExpressionOwner expressionOwner, XPathVisitor xPathVisitor) {
        AxesWalker axesWalker;
        if (!xPathVisitor.visitLocationPath(expressionOwner, this) || (axesWalker = this.m_firstWalker) == null) {
            return;
        }
        axesWalker.callVisitors(this, xPathVisitor);
    }

    @Override // com.sun.org.apache.xpath.internal.axes.PredicatedNodeTest
    public Object clone() throws CloneNotSupportedException {
        WalkingIterator walkingIterator = (WalkingIterator) super.clone();
        AxesWalker axesWalker = this.m_firstWalker;
        if (axesWalker != null) {
            walkingIterator.m_firstWalker = axesWalker.cloneDeep(walkingIterator, null);
        }
        return walkingIterator;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.PredicatedNodeTest, com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.Expression
    public boolean deepEquals(Expression expression) {
        if (!super.deepEquals(expression)) {
            return false;
        }
        AxesWalker axesWalker = this.m_firstWalker;
        AxesWalker axesWalker2 = ((WalkingIterator) expression).m_firstWalker;
        while (axesWalker != null && axesWalker2 != null) {
            if (!axesWalker.deepEquals(axesWalker2)) {
                return false;
            }
            axesWalker = axesWalker.getNextWalker();
            axesWalker2 = axesWalker2.getNextWalker();
        }
        return axesWalker == null && axesWalker2 == null;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void detach() {
        if (this.m_allowDetach) {
            for (AxesWalker axesWalker = this.m_firstWalker; axesWalker != null; axesWalker = axesWalker.getNextWalker()) {
                axesWalker.detach();
            }
            this.m_lastUsedWalker = null;
            super.detach();
        }
    }

    @Override // com.sun.org.apache.xpath.internal.axes.PredicatedNodeTest, com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.Expression
    public void fixupVariables(Vector vector, int i) {
        this.m_predicateIndex = -1;
        for (AxesWalker axesWalker = this.m_firstWalker; axesWalker != null; axesWalker = axesWalker.getNextWalker()) {
            axesWalker.fixupVariables(vector, i);
        }
    }

    @Override // com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xpath.internal.axes.PathComponent
    public int getAnalysisBits() {
        AxesWalker axesWalker = this.m_firstWalker;
        int i = 0;
        if (axesWalker != null) {
            while (axesWalker != null) {
                i |= axesWalker.getAnalysisBits();
                axesWalker = axesWalker.getNextWalker();
            }
        }
        return i;
    }

    @Override // com.sun.org.apache.xpath.internal.ExpressionOwner
    public Expression getExpression() {
        return this.m_firstWalker;
    }

    public final AxesWalker getFirstWalker() {
        return this.m_firstWalker;
    }

    public final AxesWalker getLastUsedWalker() {
        return this.m_lastUsedWalker;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int nextNode() {
        if (this.m_foundLast) {
            return -1;
        }
        if (-1 == this.m_stackFrame) {
            return returnNextNode(this.m_firstWalker.nextNode());
        }
        VariableStack varStack = this.m_execContext.getVarStack();
        int stackFrame = varStack.getStackFrame();
        varStack.setStackFrame(this.m_stackFrame);
        int returnNextNode = returnNextNode(this.m_firstWalker.nextNode());
        varStack.setStackFrame(stackFrame);
        return returnNextNode;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void reset() {
        super.reset();
        AxesWalker axesWalker = this.m_firstWalker;
        if (axesWalker != null) {
            this.m_lastUsedWalker = axesWalker;
            axesWalker.setRoot(this.m_context);
        }
    }

    @Override // com.sun.org.apache.xpath.internal.ExpressionOwner
    public void setExpression(Expression expression) {
        expression.exprSetParent(this);
        this.m_firstWalker = (AxesWalker) expression;
    }

    public final void setFirstWalker(AxesWalker axesWalker) {
        this.m_firstWalker = axesWalker;
    }

    public final void setLastUsedWalker(AxesWalker axesWalker) {
        this.m_lastUsedWalker = axesWalker;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void setRoot(int i, Object obj) {
        super.setRoot(i, obj);
        AxesWalker axesWalker = this.m_firstWalker;
        if (axesWalker != null) {
            axesWalker.setRoot(i);
            this.m_lastUsedWalker = this.m_firstWalker;
        }
    }

    public WalkingIterator(PrefixResolver prefixResolver) {
        super(prefixResolver);
    }
}
