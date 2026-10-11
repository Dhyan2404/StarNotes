package net.p110sf.saxon.ma.trie;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes11.dex */
public abstract class ImmutableHashTrieMap<K, V> implements ImmutableMap<K, V>, Iterable<TrieKVP<K, V>> {

    /* renamed from: e */
    public static final ImmutableHashTrieMap f100715e = new C18412d();

    /* renamed from: f */
    public static final int f100716f = 5;

    /* renamed from: g */
    public static final int f100717g = 32;

    /* renamed from: h */
    public static final int f100718h = 31;

    /* renamed from: net.sf.saxon.ma.trie.ImmutableHashTrieMap$b */
    /* loaded from: classes11.dex */
    public static abstract class AbstractC18410b<K, V> extends ImmutableHashTrieMap<K, V> {
        public AbstractC18410b() {
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap
        /* renamed from: g */
        public boolean mo63361g() {
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap, net.p110sf.saxon.ma.trie.ImmutableMap
        public /* bridge */ /* synthetic */ ImmutableMap put(Object obj, Object obj2) {
            return super.put((AbstractC18410b<K, V>) obj, obj2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap, net.p110sf.saxon.ma.trie.ImmutableMap
        public /* bridge */ /* synthetic */ ImmutableMap remove(Object obj) {
            return super.remove((AbstractC18410b<K, V>) obj);
        }
    }

    /* renamed from: net.sf.saxon.ma.trie.ImmutableHashTrieMap$d */
    /* loaded from: classes11.dex */
    public static class C18412d<K, V> extends ImmutableHashTrieMap<K, V> {
        public C18412d() {
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap
        /* renamed from: d */
        public V mo63360d(int i, K k) {
            return null;
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap
        /* renamed from: g */
        public boolean mo63361g() {
            return false;
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap
        /* renamed from: i */
        public ImmutableHashTrieMap<K, V> mo63362i(int i, K k, V v) {
            return new C18413e(k, v);
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableMap, java.lang.Iterable
        public Iterator<TrieKVP<K, V>> iterator() {
            return Collections.emptyIterator();
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap
        /* renamed from: j */
        public ImmutableHashTrieMap<K, V> mo63363j(int i, K k) {
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap, net.p110sf.saxon.ma.trie.ImmutableMap
        public /* bridge */ /* synthetic */ ImmutableMap put(Object obj, Object obj2) {
            return super.put((C18412d<K, V>) obj, obj2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap, net.p110sf.saxon.ma.trie.ImmutableMap
        public /* bridge */ /* synthetic */ ImmutableMap remove(Object obj) {
            return super.remove((C18412d<K, V>) obj);
        }
    }

    /* renamed from: net.sf.saxon.ma.trie.ImmutableHashTrieMap$e */
    /* loaded from: classes11.dex */
    public static class C18413e<K, V> extends ImmutableHashTrieMap<K, V> {

        /* renamed from: i */
        public final K f100725i;

        /* renamed from: j */
        public final V f100726j;

        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap
        /* renamed from: d */
        public V mo63360d(int i, K k) {
            if (this.f100725i.equals(k)) {
                return this.f100726j;
            }
            return null;
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap
        /* renamed from: g */
        public boolean mo63361g() {
            return false;
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap
        /* renamed from: i */
        public ImmutableHashTrieMap<K, V> mo63362i(int i, K k, V v) {
            return this.f100725i.equals(k) ? new C18413e(k, v) : this.f100725i.hashCode() == k.hashCode() ? new C18414f(new TrieKVP(this.f100725i, this.f100726j), new TrieKVP(k, v)) : ImmutableHashTrieMap.m63359h(i, this.f100725i.hashCode(), this, k.hashCode(), new C18413e(k, v));
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableMap, java.lang.Iterable
        public Iterator<TrieKVP<K, V>> iterator() {
            return Collections.singleton(new TrieKVP(this.f100725i, this.f100726j)).iterator();
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap
        /* renamed from: j */
        public ImmutableHashTrieMap<K, V> mo63363j(int i, K k) {
            return this.f100725i.equals(k) ? ImmutableHashTrieMap.empty() : this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap, net.p110sf.saxon.ma.trie.ImmutableMap
        public /* bridge */ /* synthetic */ ImmutableMap put(Object obj, Object obj2) {
            return super.put((C18413e<K, V>) obj, obj2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap, net.p110sf.saxon.ma.trie.ImmutableMap
        public /* bridge */ /* synthetic */ ImmutableMap remove(Object obj) {
            return super.remove((C18413e<K, V>) obj);
        }

        public C18413e(K k, V v) {
            this.f100725i = k;
            this.f100726j = v;
        }
    }

    /* renamed from: net.sf.saxon.ma.trie.ImmutableHashTrieMap$g */
    /* loaded from: classes11.dex */
    public static class C18415g<K, V> extends AbstractC18410b<K, V> {

        /* renamed from: k */
        public static final /* synthetic */ boolean f100731k = false;

        /* renamed from: i */
        public final int f100732i;

        /* renamed from: j */
        public final ImmutableHashTrieMap<K, V> f100733j;

        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap
        /* renamed from: d */
        public V mo63360d(int i, K k) {
            if (ImmutableHashTrieMap.m63358e(i, k) == this.f100732i) {
                return this.f100733j.mo63360d(i + 5, k);
            }
            return null;
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap
        /* renamed from: i */
        public ImmutableHashTrieMap<K, V> mo63362i(int i, K k, V v) {
            int m63358e = ImmutableHashTrieMap.m63358e(i, k);
            return m63358e == this.f100732i ? new C18415g(m63358e, this.f100733j.mo63362i(i + 5, k, v)) : new C18411c(this.f100732i, this.f100733j, m63358e, new C18413e(k, v));
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableMap, java.lang.Iterable
        public Iterator<TrieKVP<K, V>> iterator() {
            return this.f100733j.iterator();
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap
        /* renamed from: j */
        public ImmutableHashTrieMap<K, V> mo63363j(int i, K k) {
            int m63358e = ImmutableHashTrieMap.m63358e(i, k);
            if (m63358e != this.f100732i) {
                return this;
            }
            ImmutableHashTrieMap<K, V> mo63363j = this.f100733j.mo63363j(i + 5, k);
            return !mo63363j.mo63361g() ? mo63363j : new C18415g(m63358e, mo63363j);
        }

        public C18415g(int i, ImmutableHashTrieMap<K, V> immutableHashTrieMap) {
            super();
            this.f100732i = i;
            this.f100733j = immutableHashTrieMap;
        }
    }

    /* renamed from: e */
    public static <K> int m63358e(int i, K k) {
        return (k.hashCode() >> i) & 31;
    }

    public static <K, V> ImmutableHashTrieMap<K, V> empty() {
        return f100715e;
    }

    /* renamed from: h */
    public static <K, V> ImmutableHashTrieMap<K, V> m63359h(int i, int i2, ImmutableHashTrieMap<K, V> immutableHashTrieMap, int i3, ImmutableHashTrieMap<K, V> immutableHashTrieMap2) {
        int i4 = (i2 >> i) & 31;
        int i5 = (i3 >> i) & 31;
        LinkedList linkedList = new LinkedList();
        while (i4 == i5) {
            linkedList.add(0, Integer.valueOf(i4));
            i += 5;
            i4 = (i2 >> i) & 31;
            i5 = (i3 >> i) & 31;
        }
        ImmutableHashTrieMap c18411c = new C18411c(i4, immutableHashTrieMap, i5, immutableHashTrieMap2);
        Iterator it2 = linkedList.iterator();
        while (it2.hasNext()) {
            c18411c = new C18415g(((Integer) it2.next()).intValue(), c18411c);
        }
        return c18411c;
    }

    /* renamed from: d */
    public abstract V mo63360d(int i, K k);

    /* renamed from: g */
    public abstract boolean mo63361g();

    @Override // net.p110sf.saxon.ma.trie.ImmutableMap
    public V get(K k) {
        return mo63360d(0, k);
    }

    /* renamed from: i */
    public abstract ImmutableHashTrieMap<K, V> mo63362i(int i, K k, V v);

    /* renamed from: j */
    public abstract ImmutableHashTrieMap<K, V> mo63363j(int i, K k);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.p110sf.saxon.ma.trie.ImmutableMap
    public /* bridge */ /* synthetic */ ImmutableMap put(Object obj, Object obj2) {
        return put((ImmutableHashTrieMap<K, V>) obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.p110sf.saxon.ma.trie.ImmutableMap
    public /* bridge */ /* synthetic */ ImmutableMap remove(Object obj) {
        return remove((ImmutableHashTrieMap<K, V>) obj);
    }

    @Override // net.p110sf.saxon.ma.trie.ImmutableMap
    public ImmutableHashTrieMap<K, V> put(K k, V v) {
        return mo63362i(0, k, v);
    }

    @Override // net.p110sf.saxon.ma.trie.ImmutableMap
    public ImmutableHashTrieMap<K, V> remove(K k) {
        return mo63363j(0, k);
    }

    /* renamed from: net.sf.saxon.ma.trie.ImmutableHashTrieMap$f */
    /* loaded from: classes11.dex */
    public static class C18414f<K, V> extends ImmutableHashTrieMap<K, V> {

        /* renamed from: j */
        public static final /* synthetic */ boolean f100727j = false;

        /* renamed from: i */
        public final ImmutableList<TrieKVP<K, V>> f100728i;

        /* renamed from: net.sf.saxon.ma.trie.ImmutableHashTrieMap$f$a */
        /* loaded from: classes11.dex */
        public class a implements Iterator<TrieKVP<K, V>> {

            /* renamed from: e */
            public ImmutableList<TrieKVP<K, V>> f100729e;

            public a() {
                this.f100729e = C18414f.this.f100728i;
            }

            @Override // java.util.Iterator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public TrieKVP<K, V> next() {
                TrieKVP<K, V> head = this.f100729e.head();
                this.f100729e = this.f100729e.tail();
                return head;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return !this.f100729e.isEmpty();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        public C18414f(TrieKVP<K, V> trieKVP, TrieKVP<K, V> trieKVP2) {
            this.f100728i = ImmutableList.empty().prepend(trieKVP).prepend(trieKVP2);
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap
        /* renamed from: d */
        public V mo63360d(int i, K k) {
            Iterator<TrieKVP<K, V>> it2 = this.f100728i.iterator();
            while (it2.hasNext()) {
                TrieKVP<K, V> next = it2.next();
                if (next.key.equals(k)) {
                    return next.value;
                }
            }
            return null;
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap
        /* renamed from: g */
        public boolean mo63361g() {
            return false;
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap
        /* renamed from: i */
        public ImmutableHashTrieMap<K, V> mo63362i(int i, K k, V v) {
            if (this.f100728i.head().key.hashCode() != k.hashCode()) {
                return ImmutableHashTrieMap.m63359h(i, this.f100728i.head().key.hashCode(), this, k.hashCode(), new C18413e(k, v));
            }
            ImmutableList empty = ImmutableList.empty();
            Iterator<TrieKVP<K, V>> it2 = this.f100728i.iterator();
            boolean z = false;
            while (it2.hasNext()) {
                TrieKVP<K, V> next = it2.next();
                if (next.key.equals(k)) {
                    empty = empty.prepend(new TrieKVP(k, v));
                    z = true;
                } else {
                    empty = empty.prepend(next);
                }
            }
            if (!z) {
                empty = empty.prepend(new TrieKVP(k, v));
            }
            return new C18414f(empty);
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableMap, java.lang.Iterable
        public Iterator<TrieKVP<K, V>> iterator() {
            return new a();
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap
        /* renamed from: j */
        public ImmutableHashTrieMap<K, V> mo63363j(int i, K k) {
            ImmutableList empty = ImmutableList.empty();
            Iterator<TrieKVP<K, V>> it2 = this.f100728i.iterator();
            int i2 = 0;
            while (it2.hasNext()) {
                TrieKVP<K, V> next = it2.next();
                if (!next.key.equals(k)) {
                    empty = empty.prepend(next);
                    i2++;
                }
            }
            if (i2 != 1) {
                return new C18414f(empty);
            }
            TrieKVP trieKVP = (TrieKVP) empty.head();
            return new C18413e(trieKVP.key, trieKVP.value);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap, net.p110sf.saxon.ma.trie.ImmutableMap
        public /* bridge */ /* synthetic */ ImmutableMap put(Object obj, Object obj2) {
            return super.put((C18414f<K, V>) obj, obj2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap, net.p110sf.saxon.ma.trie.ImmutableMap
        public /* bridge */ /* synthetic */ ImmutableMap remove(Object obj) {
            return super.remove((C18414f<K, V>) obj);
        }

        public C18414f(ImmutableList<TrieKVP<K, V>> immutableList) {
            this.f100728i = immutableList;
        }
    }

    /* renamed from: net.sf.saxon.ma.trie.ImmutableHashTrieMap$c */
    /* loaded from: classes11.dex */
    public static class C18411c<K, V> extends AbstractC18410b<K, V> {

        /* renamed from: k */
        public static final /* synthetic */ boolean f100719k = false;

        /* renamed from: i */
        public final ImmutableHashTrieMap<K, V>[] f100720i;

        /* renamed from: j */
        public final int f100721j;

        /* renamed from: net.sf.saxon.ma.trie.ImmutableHashTrieMap$c$a */
        /* loaded from: classes11.dex */
        public class a implements Iterator<TrieKVP<K, V>> {

            /* renamed from: e */
            public int f100722e = 0;

            /* renamed from: f */
            public Iterator<TrieKVP<K, V>> f100723f;

            public a() {
                this.f100723f = C18411c.this.f100720i[0].iterator();
            }

            @Override // java.util.Iterator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public TrieKVP<K, V> next() {
                return this.f100723f.next();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (this.f100723f.hasNext()) {
                    return true;
                }
                this.f100722e++;
                while (this.f100722e < 32) {
                    Iterator<TrieKVP<K, V>> it2 = C18411c.this.f100720i[this.f100722e].iterator();
                    this.f100723f = it2;
                    if (it2.hasNext()) {
                        return true;
                    }
                    this.f100722e++;
                }
                return false;
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        public C18411c(int i, ImmutableHashTrieMap<K, V> immutableHashTrieMap, int i2, ImmutableHashTrieMap<K, V> immutableHashTrieMap2) {
            super();
            this.f100721j = 2;
            this.f100720i = new ImmutableHashTrieMap[32];
            for (int i3 = 0; i3 < 32; i3++) {
                if (i3 == i) {
                    this.f100720i[i3] = immutableHashTrieMap;
                } else if (i3 == i2) {
                    this.f100720i[i3] = immutableHashTrieMap2;
                } else {
                    this.f100720i[i3] = ImmutableHashTrieMap.f100715e;
                }
            }
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap
        /* renamed from: d */
        public V mo63360d(int i, K k) {
            return this.f100720i[ImmutableHashTrieMap.m63358e(i, k)].mo63360d(i + 5, k);
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap
        /* renamed from: i */
        public ImmutableHashTrieMap<K, V> mo63362i(int i, K k, V v) {
            int m63358e = ImmutableHashTrieMap.m63358e(i, k);
            ImmutableHashTrieMap[] immutableHashTrieMapArr = new ImmutableHashTrieMap[32];
            System.arraycopy(this.f100720i, 0, immutableHashTrieMapArr, 0, 32);
            ImmutableHashTrieMap immutableHashTrieMap = immutableHashTrieMapArr[m63358e];
            ImmutableHashTrieMap immutableHashTrieMap2 = ImmutableHashTrieMap.f100715e;
            int i2 = this.f100721j;
            if (immutableHashTrieMap == immutableHashTrieMap2) {
                i2++;
            }
            immutableHashTrieMapArr[m63358e] = immutableHashTrieMapArr[m63358e].mo63362i(i + 5, k, v);
            return new C18411c(i2, immutableHashTrieMapArr);
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableMap, java.lang.Iterable
        public Iterator<TrieKVP<K, V>> iterator() {
            return new a();
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableHashTrieMap
        /* renamed from: j */
        public ImmutableHashTrieMap<K, V> mo63363j(int i, K k) {
            int m63358e = ImmutableHashTrieMap.m63358e(i, k);
            if (this.f100720i[m63358e] == ImmutableHashTrieMap.f100715e) {
                return this;
            }
            ImmutableHashTrieMap[] immutableHashTrieMapArr = new ImmutableHashTrieMap[32];
            int i2 = 0;
            System.arraycopy(this.f100720i, 0, immutableHashTrieMapArr, 0, 32);
            ImmutableHashTrieMap<K, V> mo63363j = immutableHashTrieMapArr[m63358e].mo63363j(i + 5, k);
            immutableHashTrieMapArr[m63358e] = mo63363j;
            int i3 = mo63363j == ImmutableHashTrieMap.f100715e ? this.f100721j - 1 : this.f100721j;
            if (i3 != 1) {
                return new C18411c(i3, immutableHashTrieMapArr);
            }
            while (true) {
                if (i2 >= 32) {
                    i2 = -1;
                    break;
                }
                if (immutableHashTrieMapArr[i2] != ImmutableHashTrieMap.f100715e) {
                    break;
                }
                i2++;
            }
            ImmutableHashTrieMap<K, V> immutableHashTrieMap = this.f100720i[i2];
            return immutableHashTrieMap.mo63361g() ? new C18415g(i2, immutableHashTrieMap) : immutableHashTrieMap;
        }

        public C18411c(int i, ImmutableHashTrieMap<K, V>[] immutableHashTrieMapArr) {
            super();
            this.f100721j = i;
            this.f100720i = immutableHashTrieMapArr;
        }
    }
}
