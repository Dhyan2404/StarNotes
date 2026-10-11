package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.regex.RegexIterator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class RegexGroup extends SystemFunction {
    @Override // net.p110sf.saxon.expr.Callable
    public StringValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        RegexIterator currentRegexIterator = xPathContext.getCurrentRegexIterator();
        if (currentRegexIterator == null) {
            return StringValue.EMPTY_STRING;
        }
        return StringValue.makeUStringValue(currentRegexIterator.getRegexGroup((int) ((NumericValue) sequenceArr[0].head()).longValue()));
    }
}
