package com.sunia.HTREnginev2;

import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.AtomizedValueIterator;
import net.p110sf.saxon.om.CodedName;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.tiny.TinyTree;
import net.p110sf.saxon.type.SimpleType;

/* renamed from: com.sunia.HTREnginev2.kh */
/* loaded from: classes11.dex */
public final class C13993kh implements AxisIterator, AtomizedValueIterator {

    /* renamed from: e */
    public final TinyTree f75408e;

    /* renamed from: f */
    public final int f75409f;

    /* renamed from: g */
    public final NodeTest f75410g;

    /* renamed from: h */
    public int f75411h;

    /* renamed from: i */
    public int f75412i = -1;

    public C13993kh(TinyTree tinyTree, int i, NodeTest nodeTest) {
        this.f75410g = nodeTest;
        this.f75408e = tinyTree;
        this.f75409f = i;
        this.f75411h = tinyTree.f102596o[i];
    }

    public final boolean moveToNext() {
        while (true) {
            int i = this.f75411h;
            TinyTree tinyTree = this.f75408e;
            if (i >= tinyTree.f102587O || tinyTree.f102588Q[i] != this.f75409f) {
                break;
            }
            SimpleType m64565n = tinyTree.m64565n(i);
            NodeTest nodeTest = this.f75410g;
            TinyTree tinyTree2 = this.f75408e;
            if (nodeTest.matches(2, new CodedName(tinyTree2.f102589Z[this.f75411h] & 1048575, "", tinyTree2.getNamePool()), m64565n)) {
                int i2 = this.f75411h;
                this.f75411h = i2 + 1;
                this.f75412i = i2;
                if (this.f75410g instanceof NameTest) {
                    this.f75411h = Integer.MAX_VALUE;
                }
                return true;
            }
            this.f75411h++;
        }
        this.f75411h = Integer.MAX_VALUE;
        this.f75412i = -1;
        return false;
    }

    @Override // net.p110sf.saxon.om.AtomizedValueIterator
    public AtomicSequence nextAtomizedValue() throws XPathException {
        if (moveToNext()) {
            return this.f75408e.getTypedValueOfAttribute(null, this.f75412i);
        }
        return null;
    }

    @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
    public NodeInfo next() {
        if (moveToNext()) {
            return this.f75408e.m64564m(this.f75412i);
        }
        return null;
    }
}
