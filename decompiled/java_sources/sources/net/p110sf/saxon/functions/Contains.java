package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.sort.CodepointCollator;
import net.p110sf.saxon.lib.SubstringMatcher;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class Contains extends CollatingFunctionFixed {

    /* renamed from: net.sf.saxon.functions.Contains$a */
    /* loaded from: classes11.dex */
    public class C18347a extends SystemFunctionCall.Optimized {
        public C18347a(SystemFunction systemFunction, Expression[] expressionArr) {
            super(systemFunction, expressionArr);
        }

        @Override // net.p110sf.saxon.expr.Expression
        public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
            return getArg(0).evaluateAsString(xPathContext).toString().contains(getArg(1).evaluateAsString(xPathContext).toString());
        }

        @Override // net.sf.saxon.expr.SystemFunctionCall.Optimized, net.p110sf.saxon.expr.SystemFunctionCall, net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression
        public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) {
            return this;
        }
    }

    /* renamed from: b */
    public static boolean m62964b(StringValue stringValue, StringValue stringValue2, SubstringMatcher substringMatcher) {
        if (stringValue2 == null || stringValue2.isEmpty() || substringMatcher.comparesEqual(stringValue2.getUnicodeStringValue(), EmptyUnicodeString.getInstance())) {
            return true;
        }
        if (stringValue == null || stringValue.isEmpty()) {
            return false;
        }
        return substringMatcher.contains(stringValue.getUnicodeStringValue(), stringValue2.getUnicodeStringValue());
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "ContainsCompiler";
    }

    @Override // net.p110sf.saxon.functions.CollatingFunctionFixed
    public boolean isSubstringMatchingFunction() {
        return true;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeOptimizedFunctionCall(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression... expressionArr) throws XPathException {
        return getStringCollator() == CodepointCollator.getInstance() ? new C18347a(this, expressionArr) : super.makeOptimizedFunctionCall(expressionVisitor, contextItemStaticInfo, expressionArr);
    }

    @Override // net.p110sf.saxon.expr.Callable
    public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return BooleanValue.get(m62964b((StringValue) sequenceArr[0].head(), (StringValue) sequenceArr[1].head(), (SubstringMatcher) getStringCollator()));
    }
}
