package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AnyURIValue;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public class NamespaceUri_1 extends ScalarSystemFunction {
    @Override // net.p110sf.saxon.functions.ScalarSystemFunction
    public AtomicValue evaluate(Item item, XPathContext xPathContext) throws XPathException {
        return new AnyURIValue(((NodeInfo) item).getURI());
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "NamespaceUriFnCompiler";
    }

    @Override // net.p110sf.saxon.functions.ScalarSystemFunction
    public AnyURIValue resultWhenEmpty() {
        return new AnyURIValue("");
    }
}
