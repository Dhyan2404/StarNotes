package net.p110sf.saxon.tree.tiny;

import net.p110sf.saxon.om.AtomizedValueIterator;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.p111z.IntSetPredicate;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.LookaheadIterator;

/* renamed from: net.sf.saxon.tree.tiny.g */
/* loaded from: classes11.dex */
public final class C18547g implements AxisIterator, LookaheadIterator, AtomizedValueIterator {

    /* renamed from: e */
    public final TinyTree f102653e;

    /* renamed from: f */
    public int f102654f;

    /* renamed from: g */
    public final NodeTest f102655g;

    /* renamed from: h */
    public final TinyNodeImpl f102656h;

    /* renamed from: i */
    public final TinyNodeImpl f102657i;

    /* renamed from: j */
    public final boolean f102658j;

    /* renamed from: k */
    public boolean f102659k;

    /* renamed from: l */
    public final IntPredicateProxy f102660l;

    public C18547g(TinyTree tinyTree, TinyNodeImpl tinyNodeImpl, NodeTest nodeTest, boolean z) {
        int i;
        this.f102659k = false;
        this.f102653e = tinyTree;
        this.f102655g = nodeTest;
        if (nodeTest == null) {
            this.f102660l = IntSetPredicate.ALWAYS_TRUE;
        } else {
            this.f102660l = nodeTest.getMatcher(tinyTree);
        }
        this.f102656h = tinyNodeImpl;
        this.f102658j = z;
        if (z) {
            this.f102657i = tinyNodeImpl;
            this.f102654f = tinyNodeImpl.nodeNr + 1;
        } else {
            TinyNodeImpl parent = tinyNodeImpl.getParent();
            this.f102657i = parent;
            if (parent == null) {
                this.f102654f = -1;
            } else {
                this.f102654f = tinyTree.f102595n[tinyNodeImpl.nodeNr];
                while (true) {
                    byte[] bArr = tinyTree.nodeKind;
                    i = this.f102654f;
                    if (bArr[i] != 12) {
                        break;
                    } else {
                        this.f102654f = tinyTree.f102595n[i];
                    }
                }
                if (i < tinyNodeImpl.nodeNr) {
                    this.f102654f = -1;
                }
            }
        }
        int i2 = this.f102654f;
        if (i2 < 0 || nodeTest == null || this.f102660l.test(i2)) {
            return;
        }
        this.f102659k = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002e, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x001c, code lost:
    
        r0 = r1[r0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0020, code lost:
    
        if (r0 < r5.f102654f) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0028, code lost:
    
        if (r5.f102660l.test(r0) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000d, code lost:
    
        if (r5.f102655g == null) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
    
        r0 = r1[r0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0019, code lost:
    
        if (r5.f102653e.nodeKind[r0] == 12) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002c, code lost:
    
        if (r0 >= r5.f102654f) goto L16;
     */
    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean hasNext() {
        /*
            r5 = this;
            int r0 = r5.f102654f
            boolean r1 = r5.f102659k
            r2 = 0
            if (r1 == 0) goto L2f
            net.sf.saxon.tree.tiny.TinyTree r1 = r5.f102653e
            int[] r1 = r1.f102595n
            net.sf.saxon.pattern.NodeTest r3 = r5.f102655g
            if (r3 != 0) goto L1c
        Lf:
            r0 = r1[r0]
            net.sf.saxon.tree.tiny.TinyTree r3 = r5.f102653e
            byte[] r3 = r3.nodeKind
            r3 = r3[r0]
            r4 = 12
            if (r3 == r4) goto Lf
            goto L2a
        L1c:
            r0 = r1[r0]
            int r3 = r5.f102654f
            if (r0 < r3) goto L2a
            net.sf.saxon.z.IntPredicateProxy r3 = r5.f102660l
            boolean r3 = r3.test(r0)
            if (r3 == 0) goto L1c
        L2a:
            int r5 = r5.f102654f
            if (r0 >= r5) goto L2f
            return r2
        L2f:
            r5 = -1
            if (r0 == r5) goto L33
            r2 = 1
        L33:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.tree.tiny.C18547g.hasNext():boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0035, code lost:
    
        r6.f102654f = -1;
        r6.f102659k = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003a, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0021, code lost:
    
        r4 = r3[r6.f102654f];
        r6.f102654f = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
    
        if (r4 < r0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002f, code lost:
    
        if (r6.f102660l.test(r4) == false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000e, code lost:
    
        if (r6.f102655g == null) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0010, code lost:
    
        r4 = r3[r6.f102654f];
        r6.f102654f = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001e, code lost:
    
        if (r6.f102653e.nodeKind[r4] == 12) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0033, code lost:
    
        if (r6.f102654f >= r0) goto L17;
     */
    @Override // net.p110sf.saxon.om.AtomizedValueIterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.om.AtomicSequence nextAtomizedValue() throws net.p110sf.saxon.trans.XPathException {
        /*
            r6 = this;
            boolean r0 = r6.f102659k
            r1 = 0
            r2 = -1
            if (r0 == 0) goto L3b
            int r0 = r6.f102654f
            net.sf.saxon.tree.tiny.TinyTree r3 = r6.f102653e
            int[] r3 = r3.f102595n
            net.sf.saxon.pattern.NodeTest r4 = r6.f102655g
            if (r4 != 0) goto L21
        L10:
            int r4 = r6.f102654f
            r4 = r3[r4]
            r6.f102654f = r4
            net.sf.saxon.tree.tiny.TinyTree r5 = r6.f102653e
            byte[] r5 = r5.nodeKind
            r4 = r5[r4]
            r5 = 12
            if (r4 == r5) goto L10
            goto L31
        L21:
            int r4 = r6.f102654f
            r4 = r3[r4]
            r6.f102654f = r4
            if (r4 < r0) goto L31
            net.sf.saxon.z.IntPredicateProxy r5 = r6.f102660l
            boolean r4 = r5.test(r4)
            if (r4 == 0) goto L21
        L31:
            int r3 = r6.f102654f
            if (r3 >= r0) goto L3b
            r6.f102654f = r2
            r0 = 0
            r6.f102659k = r0
            return r1
        L3b:
            int r0 = r6.f102654f
            if (r0 != r2) goto L40
            return r1
        L40:
            r1 = 1
            r6.f102659k = r1
            net.sf.saxon.tree.tiny.TinyTree r6 = r6.f102653e
            byte[] r2 = r6.nodeKind
            r2 = r2[r0]
            if (r2 == r1) goto L7c
            r1 = 17
            if (r2 == r1) goto L7c
            r1 = 3
            if (r2 == r1) goto L73
            r1 = 4
            if (r2 == r1) goto L6a
            r1 = 7
            if (r2 == r1) goto L65
            r1 = 8
            if (r2 != r1) goto L5d
            goto L65
        L5d:
            java.lang.AssertionError r6 = new java.lang.AssertionError
            java.lang.String r0 = "Unknown node kind on child axis"
            r6.<init>(r0)
            throw r6
        L65:
            net.sf.saxon.value.AtomicValue r6 = r6.m64562k(r0)
            return r6
        L6a:
            net.sf.saxon.str.UnicodeString r6 = net.p110sf.saxon.tree.tiny.WhitespaceTextImpl.getStringValue(r6, r0)
            net.sf.saxon.value.StringValue r6 = net.p110sf.saxon.value.StringValue.makeUntypedAtomic(r6)
            return r6
        L73:
            net.sf.saxon.str.UnicodeString r6 = net.p110sf.saxon.tree.tiny.TinyTextImpl.getStringValue(r6, r0)
            net.sf.saxon.value.StringValue r6 = net.p110sf.saxon.value.StringValue.makeUntypedAtomic(r6)
            return r6
        L7c:
            net.sf.saxon.om.AtomicSequence r6 = r6.getTypedValueOfElement(r0)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.tree.tiny.C18547g.nextAtomizedValue():net.sf.saxon.om.AtomicSequence");
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0035, code lost:
    
        r6.f102654f = -1;
        r6.f102659k = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003a, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0021, code lost:
    
        r4 = r3[r6.f102654f];
        r6.f102654f = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
    
        if (r4 < r0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002f, code lost:
    
        if (r6.f102660l.test(r4) == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000e, code lost:
    
        if (r6.f102655g == null) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0010, code lost:
    
        r4 = r3[r6.f102654f];
        r6.f102654f = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001e, code lost:
    
        if (r6.f102653e.nodeKind[r4] == 12) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0033, code lost:
    
        if (r6.f102654f >= r0) goto L17;
     */
    @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.om.NodeInfo next() {
        /*
            r6 = this;
            boolean r0 = r6.f102659k
            r1 = 0
            r2 = -1
            if (r0 == 0) goto L3b
            int r0 = r6.f102654f
            net.sf.saxon.tree.tiny.TinyTree r3 = r6.f102653e
            int[] r3 = r3.f102595n
            net.sf.saxon.pattern.NodeTest r4 = r6.f102655g
            if (r4 != 0) goto L21
        L10:
            int r4 = r6.f102654f
            r4 = r3[r4]
            r6.f102654f = r4
            net.sf.saxon.tree.tiny.TinyTree r5 = r6.f102653e
            byte[] r5 = r5.nodeKind
            r4 = r5[r4]
            r5 = 12
            if (r4 == r5) goto L10
            goto L31
        L21:
            int r4 = r6.f102654f
            r4 = r3[r4]
            r6.f102654f = r4
            if (r4 < r0) goto L31
            net.sf.saxon.z.IntPredicateProxy r5 = r6.f102660l
            boolean r4 = r5.test(r4)
            if (r4 == 0) goto L21
        L31:
            int r3 = r6.f102654f
            if (r3 >= r0) goto L3b
            r6.f102654f = r2
            r0 = 0
            r6.f102659k = r0
            return r1
        L3b:
            int r0 = r6.f102654f
            if (r0 != r2) goto L40
            return r1
        L40:
            r1 = 1
            r6.f102659k = r1
            net.sf.saxon.tree.tiny.TinyTree r1 = r6.f102653e
            net.sf.saxon.tree.tiny.TinyNodeImpl r0 = r1.getNode(r0)
            net.sf.saxon.tree.tiny.TinyNodeImpl r6 = r6.f102657i
            r0.setParentNode(r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.tree.tiny.C18547g.next():net.sf.saxon.om.NodeInfo");
    }
}
