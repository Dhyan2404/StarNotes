package com.sunia.HTREnginev2;

import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.LookaheadIterator;
import net.p110sf.saxon.tree.linked.AttributeImpl;
import net.p110sf.saxon.tree.linked.ElementImpl;

/* renamed from: com.sunia.HTREnginev2.yg */
/* loaded from: classes11.dex */
public final class C14703yg implements AxisIterator, LookaheadIterator {

    /* renamed from: e */
    public final ElementImpl f90676e;

    /* renamed from: f */
    public final NodeTest f90677f;

    /* renamed from: g */
    public NodeInfo f90678g;

    /* renamed from: h */
    public int f90679h = 0;

    /* renamed from: i */
    public final int f90680i;

    public C14703yg(ElementImpl elementImpl, NodeTest nodeTest) {
        this.f90676e = elementImpl;
        this.f90677f = nodeTest;
        this.f90680i = elementImpl.attributes().size();
        m58402f();
    }

    /* renamed from: f */
    public final void m58402f() {
        while (this.f90679h < this.f90680i) {
            if (this.f90676e.attributes().itemAt(this.f90679h) instanceof AttributeInfo.Deleted) {
                this.f90679h++;
            } else {
                AttributeImpl attributeImpl = new AttributeImpl(this.f90676e, this.f90679h);
                this.f90678g = attributeImpl;
                this.f90679h++;
                if (this.f90677f.test(attributeImpl)) {
                    return;
                }
            }
        }
        this.f90678g = null;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return this.f90678g != null;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
    public NodeInfo next() {
        NodeInfo nodeInfo = this.f90678g;
        if (nodeInfo == null) {
            return null;
        }
        m58402f();
        return nodeInfo;
    }
}
