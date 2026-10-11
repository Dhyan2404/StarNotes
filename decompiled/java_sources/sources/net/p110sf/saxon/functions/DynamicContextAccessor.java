package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.AccessorFn;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.DateTimeValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public abstract class DynamicContextAccessor extends SystemFunction {

    /* renamed from: h */
    public AtomicValue f100192h;

    /* loaded from: classes11.dex */
    public static class CurrentDate extends DynamicContextAccessor {
        @Override // net.p110sf.saxon.functions.DynamicContextAccessor, net.p110sf.saxon.expr.Callable
        public /* bridge */ /* synthetic */ Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            return super.call(xPathContext, sequenceArr);
        }

        @Override // net.p110sf.saxon.functions.DynamicContextAccessor
        public AtomicValue evaluate(XPathContext xPathContext) throws XPathException {
            return DateTimeValue.getCurrentDateTime(xPathContext).toDateValue();
        }
    }

    /* loaded from: classes11.dex */
    public static class CurrentDateTime extends DynamicContextAccessor {
        @Override // net.p110sf.saxon.functions.DynamicContextAccessor, net.p110sf.saxon.expr.Callable
        public /* bridge */ /* synthetic */ Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            return super.call(xPathContext, sequenceArr);
        }

        @Override // net.p110sf.saxon.functions.DynamicContextAccessor
        public AtomicValue evaluate(XPathContext xPathContext) throws XPathException {
            return DateTimeValue.getCurrentDateTime(xPathContext);
        }
    }

    /* loaded from: classes11.dex */
    public static class CurrentTime extends DynamicContextAccessor {
        @Override // net.p110sf.saxon.functions.DynamicContextAccessor, net.p110sf.saxon.expr.Callable
        public /* bridge */ /* synthetic */ Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            return super.call(xPathContext, sequenceArr);
        }

        @Override // net.p110sf.saxon.functions.DynamicContextAccessor
        public AtomicValue evaluate(XPathContext xPathContext) throws XPathException {
            return DateTimeValue.getCurrentDateTime(xPathContext).toTimeValue();
        }
    }

    /* loaded from: classes11.dex */
    public static class DefaultLanguage extends DynamicContextAccessor {
        @Override // net.p110sf.saxon.functions.DynamicContextAccessor, net.p110sf.saxon.expr.Callable
        public /* bridge */ /* synthetic */ Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            return super.call(xPathContext, sequenceArr);
        }

        @Override // net.p110sf.saxon.functions.DynamicContextAccessor
        public AtomicValue evaluate(XPathContext xPathContext) throws XPathException {
            return new StringValue(xPathContext.getConfiguration().getDefaultLanguage(), BuiltInAtomicType.LANGUAGE);
        }
    }

    /* loaded from: classes11.dex */
    public static class ImplicitTimezone extends DynamicContextAccessor {
        @Override // net.p110sf.saxon.functions.DynamicContextAccessor, net.p110sf.saxon.expr.Callable
        public /* bridge */ /* synthetic */ Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            return super.call(xPathContext, sequenceArr);
        }

        @Override // net.p110sf.saxon.functions.DynamicContextAccessor
        public AtomicValue evaluate(XPathContext xPathContext) throws XPathException {
            return DateTimeValue.getCurrentDateTime(xPathContext).getComponent(AccessorFn.Component.TIMEZONE);
        }
    }

    /* renamed from: net.sf.saxon.functions.DynamicContextAccessor$a */
    /* loaded from: classes11.dex */
    public class C18352a extends SystemFunctionCall {
        public C18352a(SystemFunction systemFunction, Expression[] expressionArr) {
            super(systemFunction, expressionArr);
        }

        @Override // net.p110sf.saxon.expr.Expression
        public Item evaluateItem(XPathContext xPathContext) throws XPathException {
            return DynamicContextAccessor.this.evaluate(xPathContext);
        }

        @Override // net.p110sf.saxon.expr.SystemFunctionCall, net.p110sf.saxon.expr.Expression
        public int getIntrinsicDependencies() {
            return 1024;
        }
    }

    public void bindContext(XPathContext xPathContext) throws XPathException {
        this.f100192h = evaluate(xPathContext);
    }

    public abstract AtomicValue evaluate(XPathContext xPathContext) throws XPathException;

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression[] expressionArr) {
        return new C18352a(this, expressionArr);
    }

    @Override // net.p110sf.saxon.expr.Callable
    public AtomicValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        AtomicValue atomicValue = this.f100192h;
        return atomicValue != null ? atomicValue : evaluate(xPathContext);
    }
}
