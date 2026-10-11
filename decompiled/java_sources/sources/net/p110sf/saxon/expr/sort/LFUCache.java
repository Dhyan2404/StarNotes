package net.p110sf.saxon.expr.sort;

import com.sunia.HTREnginev2.nui;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes11.dex */
public class LFUCache<K, V> {

    /* renamed from: a */
    public final boolean f100071a;

    /* renamed from: b */
    public int f100072b;

    /* renamed from: c */
    public int f100073c;

    /* renamed from: d */
    public Map<K, nui<V>> f100074d;

    public LFUCache(int i) {
        this(i, false);
        this.f100072b = i;
    }

    /* renamed from: a */
    public final Map<K, nui<V>> m62906a(int i) {
        return this.f100071a ? new ConcurrentHashMap(i) : new HashMap(i);
    }

    /* renamed from: b */
    public final void m62907b() {
        Map<K, nui<V>> m62906a = m62906a(this.f100072b);
        int i = 0;
        for (Map.Entry<K, nui<V>> entry : this.f100074d.entrySet()) {
            if (entry.getValue().f79049b > this.f100073c) {
                m62906a.put(entry.getKey(), new nui<>(entry.getValue().f79048a));
                i++;
            }
        }
        double d = i;
        int i2 = this.f100072b;
        if (d > i2 * 1.5d) {
            this.f100073c++;
        } else {
            int i3 = this.f100073c;
            if (i3 > 0 && i < i2) {
                this.f100073c = i3 - 1;
            }
        }
        this.f100074d = m62906a;
    }

    public void clear() {
        this.f100074d.clear();
    }

    public boolean containsKey(K k) {
        nui<V> nuiVar = this.f100074d.get(k);
        if (nuiVar == null) {
            return false;
        }
        nuiVar.f79049b++;
        return true;
    }

    public V get(K k) {
        nui<V> nuiVar = this.f100074d.get(k);
        if (nuiVar == null) {
            return null;
        }
        nuiVar.f79049b++;
        return nuiVar.f79048a;
    }

    public void put(K k, V v) {
        this.f100074d.put(k, new nui<>(v));
        if (this.f100074d.size() > this.f100072b * 3) {
            m62907b();
        }
    }

    public int size() {
        return this.f100074d.size();
    }

    public LFUCache(int i, boolean z) {
        this.f100073c = 1;
        this.f100071a = z;
        this.f100072b = i;
        this.f100074d = m62906a(i);
    }
}
