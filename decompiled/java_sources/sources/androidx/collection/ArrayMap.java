package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.sunia.HTREnginev2.m8j;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public class ArrayMap<K, V> extends SimpleArrayMap<K, V> implements Map<K, V> {

    /* renamed from: q */
    @Nullable
    public m8j<K, V> f2483q;

    /* renamed from: androidx.collection.ArrayMap$a */
    /* loaded from: classes3.dex */
    public class C0372a extends m8j<K, V> {
        public C0372a() {
        }

        @Override // com.sunia.HTREnginev2.m8j
        /* renamed from: a */
        public void mo1304a() {
            ArrayMap.this.clear();
        }

        @Override // com.sunia.HTREnginev2.m8j
        /* renamed from: b */
        public Object mo1305b(int i, int i2) {
            return ArrayMap.this.f2531f[(i << 1) + i2];
        }

        @Override // com.sunia.HTREnginev2.m8j
        /* renamed from: c */
        public Map<K, V> mo1306c() {
            return ArrayMap.this;
        }

        @Override // com.sunia.HTREnginev2.m8j
        /* renamed from: d */
        public int mo1307d() {
            return ArrayMap.this.f2532g;
        }

        @Override // com.sunia.HTREnginev2.m8j
        /* renamed from: e */
        public int mo1308e(Object obj) {
            return ArrayMap.this.indexOfKey(obj);
        }

        @Override // com.sunia.HTREnginev2.m8j
        /* renamed from: f */
        public int mo1309f(Object obj) {
            return ArrayMap.this.m1327f(obj);
        }

        @Override // com.sunia.HTREnginev2.m8j
        /* renamed from: g */
        public void mo1310g(K k, V v) {
            ArrayMap.this.put(k, v);
        }

        @Override // com.sunia.HTREnginev2.m8j
        /* renamed from: h */
        public void mo1311h(int i) {
            ArrayMap.this.removeAt(i);
        }

        @Override // com.sunia.HTREnginev2.m8j
        /* renamed from: i */
        public V mo1312i(int i, V v) {
            return ArrayMap.this.setValueAt(i, v);
        }
    }

    public ArrayMap() {
    }

    /* renamed from: g */
    private m8j<K, V> m1303g() {
        if (this.f2483q == null) {
            this.f2483q = new C0372a();
        }
        return this.f2483q;
    }

    public boolean containsAll(@NonNull Collection<?> collection) {
        return m8j.m55567j(this, collection);
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return m1303g().m55571l();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return m1303g().m55572m();
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        ensureCapacity(this.f2532g + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public boolean removeAll(@NonNull Collection<?> collection) {
        return m8j.m55569o(this, collection);
    }

    public boolean retainAll(@NonNull Collection<?> collection) {
        return m8j.m55570p(this, collection);
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return m1303g().m55573n();
    }

    public ArrayMap(int i) {
        super(i);
    }

    public ArrayMap(SimpleArrayMap simpleArrayMap) {
        super(simpleArrayMap);
    }
}
