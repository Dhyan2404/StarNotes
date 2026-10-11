package net.p110sf.saxon.expr;

import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.LookaheadIterator;

/* loaded from: classes11.dex */
public class UnionIterator implements SequenceIterator, LookaheadIterator {

    /* renamed from: e */
    public final TreeSet<C18308a> f99398e;

    /* renamed from: net.sf.saxon.expr.UnionIterator$a */
    /* loaded from: classes11.dex */
    public static class C18308a {

        /* renamed from: a */
        public SequenceIterator f99399a;

        /* renamed from: b */
        public NodeInfo f99400b;

        public C18308a(SequenceIterator sequenceIterator, NodeInfo nodeInfo) {
            this.f99399a = sequenceIterator;
            this.f99400b = nodeInfo;
        }
    }

    /* renamed from: net.sf.saxon.expr.UnionIterator$b */
    /* loaded from: classes11.dex */
    public static class C18309b implements Comparator<C18308a> {

        /* renamed from: e */
        public final Comparator<? super NodeInfo> f99401e;

        public C18309b(Comparator<? super NodeInfo> comparator) {
            this.f99401e = comparator;
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(C18308a c18308a, C18308a c18308a2) {
            return this.f99401e.compare(c18308a.f99400b, c18308a2.f99400b);
        }
    }

    public UnionIterator(List<SequenceIterator> list, Comparator<? super NodeInfo> comparator) throws XPathException {
        this.f99398e = new TreeSet<>(new C18309b(comparator));
        for (SequenceIterator sequenceIterator : list) {
            for (NodeInfo nodeInfo = (NodeInfo) sequenceIterator.next(); nodeInfo != null && !this.f99398e.add(new C18308a(sequenceIterator, nodeInfo)); nodeInfo = (NodeInfo) sequenceIterator.next()) {
            }
        }
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Iterator<C18308a> it2 = this.f99398e.iterator();
        while (it2.hasNext()) {
            it2.next().f99399a.close();
        }
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        Iterator<C18308a> it2 = this.f99398e.iterator();
        while (it2.hasNext()) {
            it2.next().f99399a.discharge();
        }
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return !this.f99398e.isEmpty();
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public NodeInfo next() {
        C18308a pollFirst = this.f99398e.pollFirst();
        if (pollFirst == null) {
            return null;
        }
        SequenceIterator sequenceIterator = pollFirst.f99399a;
        for (NodeInfo nodeInfo = (NodeInfo) sequenceIterator.next(); nodeInfo != null; nodeInfo = (NodeInfo) sequenceIterator.next()) {
            if (nodeInfo.isSameNodeInfo(pollFirst.f99400b) ? false : this.f99398e.add(new C18308a(sequenceIterator, nodeInfo))) {
                break;
            }
        }
        return pollFirst.f99400b;
    }
}
