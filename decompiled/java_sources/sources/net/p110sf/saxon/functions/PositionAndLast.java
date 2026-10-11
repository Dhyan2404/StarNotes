package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.CallableDelegate;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.functions.PositionAndLast;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerValue;

/* loaded from: classes11.dex */
public abstract class PositionAndLast extends ContextAccessorFunction {

    /* renamed from: h */
    public boolean f100291h = true;

    /* loaded from: classes11.dex */
    public static class Last extends PositionAndLast {
        @Override // net.p110sf.saxon.functions.PositionAndLast, net.p110sf.saxon.functions.ContextAccessorFunction, net.p110sf.saxon.expr.Callable
        public /* bridge */ /* synthetic */ Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            return super.call(xPathContext, sequenceArr);
        }

        @Override // net.p110sf.saxon.functions.PositionAndLast
        public Int64Value evaluateItem(XPathContext xPathContext) throws XPathException {
            try {
                return Int64Value.makeIntegerValue(xPathContext.getLast());
            } catch (UncheckedXPathException e) {
                throw XPathException.makeXPathException(e);
            }
        }

        @Override // net.p110sf.saxon.functions.SystemFunction
        public String getCompilerName() {
            return "LastCompiler";
        }

        @Override // net.p110sf.saxon.functions.SystemFunction
        public String getStreamerName() {
            return "Last";
        }
    }

    /* loaded from: classes11.dex */
    public static class Position extends PositionAndLast {
        @Override // net.p110sf.saxon.functions.PositionAndLast, net.p110sf.saxon.functions.ContextAccessorFunction, net.p110sf.saxon.expr.Callable
        public /* bridge */ /* synthetic */ Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            return super.call(xPathContext, sequenceArr);
        }

        @Override // net.p110sf.saxon.functions.PositionAndLast
        public Int64Value evaluateItem(XPathContext xPathContext) throws XPathException {
            if (xPathContext.getCurrentIterator() != null) {
                return Int64Value.makeIntegerValue(r1.position());
            }
            XPathException xPathException = new XPathException("The context item is absent, so position() is undefined");
            xPathException.setXPathContext(xPathContext);
            xPathException.setErrorCode("XPDY0002");
            throw xPathException;
        }

        @Override // net.p110sf.saxon.functions.SystemFunction
        public String getCompilerName() {
            return "PositionCompiler";
        }
    }

    /* renamed from: b */
    public static /* synthetic */ Sequence m63150b(XPathException xPathException, XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        throw xPathException;
    }

    @Override // net.p110sf.saxon.functions.ContextAccessorFunction
    public Function bindContext(XPathContext xPathContext) {
        try {
            ConstantFunction constantFunction = new ConstantFunction(evaluateItem(xPathContext));
            constantFunction.setDetails(getDetails());
            constantFunction.setRetainedStaticContext(getRetainedStaticContext());
            return constantFunction;
        } catch (XPathException e) {
            return new CallableFunction(new SymbolicName.C18533F(getFunctionName(), getArity()), new CallableDelegate(new CallableDelegate.Lambda() { // from class: com.sunia.HTREnginev2.k5l
                @Override // net.sf.saxon.expr.CallableDelegate.Lambda
                public final Sequence call(XPathContext xPathContext2, Sequence[] sequenceArr) {
                    Sequence m63150b;
                    m63150b = PositionAndLast.m63150b(XPathException.this, xPathContext2, sequenceArr);
                    return m63150b;
                }
            }), getFunctionItemType());
        }
    }

    public abstract Int64Value evaluateItem(XPathContext xPathContext) throws XPathException;

    @Override // net.p110sf.saxon.functions.SystemFunction
    public IntegerValue[] getIntegerBounds() {
        return new IntegerValue[]{Int64Value.PLUS_ONE, Expression.MAX_SEQUENCE_LENGTH};
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getNetCost() {
        return 0;
    }

    public boolean isContextPossiblyUndefined() {
        return this.f100291h;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public void supplyTypeInformation(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression[] expressionArr) throws XPathException {
        super.supplyTypeInformation(expressionVisitor, contextItemStaticInfo, expressionArr);
        if (contextItemStaticInfo.getItemType() != ErrorType.getInstance()) {
            this.f100291h = contextItemStaticInfo.isPossiblyAbsent();
        } else {
            XPathException xPathException = new XPathException("The context item is absent at this point");
            xPathException.setErrorCode("XPDY0002");
            throw xPathException;
        }
    }

    @Override // net.p110sf.saxon.functions.ContextAccessorFunction, net.p110sf.saxon.expr.Callable
    public IntegerValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return evaluateItem(xPathContext);
    }
}
