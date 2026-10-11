package net.p110sf.saxon.expr.sort;

import java.text.CollationKey;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Base64BinaryValue;

/* loaded from: classes11.dex */
public class CollationMatchKey implements AtomicMatchKey, Comparable<CollationMatchKey> {

    /* renamed from: e */
    public final CollationKey f100017e;

    public CollationMatchKey(CollationKey collationKey) {
        this.f100017e = collationKey;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicMatchKey
    public AtomicValue asAtomic() {
        return new Base64BinaryValue(this.f100017e.toByteArray());
    }

    public boolean equals(Object obj) {
        return (obj instanceof CollationMatchKey) && this.f100017e.equals(((CollationMatchKey) obj).f100017e);
    }

    public int hashCode() {
        return this.f100017e.hashCode();
    }

    @Override // java.lang.Comparable
    public int compareTo(CollationMatchKey collationMatchKey) {
        return this.f100017e.compareTo(collationMatchKey.f100017e);
    }
}
