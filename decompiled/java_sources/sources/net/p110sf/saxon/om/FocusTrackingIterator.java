package net.p110sf.saxon.om;

import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.GroundedIterator;
import net.p110sf.saxon.tree.iter.LookaheadIterator;
import net.p110sf.saxon.tree.wrapper.SiblingCountingNode;
import net.p110sf.saxon.value.SequenceExtent;

/* loaded from: classes11.dex */
public class FocusTrackingIterator implements FocusIterator, LookaheadIterator, GroundedIterator, LastPositionFinder {

    /* renamed from: j */
    public static final /* synthetic */ boolean f100784j = false;

    /* renamed from: e */
    public SequenceIterator f100785e;

    /* renamed from: f */
    public Item f100786f;

    /* renamed from: g */
    public int f100787g = 0;

    /* renamed from: h */
    public int f100788h = -1;

    /* renamed from: i */
    public C18420b f100789i;

    /* renamed from: net.sf.saxon.om.FocusTrackingIterator$b */
    /* loaded from: classes11.dex */
    public static class C18420b {

        /* renamed from: a */
        public NodeTest f100790a;

        /* renamed from: b */
        public NodeInfo f100791b;

        /* renamed from: c */
        public int f100792c;

        public C18420b() {
            this.f100790a = null;
            this.f100791b = null;
            this.f100792c = -1;
        }
    }

    public FocusTrackingIterator(SequenceIterator sequenceIterator) {
        this.f100785e = sequenceIterator;
    }

    public static FocusTrackingIterator track(SequenceIterator sequenceIterator) {
        return new FocusTrackingIterator(sequenceIterator);
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f100785e.close();
    }

    @Override // net.p110sf.saxon.om.FocusIterator
    public Item current() {
        return this.f100786f;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f100785e.discharge();
    }

    @Override // net.p110sf.saxon.om.FocusIterator, net.p110sf.saxon.expr.LastPositionFinder
    public int getLength() {
        if (this.f100788h == -1) {
            if (SequenceTool.supportsGetLength(this.f100785e)) {
                this.f100788h = SequenceTool.getLength(this.f100785e);
            }
            if (this.f100788h == -1) {
                GroundedValue makeResidue = SequenceExtent.makeResidue(this.f100785e);
                this.f100788h = this.f100787g + makeResidue.getLength();
                this.f100785e = makeResidue.iterate();
            }
        }
        return this.f100788h;
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public GroundedValue getResidue() {
        return SequenceExtent.from(this);
    }

    public int getSiblingPosition(NodeInfo nodeInfo, NodeTest nodeTest, int i) {
        if ((nodeInfo instanceof SiblingCountingNode) && (nodeTest instanceof AnyNodeTest)) {
            return ((SiblingCountingNode) nodeInfo).getSiblingPosition();
        }
        C18420b c18420b = this.f100789i;
        if (c18420b == null) {
            this.f100789i = new C18420b();
        } else if (c18420b.f100790a.equals(nodeTest) && nodeInfo.equals(this.f100789i.f100791b)) {
            return this.f100789i.f100792c;
        }
        C18420b c18420b2 = this.f100789i;
        AxisIterator iterateAxis = nodeInfo.iterateAxis(11, nodeTest);
        int i2 = 1;
        do {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                c18420b2.f100791b = nodeInfo;
                c18420b2.f100792c = i2;
                c18420b2.f100790a = nodeTest;
                return i2;
            }
            if (next.equals(c18420b2.f100791b) && nodeTest.equals(c18420b2.f100790a)) {
                int i3 = i2 + c18420b2.f100792c;
                c18420b2.f100791b = nodeInfo;
                c18420b2.f100792c = i3;
                return i3;
            }
            i2++;
        } while (i2 <= i);
        return i2;
    }

    public SequenceIterator getUnderlyingIterator() {
        return this.f100785e;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return ((LookaheadIterator) this.f100785e).hasNext();
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public boolean isActuallyGrounded() {
        SequenceIterator sequenceIterator = this.f100785e;
        return (sequenceIterator instanceof GroundedIterator) && ((GroundedIterator) sequenceIterator).isActuallyGrounded();
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public GroundedValue materialize() {
        return SequenceTool.toGroundedValue(this.f100785e);
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        Item next = this.f100785e.next();
        this.f100786f = next;
        if (next == null) {
            this.f100787g = -1;
        } else {
            this.f100787g++;
        }
        return next;
    }

    @Override // net.p110sf.saxon.om.FocusIterator
    public int position() {
        return this.f100787g;
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public boolean supportsGetLength() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        SequenceIterator sequenceIterator = this.f100785e;
        return (sequenceIterator instanceof LookaheadIterator) && ((LookaheadIterator) sequenceIterator).supportsHasNext();
    }
}
