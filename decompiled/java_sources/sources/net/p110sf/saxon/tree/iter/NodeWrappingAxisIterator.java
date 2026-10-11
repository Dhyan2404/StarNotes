package net.p110sf.saxon.tree.iter;

import java.util.Iterator;
import net.p110sf.saxon.om.NodeInfo;

/* loaded from: classes11.dex */
public class NodeWrappingAxisIterator<B> implements AxisIterator, LookaheadIterator {

    /* renamed from: e */
    public final Iterator<? extends B> f102452e;

    /* renamed from: f */
    public final NodeWrappingFunction<? super B, NodeInfo> f102453f;

    public NodeWrappingAxisIterator(Iterator<? extends B> it2, NodeWrappingFunction<? super B, NodeInfo> nodeWrappingFunction) {
        this.f102452e = it2;
        this.f102453f = nodeWrappingFunction;
    }

    public Iterator<? extends B> getBaseIterator() {
        return this.f102452e;
    }

    public NodeWrappingFunction<? super B, NodeInfo> getNodeWrappingFunction() {
        return this.f102453f;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return this.f102452e.hasNext();
    }

    public boolean isIgnorable(B b) {
        return false;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
    public NodeInfo next() {
        while (this.f102452e.hasNext()) {
            B next = this.f102452e.next();
            if (!isIgnorable(next)) {
                return this.f102453f.wrap(next);
            }
        }
        return null;
    }
}
