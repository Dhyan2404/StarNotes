package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.CallableDelegate;
import net.p110sf.saxon.expr.ContextItemExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.ContextItemAccessorFunction;
import net.p110sf.saxon.functions.registry.BuiltInFunctionSet;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class ContextItemAccessorFunction extends ContextAccessorFunction {

    /* loaded from: classes11.dex */
    public static class Number_0 extends ContextItemAccessorFunction {
        @Override // net.p110sf.saxon.functions.ContextItemAccessorFunction
        public GroundedValue evaluate(Item item, XPathContext xPathContext) throws XPathException {
            SystemFunction makeFunction = SystemFunction.makeFunction(getDetails().name.getLocalPart(), getRetainedStaticContext(), 1);
            AtomicSequence atomize = item.atomize();
            int length = atomize.getLength();
            if (length == 0) {
                return DoubleValue.NaN;
            }
            if (length == 1) {
                return makeFunction.call(xPathContext, new Sequence[]{atomize.head()}).materialize();
            }
            XPathException xPathException = new XPathException("When number() is called with no arguments, the atomized value of the context node must not be a sequence of several atomic values", "XPTY0004");
            xPathException.setIsTypeError(true);
            throw xPathException;
        }

        @Override // net.p110sf.saxon.functions.ContextItemAccessorFunction, net.p110sf.saxon.functions.SystemFunction
        public Expression makeFunctionCall(Expression[] expressionArr) {
            return SystemFunction.makeCall(getFunctionName().getLocalPart(), getRetainedStaticContext(), SystemFunction.makeCall("data", getRetainedStaticContext(), new ContextItemExpression()));
        }
    }

    /* loaded from: classes11.dex */
    public static class StringAccessor extends ContextItemAccessorFunction {
        @Override // net.p110sf.saxon.functions.ContextItemAccessorFunction
        public GroundedValue evaluate(Item item, XPathContext xPathContext) throws XPathException {
            return SystemFunction.makeFunction(getDetails().name.getLocalPart(), getRetainedStaticContext(), 1).call(xPathContext, new Sequence[]{new StringValue(item.getUnicodeStringValue())}).materialize();
        }

        @Override // net.p110sf.saxon.functions.ContextItemAccessorFunction, net.p110sf.saxon.functions.SystemFunction
        public Expression makeFunctionCall(Expression[] expressionArr) {
            return SystemFunction.makeCall(getFunctionName().getLocalPart(), getRetainedStaticContext(), SystemFunction.makeCall("string", getRetainedStaticContext(), new ContextItemExpression()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ Sequence m62967b(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        throw new XPathException("Context item for " + getFunctionName().getDisplayName() + " is absent", "XPDY0002");
    }

    @Override // net.p110sf.saxon.functions.ContextAccessorFunction
    public Function bindContext(XPathContext xPathContext) throws XPathException {
        Item contextItem = xPathContext.getContextItem();
        if (contextItem == null) {
            return new CallableFunction(0, new CallableDelegate(new CallableDelegate.Lambda() { // from class: com.sunia.HTREnginev2.tbe
                @Override // net.sf.saxon.expr.CallableDelegate.Lambda
                public final Sequence call(XPathContext xPathContext2, Sequence[] sequenceArr) {
                    Sequence m62967b;
                    m62967b = ContextItemAccessorFunction.this.m62967b(xPathContext2, sequenceArr);
                    return m62967b;
                }
            }), new SpecificFunctionType(new SequenceType[0], SequenceType.ANY_SEQUENCE));
        }
        ConstantFunction constantFunction = new ConstantFunction(evaluate(contextItem, xPathContext));
        constantFunction.setDetails(getDetails());
        constantFunction.setRetainedStaticContext(getRetainedStaticContext());
        return constantFunction;
    }

    @Override // net.p110sf.saxon.functions.ContextAccessorFunction, net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return evaluate(xPathContext.getContextItem(), xPathContext);
    }

    public GroundedValue evaluate(Item item, XPathContext xPathContext) throws XPathException {
        return SystemFunction.makeFunction(getDetails().name.getLocalPart(), getRetainedStaticContext(), 1).call(xPathContext, new Sequence[]{item}).materialize();
    }

    public Expression makeContextItemExplicit() {
        return SystemFunction.makeCall(getFunctionName().getLocalPart(), getRetainedStaticContext(), new ContextItemExpression());
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression[] expressionArr) {
        ContextItemExpression contextItemExpression = new ContextItemExpression();
        if (!getFunctionName().hasURI(NamespaceConstant.SAXON)) {
            return SystemFunction.makeCall(getFunctionName().getLocalPart(), getRetainedStaticContext(), contextItemExpression);
        }
        BuiltInFunctionSet.Entry details = getDetails();
        try {
            return details.functionSet.makeFunction(details.name.getLocalPart(), 1).makeFunctionCall(contextItemExpression);
        } catch (XPathException e) {
            throw new UncheckedXPathException(e);
        }
    }
}
