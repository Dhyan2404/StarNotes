package net.p110sf.saxon.expr;

import java.util.Comparator;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.LookaheadIterator;

/* loaded from: classes11.dex */
public class UnionEnumeration implements SequenceIterator, LookaheadIterator {

    /* renamed from: e */
    public final SequenceIterator f99393e;

    /* renamed from: f */
    public final SequenceIterator f99394f;

    /* renamed from: g */
    public NodeInfo f99395g;

    /* renamed from: h */
    public NodeInfo f99396h;

    /* renamed from: i */
    public final Comparator<? super NodeInfo> f99397i;

    public UnionEnumeration(SequenceIterator sequenceIterator, SequenceIterator sequenceIterator2, Comparator<? super NodeInfo> comparator) throws XPathException {
        this.f99395g = null;
        this.f99396h = null;
        this.f99393e = sequenceIterator;
        this.f99394f = sequenceIterator2;
        this.f99397i = comparator;
        this.f99395g = m62651f(sequenceIterator);
        this.f99396h = m62651f(sequenceIterator2);
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f99393e.close();
        this.f99394f.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f99393e.discharge();
        this.f99394f.discharge();
    }

    /* renamed from: f */
    public final NodeInfo m62651f(SequenceIterator sequenceIterator) {
        return (NodeInfo) sequenceIterator.next();
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return (this.f99395g == null && this.f99396h == null) ? false : true;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public NodeInfo next() {
        NodeInfo nodeInfo;
        NodeInfo nodeInfo2 = this.f99395g;
        if (nodeInfo2 == null || (nodeInfo = this.f99396h) == null) {
            if (nodeInfo2 != null) {
                this.f99395g = m62651f(this.f99393e);
                return nodeInfo2;
            }
            NodeInfo nodeInfo3 = this.f99396h;
            if (nodeInfo3 == null) {
                return null;
            }
            this.f99396h = m62651f(this.f99394f);
            return nodeInfo3;
        }
        int compare = this.f99397i.compare(nodeInfo2, nodeInfo);
        if (compare < 0) {
            NodeInfo nodeInfo4 = this.f99395g;
            this.f99395g = m62651f(this.f99393e);
            return nodeInfo4;
        }
        if (compare > 0) {
            NodeInfo nodeInfo5 = this.f99396h;
            this.f99396h = m62651f(this.f99394f);
            return nodeInfo5;
        }
        NodeInfo nodeInfo6 = this.f99396h;
        this.f99396h = m62651f(this.f99394f);
        this.f99395g = m62651f(this.f99393e);
        return nodeInfo6;
    }
}
