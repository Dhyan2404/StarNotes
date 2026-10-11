package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.SubstringMatcher;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class SubstringBefore extends CollatingFunctionFixed {
    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "SubstringBeforeCompiler";
    }

    @Override // net.p110sf.saxon.functions.CollatingFunctionFixed
    public boolean isSubstringMatchingFunction() {
        return true;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public StringValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return new StringValue(((SubstringMatcher) getStringCollator()).substringBefore(getUniStringArg(sequenceArr[0]), getUniStringArg(sequenceArr[1])));
    }
}
