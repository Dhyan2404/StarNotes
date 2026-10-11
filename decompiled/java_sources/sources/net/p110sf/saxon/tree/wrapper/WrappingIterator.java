package net.p110sf.saxon.tree.wrapper;

import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.tree.iter.AxisIterator;

/* loaded from: classes11.dex */
public class WrappingIterator implements AxisIterator {

    /* renamed from: e */
    public AxisIterator f102731e;

    /* renamed from: f */
    public VirtualNode f102732f;

    /* renamed from: g */
    public NodeInfo f102733g;

    /* renamed from: h */
    public boolean f102734h = false;

    /* renamed from: i */
    public WrappingFunction f102735i;

    public WrappingIterator(AxisIterator axisIterator, WrappingFunction wrappingFunction, VirtualNode virtualNode) {
        this.f102731e = axisIterator;
        this.f102735i = wrappingFunction;
        this.f102732f = virtualNode;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f102731e.close();
    }

    public NodeInfo current() {
        return this.f102733g;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f102731e.discharge();
    }

    @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
    public NodeInfo next() {
        NodeInfo next = this.f102731e.next();
        if (next == null) {
            this.f102733g = null;
            return null;
        }
        if (this.f102734h) {
            this.f102733g = next;
        } else {
            this.f102733g = this.f102735i.makeWrapper(next, this.f102732f);
        }
        return this.f102733g;
    }
}
