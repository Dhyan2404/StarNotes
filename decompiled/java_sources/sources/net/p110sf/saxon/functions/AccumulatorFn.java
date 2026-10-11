package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.accum.Accumulator;
import net.p110sf.saxon.expr.accum.AccumulatorRegistry;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XsltController;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public abstract class AccumulatorFn extends SystemFunction {

    /* loaded from: classes11.dex */
    public static class AccumulatorAfter extends AccumulatorFn {
        @Override // net.p110sf.saxon.functions.AccumulatorFn
        public Phase getPhase() {
            return Phase.AFTER;
        }

        @Override // net.p110sf.saxon.functions.SystemFunction
        public String getStreamerName() {
            return "AccumulatorAfter";
        }
    }

    /* loaded from: classes11.dex */
    public static class AccumulatorBefore extends AccumulatorFn {
        @Override // net.p110sf.saxon.functions.AccumulatorFn
        public Phase getPhase() {
            return Phase.BEFORE;
        }
    }

    /* loaded from: classes11.dex */
    public enum Phase {
        AFTER,
        BEFORE,
        UNSPECIFIED
    }

    /* renamed from: a */
    public final Accumulator m62947a(String str, AccumulatorRegistry accumulatorRegistry) throws XPathException {
        try {
            Accumulator accumulator = accumulatorRegistry == null ? null : accumulatorRegistry.getAccumulator(StructuredQName.fromLexicalQName(str, false, true, getRetainedStaticContext()));
            if (accumulator != null) {
                return accumulator;
            }
            throw new XPathException("Accumulator " + str + " has not been declared", "XTDE3340");
        } catch (XPathException e) {
            throw new XPathException("Invalid accumulator name: " + e.getMessage(), "XTDE3340");
        }
    }

    /* renamed from: b */
    public final Sequence m62948b(String str, Phase phase, XPathContext xPathContext) throws XPathException {
        AccumulatorRegistry accumulatorRegistry = getRetainedStaticContext().getPackageData().getAccumulatorRegistry();
        Accumulator m62947a = m62947a(str, accumulatorRegistry);
        Item contextItem = xPathContext.getContextItem();
        if (contextItem == null) {
            throw new XPathException("No context item for evaluation of accumulator function", "XTDE3350", xPathContext);
        }
        if (!(contextItem instanceof NodeInfo)) {
            throw new XPathException("Context item for evaluation of accumulator function must be a node", "XTTE3360", xPathContext);
        }
        NodeInfo nodeInfo = (NodeInfo) contextItem;
        int nodeKind = nodeInfo.getNodeKind();
        if (nodeKind == 2 || nodeKind == 13) {
            throw new XPathException("Context item for evaluation of accumulator function must not be an attribute or namespace node", "XTTE3360", xPathContext);
        }
        Sequence streamingAccumulatorValue = accumulatorRegistry.getStreamingAccumulatorValue(nodeInfo, m62947a, phase);
        if (streamingAccumulatorValue != null) {
            return streamingAccumulatorValue;
        }
        TreeInfo treeInfo = nodeInfo.getTreeInfo();
        XsltController xsltController = (XsltController) xPathContext.getController();
        if (m62947a.isUniversallyApplicable() || xsltController.getAccumulatorManager().isApplicable(treeInfo, m62947a)) {
            return xsltController.getAccumulatorManager().getAccumulatorData(treeInfo, m62947a, xPathContext).getValue(nodeInfo, phase == Phase.AFTER);
        }
        throw new XPathException("Accumulator " + str + " is not applicable to the current document", "XTDE3362");
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return m62948b(sequenceArr[0].head().getStringValue(), getPhase(), xPathContext);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getCardinality(Expression[] expressionArr) {
        try {
            if (expressionArr[0] instanceof StringLiteral) {
                return m62947a(((StringLiteral) expressionArr[0]).stringify(), getRetainedStaticContext().getPackageData().getAccumulatorRegistry()).getType().getCardinality();
            }
        } catch (Exception unused) {
        }
        return super.getCardinality(expressionArr);
    }

    public abstract Phase getPhase();

    @Override // net.p110sf.saxon.functions.SystemFunction
    public ItemType getResultItemType(Expression[] expressionArr) {
        try {
            if (expressionArr[0] instanceof StringLiteral) {
                return m62947a(((StringLiteral) expressionArr[0]).stringify(), getRetainedStaticContext().getPackageData().getAccumulatorRegistry()).getType().getPrimaryType();
            }
        } catch (Exception unused) {
        }
        return super.getResultItemType(expressionArr);
    }
}
