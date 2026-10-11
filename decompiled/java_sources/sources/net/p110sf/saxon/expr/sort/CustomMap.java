package net.p110sf.saxon.expr.sort;

import com.sunia.HTREnginev2.loe;
import java.util.ArrayList;
import java.util.List;
import net.p110sf.saxon.p111z.IntHashMap;

/* loaded from: classes11.dex */
public class CustomMap<K, V> {

    /* renamed from: a */
    public final IntHashMap<loe<K, V>> f100023a = new IntHashMap<>();

    /* renamed from: b */
    public final EqualityMatcher<K> f100024b;

    public CustomMap(EqualityMatcher<K> equalityMatcher) {
        this.f100024b = equalityMatcher;
    }

    public boolean containsKey(K k) {
        loe<K, V> loeVar = this.f100023a.get(this.f100024b.hash(k));
        if (loeVar == null) {
            return false;
        }
        while (!this.f100024b.equal(loeVar.f76709a, k)) {
            loeVar = loeVar.f76711c;
            if (loeVar == null) {
                return false;
            }
        }
        return true;
    }

    public V get(K k) {
        loe<K, V> loeVar = this.f100023a.get(this.f100024b.hash(k));
        if (loeVar == null) {
            return null;
        }
        while (!this.f100024b.equal(loeVar.f76709a, k)) {
            loeVar = loeVar.f76711c;
            if (loeVar == null) {
                return null;
            }
        }
        return loeVar.f76710b;
    }

    public List<K> keys() {
        ArrayList arrayList = new ArrayList();
        for (loe<K, V> loeVar : this.f100023a.valueSet()) {
            do {
                arrayList.add(loeVar.f76709a);
                loeVar = loeVar.f76711c;
            } while (loeVar != null);
        }
        return arrayList;
    }

    public V put(K k, V v) {
        int hash = this.f100024b.hash(k);
        loe<K, V> loeVar = this.f100023a.get(hash);
        if (loeVar == null) {
            this.f100023a.put(hash, new loe<>(k, v));
            return null;
        }
        while (!this.f100024b.equal(loeVar.f76709a, k)) {
            loe<K, V> loeVar2 = loeVar.f76711c;
            if (loeVar2 == null) {
                loeVar.f76711c = new loe<>(k, v);
                return null;
            }
            loeVar = loeVar2;
        }
        V v2 = loeVar.f76710b;
        loeVar.f76710b = v;
        return v2;
    }

    public List<V> values() {
        ArrayList arrayList = new ArrayList();
        for (loe<K, V> loeVar : this.f100023a.valueSet()) {
            do {
                arrayList.add(loeVar.f76710b);
                loeVar = loeVar.f76711c;
            } while (loeVar != null);
        }
        return arrayList;
    }
}
