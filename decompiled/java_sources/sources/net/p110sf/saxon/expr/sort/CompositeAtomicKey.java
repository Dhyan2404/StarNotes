package net.p110sf.saxon.expr.sort;

import java.util.List;

/* loaded from: classes11.dex */
public class CompositeAtomicKey {

    /* renamed from: a */
    public List<AtomicMatchKey> f100018a;

    public CompositeAtomicKey(List<AtomicMatchKey> list) {
        this.f100018a = list;
    }

    public boolean equals(Object obj) {
        return (obj instanceof CompositeAtomicKey) && this.f100018a.equals(((CompositeAtomicKey) obj).f100018a);
    }

    public int hashCode() {
        return this.f100018a.hashCode();
    }
}
