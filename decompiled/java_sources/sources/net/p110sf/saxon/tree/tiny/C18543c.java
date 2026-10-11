package net.p110sf.saxon.tree.tiny;

import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.tree.iter.AxisIterator;

/* renamed from: net.sf.saxon.tree.tiny.c */
/* loaded from: classes11.dex */
public final class C18543c implements AxisIterator {

    /* renamed from: m */
    public static final /* synthetic */ boolean f102625m = false;

    /* renamed from: e */
    public final TinyTree f102626e;

    /* renamed from: f */
    public final TinyNodeImpl f102627f;

    /* renamed from: g */
    public NodeInfo f102628g;

    /* renamed from: h */
    public final NodeTest f102629h;

    /* renamed from: i */
    public final boolean f102630i;

    /* renamed from: j */
    public int f102631j = 0;

    /* renamed from: k */
    public final IntPredicateProxy f102632k;

    /* renamed from: l */
    public NodeInfo f102633l;

    public C18543c(TinyTree tinyTree, TinyNodeImpl tinyNodeImpl, NodeTest nodeTest, boolean z) {
        this.f102626e = tinyTree;
        this.f102629h = nodeTest;
        this.f102627f = tinyNodeImpl;
        this.f102630i = z;
        this.f102632k = nodeTest.getMatcher(tinyTree);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0051  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008a -> B:12:0x0018). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x009b -> B:12:0x0018). Please report as a decompilation issue!!! */
    @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.om.NodeInfo next() {
        /*
            r6 = this;
            net.sf.saxon.om.NodeInfo r0 = r6.f102633l
            r1 = 0
            if (r0 == 0) goto L8
            r6.f102633l = r1
            return r0
        L8:
            int r0 = r6.f102631j
            r2 = -1
            if (r0 > 0) goto L32
            if (r0 >= 0) goto L10
            return r1
        L10:
            net.sf.saxon.tree.tiny.TinyNodeImpl r0 = r6.f102627f
            int r0 = r0.nodeNr
            boolean r3 = r6.f102630i
            if (r3 == 0) goto L1b
        L18:
            int r0 = r0 + 1
            goto L44
        L1b:
            net.sf.saxon.tree.tiny.TinyTree r3 = r6.f102626e
            int[] r4 = r3.f102595n
            r4 = r4[r0]
            if (r4 <= r0) goto L25
            r0 = r4
            goto L44
        L25:
            short[] r0 = r3.f102594m
            short r0 = r0[r4]
            if (r0 != 0) goto L30
            r6.f102628g = r1
            r6.f102631j = r2
            return r1
        L30:
            r0 = r4
            goto L1b
        L32:
            net.sf.saxon.om.NodeInfo r0 = r6.f102628g
            boolean r3 = r0 instanceof net.sf.saxon.tree.tiny.TinyTextualElement.TinyTextualElementText
            if (r3 == 0) goto L3f
            net.sf.saxon.om.NodeInfo r0 = r0.getParent()
            net.sf.saxon.tree.tiny.TinyNodeImpl r0 = (net.p110sf.saxon.tree.tiny.TinyNodeImpl) r0
            goto L41
        L3f:
            net.sf.saxon.tree.tiny.TinyNodeImpl r0 = (net.p110sf.saxon.tree.tiny.TinyNodeImpl) r0
        L41:
            int r0 = r0.nodeNr
            goto L18
        L44:
            net.sf.saxon.tree.tiny.TinyTree r3 = r6.f102626e
            short[] r4 = r3.f102594m
            short r4 = r4[r0]
            if (r4 != 0) goto L51
            r6.f102628g = r1
            r6.f102631j = r2
            return r1
        L51:
            byte[] r4 = r3.nodeKind
            r4 = r4[r0]
            r5 = 17
            if (r4 != r5) goto L95
            net.sf.saxon.tree.tiny.TinyNodeImpl r3 = r3.getNode(r0)
            net.sf.saxon.tree.tiny.TinyTextualElement r3 = (net.p110sf.saxon.tree.tiny.TinyTextualElement) r3
            net.sf.saxon.tree.tiny.TinyTextualElement$TinyTextualElementText r3 = r3.getTextNode()
            net.sf.saxon.z.IntPredicateProxy r4 = r6.f102632k
            boolean r4 = r4.test(r0)
            if (r4 == 0) goto L84
            net.sf.saxon.pattern.NodeTest r1 = r6.f102629h
            boolean r1 = r1.test(r3)
            if (r1 == 0) goto L75
            r6.f102633l = r3
        L75:
            int r1 = r6.f102631j
            int r1 = r1 + 1
            r6.f102631j = r1
            net.sf.saxon.tree.tiny.TinyTree r1 = r6.f102626e
            net.sf.saxon.tree.tiny.TinyNodeImpl r0 = r1.getNode(r0)
            r6.f102628g = r0
            return r0
        L84:
            net.sf.saxon.pattern.NodeTest r4 = r6.f102629h
            boolean r4 = r4.test(r3)
            if (r4 == 0) goto Lac
            int r0 = r6.f102631j
            int r0 = r0 + 1
            r6.f102631j = r0
            r6.f102628g = r3
            return r3
        L95:
            net.sf.saxon.z.IntPredicateProxy r3 = r6.f102632k
            boolean r3 = r3.test(r0)
            if (r3 == 0) goto Lac
            int r1 = r6.f102631j
            int r1 = r1 + 1
            r6.f102631j = r1
            net.sf.saxon.tree.tiny.TinyTree r1 = r6.f102626e
            net.sf.saxon.tree.tiny.TinyNodeImpl r0 = r1.getNode(r0)
            r6.f102628g = r0
            return r0
        Lac:
            goto L18
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.tree.tiny.C18543c.next():net.sf.saxon.om.NodeInfo");
    }
}
