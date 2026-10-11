package com.sunia.HTREnginev2;

import net.p110sf.saxon.tree.linked.NodeImpl;

/* loaded from: classes11.dex */
public final class xog extends rnn {

    /* renamed from: j */
    public final NodeImpl f89908j;

    /* JADX WARN: Removed duplicated region for block: B:15:0x003c A[LOOP:1: B:13:0x0034->B:15:0x003c, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public xog(net.p110sf.saxon.tree.linked.NodeImpl r3, net.p110sf.saxon.pattern.NodeTest r4) {
        /*
            r2 = this;
            r2.<init>(r3, r4)
            net.sf.saxon.om.NodeInfo r4 = r3.getRoot()
            net.sf.saxon.tree.linked.NodeImpl r4 = (net.p110sf.saxon.tree.linked.NodeImpl) r4
            r2.f89908j = r4
            int r0 = r3.getNodeKind()
            r1 = 2
            if (r0 == r1) goto L2a
            r1 = 13
            if (r0 != r1) goto L17
            goto L2a
        L17:
            net.sf.saxon.tree.linked.NodeImpl r4 = r3.getNextSibling()
            r2.f83285f = r4
            if (r4 != 0) goto L23
            net.sf.saxon.tree.linked.NodeImpl r3 = r3.getParent()
        L23:
            net.sf.saxon.tree.linked.NodeImpl r4 = r2.f83285f
            if (r4 != 0) goto L34
            if (r3 != 0) goto L17
            goto L34
        L2a:
            net.sf.saxon.tree.linked.NodeImpl r3 = r3.getParent()
            net.sf.saxon.tree.linked.NodeImpl r3 = r3.getNextInDocument(r4)
            r2.f83285f = r3
        L34:
            net.sf.saxon.tree.linked.NodeImpl r3 = r2.f83285f
            boolean r3 = r2.mo55713j(r3)
            if (r3 != 0) goto L40
            r2.mo53944w()
            goto L34
        L40:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.xog.<init>(net.sf.saxon.tree.linked.NodeImpl, net.sf.saxon.pattern.NodeTest):void");
    }

    @Override // com.sunia.HTREnginev2.rnn
    /* renamed from: w */
    public void mo53944w() {
        this.f83285f = this.f83285f.getNextInDocument(this.f89908j);
    }
}
