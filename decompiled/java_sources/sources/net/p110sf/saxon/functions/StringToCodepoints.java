package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class StringToCodepoints extends SystemFunction {
    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        StringValue stringValue = (StringValue) sequenceArr[0].head();
        return stringValue == null ? EmptySequence.getInstance() : SequenceTool.toLazySequence(stringValue.iterateCharacters());
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public IntegerValue[] getIntegerBounds() {
        return new IntegerValue[]{Int64Value.PLUS_ONE, Int64Value.makeIntegerValue(1114111L)};
    }
}
