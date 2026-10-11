package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class ContainsToken extends CollatingFunctionFixed {
    /* renamed from: b */
    public static boolean m62965b(SequenceIterator sequenceIterator, UnicodeString unicodeString, StringCollator stringCollator) throws XPathException {
        Item next;
        if (unicodeString == null) {
            return false;
        }
        UnicodeString trim = Whitespace.trim(unicodeString);
        if (trim.isEmpty()) {
            return false;
        }
        while (true) {
            Item next2 = sequenceIterator.next();
            if (next2 == null) {
                return false;
            }
            Whitespace.Tokenizer tokenizer = new Whitespace.Tokenizer(next2.getUnicodeStringValue());
            do {
                next = tokenizer.next();
                if (next != null) {
                }
            } while (!stringCollator.comparesEqual(trim, next.getUnicodeStringValue()));
            tokenizer.close();
            sequenceIterator.close();
            return true;
        }
    }

    @Override // net.p110sf.saxon.functions.CollatingFunctionFixed
    public boolean isSubstringMatchingFunction() {
        return true;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return BooleanValue.get(m62965b(sequenceArr[0].iterate(), sequenceArr[1].head().getUnicodeStringValue(), getStringCollator()));
    }
}
