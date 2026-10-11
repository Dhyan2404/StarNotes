package com.sun.org.apache.xpath.internal.axes;

import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser;
import com.sun.org.apache.xpath.internal.Expression;
import com.sun.org.apache.xpath.internal.ExpressionOwner;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.XPathVisitor;
import com.sun.org.apache.xpath.internal.compiler.Compiler;
import com.sun.org.apache.xpath.internal.res.XPATHMessages;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class AxesWalker extends PredicatedNodeTest implements Cloneable, PathComponent, ExpressionOwner {
    static final long serialVersionUID = -2966031951306601247L;
    protected int m_axis;
    private transient int m_currentNode;
    private DTM m_dtm;
    transient boolean m_isFresh;
    protected AxesWalker m_nextWalker;
    AxesWalker m_prevWalker;
    transient int m_root;
    protected DTMAxisTraverser m_traverser;

    public AxesWalker(LocPathIterator locPathIterator, int i) {
        super(locPathIterator);
        this.m_root = -1;
        this.m_currentNode = -1;
        this.m_axis = i;
    }

    public static AxesWalker findClone(AxesWalker axesWalker, Vector vector) {
        if (vector == null) {
            return null;
        }
        int size = vector.size();
        for (int i = 0; i < size; i += 2) {
            if (axesWalker == vector.elementAt(i)) {
                return (AxesWalker) vector.elementAt(i + 1);
            }
        }
        return null;
    }

    private int returnNextNode(int i) {
        return i;
    }

    @Override // com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.XPathVisitable
    public void callVisitors(ExpressionOwner expressionOwner, XPathVisitor xPathVisitor) {
        if (xPathVisitor.visitStep(expressionOwner, this)) {
            callPredicateVisitors(xPathVisitor);
            AxesWalker axesWalker = this.m_nextWalker;
            if (axesWalker != null) {
                axesWalker.callVisitors(this, xPathVisitor);
            }
        }
    }

    @Override // com.sun.org.apache.xpath.internal.axes.PredicatedNodeTest
    public Object clone() throws CloneNotSupportedException {
        return (AxesWalker) super.clone();
    }

    public AxesWalker cloneDeep(WalkingIterator walkingIterator, Vector vector) throws CloneNotSupportedException {
        AxesWalker findClone = findClone(this, vector);
        if (findClone != null) {
            return findClone;
        }
        AxesWalker axesWalker = (AxesWalker) clone();
        axesWalker.setLocPathIterator(walkingIterator);
        if (vector != null) {
            vector.addElement(this);
            vector.addElement(axesWalker);
        }
        if (m52903wi().m_lastUsedWalker == this) {
            walkingIterator.m_lastUsedWalker = axesWalker;
        }
        AxesWalker axesWalker2 = this.m_nextWalker;
        if (axesWalker2 != null) {
            axesWalker.m_nextWalker = axesWalker2.cloneDeep(walkingIterator, vector);
        }
        if (vector != null) {
            AxesWalker axesWalker3 = this.m_prevWalker;
            if (axesWalker3 != null) {
                axesWalker.m_prevWalker = axesWalker3.cloneDeep(walkingIterator, vector);
            }
        } else if (this.m_nextWalker != null) {
            axesWalker.m_nextWalker.m_prevWalker = axesWalker;
        }
        return axesWalker;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.PredicatedNodeTest, com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.Expression
    public boolean deepEquals(Expression expression) {
        return super.deepEquals(expression) && this.m_axis == ((AxesWalker) expression).m_axis;
    }

    public void detach() {
        this.m_currentNode = -1;
        this.m_dtm = null;
        this.m_traverser = null;
        this.m_isFresh = true;
        this.m_root = -1;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.PathComponent
    public int getAnalysisBits() {
        return WalkerFactory.getAnalysisBitFromAxes(getAxis());
    }

    public int getAxis() {
        return this.m_axis;
    }

    public final int getCurrentNode() {
        return this.m_currentNode;
    }

    public DTM getDTM(int i) {
        return m52903wi().getXPathContext().getDTM(i);
    }

    @Override // com.sun.org.apache.xpath.internal.ExpressionOwner
    public Expression getExpression() {
        return this.m_nextWalker;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.PredicatedNodeTest, com.sun.org.apache.xpath.internal.axes.SubContextList
    public int getLastPos(XPathContext xPathContext) {
        int proximityPosition = getProximityPosition();
        try {
            AxesWalker axesWalker = (AxesWalker) clone();
            axesWalker.setPredicateCount(axesWalker.getPredicateCount() - 1);
            axesWalker.setNextWalker(null);
            axesWalker.setPrevWalker(null);
            WalkingIterator m52903wi = m52903wi();
            AxesWalker lastUsedWalker = m52903wi.getLastUsedWalker();
            try {
                m52903wi.setLastUsedWalker(axesWalker);
                while (-1 != axesWalker.nextNode()) {
                    proximityPosition++;
                }
                return proximityPosition;
            } finally {
                m52903wi.setLastUsedWalker(lastUsedWalker);
            }
        } catch (CloneNotSupportedException unused) {
            return -1;
        }
    }

    public int getNextNode() {
        if (this.m_foundLast) {
            return -1;
        }
        if (this.m_isFresh) {
            this.m_currentNode = this.m_traverser.first(this.m_root);
            this.m_isFresh = false;
        } else {
            int i = this.m_currentNode;
            if (-1 != i) {
                this.m_currentNode = this.m_traverser.next(this.m_root, i);
            }
        }
        int i2 = this.m_currentNode;
        if (-1 == i2) {
            this.m_foundLast = true;
        }
        return i2;
    }

    public AxesWalker getNextWalker() {
        return this.m_nextWalker;
    }

    public AxesWalker getPrevWalker() {
        return this.m_prevWalker;
    }

    public int getRoot() {
        return this.m_root;
    }

    public void init(Compiler compiler, int i, int i2) throws TransformerException {
        initPredicateInfo(compiler, i);
    }

    public boolean isDocOrdered() {
        return true;
    }

    public int nextNode() {
        AxesWalker lastUsedWalker = m52903wi().getLastUsedWalker();
        int i = -1;
        while (true) {
            if (lastUsedWalker == null) {
                break;
            }
            i = lastUsedWalker.getNextNode();
            if (-1 == i) {
                lastUsedWalker = lastUsedWalker.m_prevWalker;
            } else if (lastUsedWalker.acceptNode(i) == 1) {
                AxesWalker axesWalker = lastUsedWalker.m_nextWalker;
                if (axesWalker == null) {
                    m52903wi().setLastUsedWalker(lastUsedWalker);
                    break;
                }
                axesWalker.setRoot(i);
                axesWalker.m_prevWalker = lastUsedWalker;
                lastUsedWalker = axesWalker;
            } else {
                continue;
            }
        }
        return i;
    }

    public void setDefaultDTM(DTM dtm) {
        this.m_dtm = dtm;
    }

    @Override // com.sun.org.apache.xpath.internal.ExpressionOwner
    public void setExpression(Expression expression) {
        expression.exprSetParent(this);
        this.m_nextWalker = (AxesWalker) expression;
    }

    public void setNextWalker(AxesWalker axesWalker) {
        this.m_nextWalker = axesWalker;
    }

    public void setPrevWalker(AxesWalker axesWalker) {
        this.m_prevWalker = axesWalker;
    }

    public void setRoot(int i) {
        DTM dtm = m52903wi().getXPathContext().getDTM(i);
        this.m_dtm = dtm;
        this.m_traverser = dtm.getAxisTraverser(this.m_axis);
        this.m_isFresh = true;
        this.m_foundLast = false;
        this.m_root = i;
        this.m_currentNode = i;
        if (-1 == i) {
            throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_SETTING_WALKER_ROOT_TO_NULL", null));
        }
        resetProximityPositions();
    }

    /* renamed from: wi */
    public final WalkingIterator m52903wi() {
        return (WalkingIterator) this.m_lpi;
    }
}
