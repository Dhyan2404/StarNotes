package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.OrExpression;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.VennExpression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.LookaheadIterator;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.Cardinality;

/* loaded from: classes11.dex */
public class Exists extends Aggregate {

    /* renamed from: net.sf.saxon.functions.Exists$a */
    /* loaded from: classes11.dex */
    public class C18355a extends SystemFunctionCall {
        public C18355a(SystemFunction systemFunction, Expression[] expressionArr) {
            super(systemFunction, expressionArr);
        }

        @Override // net.p110sf.saxon.expr.Expression
        public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
            boolean z = false;
            try {
                SequenceIterator iterate = getArg(0).iterate(xPathContext);
                if ((iterate instanceof LookaheadIterator) && ((LookaheadIterator) iterate).supportsHasNext()) {
                    z = ((LookaheadIterator) iterate).hasNext();
                } else if (iterate.next() != null) {
                    z = true;
                }
                iterate.close();
                return z;
            } catch (XPathException e) {
                e.maybeSetLocation(getLocation());
                e.maybeSetContext(xPathContext);
                throw e;
            }
        }

        @Override // net.p110sf.saxon.expr.SystemFunctionCall, net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression
        public int getNetCost() {
            return 0;
        }

        @Override // net.p110sf.saxon.expr.SystemFunctionCall, net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression
        public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
            Expression optimize = super.optimize(expressionVisitor, contextItemStaticInfo);
            if (optimize != this) {
                return optimize;
            }
            int cardinality = getArg(0).getCardinality();
            if (!Cardinality.allowsZero(cardinality)) {
                return Literal.makeLiteral(BooleanValue.TRUE, optimize);
            }
            if (cardinality == 8192) {
                return Literal.makeLiteral(BooleanValue.FALSE, optimize);
            }
            setArg(0, getArg(0).unordered(false, expressionVisitor.isOptimizeForStreaming()));
            if (!(getArg(0) instanceof VennExpression) || expressionVisitor.isOptimizeForStreaming()) {
                return this;
            }
            VennExpression vennExpression = (VennExpression) getArg(0);
            return vennExpression.getOperator() == 1 ? new OrExpression(SystemFunction.makeCall("exists", getRetainedStaticContext(), vennExpression.getLhsExpression()), SystemFunction.makeCall("exists", getRetainedStaticContext(), vennExpression.getRhsExpression())).optimize(expressionVisitor, contextItemStaticInfo) : this;
        }

        @Override // net.p110sf.saxon.expr.Expression
        public BooleanValue evaluateItem(XPathContext xPathContext) throws XPathException {
            return BooleanValue.get(effectiveBooleanValue(xPathContext));
        }
    }

    /* renamed from: a */
    public static boolean m62984a(SequenceIterator sequenceIterator) {
        boolean z;
        if (sequenceIterator instanceof LookaheadIterator) {
            LookaheadIterator lookaheadIterator = (LookaheadIterator) sequenceIterator;
            if (lookaheadIterator.supportsHasNext()) {
                z = lookaheadIterator.hasNext();
                sequenceIterator.close();
                return z;
            }
        }
        z = sequenceIterator.next() != null;
        sequenceIterator.close();
        return z;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "ExistsCompiler";
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "Exists";
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression[] expressionArr) {
        return new C18355a(this, expressionArr);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeOptimizedFunctionCall(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression... expressionArr) throws XPathException {
        int cardinality = expressionArr[0].getCardinality();
        if (cardinality == 49152) {
            return Literal.makeLiteral(BooleanValue.TRUE, expressionArr[0]);
        }
        if (cardinality == 8192) {
            return Literal.makeLiteral(BooleanValue.FALSE, expressionArr[0]);
        }
        Expression unordered = expressionArr[0].unordered(false, expressionVisitor.isOptimizeForStreaming());
        expressionArr[0] = unordered;
        if (!(unordered instanceof VennExpression) || expressionVisitor.isOptimizeForStreaming()) {
            return null;
        }
        VennExpression vennExpression = (VennExpression) expressionArr[0];
        if (vennExpression.getOperator() == 1) {
            return new OrExpression(SystemFunction.makeCall("exists", getRetainedStaticContext(), vennExpression.getLhsExpression()), SystemFunction.makeCall("exists", getRetainedStaticContext(), vennExpression.getRhsExpression())).optimize(expressionVisitor, contextItemStaticInfo);
        }
        return null;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return BooleanValue.get(m62984a(sequenceArr[0].iterate()));
    }
}
