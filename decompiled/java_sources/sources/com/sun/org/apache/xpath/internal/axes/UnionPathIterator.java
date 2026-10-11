package com.sun.org.apache.xpath.internal.axes;

import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.utils.WrappedRuntimeException;
import com.sun.org.apache.xpath.internal.Expression;
import com.sun.org.apache.xpath.internal.ExpressionOwner;
import com.sun.org.apache.xpath.internal.XPathVisitor;
import com.sun.org.apache.xpath.internal.compiler.Compiler;
import com.sun.org.apache.xpath.internal.compiler.OpMap;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class UnionPathIterator extends LocPathIterator implements Cloneable, DTMIterator, Serializable, PathComponent {
    static final long serialVersionUID = -3910351546843826781L;
    protected LocPathIterator[] m_exprs;
    protected DTMIterator[] m_iterators;

    /* loaded from: classes10.dex */
    public class iterOwner implements ExpressionOwner {
        int m_index;

        public iterOwner(int i) {
            this.m_index = i;
        }

        @Override // com.sun.org.apache.xpath.internal.ExpressionOwner
        public Expression getExpression() {
            return UnionPathIterator.this.m_exprs[this.m_index];
        }

        @Override // com.sun.org.apache.xpath.internal.ExpressionOwner
        public void setExpression(Expression expression) {
            Expression expression2;
            if (expression instanceof LocPathIterator) {
                expression.exprSetParent(UnionPathIterator.this);
                expression2 = expression;
            } else {
                WalkingIterator walkingIterator = new WalkingIterator(UnionPathIterator.this.getPrefixResolver());
                FilterExprWalker filterExprWalker = new FilterExprWalker(walkingIterator);
                walkingIterator.setFirstWalker(filterExprWalker);
                filterExprWalker.setInnerExpression(expression);
                walkingIterator.exprSetParent(UnionPathIterator.this);
                filterExprWalker.exprSetParent(walkingIterator);
                expression.exprSetParent(filterExprWalker);
                expression2 = walkingIterator;
            }
            UnionPathIterator.this.m_exprs[this.m_index] = (LocPathIterator) expression2;
        }
    }

    public UnionPathIterator() {
        this.m_iterators = null;
        this.m_exprs = null;
    }

    public static LocPathIterator createUnionIterator(Compiler compiler, int i) throws TransformerException {
        boolean z;
        UnionPathIterator unionPathIterator = new UnionPathIterator(compiler, i);
        int length = unionPathIterator.m_exprs.length;
        for (int i2 = 0; i2 < length; i2++) {
            LocPathIterator locPathIterator = unionPathIterator.m_exprs[i2];
            if (locPathIterator.getAxis() != 3 || HasPositionalPredChecker.check(locPathIterator)) {
                z = false;
                break;
            }
        }
        z = true;
        if (!z) {
            return unionPathIterator;
        }
        UnionChildIterator unionChildIterator = new UnionChildIterator();
        for (int i3 = 0; i3 < length; i3++) {
            unionChildIterator.addNodeTest(unionPathIterator.m_exprs[i3]);
        }
        return unionChildIterator;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, TransformerException {
        try {
            objectInputStream.defaultReadObject();
            this.m_clones = new IteratorPool(this);
        } catch (ClassNotFoundException e) {
            throw new TransformerException(e);
        }
    }

    public void addIterator(DTMIterator dTMIterator) {
        DTMIterator[] dTMIteratorArr = this.m_iterators;
        if (dTMIteratorArr == null) {
            this.m_iterators = r0;
            DTMIterator[] dTMIteratorArr2 = {dTMIterator};
        } else {
            int length = dTMIteratorArr.length;
            DTMIterator[] dTMIteratorArr3 = new DTMIterator[length + 1];
            this.m_iterators = dTMIteratorArr3;
            System.arraycopy(dTMIteratorArr, 0, dTMIteratorArr3, 0, length);
            this.m_iterators[length] = dTMIterator;
        }
        dTMIterator.nextNode();
        if (dTMIterator instanceof Expression) {
            ((Expression) dTMIterator).exprSetParent(this);
        }
    }

    @Override // com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.XPathVisitable
    public void callVisitors(ExpressionOwner expressionOwner, XPathVisitor xPathVisitor) {
        LocPathIterator[] locPathIteratorArr;
        if (!xPathVisitor.visitUnionPath(expressionOwner, this) || (locPathIteratorArr = this.m_exprs) == null) {
            return;
        }
        int length = locPathIteratorArr.length;
        for (int i = 0; i < length; i++) {
            this.m_exprs[i].callVisitors(new iterOwner(i), xPathVisitor);
        }
    }

    @Override // com.sun.org.apache.xpath.internal.axes.PredicatedNodeTest
    public Object clone() throws CloneNotSupportedException {
        UnionPathIterator unionPathIterator = (UnionPathIterator) super.clone();
        DTMIterator[] dTMIteratorArr = this.m_iterators;
        if (dTMIteratorArr != null) {
            int length = dTMIteratorArr.length;
            unionPathIterator.m_iterators = new DTMIterator[length];
            for (int i = 0; i < length; i++) {
                unionPathIterator.m_iterators[i] = (DTMIterator) this.m_iterators[i].clone();
            }
        }
        return unionPathIterator;
    }

    public LocPathIterator createDTMIterator(Compiler compiler, int i) throws TransformerException {
        return (LocPathIterator) WalkerFactory.newDTMIterator(compiler, i, compiler.getLocationPathDepth() <= 0);
    }

    @Override // com.sun.org.apache.xpath.internal.axes.PredicatedNodeTest, com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.Expression
    public boolean deepEquals(Expression expression) {
        if (!super.deepEquals(expression)) {
            return false;
        }
        UnionPathIterator unionPathIterator = (UnionPathIterator) expression;
        LocPathIterator[] locPathIteratorArr = this.m_exprs;
        if (locPathIteratorArr == null) {
            return unionPathIterator.m_exprs == null;
        }
        int length = locPathIteratorArr.length;
        LocPathIterator[] locPathIteratorArr2 = unionPathIterator.m_exprs;
        if (locPathIteratorArr2 == null || locPathIteratorArr2.length != length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (!this.m_exprs[i].deepEquals(unionPathIterator.m_exprs[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void detach() {
        DTMIterator[] dTMIteratorArr;
        if (!this.m_allowDetach || (dTMIteratorArr = this.m_iterators) == null) {
            return;
        }
        int length = dTMIteratorArr.length;
        for (int i = 0; i < length; i++) {
            this.m_iterators[i].detach();
        }
        this.m_iterators = null;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.PredicatedNodeTest, com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.Expression
    public void fixupVariables(Vector vector, int i) {
        int i2 = 0;
        while (true) {
            LocPathIterator[] locPathIteratorArr = this.m_exprs;
            if (i2 >= locPathIteratorArr.length) {
                return;
            }
            locPathIteratorArr[i2].fixupVariables(vector, i);
            i2++;
        }
    }

    @Override // com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xpath.internal.axes.PathComponent
    public int getAnalysisBits() {
        LocPathIterator[] locPathIteratorArr = this.m_exprs;
        if (locPathIteratorArr == null) {
            return 0;
        }
        int length = locPathIteratorArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            i |= this.m_exprs[i2].getAnalysisBits();
        }
        return i;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int getAxis() {
        return -1;
    }

    public void loadLocationPaths(Compiler compiler, int i, int i2) throws TransformerException {
        int op = compiler.getOp(i);
        if (op == 28) {
            loadLocationPaths(compiler, compiler.getNextOpPos(i), i2 + 1);
            this.m_exprs[i2] = createDTMIterator(compiler, i);
            this.m_exprs[i2].exprSetParent(this);
            return;
        }
        switch (op) {
            case 22:
            case 23:
            case 24:
            case 25:
                loadLocationPaths(compiler, compiler.getNextOpPos(i), i2 + 1);
                WalkingIterator walkingIterator = new WalkingIterator(compiler.getNamespaceContext());
                walkingIterator.exprSetParent(this);
                if (compiler.getLocationPathDepth() <= 0) {
                    walkingIterator.setIsTopLevel(true);
                }
                FilterExprWalker filterExprWalker = new FilterExprWalker(walkingIterator);
                walkingIterator.m_firstWalker = filterExprWalker;
                filterExprWalker.init(compiler, i, op);
                this.m_exprs[i2] = walkingIterator;
                return;
            default:
                this.m_exprs = new LocPathIterator[i2];
                return;
        }
    }

    @Override // com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int nextNode() {
        int i = -1;
        if (this.m_foundLast) {
            return -1;
        }
        DTMIterator[] dTMIteratorArr = this.m_iterators;
        if (dTMIteratorArr != null) {
            int length = dTMIteratorArr.length;
            int i2 = -1;
            int i3 = -1;
            for (int i4 = 0; i4 < length; i4++) {
                int currentNode = this.m_iterators[i4].getCurrentNode();
                if (-1 != currentNode) {
                    if (-1 != i2) {
                        if (currentNode == i2) {
                            this.m_iterators[i4].nextNode();
                        } else if (!getDTM(currentNode).isNodeAfter(currentNode, i2)) {
                        }
                    }
                    i3 = i4;
                    i2 = currentNode;
                }
            }
            if (-1 != i2) {
                this.m_iterators[i3].nextNode();
                incrementCurrentPos();
            } else {
                this.m_foundLast = true;
            }
            i = i2;
        }
        this.m_lastFetched = i;
        return i;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.LocPathIterator, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void setRoot(int i, Object obj) {
        super.setRoot(i, obj);
        try {
            LocPathIterator[] locPathIteratorArr = this.m_exprs;
            if (locPathIteratorArr != null) {
                int length = locPathIteratorArr.length;
                DTMIterator[] dTMIteratorArr = new DTMIterator[length];
                for (int i2 = 0; i2 < length; i2++) {
                    DTMIterator asIterator = this.m_exprs[i2].asIterator(this.m_execContext, i);
                    dTMIteratorArr[i2] = asIterator;
                    asIterator.nextNode();
                }
                this.m_iterators = dTMIteratorArr;
            }
        } catch (Exception e) {
            throw new WrappedRuntimeException(e);
        }
    }

    public UnionPathIterator(Compiler compiler, int i) throws TransformerException {
        loadLocationPaths(compiler, OpMap.getFirstChildPos(i), 0);
    }
}
