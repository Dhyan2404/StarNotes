package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.expr.sort.GenericAtomicComparer;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class Compare extends CollatingFunctionFixed {
    /* renamed from: b */
    public static Int64Value m62961b(StringValue stringValue, StringValue stringValue2, AtomicComparer atomicComparer) throws XPathException {
        if (stringValue == null || stringValue2 == null) {
            return null;
        }
        int compareAtomicValues = atomicComparer.compareAtomicValues(stringValue, stringValue2);
        return compareAtomicValues < 0 ? Int64Value.MINUS_ONE : compareAtomicValues > 0 ? Int64Value.PLUS_ONE : Int64Value.ZERO;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public GroundedValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return SequenceTool.itemOrEmpty(m62961b((StringValue) sequenceArr[0].head(), (StringValue) sequenceArr[1].head(), new GenericAtomicComparer(getStringCollator(), xPathContext)));
    }
}
