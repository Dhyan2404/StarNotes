package net.p110sf.saxon.tree.tiny;

import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.AtomizedValueIterator;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.LookaheadIterator;

/* renamed from: net.sf.saxon.tree.tiny.d */
/* loaded from: classes11.dex */
public final class C18544d implements AxisIterator, LookaheadIterator, AtomizedValueIterator {

    /* renamed from: e */
    public final TinyTree f102634e;

    /* renamed from: f */
    public int f102635f;

    /* renamed from: g */
    public final int f102636g;

    /* renamed from: h */
    public TinyNodeImpl f102637h;

    /* renamed from: i */
    public boolean f102638i;

    public C18544d(TinyTree tinyTree, TinyNodeImpl tinyNodeImpl, int i) {
        this.f102638i = false;
        this.f102634e = tinyTree;
        this.f102636g = i;
        this.f102637h = tinyNodeImpl;
        int i2 = tinyNodeImpl.nodeNr + 1;
        this.f102635f = i2;
        if ((tinyTree.nodeKind[i2] & 15) == 1 && (tinyTree.f102598q[i2] & 1048575) == i) {
            return;
        }
        this.f102638i = true;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        int i = this.f102635f;
        if (!this.f102638i) {
            return i != -1;
        }
        int i2 = i;
        while (true) {
            TinyTree tinyTree = this.f102634e;
            i2 = tinyTree.f102595n[i2];
            if (i2 < i) {
                return false;
            }
            if ((tinyTree.nodeKind[i2] & 15) == 1 && (tinyTree.f102598q[i2] & 1048575) == this.f102636g) {
                return true;
            }
        }
    }

    @Override // net.p110sf.saxon.om.AtomizedValueIterator
    public AtomicSequence nextAtomizedValue() throws XPathException {
        if (this.f102638i) {
            int i = this.f102635f;
            while (true) {
                TinyTree tinyTree = this.f102634e;
                int i2 = tinyTree.f102595n[this.f102635f];
                this.f102635f = i2;
                if (i2 >= i) {
                    if ((tinyTree.f102598q[i2] & 1048575) == this.f102636g && (tinyTree.nodeKind[i2] & 15) == 1) {
                        break;
                    }
                } else {
                    this.f102635f = -1;
                    this.f102638i = false;
                    return null;
                }
            }
        } else if (this.f102635f == -1) {
            return null;
        }
        this.f102638i = true;
        return this.f102634e.getTypedValueOfElement(this.f102635f);
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
    public NodeInfo next() {
        if (this.f102638i) {
            int i = this.f102635f;
            while (true) {
                TinyTree tinyTree = this.f102634e;
                int i2 = tinyTree.f102595n[this.f102635f];
                this.f102635f = i2;
                if (i2 < i) {
                    this.f102635f = -1;
                    this.f102638i = false;
                    return null;
                }
                if ((tinyTree.f102598q[i2] & 1048575) == this.f102636g && (tinyTree.nodeKind[i2] & 15) == 1) {
                    break;
                }
            }
        } else if (this.f102635f == -1) {
            return null;
        }
        this.f102638i = true;
        TinyNodeImpl node = this.f102634e.getNode(this.f102635f);
        node.setParentNode(this.f102637h);
        return node;
    }
}
