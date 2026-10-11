package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class Sort_2 extends Sort_1 {
    @Override // net.p110sf.saxon.functions.Sort_1, net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return doSort(getItemsToBeSorted(sequenceArr[0]), getCollation(xPathContext, sequenceArr[1]), xPathContext);
    }

    public StringCollator getCollation(XPathContext xPathContext, Sequence sequence) throws XPathException {
        StringValue stringValue = (StringValue) sequence.head();
        return stringValue == null ? xPathContext.getConfiguration().getCollation(getRetainedStaticContext().getDefaultCollationName()) : xPathContext.getConfiguration().getCollation(stringValue.getStringValue(), getStaticBaseUriString());
    }
}
