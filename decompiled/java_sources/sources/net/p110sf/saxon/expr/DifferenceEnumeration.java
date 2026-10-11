package net.p110sf.saxon.expr;

import java.util.Comparator;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class DifferenceEnumeration implements SequenceIterator {

    /* renamed from: e */
    public final SequenceIterator f99231e;

    /* renamed from: f */
    public final SequenceIterator f99232f;

    /* renamed from: g */
    public NodeInfo f99233g;

    /* renamed from: h */
    public NodeInfo f99234h;

    /* renamed from: i */
    public final Comparator<? super NodeInfo> f99235i;

    public DifferenceEnumeration(SequenceIterator sequenceIterator, SequenceIterator sequenceIterator2, Comparator<? super NodeInfo> comparator) throws XPathException {
        this.f99233g = null;
        this.f99234h = null;
        this.f99231e = sequenceIterator;
        this.f99232f = sequenceIterator2;
        this.f99235i = comparator;
        this.f99233g = m62563j(sequenceIterator);
        this.f99234h = m62563j(sequenceIterator2);
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f99231e.close();
        this.f99232f.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f99231e.discharge();
        this.f99232f.discharge();
    }

    /* renamed from: f */
    public final NodeInfo m62562f() {
        NodeInfo nodeInfo = this.f99233g;
        this.f99233g = m62563j(this.f99231e);
        return nodeInfo;
    }

    /* renamed from: j */
    public final NodeInfo m62563j(SequenceIterator sequenceIterator) {
        return (NodeInfo) sequenceIterator.next();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public NodeInfo next() {
        while (true) {
            NodeInfo nodeInfo = this.f99233g;
            if (nodeInfo == null) {
                this.f99232f.close();
                return null;
            }
            NodeInfo nodeInfo2 = this.f99234h;
            if (nodeInfo2 == null) {
                return m62562f();
            }
            int compare = this.f99235i.compare(nodeInfo, nodeInfo2);
            if (compare < 0) {
                return m62562f();
            }
            if (compare > 0) {
                NodeInfo m62563j = m62563j(this.f99232f);
                this.f99234h = m62563j;
                if (m62563j == null) {
                    return m62562f();
                }
            } else {
                this.f99234h = m62563j(this.f99232f);
                this.f99233g = m62563j(this.f99231e);
            }
        }
    }
}
