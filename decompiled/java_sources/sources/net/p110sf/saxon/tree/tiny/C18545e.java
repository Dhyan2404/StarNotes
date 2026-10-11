package net.p110sf.saxon.tree.tiny;

import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.type.UType;

/* renamed from: net.sf.saxon.tree.tiny.e */
/* loaded from: classes11.dex */
public final class C18545e implements AxisIterator {

    /* renamed from: e */
    public final TinyTree f102639e;

    /* renamed from: f */
    public NodeInfo f102640f;

    /* renamed from: g */
    public int f102641g;

    /* renamed from: h */
    public final boolean f102642h;

    /* renamed from: i */
    public final IntPredicateProxy f102643i;

    /* renamed from: j */
    public NodeInfo f102644j = null;

    /* renamed from: k */
    public final NodeTest f102645k;

    /* renamed from: l */
    public final boolean f102646l;

    public C18545e(TinyTree tinyTree, TinyNodeImpl tinyNodeImpl, NodeTest nodeTest, boolean z) {
        this.f102642h = z;
        this.f102639e = tinyTree;
        this.f102640f = tinyNodeImpl;
        this.f102641g = tinyTree.f102594m[tinyNodeImpl.nodeNr] - 1;
        this.f102645k = nodeTest;
        this.f102643i = nodeTest.getMatcher(tinyTree);
        this.f102646l = nodeTest.getUType().overlaps(UType.TEXT);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0087 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x007f A[SYNTHETIC] */
    @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.om.NodeInfo next() {
        /*
            r5 = this;
            net.sf.saxon.om.NodeInfo r0 = r5.f102644j
            r1 = 0
            if (r0 == 0) goto La
            r5.f102640f = r0
            r5.f102644j = r1
            return r0
        La:
            net.sf.saxon.om.NodeInfo r0 = r5.f102640f
            if (r0 != 0) goto Lf
            return r1
        Lf:
            boolean r2 = r0 instanceof net.sf.saxon.tree.tiny.TinyTextualElement.TinyTextualElementText
            if (r2 == 0) goto L19
            net.sf.saxon.om.NodeInfo r0 = r0.getParent()
            r5.f102640f = r0
        L19:
            net.sf.saxon.om.NodeInfo r0 = r5.f102640f
            net.sf.saxon.tree.tiny.TinyNodeImpl r0 = (net.p110sf.saxon.tree.tiny.TinyNodeImpl) r0
            int r0 = r0.nodeNr
        L1f:
            boolean r2 = r5.f102642h
            if (r2 != 0) goto L3a
        L23:
            int r0 = r0 + (-1)
            int r2 = r5.f102641g
            if (r2 < 0) goto L47
            net.sf.saxon.tree.tiny.TinyTree r3 = r5.f102639e
            short[] r3 = r3.f102594m
            short r3 = r3[r0]
            if (r3 != r2) goto L47
            int r3 = r2 + (-1)
            r5.f102641g = r3
            if (r2 > 0) goto L23
            r5.f102640f = r1
            return r1
        L3a:
            net.sf.saxon.tree.tiny.TinyTree r2 = r5.f102639e
            short[] r2 = r2.f102594m
            short r2 = r2[r0]
            if (r2 != 0) goto L45
            r5.f102640f = r1
            return r1
        L45:
            int r0 = r0 + (-1)
        L47:
            boolean r2 = r5.f102646l
            if (r2 == 0) goto L7f
            net.sf.saxon.tree.tiny.TinyTree r2 = r5.f102639e
            byte[] r3 = r2.nodeKind
            r3 = r3[r0]
            r4 = 17
            if (r3 != r4) goto L7f
            net.sf.saxon.tree.tiny.TinyNodeImpl r2 = r2.getNode(r0)
            net.sf.saxon.tree.tiny.TinyTextualElement r2 = (net.p110sf.saxon.tree.tiny.TinyTextualElement) r2
            net.sf.saxon.tree.tiny.TinyTextualElement$TinyTextualElementText r3 = r2.getTextNode()
            net.sf.saxon.pattern.NodeTest r4 = r5.f102645k
            boolean r4 = r4.test(r3)
            if (r4 == 0) goto L74
            net.sf.saxon.pattern.NodeTest r0 = r5.f102645k
            boolean r0 = r0.test(r2)
            if (r0 == 0) goto L71
            r5.f102644j = r2
        L71:
            r5.f102640f = r3
            return r3
        L74:
            net.sf.saxon.pattern.NodeTest r3 = r5.f102645k
            boolean r3 = r3.test(r2)
            if (r3 == 0) goto L1f
            r5.f102640f = r2
            return r2
        L7f:
            net.sf.saxon.z.IntPredicateProxy r2 = r5.f102643i
            boolean r2 = r2.test(r0)
            if (r2 == 0) goto L90
            net.sf.saxon.tree.tiny.TinyTree r1 = r5.f102639e
            net.sf.saxon.tree.tiny.TinyNodeImpl r0 = r1.getNode(r0)
            r5.f102640f = r0
            return r0
        L90:
            net.sf.saxon.tree.tiny.TinyTree r2 = r5.f102639e
            short[] r2 = r2.f102594m
            short r2 = r2[r0]
            if (r2 != 0) goto L1f
            r5.f102640f = r1
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.tree.tiny.C18545e.next():net.sf.saxon.om.NodeInfo");
    }
}
