package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class CodepointEqual extends SystemFunction implements Callable {
    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        StringValue stringValue = (StringValue) sequenceArr[0].head();
        StringValue stringValue2 = (StringValue) sequenceArr[1].head();
        return (stringValue == null || stringValue2 == null) ? EmptySequence.getInstance() : BooleanValue.get(stringValue.getUnicodeStringValue().equals(stringValue2.getUnicodeStringValue()));
    }
}
