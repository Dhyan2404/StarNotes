package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.str.ToLower;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class LowerCase extends ScalarSystemFunction {
    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "ForceCaseCompiler";
    }

    @Override // net.p110sf.saxon.functions.ScalarSystemFunction
    public Sequence resultWhenEmpty() {
        return StringValue.EMPTY_STRING;
    }

    @Override // net.p110sf.saxon.functions.ScalarSystemFunction
    public StringValue evaluate(Item item, XPathContext xPathContext) {
        return StringValue.makeUStringValue(ToLower.toLower(item.getUnicodeStringValue()));
    }
}
