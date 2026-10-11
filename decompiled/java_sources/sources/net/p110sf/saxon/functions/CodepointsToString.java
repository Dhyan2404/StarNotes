package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class CodepointsToString extends SystemFunction implements Callable {
    public static StringValue unicodeToString(SequenceIterator sequenceIterator, IntPredicateProxy intPredicateProxy) throws XPathException {
        long longValue;
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
        while (true) {
            NumericValue numericValue = (NumericValue) sequenceIterator.next();
            if (numericValue != null) {
                longValue = numericValue.longValue();
                if (longValue < 0 || longValue > 2147483647L) {
                    break;
                }
                int i = (int) longValue;
                if (!intPredicateProxy.test(i)) {
                    break;
                }
                unicodeBuilder.append(i);
            } else {
                return new StringValue(unicodeBuilder.toUnicodeString());
            }
        }
        throw new XPathException("codepoints-to-string(): invalid XML character [x" + Integer.toHexString((int) longValue) + ']', "FOCH0001");
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "CodepointsToString";
    }

    @Override // net.p110sf.saxon.expr.Callable
    public StringValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return unicodeToString(sequenceArr[0].iterate(), xPathContext.getConfiguration().getValidCharacterChecker());
    }
}
