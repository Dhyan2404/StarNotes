package net.p110sf.saxon.tree.iter;

import net.p110sf.saxon.om.NodeInfo;

/* loaded from: classes11.dex */
public class ConcatenatingAxisIterator implements AxisIterator {

    /* renamed from: e */
    public AxisIterator f102437e;

    /* renamed from: f */
    public AxisIterator f102438f;

    /* renamed from: g */
    public AxisIterator f102439g;

    public ConcatenatingAxisIterator(AxisIterator axisIterator, AxisIterator axisIterator2) {
        this.f102437e = axisIterator;
        this.f102438f = axisIterator2;
        this.f102439g = axisIterator;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f102437e.close();
        this.f102438f.close();
    }

    @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
    public NodeInfo next() {
        NodeInfo next = this.f102439g.next();
        if (next != null || this.f102439g != this.f102437e) {
            return next;
        }
        AxisIterator axisIterator = this.f102438f;
        this.f102439g = axisIterator;
        return axisIterator.next();
    }
}
