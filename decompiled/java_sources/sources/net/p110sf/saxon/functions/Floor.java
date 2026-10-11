package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.NumericValue;

/* loaded from: classes11.dex */
public final class Floor extends ScalarSystemFunction {
    @Override // net.p110sf.saxon.functions.ScalarSystemFunction
    public AtomicValue evaluate(Item item, XPathContext xPathContext) {
        return ((NumericValue) item).floor();
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "RoundingCompiler";
    }
}
