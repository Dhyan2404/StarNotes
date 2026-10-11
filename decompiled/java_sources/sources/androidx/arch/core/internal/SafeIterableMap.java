package androidx.arch.core.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import org.apache.commons.collections4.IteratorUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class SafeIterableMap<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: e */
    public C0311c<K, V> f2143e;

    /* renamed from: f */
    public C0311c<K, V> f2144f;

    /* renamed from: g */
    public final WeakHashMap<SupportRemove<K, V>, Boolean> f2145g = new WeakHashMap<>();

    /* renamed from: h */
    public int f2146h = 0;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public class IteratorWithAdditions extends SupportRemove<K, V> implements Iterator<Map.Entry<K, V>> {

        /* renamed from: e */
        public C0311c<K, V> f2147e;

        /* renamed from: f */
        public boolean f2148f = true;

        public IteratorWithAdditions() {
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.SupportRemove
        /* renamed from: a */
        public void mo986a(@NonNull C0311c<K, V> c0311c) {
            C0311c<K, V> c0311c2 = this.f2147e;
            if (c0311c == c0311c2) {
                C0311c<K, V> c0311c3 = c0311c2.f2153h;
                this.f2147e = c0311c3;
                this.f2148f = c0311c3 == null;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f2148f) {
                return SafeIterableMap.this.f2143e != null;
            }
            C0311c<K, V> c0311c = this.f2147e;
            return (c0311c == null || c0311c.f2152g == null) ? false : true;
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            if (this.f2148f) {
                this.f2148f = false;
                this.f2147e = SafeIterableMap.this.f2143e;
            } else {
                C0311c<K, V> c0311c = this.f2147e;
                this.f2147e = c0311c != null ? c0311c.f2152g : null;
            }
            return this.f2147e;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public static abstract class SupportRemove<K, V> {
        /* renamed from: a */
        public abstract void mo986a(@NonNull C0311c<K, V> c0311c);
    }

    /* renamed from: androidx.arch.core.internal.SafeIterableMap$a */
    /* loaded from: classes3.dex */
    public static class C0309a<K, V> extends AbstractC0312d<K, V> {
        public C0309a(C0311c<K, V> c0311c, C0311c<K, V> c0311c2) {
            super(c0311c, c0311c2);
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.AbstractC0312d
        /* renamed from: b */
        public C0311c<K, V> mo987b(C0311c<K, V> c0311c) {
            return c0311c.f2153h;
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.AbstractC0312d
        /* renamed from: c */
        public C0311c<K, V> mo988c(C0311c<K, V> c0311c) {
            return c0311c.f2152g;
        }
    }

    /* renamed from: androidx.arch.core.internal.SafeIterableMap$b */
    /* loaded from: classes3.dex */
    public static class C0310b<K, V> extends AbstractC0312d<K, V> {
        public C0310b(C0311c<K, V> c0311c, C0311c<K, V> c0311c2) {
            super(c0311c, c0311c2);
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.AbstractC0312d
        /* renamed from: b */
        public C0311c<K, V> mo987b(C0311c<K, V> c0311c) {
            return c0311c.f2152g;
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.AbstractC0312d
        /* renamed from: c */
        public C0311c<K, V> mo988c(C0311c<K, V> c0311c) {
            return c0311c.f2153h;
        }
    }

    /* renamed from: androidx.arch.core.internal.SafeIterableMap$c */
    /* loaded from: classes3.dex */
    public static class C0311c<K, V> implements Map.Entry<K, V> {

        /* renamed from: e */
        @NonNull
        public final K f2150e;

        /* renamed from: f */
        @NonNull
        public final V f2151f;

        /* renamed from: g */
        public C0311c<K, V> f2152g;

        /* renamed from: h */
        public C0311c<K, V> f2153h;

        public C0311c(@NonNull K k, @NonNull V v) {
            this.f2150e = k;
            this.f2151f = v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0311c)) {
                return false;
            }
            C0311c c0311c = (C0311c) obj;
            return this.f2150e.equals(c0311c.f2150e) && this.f2151f.equals(c0311c.f2151f);
        }

        @Override // java.util.Map.Entry
        @NonNull
        public K getKey() {
            return this.f2150e;
        }

        @Override // java.util.Map.Entry
        @NonNull
        public V getValue() {
            return this.f2151f;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f2151f.hashCode() ^ this.f2150e.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f2150e + "=" + this.f2151f;
        }
    }

    /* renamed from: androidx.arch.core.internal.SafeIterableMap$d */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC0312d<K, V> extends SupportRemove<K, V> implements Iterator<Map.Entry<K, V>> {

        /* renamed from: e */
        public C0311c<K, V> f2154e;

        /* renamed from: f */
        public C0311c<K, V> f2155f;

        public AbstractC0312d(C0311c<K, V> c0311c, C0311c<K, V> c0311c2) {
            this.f2154e = c0311c2;
            this.f2155f = c0311c;
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.SupportRemove
        /* renamed from: a */
        public void mo986a(@NonNull C0311c<K, V> c0311c) {
            if (this.f2154e == c0311c && c0311c == this.f2155f) {
                this.f2155f = null;
                this.f2154e = null;
            }
            C0311c<K, V> c0311c2 = this.f2154e;
            if (c0311c2 == c0311c) {
                this.f2154e = mo987b(c0311c2);
            }
            if (this.f2155f == c0311c) {
                this.f2155f = m989d();
            }
        }

        /* renamed from: b */
        public abstract C0311c<K, V> mo987b(C0311c<K, V> c0311c);

        /* renamed from: c */
        public abstract C0311c<K, V> mo988c(C0311c<K, V> c0311c);

        /* renamed from: d */
        public final C0311c<K, V> m989d() {
            C0311c<K, V> c0311c = this.f2155f;
            C0311c<K, V> c0311c2 = this.f2154e;
            if (c0311c == c0311c2 || c0311c2 == null) {
                return null;
            }
            return mo988c(c0311c);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f2155f != null;
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            C0311c<K, V> c0311c = this.f2155f;
            this.f2155f = m989d();
            return c0311c;
        }
    }

    /* renamed from: a */
    public C0311c<K, V> m985a(@NonNull K k, @NonNull V v) {
        C0311c<K, V> c0311c = new C0311c<>(k, v);
        this.f2146h++;
        C0311c<K, V> c0311c2 = this.f2144f;
        if (c0311c2 == null) {
            this.f2143e = c0311c;
            this.f2144f = c0311c;
            return c0311c;
        }
        c0311c2.f2152g = c0311c;
        c0311c.f2153h = c0311c2;
        this.f2144f = c0311c;
        return c0311c;
    }

    @NonNull
    public Iterator<Map.Entry<K, V>> descendingIterator() {
        C0310b c0310b = new C0310b(this.f2144f, this.f2143e);
        this.f2145g.put(c0310b, Boolean.FALSE);
        return c0310b;
    }

    @Nullable
    public Map.Entry<K, V> eldest() {
        return this.f2143e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SafeIterableMap)) {
            return false;
        }
        SafeIterableMap safeIterableMap = (SafeIterableMap) obj;
        if (size() != safeIterableMap.size()) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it2 = iterator();
        Iterator<Map.Entry<K, V>> it3 = safeIterableMap.iterator();
        while (it2.hasNext() && it3.hasNext()) {
            Map.Entry<K, V> next = it2.next();
            Map.Entry<K, V> next2 = it3.next();
            if ((next == null && next2 != null) || (next != null && !next.equals(next2))) {
                return false;
            }
        }
        return (it2.hasNext() || it3.hasNext()) ? false : true;
    }

    @Nullable
    public C0311c<K, V> get(K k) {
        C0311c<K, V> c0311c = this.f2143e;
        while (c0311c != null && !c0311c.f2150e.equals(k)) {
            c0311c = c0311c.f2152g;
        }
        return c0311c;
    }

    public int hashCode() {
        Iterator<Map.Entry<K, V>> it2 = iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += it2.next().hashCode();
        }
        return i;
    }

    @Override // java.lang.Iterable
    @NonNull
    public Iterator<Map.Entry<K, V>> iterator() {
        C0309a c0309a = new C0309a(this.f2143e, this.f2144f);
        this.f2145g.put(c0309a, Boolean.FALSE);
        return c0309a;
    }

    @NonNull
    public SafeIterableMap<K, V>.IteratorWithAdditions iteratorWithAdditions() {
        SafeIterableMap<K, V>.IteratorWithAdditions iteratorWithAdditions = new IteratorWithAdditions();
        this.f2145g.put(iteratorWithAdditions, Boolean.FALSE);
        return iteratorWithAdditions;
    }

    @Nullable
    public Map.Entry<K, V> newest() {
        return this.f2144f;
    }

    public V putIfAbsent(@NonNull K k, @NonNull V v) {
        C0311c<K, V> c0311c = get(k);
        if (c0311c != null) {
            return c0311c.f2151f;
        }
        m985a(k, v);
        return null;
    }

    public V remove(@NonNull K k) {
        C0311c<K, V> c0311c = get(k);
        if (c0311c == null) {
            return null;
        }
        this.f2146h--;
        if (!this.f2145g.isEmpty()) {
            Iterator<SupportRemove<K, V>> it2 = this.f2145g.keySet().iterator();
            while (it2.hasNext()) {
                it2.next().mo986a(c0311c);
            }
        }
        C0311c<K, V> c0311c2 = c0311c.f2153h;
        if (c0311c2 != null) {
            c0311c2.f2152g = c0311c.f2152g;
        } else {
            this.f2143e = c0311c.f2152g;
        }
        C0311c<K, V> c0311c3 = c0311c.f2152g;
        if (c0311c3 != null) {
            c0311c3.f2153h = c0311c2;
        } else {
            this.f2144f = c0311c2;
        }
        c0311c.f2152g = null;
        c0311c.f2153h = null;
        return c0311c.f2151f;
    }

    public int size() {
        return this.f2146h;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(IteratorUtils.f104923a);
        Iterator<Map.Entry<K, V>> it2 = iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().toString());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }
}
