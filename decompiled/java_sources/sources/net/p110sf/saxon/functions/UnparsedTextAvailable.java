package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class UnparsedTextAvailable extends UnparsedTextFunction implements Callable {
    public boolean evalUnparsedTextAvailable(StringValue stringValue, String str, XPathContext xPathContext) {
        try {
            UnparsedText.evalUnparsedText(stringValue, getStaticBaseUriString(), str, xPathContext);
            return true;
        } catch (XPathException unused) {
            return false;
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        StringValue stringValue = (StringValue) sequenceArr[0].head();
        if (stringValue == null) {
            return BooleanValue.FALSE;
        }
        return BooleanValue.get(evalUnparsedTextAvailable(stringValue, getArity() == 2 ? sequenceArr[1].head().getStringValue() : null, xPathContext));
    }
}
