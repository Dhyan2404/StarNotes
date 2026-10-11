package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.str.ToUpper;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class UpperCase extends ScalarSystemFunction {
    @Override // net.p110sf.saxon.functions.ScalarSystemFunction
    public AtomicValue evaluate(Item item, XPathContext xPathContext) {
        return StringValue.makeUStringValue(ToUpper.toUpper(item.getUnicodeStringValue()));
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "ForceCaseCompiler";
    }

    @Override // net.p110sf.saxon.functions.ScalarSystemFunction
    public Sequence resultWhenEmpty() {
        return StringValue.EMPTY_STRING;
    }
}
