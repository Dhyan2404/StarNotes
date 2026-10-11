package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.sort.GroupIterator;
import net.p110sf.saxon.expr.sort.MergeInstr;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class CurrentMergeKey extends SystemFunction implements Callable {

    /* renamed from: h */
    public MergeInstr f100176h = null;

    /* renamed from: net.sf.saxon.functions.CurrentMergeKey$a */
    /* loaded from: classes11.dex */
    public class C18349a extends SystemFunctionCall {
        public C18349a(SystemFunction systemFunction, Expression[] expressionArr) {
            super(systemFunction, expressionArr);
        }

        @Override // net.p110sf.saxon.expr.SystemFunctionCall, net.p110sf.saxon.expr.Expression
        public Expression getScopingExpression() {
            return CurrentMergeKey.this.getControllingInstruction();
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return SequenceTool.toLazySequence(iterate(xPathContext));
    }

    public MergeInstr getControllingInstruction() {
        return this.f100176h;
    }

    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        GroupIterator currentMergeGroupIterator = xPathContext.getCurrentMergeGroupIterator();
        if (currentMergeGroupIterator != null) {
            return currentMergeGroupIterator.getCurrentGroupingKey().iterate();
        }
        throw new XPathException("There is no current merge key", "XTDE3510");
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression... expressionArr) {
        return new C18349a(this, expressionArr);
    }

    public void setControllingInstruction(MergeInstr mergeInstr) {
        this.f100176h = mergeInstr;
    }
}
