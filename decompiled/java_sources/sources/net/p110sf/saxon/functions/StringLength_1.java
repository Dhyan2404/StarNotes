package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class StringLength_1 extends ScalarSystemFunction {
    @Override // net.p110sf.saxon.functions.ScalarSystemFunction
    public AtomicValue evaluate(Item item, XPathContext xPathContext) throws XPathException {
        if (item instanceof StringValue) {
            return Int64Value.makeIntegerValue(((StringValue) item).length());
        }
        try {
            return Int64Value.makeIntegerValue(item.getUnicodeStringValue().length());
        } catch (UnsupportedOperationException unused) {
            throw new XPathException("Cannot get the string value of a function item", "FOTY0013");
        }
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "StringLengthCompiler";
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public IntegerValue[] getIntegerBounds() {
        return new IntegerValue[]{Int64Value.ZERO, Expression.MAX_STRING_LENGTH};
    }

    @Override // net.p110sf.saxon.functions.ScalarSystemFunction
    public Sequence resultWhenEmpty() {
        return Int64Value.ZERO;
    }
}
