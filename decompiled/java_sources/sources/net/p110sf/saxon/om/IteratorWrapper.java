package net.p110sf.saxon.om;

import java.util.Iterator;

/* loaded from: classes11.dex */
public class IteratorWrapper implements SequenceIterator {

    /* renamed from: e */
    public Iterator<? extends Item> f100800e;

    public IteratorWrapper(Iterator<? extends Item> it2) {
        this.f100800e = it2;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        if (this.f100800e.hasNext()) {
            return this.f100800e.next();
        }
        return null;
    }
}
