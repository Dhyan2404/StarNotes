package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class Tokenize_1 extends SystemFunction {
    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        Item head = sequenceArr[0].head();
        return head == null ? EmptySequence.getInstance() : SequenceTool.toLazySequence(new Whitespace.Tokenizer(head.getUnicodeStringValue()));
    }
}
