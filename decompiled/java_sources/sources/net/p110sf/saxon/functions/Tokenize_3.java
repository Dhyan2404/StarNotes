package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.EmptySequence;

/* loaded from: classes11.dex */
public class Tokenize_3 extends RegexFunction {
    @Override // net.p110sf.saxon.functions.RegexFunction
    public boolean allowRegexMatchingEmptyString() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        AtomicValue atomicValue = (AtomicValue) sequenceArr[0].head();
        if (atomicValue == null) {
            return EmptySequence.getInstance();
        }
        UnicodeString unicodeStringValue = atomicValue.getUnicodeStringValue();
        return unicodeStringValue.isEmpty() ? EmptySequence.getInstance() : SequenceTool.toLazySequence(getRegularExpression(sequenceArr).tokenize(unicodeStringValue));
    }
}
