package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerValue;

/* loaded from: classes11.dex */
public class Count extends SystemFunction {
    public static int count(SequenceIterator sequenceIterator) throws XPathException {
        if (SequenceTool.supportsGetLength(sequenceIterator)) {
            return SequenceTool.getLength(sequenceIterator);
        }
        int i = 0;
        while (sequenceIterator.next() != null) {
            i++;
        }
        return i;
    }

    public static int steppingCount(SequenceIterator sequenceIterator) {
        int i = 0;
        while (sequenceIterator.next() != null) {
            i++;
        }
        return i;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "CountCompiler";
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public IntegerValue[] getIntegerBounds() {
        return new IntegerValue[]{Int64Value.ZERO, Expression.MAX_SEQUENCE_LENGTH};
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "Count";
    }

    @Override // net.p110sf.saxon.expr.Callable
    public IntegerValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return Int64Value.makeIntegerValue(sequenceArr[0] instanceof GroundedValue ? ((GroundedValue) r0).getLength() : count(r0.iterate()));
    }
}
