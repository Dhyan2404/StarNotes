package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Base64BinaryValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class CollationKeyFn extends CollatingFunctionFixed {
    public static Base64BinaryValue getCollationKey(UnicodeString unicodeString, StringCollator stringCollator) {
        AtomicValue asAtomic = stringCollator.getCollationKey(unicodeString).asAtomic();
        if (asAtomic instanceof Base64BinaryValue) {
            return (Base64BinaryValue) asAtomic;
        }
        if (asAtomic instanceof StringValue) {
            return ((StringValue) asAtomic).getCodepointCollationKey();
        }
        throw new IllegalStateException("Collation key must be Base64Binary");
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Base64BinaryValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        StringValue stringValue = (StringValue) sequenceArr[0].head();
        return getCollationKey(stringValue.getUnicodeStringValue(), getStringCollator());
    }
}
