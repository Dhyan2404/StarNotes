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
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.BooleanValue;

/* loaded from: classes11.dex */
public class EndsWith extends CollatingFunctionFixed {

    /* renamed from: net.sf.saxon.functions.EndsWith$a */
    /* loaded from: classes11.dex */
    public class C18354a extends SystemFunctionCall.Optimized {
        public C18354a(SystemFunction systemFunction, Expression[] expressionArr) {
            super(systemFunction, expressionArr);
        }

        @Override // net.p110sf.saxon.expr.Expression
        public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
            return getArg(0).evaluateAsString(xPathContext).toString().endsWith(getArg(1).evaluateAsString(xPathContext).toString());
        }
    }

    public static boolean endsWith(UnicodeString unicodeString, UnicodeString unicodeString2, SubstringMatcher substringMatcher) {
        if (unicodeString2 == null || unicodeString2.isEmpty() || substringMatcher.comparesEqual(unicodeString2, EmptyUnicodeString.getInstance())) {
            return true;
        }
        if (unicodeString == null || unicodeString.isEmpty()) {
            return false;
        }
        return substringMatcher.endsWith(unicodeString, unicodeString2);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "StartsWithCompiler";
    }

    @Override // net.p110sf.saxon.functions.CollatingFunctionFixed
    public boolean isSubstringMatchingFunction() {
        return true;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeOptimizedFunctionCall(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression... expressionArr) throws XPathException {
        return getStringCollator() == CodepointCollator.getInstance() ? new C18354a(this, expressionArr) : super.makeOptimizedFunctionCall(expressionVisitor, contextItemStaticInfo, expressionArr);
    }

    @Override // net.p110sf.saxon.expr.Callable
    public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return BooleanValue.get(endsWith(getUniStringArg(sequenceArr[0]), getUniStringArg(sequenceArr[1]), (SubstringMatcher) getStringCollator()));
    }
}
