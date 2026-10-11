package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.ForExpression;
import net.p110sf.saxon.expr.MappingIterator;
import net.p110sf.saxon.expr.PendingUpdateList;
import net.p110sf.saxon.expr.SequenceMapper;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.flwor.OuterForExpression;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.LookaheadIterator;
import net.p110sf.saxon.tree.iter.LookaheadIteratorImpl;
import net.p110sf.saxon.value.EmptySequence;

/* loaded from: classes11.dex */
public class OuterForExpression extends ForExpression {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public /* synthetic */ SequenceIterator m62707n(XPathContext xPathContext, Item item) throws XPathException {
        xPathContext.setLocalVariable(this.slotNumber, item);
        return getAction().iterate(xPathContext);
    }

    @Override // net.p110sf.saxon.expr.ForExpression, net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        OuterForExpression outerForExpression = new OuterForExpression();
        ExpressionTool.copyLocationInfo(this, outerForExpression);
        outerForExpression.setRequiredType(this.requiredType);
        outerForExpression.setVariableQName(this.variableName);
        outerForExpression.setSequence(getSequence().copy(rebindingMap));
        rebindingMap.put(this, outerForExpression);
        outerForExpression.setAction(getAction().copy(rebindingMap));
        outerForExpression.variableName = this.variableName;
        return outerForExpression;
    }

    @Override // net.p110sf.saxon.expr.ForExpression, net.p110sf.saxon.expr.Expression
    public void evaluatePendingUpdates(XPathContext xPathContext, PendingUpdateList pendingUpdateList) throws XPathException {
        SequenceIterator iterate = getSequence().iterate(xPathContext);
        int localSlotNumber = getLocalSlotNumber();
        LookaheadIterator makeLookaheadIterator = LookaheadIteratorImpl.makeLookaheadIterator(iterate);
        if (!makeLookaheadIterator.hasNext()) {
            xPathContext.setLocalVariable(getLocalSlotNumber(), EmptySequence.getInstance());
            getAction().evaluatePendingUpdates(xPathContext, pendingUpdateList);
        } else {
            while (true) {
                Item next = makeLookaheadIterator.next();
                if (next == null) {
                    return;
                }
                xPathContext.setLocalVariable(localSlotNumber, next);
                getAction().evaluatePendingUpdates(xPathContext, pendingUpdateList);
            }
        }
    }

    @Override // net.p110sf.saxon.expr.ForExpression
    public void explainSpecializedAttributes(ExpressionPresenter expressionPresenter) {
        expressionPresenter.emitAttribute("outer", "true");
    }

    @Override // net.p110sf.saxon.expr.ForExpression, net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "outerFor";
    }

    @Override // net.p110sf.saxon.expr.ForExpression
    public int getRangeVariableCardinality() {
        return 24576;
    }

    @Override // net.p110sf.saxon.expr.ForExpression, net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(final XPathContext xPathContext) throws XPathException {
        LookaheadIterator makeLookaheadIterator = LookaheadIteratorImpl.makeLookaheadIterator(getSequence().iterate(xPathContext));
        if (makeLookaheadIterator.hasNext()) {
            return MappingIterator.map(makeLookaheadIterator, new SequenceMapper.Lambda() { // from class: com.sunia.HTREnginev2.zik
                @Override // net.sf.saxon.expr.SequenceMapper.Lambda
                public final SequenceIterator map(Item item) {
                    SequenceIterator m62707n;
                    m62707n = OuterForExpression.this.m62707n(xPathContext, item);
                    return m62707n;
                }
            });
        }
        xPathContext.setLocalVariable(getLocalSlotNumber(), EmptySequence.getInstance());
        return getAction().iterate(xPathContext);
    }

    @Override // net.p110sf.saxon.expr.ForExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression sequence = getSequence();
        getSequenceOp().optimize(expressionVisitor, contextItemStaticInfo);
        Expression action = getAction();
        getActionOp().optimize(expressionVisitor, contextItemStaticInfo);
        return (sequence == getSequence() && action == getAction()) ? this : optimize(expressionVisitor, contextItemStaticInfo);
    }

    @Override // net.p110sf.saxon.expr.ForExpression, net.p110sf.saxon.expr.Expression
    public void process(Outputter outputter, XPathContext xPathContext) throws XPathException {
        SequenceIterator iterate = getSequence().iterate(xPathContext);
        int localSlotNumber = getLocalSlotNumber();
        LookaheadIterator makeLookaheadIterator = LookaheadIteratorImpl.makeLookaheadIterator(iterate);
        if (!makeLookaheadIterator.hasNext()) {
            xPathContext.setLocalVariable(getLocalSlotNumber(), EmptySequence.getInstance());
            getAction().process(outputter, xPathContext);
        } else {
            while (true) {
                Item next = makeLookaheadIterator.next();
                if (next == null) {
                    return;
                }
                xPathContext.setLocalVariable(localSlotNumber, next);
                getAction().process(outputter, xPathContext);
            }
        }
    }
}
