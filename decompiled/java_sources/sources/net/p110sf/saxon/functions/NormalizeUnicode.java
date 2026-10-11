package net.p110sf.saxon.functions;

import java.text.Normalizer;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class NormalizeUnicode extends SystemFunction {
    public static String normalize(String str, String str2, XPathContext xPathContext) throws XPathException {
        Normalizer.Form form;
        if (str2.equalsIgnoreCase("NFC")) {
            form = Normalizer.Form.NFC;
        } else if (str2.equalsIgnoreCase("NFD")) {
            form = Normalizer.Form.NFD;
        } else if (str2.equalsIgnoreCase("NFKC")) {
            form = Normalizer.Form.NFKC;
        } else {
            if (!str2.equalsIgnoreCase("NFKD")) {
                if (str2.isEmpty()) {
                    return str;
                }
                XPathException xPathException = new XPathException("Normalization form " + str2 + " is not supported");
                xPathException.setErrorCode("FOCH0003");
                xPathException.setXPathContext(xPathContext);
                throw xPathException;
            }
            form = Normalizer.Form.NFKD;
        }
        return Normalizer.normalize(str, form);
    }

    @Override // net.p110sf.saxon.expr.Callable
    public StringValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        StringValue stringValue = (StringValue) sequenceArr[0].head();
        if (stringValue == null) {
            return StringValue.EMPTY_STRING;
        }
        return new StringValue(normalize(stringValue.getStringValue(), sequenceArr.length == 1 ? "NFC" : Whitespace.trim(sequenceArr[1].head().getStringValue()), xPathContext));
    }
}
