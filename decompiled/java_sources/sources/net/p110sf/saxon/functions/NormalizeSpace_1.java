package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class NormalizeSpace_1 extends ScalarSystemFunction {

    /* renamed from: net.sf.saxon.functions.NormalizeSpace_1$a */
    /* loaded from: classes11.dex */
    public class C18363a extends SystemFunctionCall {
        public C18363a(SystemFunction systemFunction, Expression[] expressionArr) {
            super(systemFunction, expressionArr);
        }

        @Override // net.p110sf.saxon.expr.Expression
        public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
            if (((AtomicValue) getArg(0).evaluateItem(xPathContext)) == null) {
                return false;
            }
            return !Whitespace.isAllWhite(r1.getUnicodeStringValue());
        }
    }

    public static UnicodeString normalizeSpace(UnicodeString unicodeString) {
        return unicodeString == null ? EmptyUnicodeString.getInstance() : Whitespace.collapseWhitespace(unicodeString);
    }

    @Override // net.p110sf.saxon.functions.ScalarSystemFunction
    public AtomicValue evaluate(Item item, XPathContext xPathContext) throws XPathException {
        return new StringValue(normalizeSpace(item.getUnicodeStringValue()));
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "NormalizeSpaceCompiler";
    }

    @Override // net.p110sf.saxon.functions.ScalarSystemFunction, net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression[] expressionArr) {
        return new C18363a(this, expressionArr);
    }

    @Override // net.p110sf.saxon.functions.ScalarSystemFunction
    public Sequence resultWhenEmpty() {
        return StringValue.EMPTY_STRING;
    }
}
