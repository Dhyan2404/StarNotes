package net.p110sf.saxon.expr.sort;

import com.sunia.HTREnginev2.noe;
import net.p110sf.saxon.p111z.IntHashMap;

/* loaded from: classes11.dex */
public class CustomSet<T> {

    /* renamed from: a */
    public final IntHashMap<noe<T>> f100025a = new IntHashMap<>();

    /* renamed from: b */
    public final EqualityMatcher<T> f100026b;

    public CustomSet(EqualityMatcher<T> equalityMatcher) {
        this.f100026b = equalityMatcher;
    }

    public boolean add(T t) {
        int hash = this.f100026b.hash(t);
        noe<T> noeVar = this.f100025a.get(hash);
        if (noeVar == null) {
            this.f100025a.put(hash, new noe<>(t));
            return true;
        }
        while (!this.f100026b.equal(noeVar.f78860a, t)) {
            noe<T> noeVar2 = noeVar.f78861b;
            if (noeVar2 == null) {
                noeVar.f78861b = new noe<>(t);
                return true;
            }
            noeVar = noeVar2;
        }
        return false;
    }

    public boolean contains(T t) {
        noe<T> noeVar = this.f100025a.get(this.f100026b.hash(t));
        if (noeVar == null) {
            return false;
        }
        while (!this.f100026b.equal(noeVar.f78860a, t)) {
            noeVar = noeVar.f78861b;
            if (noeVar == null) {
                return false;
            }
        }
        return true;
    }
}
