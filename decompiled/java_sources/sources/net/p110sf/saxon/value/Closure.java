package net.p110sf.saxon.value;

import net.p110sf.saxon.expr.ContextOriginator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StackFrame;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.om.FocusIterator;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ManualIterator;

/* loaded from: classes11.dex */
public class Closure implements Sequence, ContextOriginator {
    protected int depth = 0;
    protected Expression expression;
    protected SequenceIterator inputIterator;
    protected XPathContextMajor savedXPathContext;

    public static Sequence make(Expression expression, XPathContext xPathContext, int i) throws XPathException {
        return xPathContext.getConfiguration().makeClosure(expression, i, xPathContext);
    }

    public Expression getExpression() {
        return this.expression;
    }

    public XPathContextMajor getSavedXPathContext() {
        return this.savedXPathContext;
    }

    @Override // net.p110sf.saxon.om.Sequence
    public Item head() throws XPathException {
        try {
            return iterate().next();
        } catch (UncheckedXPathException e) {
            throw e.getXPathException();
        }
    }

    @Override // net.p110sf.saxon.om.Sequence
    public SequenceIterator iterate() {
        if (this.inputIterator != null) {
            throw new IllegalStateException("A Closure can only be read once");
        }
        try {
            SequenceIterator iterate = this.expression.iterate(this.savedXPathContext);
            this.inputIterator = iterate;
            return iterate;
        } catch (XPathException e) {
            throw new UncheckedXPathException(e);
        }
    }

    @Override // net.p110sf.saxon.om.Sequence
    public Sequence makeRepeatable() throws XPathException {
        return materialize();
    }

    public GroundedValue reduce() throws XPathException {
        return SequenceTool.toGroundedValue(iterate());
    }

    public void saveContext(Expression expression, XPathContext xPathContext) throws XPathException {
        if ((expression.getDependencies() & 128) != 0) {
            StackFrame stackFrame = xPathContext.getStackFrame();
            Sequence[] stackFrameValues = stackFrame.getStackFrameValues();
            int[] slotsUsed = expression.getSlotsUsed();
            if (stackFrameValues != null) {
                SlotManager stackFrameMap = stackFrame.getStackFrameMap();
                Sequence[] sequenceArr = new Sequence[stackFrameMap.getNumberOfVariables()];
                for (int i : slotsUsed) {
                    Sequence sequence = stackFrameValues[i];
                    if (sequence instanceof Closure) {
                        int i2 = ((Closure) sequence).depth;
                        if (i2 >= 10) {
                            stackFrameValues[i] = SequenceTool.toGroundedValue(sequence.iterate());
                        } else {
                            int i3 = i2 + 1;
                            if (i3 > this.depth) {
                                this.depth = i3;
                            }
                        }
                    }
                    sequenceArr[i] = stackFrameValues[i];
                }
                this.savedXPathContext.setStackFrame(stackFrameMap, sequenceArr);
            }
        }
        FocusIterator currentIterator = xPathContext.getCurrentIterator();
        if (currentIterator != null) {
            this.savedXPathContext.setCurrentIterator(new ManualIterator(currentIterator.current()));
        }
    }

    public void setExpression(Expression expression) {
        this.expression = expression;
    }

    public void setSavedXPathContext(XPathContextMajor xPathContextMajor) {
        this.savedXPathContext = xPathContextMajor;
    }
}
