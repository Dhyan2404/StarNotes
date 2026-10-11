package net.p110sf.saxon.str;

import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Int64Value;

/* loaded from: classes11.dex */
public class CodepointIterator implements AtomicIterator {

    /* renamed from: e */
    public final IntIterator f101658e;

    public CodepointIterator(IntIterator intIterator) {
        this.f101658e = intIterator;
    }

    @Override // net.p110sf.saxon.tree.iter.AtomicIterator, net.p110sf.saxon.om.SequenceIterator
    public AtomicValue next() {
        if (this.f101658e.hasNext()) {
            return new Int64Value(this.f101658e.next());
        }
        return null;
    }
}
