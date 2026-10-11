package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.sort.GroupIterator;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public class CurrentGroupingKeyCall extends Expression implements Callable {
    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return SequenceTool.toLazySequence(iterate(xPathContext));
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 57344;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        return new CurrentGroupingKeyCall();
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("currentGroupingKey");
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        return 32;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return BuiltInAtomicType.ANY_ATOMIC;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression getScopingExpression() {
        return CurrentGroupCall.findControllingInstruction(this);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        GroupIterator currentGroupIterator = xPathContext.getCurrentGroupIterator();
        AtomicSequence currentGroupingKey = currentGroupIterator == null ? null : currentGroupIterator.getCurrentGroupingKey();
        if (currentGroupingKey != null) {
            return currentGroupingKey.iterate();
        }
        XPathException xPathException = new XPathException("There is no current grouping key", "XTDE1071");
        xPathException.setLocation(getLocation());
        throw xPathException;
    }
}
