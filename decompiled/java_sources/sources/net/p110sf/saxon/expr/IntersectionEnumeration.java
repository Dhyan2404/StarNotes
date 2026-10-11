package net.p110sf.saxon.expr;

import java.util.Comparator;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class IntersectionEnumeration implements SequenceIterator {

    /* renamed from: e */
    public final SequenceIterator f99267e;

    /* renamed from: f */
    public final SequenceIterator f99268f;

    /* renamed from: g */
    public NodeInfo f99269g;

    /* renamed from: h */
    public NodeInfo f99270h;

    /* renamed from: i */
    public final Comparator<? super NodeInfo> f99271i;

    public IntersectionEnumeration(SequenceIterator sequenceIterator, SequenceIterator sequenceIterator2, Comparator<? super NodeInfo> comparator) throws XPathException {
        this.f99267e = sequenceIterator;
        this.f99268f = sequenceIterator2;
        this.f99271i = comparator;
        this.f99269g = m62590f(sequenceIterator);
        this.f99270h = m62590f(sequenceIterator2);
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f99267e.close();
        this.f99268f.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f99267e.discharge();
        this.f99268f.discharge();
    }

    /* renamed from: f */
    public final NodeInfo m62590f(SequenceIterator sequenceIterator) {
        return (NodeInfo) sequenceIterator.next();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public NodeInfo next() {
        NodeInfo nodeInfo;
        if (this.f99269g == null) {
            this.f99268f.close();
            return null;
        }
        if (this.f99270h == null) {
            this.f99267e.close();
            return null;
        }
        while (true) {
            NodeInfo nodeInfo2 = this.f99269g;
            if (nodeInfo2 == null || (nodeInfo = this.f99270h) == null) {
                break;
            }
            int compare = this.f99271i.compare(nodeInfo2, nodeInfo);
            if (compare < 0) {
                this.f99269g = m62590f(this.f99267e);
            } else if (compare > 0) {
                this.f99270h = m62590f(this.f99268f);
            } else {
                NodeInfo nodeInfo3 = this.f99270h;
                this.f99270h = m62590f(this.f99268f);
                this.f99269g = m62590f(this.f99267e);
                return nodeInfo3;
            }
        }
        return null;
    }
}
