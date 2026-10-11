package org.apache.commons.collections4.trie;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.collections4.OrderedMapIterator;
import org.apache.commons.collections4.trie.AbstractBitwiseTrie;
import org.apache.commons.text.AlphabetConverter;
import org.slf4j.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes11.dex */
public abstract class AbstractPatriciaTrie<K, V> extends AbstractBitwiseTrie<K, V> {
    private static final long serialVersionUID = 5155253417231339498L;
    private volatile transient Set<Map.Entry<K, V>> entrySet;
    private volatile transient Set<K> keySet;
    protected transient int modCount;
    private transient TrieEntry<K, V> root;
    private transient int size;
    private volatile transient Collection<V> values;

    /* loaded from: classes11.dex */
    public static class TrieEntry<K, V> extends AbstractBitwiseTrie.BasicEntry<K, V> {
        private static final long serialVersionUID = 4596023148184140013L;
        protected int bitIndex;
        protected TrieEntry<K, V> left;
        protected TrieEntry<K, V> parent;
        protected TrieEntry<K, V> predecessor;
        protected TrieEntry<K, V> right;

        public TrieEntry(K k, V v, int i) {
            super(k, v);
            this.bitIndex = i;
            this.parent = null;
            this.left = this;
            this.right = null;
            this.predecessor = this;
        }

        public boolean isEmpty() {
            return this.key == null;
        }

        public boolean isExternalNode() {
            return !isInternalNode();
        }

        public boolean isInternalNode() {
            return (this.left == this || this.right == this) ? false : true;
        }

        @Override // org.apache.commons.collections4.trie.AbstractBitwiseTrie.BasicEntry
        public String toString() {
            StringBuilder sb = new StringBuilder();
            if (this.bitIndex == -1) {
                sb.append("RootEntry(");
            } else {
                sb.append("Entry(");
            }
            sb.append("key=");
            sb.append(getKey());
            sb.append(" [");
            sb.append(this.bitIndex);
            sb.append("], ");
            sb.append("value=");
            sb.append(getValue());
            sb.append(", ");
            TrieEntry<K, V> trieEntry = this.parent;
            if (trieEntry == null) {
                sb.append("parent=");
                sb.append("null");
            } else if (trieEntry.bitIndex == -1) {
                sb.append("parent=");
                sb.append(Logger.ROOT_LOGGER_NAME);
            } else {
                sb.append("parent=");
                sb.append(this.parent.getKey());
                sb.append(" [");
                sb.append(this.parent.bitIndex);
                sb.append(IteratorUtils.f104924b);
            }
            sb.append(", ");
            TrieEntry<K, V> trieEntry2 = this.left;
            if (trieEntry2 == null) {
                sb.append("left=");
                sb.append("null");
            } else if (trieEntry2.bitIndex == -1) {
                sb.append("left=");
                sb.append(Logger.ROOT_LOGGER_NAME);
            } else {
                sb.append("left=");
                sb.append(this.left.getKey());
                sb.append(" [");
                sb.append(this.left.bitIndex);
                sb.append(IteratorUtils.f104924b);
            }
            sb.append(", ");
            TrieEntry<K, V> trieEntry3 = this.right;
            if (trieEntry3 == null) {
                sb.append("right=");
                sb.append("null");
            } else if (trieEntry3.bitIndex == -1) {
                sb.append("right=");
                sb.append(Logger.ROOT_LOGGER_NAME);
            } else {
                sb.append("right=");
                sb.append(this.right.getKey());
                sb.append(" [");
                sb.append(this.right.bitIndex);
                sb.append(IteratorUtils.f104924b);
            }
            sb.append(", ");
            TrieEntry<K, V> trieEntry4 = this.predecessor;
            if (trieEntry4 != null) {
                if (trieEntry4.bitIndex == -1) {
                    sb.append("predecessor=");
                    sb.append(Logger.ROOT_LOGGER_NAME);
                } else {
                    sb.append("predecessor=");
                    sb.append(this.predecessor.getKey());
                    sb.append(" [");
                    sb.append(this.predecessor.bitIndex);
                    sb.append(IteratorUtils.f104924b);
                }
            }
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }
    }

    /* renamed from: org.apache.commons.collections4.trie.AbstractPatriciaTrie$b */
    /* loaded from: classes11.dex */
    public class C18815b extends AbstractSet<Map.Entry<K, V>> {

        /* renamed from: org.apache.commons.collections4.trie.AbstractPatriciaTrie$b$a */
        /* loaded from: classes11.dex */
        public class a extends AbstractPatriciaTrie<K, V>.AbstractC18823j<Map.Entry<K, V>> {
            public a() {
                super();
            }

            @Override // java.util.Iterator
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> next() {
                return mo66063b();
            }
        }

        public C18815b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            AbstractPatriciaTrie.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            TrieEntry<K, V> entry;
            return (obj instanceof Map.Entry) && (entry = AbstractPatriciaTrie.this.getEntry(((Map.Entry) obj).getKey())) != null && entry.equals(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry) || !contains(obj)) {
                return false;
            }
            AbstractPatriciaTrie.this.remove(((Map.Entry) obj).getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return AbstractPatriciaTrie.this.size();
        }
    }

    /* renamed from: org.apache.commons.collections4.trie.AbstractPatriciaTrie$c */
    /* loaded from: classes11.dex */
    public class C18816c extends AbstractSet<K> {

        /* renamed from: org.apache.commons.collections4.trie.AbstractPatriciaTrie$c$a */
        /* loaded from: classes11.dex */
        public class a extends AbstractPatriciaTrie<K, V>.AbstractC18823j<K> {
            public a() {
                super();
            }

            @Override // java.util.Iterator
            public K next() {
                return mo66063b().getKey();
            }
        }

        public C18816c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            AbstractPatriciaTrie.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return AbstractPatriciaTrie.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int size = size();
            AbstractPatriciaTrie.this.remove(obj);
            return size != size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return AbstractPatriciaTrie.this.size();
        }
    }

    /* renamed from: org.apache.commons.collections4.trie.AbstractPatriciaTrie$d */
    /* loaded from: classes11.dex */
    public final class C18817d extends AbstractPatriciaTrie<K, V>.C18820g {

        /* renamed from: i */
        public final AbstractPatriciaTrie<K, V>.C18818e f105306i;

        /* renamed from: j */
        public TrieEntry<K, V> f105307j;

        /* renamed from: k */
        public int f105308k;

        /* renamed from: org.apache.commons.collections4.trie.AbstractPatriciaTrie$d$a */
        /* loaded from: classes11.dex */
        public final class a extends AbstractPatriciaTrie<K, V>.AbstractC18823j<Map.Entry<K, V>> {

            /* renamed from: i */
            public final K f105310i;

            /* renamed from: j */
            public final int f105311j;

            /* renamed from: k */
            public final int f105312k;

            /* renamed from: l */
            public boolean f105313l;

            /* renamed from: m */
            public TrieEntry<K, V> f105314m;

            public a(TrieEntry<K, V> trieEntry, K k, int i, int i2) {
                super();
                this.f105314m = trieEntry;
                this.f105342f = AbstractPatriciaTrie.this.followLeft(trieEntry);
                this.f105310i = k;
                this.f105311j = i;
                this.f105312k = i2;
            }

            @Override // org.apache.commons.collections4.trie.AbstractPatriciaTrie.AbstractC18823j
            /* renamed from: a */
            public TrieEntry<K, V> mo66042a(TrieEntry<K, V> trieEntry) {
                return AbstractPatriciaTrie.this.nextEntryInSubtree(trieEntry, this.f105314m);
            }

            @Override // java.util.Iterator
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> next() {
                TrieEntry<K, V> mo66063b = mo66063b();
                if (this.f105313l) {
                    this.f105342f = null;
                }
                return mo66063b;
            }

            @Override // org.apache.commons.collections4.trie.AbstractPatriciaTrie.AbstractC18823j, java.util.Iterator
            public void remove() {
                TrieEntry<K, V> trieEntry = this.f105314m;
                int i = trieEntry.bitIndex;
                boolean z = this.f105343g == trieEntry;
                super.remove();
                if (i != this.f105314m.bitIndex || z) {
                    this.f105314m = AbstractPatriciaTrie.this.subtree(this.f105310i, this.f105311j, this.f105312k);
                }
                if (this.f105312k >= this.f105314m.bitIndex) {
                    this.f105313l = true;
                }
            }
        }

        /* renamed from: org.apache.commons.collections4.trie.AbstractPatriciaTrie$d$b */
        /* loaded from: classes11.dex */
        public final class b implements Iterator<Map.Entry<K, V>> {

            /* renamed from: e */
            public final TrieEntry<K, V> f105316e;

            /* renamed from: f */
            public int f105317f = 0;

            public b(TrieEntry<K, V> trieEntry) {
                this.f105316e = trieEntry;
            }

            @Override // java.util.Iterator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> next() {
                int i = this.f105317f;
                if (i != 0) {
                    throw new NoSuchElementException();
                }
                this.f105317f = i + 1;
                return this.f105316e;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f105317f == 0;
            }

            @Override // java.util.Iterator
            public void remove() {
                int i = this.f105317f;
                if (i != 1) {
                    throw new IllegalStateException();
                }
                this.f105317f = i + 1;
                AbstractPatriciaTrie.this.removeEntry(this.f105316e);
            }
        }

        public C18817d(AbstractPatriciaTrie<K, V>.C18818e c18818e) {
            super(c18818e);
            this.f105308k = 0;
            this.f105306i = c18818e;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.apache.commons.collections4.trie.AbstractPatriciaTrie.C18820g, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            AbstractPatriciaTrie abstractPatriciaTrie = AbstractPatriciaTrie.this;
            if (abstractPatriciaTrie.modCount != this.f105308k) {
                this.f105307j = abstractPatriciaTrie.subtree(this.f105306i.f105319g, this.f105306i.f105320h, this.f105306i.f105321i);
                this.f105308k = AbstractPatriciaTrie.this.modCount;
            }
            if (this.f105307j == null) {
                return Collections.emptySet().iterator();
            }
            int i = this.f105306i.f105321i;
            TrieEntry<K, V> trieEntry = this.f105307j;
            return i > trieEntry.bitIndex ? new b(trieEntry) : new a(trieEntry, this.f105306i.f105319g, this.f105306i.f105320h, this.f105306i.f105321i);
        }

        @Override // org.apache.commons.collections4.trie.AbstractPatriciaTrie.C18820g, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f105306i.m66059o();
        }
    }

    /* renamed from: org.apache.commons.collections4.trie.AbstractPatriciaTrie$e */
    /* loaded from: classes11.dex */
    public class C18818e extends AbstractPatriciaTrie<K, V>.AbstractC18821h {

        /* renamed from: g */
        public final K f105319g;

        /* renamed from: h */
        public final int f105320h;

        /* renamed from: i */
        public final int f105321i;

        /* renamed from: j */
        public K f105322j;

        /* renamed from: k */
        public K f105323k;

        /* renamed from: l */
        public transient int f105324l;

        /* renamed from: m */
        public int f105325m;

        @Override // org.apache.commons.collections4.trie.AbstractPatriciaTrie.AbstractC18821h
        /* renamed from: a */
        public Set<Map.Entry<K, V>> mo66049a() {
            return new C18817d(this);
        }

        @Override // org.apache.commons.collections4.trie.AbstractPatriciaTrie.AbstractC18821h
        /* renamed from: b */
        public SortedMap<K, V> mo66050b(K k, boolean z, K k2, boolean z2) {
            return new C18819f(k, z, k2, z2);
        }

        @Override // org.apache.commons.collections4.trie.AbstractPatriciaTrie.AbstractC18821h
        /* renamed from: c */
        public K mo66051c() {
            return this.f105322j;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            Iterator<Map.Entry<K, V>> it2 = AbstractPatriciaTrie.this.entrySet().iterator();
            Set<K> keySet = keySet();
            while (it2.hasNext()) {
                if (keySet.contains(it2.next().getKey())) {
                    it2.remove();
                }
            }
        }

        @Override // org.apache.commons.collections4.trie.AbstractPatriciaTrie.AbstractC18821h
        /* renamed from: d */
        public K mo66052d() {
            return this.f105323k;
        }

        @Override // org.apache.commons.collections4.trie.AbstractPatriciaTrie.AbstractC18821h
        /* renamed from: e */
        public boolean mo66053e(K k, boolean z) {
            return AbstractPatriciaTrie.this.getKeyAnalyzer().isPrefix(this.f105319g, this.f105320h, this.f105321i, k);
        }

        @Override // org.apache.commons.collections4.trie.AbstractPatriciaTrie.AbstractC18821h
        /* renamed from: f */
        public boolean mo66054f(K k) {
            return AbstractPatriciaTrie.this.getKeyAnalyzer().isPrefix(this.f105319g, this.f105320h, this.f105321i, k);
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            m66059o();
            K k = this.f105322j;
            TrieEntry<K, V> firstEntry = k == null ? AbstractPatriciaTrie.this.firstEntry() : AbstractPatriciaTrie.this.higherEntry(k);
            K key = firstEntry != null ? firstEntry.getKey() : null;
            if (firstEntry == null || !AbstractPatriciaTrie.this.getKeyAnalyzer().isPrefix(this.f105319g, this.f105320h, this.f105321i, key)) {
                throw new NoSuchElementException();
            }
            return key;
        }

        @Override // org.apache.commons.collections4.trie.AbstractPatriciaTrie.AbstractC18821h
        /* renamed from: g */
        public boolean mo66055g(K k) {
            return mo66054f(k);
        }

        @Override // org.apache.commons.collections4.trie.AbstractPatriciaTrie.AbstractC18821h
        /* renamed from: h */
        public boolean mo66056h(K k, boolean z) {
            return AbstractPatriciaTrie.this.getKeyAnalyzer().isPrefix(this.f105319g, this.f105320h, this.f105321i, k);
        }

        @Override // org.apache.commons.collections4.trie.AbstractPatriciaTrie.AbstractC18821h
        /* renamed from: i */
        public boolean mo66057i() {
            return false;
        }

        @Override // org.apache.commons.collections4.trie.AbstractPatriciaTrie.AbstractC18821h
        /* renamed from: j */
        public boolean mo66058j() {
            return false;
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            m66059o();
            K k = this.f105323k;
            TrieEntry<K, V> lastEntry = k == null ? AbstractPatriciaTrie.this.lastEntry() : AbstractPatriciaTrie.this.lowerEntry(k);
            K key = lastEntry != null ? lastEntry.getKey() : null;
            if (lastEntry == null || !AbstractPatriciaTrie.this.getKeyAnalyzer().isPrefix(this.f105319g, this.f105320h, this.f105321i, key)) {
                throw new NoSuchElementException();
            }
            return key;
        }

        /* renamed from: o */
        public final int m66059o() {
            Map.Entry<K, V> entry;
            if (this.f105325m == -1 || AbstractPatriciaTrie.this.modCount != this.f105324l) {
                Iterator<Map.Entry<K, V>> it2 = super.entrySet().iterator();
                this.f105325m = 0;
                if (it2.hasNext()) {
                    entry = it2.next();
                    this.f105325m = 1;
                } else {
                    entry = null;
                }
                K key = entry == null ? null : entry.getKey();
                this.f105322j = key;
                if (key != null) {
                    TrieEntry<K, V> previousEntry = AbstractPatriciaTrie.this.previousEntry((TrieEntry) entry);
                    this.f105322j = previousEntry == null ? null : previousEntry.getKey();
                }
                this.f105323k = this.f105322j;
                while (it2.hasNext()) {
                    this.f105325m++;
                    entry = it2.next();
                }
                K key2 = entry == null ? null : entry.getKey();
                this.f105323k = key2;
                if (key2 != null) {
                    TrieEntry<K, V> nextEntry = AbstractPatriciaTrie.this.nextEntry((TrieEntry) entry);
                    this.f105323k = nextEntry != null ? nextEntry.getKey() : null;
                }
                this.f105324l = AbstractPatriciaTrie.this.modCount;
            }
            return this.f105325m;
        }

        public C18818e(K k, int i, int i2) {
            super();
            this.f105322j = null;
            this.f105323k = null;
            this.f105324l = 0;
            this.f105325m = -1;
            this.f105319g = k;
            this.f105320h = i;
            this.f105321i = i2;
        }
    }

    /* renamed from: org.apache.commons.collections4.trie.AbstractPatriciaTrie$f */
    /* loaded from: classes11.dex */
    public class C18819f extends AbstractPatriciaTrie<K, V>.AbstractC18821h {

        /* renamed from: g */
        public final K f105327g;

        /* renamed from: h */
        public final K f105328h;

        /* renamed from: i */
        public final boolean f105329i;

        /* renamed from: j */
        public final boolean f105330j;

        public C18819f(AbstractPatriciaTrie abstractPatriciaTrie, K k, K k2) {
            this(k, true, k2, false);
        }

        @Override // org.apache.commons.collections4.trie.AbstractPatriciaTrie.AbstractC18821h
        /* renamed from: a */
        public Set<Map.Entry<K, V>> mo66049a() {
            return new C18820g(this);
        }

        @Override // org.apache.commons.collections4.trie.AbstractPatriciaTrie.AbstractC18821h
        /* renamed from: b */
        public SortedMap<K, V> mo66050b(K k, boolean z, K k2, boolean z2) {
            return new C18819f(k, z, k2, z2);
        }

        @Override // org.apache.commons.collections4.trie.AbstractPatriciaTrie.AbstractC18821h
        /* renamed from: c */
        public K mo66051c() {
            return this.f105327g;
        }

        @Override // org.apache.commons.collections4.trie.AbstractPatriciaTrie.AbstractC18821h
        /* renamed from: d */
        public K mo66052d() {
            return this.f105328h;
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            K k = this.f105327g;
            TrieEntry<K, V> firstEntry = k == null ? AbstractPatriciaTrie.this.firstEntry() : this.f105329i ? AbstractPatriciaTrie.this.ceilingEntry(k) : AbstractPatriciaTrie.this.higherEntry(k);
            K key = firstEntry != null ? firstEntry.getKey() : null;
            if (firstEntry == null || !(this.f105328h == null || mo66056h(key, false))) {
                throw new NoSuchElementException();
            }
            return key;
        }

        @Override // org.apache.commons.collections4.trie.AbstractPatriciaTrie.AbstractC18821h
        /* renamed from: i */
        public boolean mo66057i() {
            return this.f105329i;
        }

        @Override // org.apache.commons.collections4.trie.AbstractPatriciaTrie.AbstractC18821h
        /* renamed from: j */
        public boolean mo66058j() {
            return this.f105330j;
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            K k = this.f105328h;
            TrieEntry<K, V> lastEntry = k == null ? AbstractPatriciaTrie.this.lastEntry() : this.f105330j ? AbstractPatriciaTrie.this.floorEntry(k) : AbstractPatriciaTrie.this.lowerEntry(k);
            K key = lastEntry != null ? lastEntry.getKey() : null;
            if (lastEntry == null || !(this.f105327g == null || mo66053e(key, false))) {
                throw new NoSuchElementException();
            }
            return key;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C18819f(K k, boolean z, K k2, boolean z2) {
            super();
            if (k == 0 && k2 == 0) {
                throw new IllegalArgumentException("must have a from or to!");
            }
            if (k != 0 && k2 != 0 && AbstractPatriciaTrie.this.getKeyAnalyzer().compare(k, k2) > 0) {
                throw new IllegalArgumentException("fromKey > toKey");
            }
            this.f105327g = k;
            this.f105329i = z;
            this.f105328h = k2;
            this.f105330j = z2;
        }
    }

    /* renamed from: org.apache.commons.collections4.trie.AbstractPatriciaTrie$g */
    /* loaded from: classes11.dex */
    public class C18820g extends AbstractSet<Map.Entry<K, V>> {

        /* renamed from: e */
        public final AbstractPatriciaTrie<K, V>.AbstractC18821h f105332e;

        /* renamed from: f */
        public transient int f105333f = -1;

        /* renamed from: g */
        public transient int f105334g;

        /* renamed from: org.apache.commons.collections4.trie.AbstractPatriciaTrie$g$a */
        /* loaded from: classes11.dex */
        public final class a extends AbstractPatriciaTrie<K, V>.AbstractC18823j<Map.Entry<K, V>> {

            /* renamed from: i */
            public final K f105336i;

            @Override // java.util.Iterator
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> next() {
                TrieEntry<K, V> trieEntry = this.f105342f;
                if (trieEntry == null || AbstractBitwiseTrie.compare(trieEntry.key, this.f105336i)) {
                    throw new NoSuchElementException();
                }
                return mo66063b();
            }

            @Override // org.apache.commons.collections4.trie.AbstractPatriciaTrie.AbstractC18823j, java.util.Iterator
            public boolean hasNext() {
                TrieEntry<K, V> trieEntry = this.f105342f;
                return (trieEntry == null || AbstractBitwiseTrie.compare(trieEntry.key, this.f105336i)) ? false : true;
            }

            public a(TrieEntry<K, V> trieEntry, TrieEntry<K, V> trieEntry2) {
                super(trieEntry);
                this.f105336i = trieEntry2 != null ? trieEntry2.getKey() : null;
            }
        }

        public C18820g(AbstractPatriciaTrie<K, V>.AbstractC18821h abstractC18821h) {
            if (abstractC18821h == null) {
                throw new NullPointerException("delegate");
            }
            this.f105332e = abstractC18821h;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            TrieEntry<K, V> entry;
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry2 = (Map.Entry) obj;
            Object key = entry2.getKey();
            return this.f105332e.mo66054f(key) && (entry = AbstractPatriciaTrie.this.getEntry(key)) != null && AbstractBitwiseTrie.compare(entry.getValue(), entry2.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return !iterator().hasNext();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            K mo66051c = this.f105332e.mo66051c();
            K mo66052d = this.f105332e.mo66052d();
            return new a(mo66051c == null ? AbstractPatriciaTrie.this.firstEntry() : AbstractPatriciaTrie.this.ceilingEntry(mo66051c), mo66052d != null ? AbstractPatriciaTrie.this.ceilingEntry(mo66052d) : null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            TrieEntry<K, V> entry;
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry2 = (Map.Entry) obj;
            Object key = entry2.getKey();
            if (!this.f105332e.mo66054f(key) || (entry = AbstractPatriciaTrie.this.getEntry(key)) == null || !AbstractBitwiseTrie.compare(entry.getValue(), entry2.getValue())) {
                return false;
            }
            AbstractPatriciaTrie.this.removeEntry(entry);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            if (this.f105333f == -1 || this.f105334g != AbstractPatriciaTrie.this.modCount) {
                this.f105333f = 0;
                Iterator<Map.Entry<K, V>> it2 = iterator();
                while (it2.hasNext()) {
                    this.f105333f++;
                    it2.next();
                }
                this.f105334g = AbstractPatriciaTrie.this.modCount;
            }
            return this.f105333f;
        }
    }

    /* renamed from: org.apache.commons.collections4.trie.AbstractPatriciaTrie$h */
    /* loaded from: classes11.dex */
    public abstract class AbstractC18821h extends AbstractMap<K, V> implements SortedMap<K, V> {

        /* renamed from: e */
        public volatile transient Set<Map.Entry<K, V>> f105338e;

        public AbstractC18821h() {
        }

        /* renamed from: a */
        public abstract Set<Map.Entry<K, V>> mo66049a();

        /* renamed from: b */
        public abstract SortedMap<K, V> mo66050b(K k, boolean z, K k2, boolean z2);

        /* renamed from: c */
        public abstract K mo66051c();

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return AbstractPatriciaTrie.this.comparator();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            if (mo66054f(AbstractPatriciaTrie.this.castKey(obj))) {
                return AbstractPatriciaTrie.this.containsKey(obj);
            }
            return false;
        }

        /* renamed from: d */
        public abstract K mo66052d();

        /* renamed from: e */
        public boolean mo66053e(K k, boolean z) {
            Object mo66051c = mo66051c();
            boolean mo66057i = mo66057i();
            int compare = AbstractPatriciaTrie.this.getKeyAnalyzer().compare(k, mo66051c);
            return (mo66057i || z) ? compare >= 0 : compare > 0;
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Set<Map.Entry<K, V>> entrySet() {
            if (this.f105338e == null) {
                this.f105338e = mo66049a();
            }
            return this.f105338e;
        }

        /* renamed from: f */
        public boolean mo66054f(K k) {
            Object mo66051c = mo66051c();
            Object mo66052d = mo66052d();
            if (mo66051c == null || mo66053e(k, false)) {
                return mo66052d == null || mo66056h(k, false);
            }
            return false;
        }

        /* renamed from: g */
        public boolean mo66055g(K k) {
            Object mo66051c = mo66051c();
            Object mo66052d = mo66052d();
            if (mo66051c == null || mo66053e(k, false)) {
                return mo66052d == null || mo66056h(k, true);
            }
            return false;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            if (mo66054f(AbstractPatriciaTrie.this.castKey(obj))) {
                return (V) AbstractPatriciaTrie.this.get(obj);
            }
            return null;
        }

        /* renamed from: h */
        public boolean mo66056h(K k, boolean z) {
            Object mo66052d = mo66052d();
            boolean mo66058j = mo66058j();
            int compare = AbstractPatriciaTrie.this.getKeyAnalyzer().compare(k, mo66052d);
            return (mo66058j || z) ? compare <= 0 : compare < 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.SortedMap
        public SortedMap<K, V> headMap(K k) {
            if (mo66055g(k)) {
                return mo66050b(mo66051c(), mo66057i(), k, mo66058j());
            }
            throw new IllegalArgumentException("ToKey is out of range: " + k);
        }

        /* renamed from: i */
        public abstract boolean mo66057i();

        /* renamed from: j */
        public abstract boolean mo66058j();

        @Override // java.util.AbstractMap, java.util.Map
        public V put(K k, V v) {
            if (mo66054f(k)) {
                return (V) AbstractPatriciaTrie.this.put(k, v);
            }
            throw new IllegalArgumentException("Key is out of range: " + k);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            if (mo66054f(AbstractPatriciaTrie.this.castKey(obj))) {
                return (V) AbstractPatriciaTrie.this.remove(obj);
            }
            return null;
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> subMap(K k, K k2) {
            if (!mo66055g(k)) {
                throw new IllegalArgumentException("FromKey is out of range: " + k);
            }
            if (mo66055g(k2)) {
                return mo66050b(k, mo66057i(), k2, mo66058j());
            }
            throw new IllegalArgumentException("ToKey is out of range: " + k2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.SortedMap
        public SortedMap<K, V> tailMap(K k) {
            if (mo66055g(k)) {
                return mo66050b(k, mo66057i(), mo66052d(), mo66058j());
            }
            throw new IllegalArgumentException("FromKey is out of range: " + k);
        }
    }

    /* renamed from: org.apache.commons.collections4.trie.AbstractPatriciaTrie$i */
    /* loaded from: classes11.dex */
    public static class C18822i<E> {

        /* renamed from: a */
        public E f105340a;

        public C18822i() {
        }

        /* renamed from: a */
        public E m66061a() {
            return this.f105340a;
        }

        /* renamed from: b */
        public void m66062b(E e) {
            this.f105340a = e;
        }
    }

    /* renamed from: org.apache.commons.collections4.trie.AbstractPatriciaTrie$k */
    /* loaded from: classes11.dex */
    public class C18824k extends AbstractPatriciaTrie<K, V>.AbstractC18823j<K> implements OrderedMapIterator<K, V> {

        /* renamed from: i */
        public TrieEntry<K, V> f105345i;

        public C18824k() {
            super();
        }

        @Override // org.apache.commons.collections4.trie.AbstractPatriciaTrie.AbstractC18823j
        /* renamed from: b */
        public TrieEntry<K, V> mo66063b() {
            TrieEntry<K, V> mo66063b = super.mo66063b();
            this.f105345i = mo66063b;
            return mo66063b;
        }

        /* renamed from: c */
        public TrieEntry<K, V> m66064c() {
            int i = this.f105341e;
            AbstractPatriciaTrie abstractPatriciaTrie = AbstractPatriciaTrie.this;
            if (i != abstractPatriciaTrie.modCount) {
                throw new ConcurrentModificationException();
            }
            TrieEntry<K, V> trieEntry = this.f105345i;
            if (trieEntry == null) {
                throw new NoSuchElementException();
            }
            this.f105345i = abstractPatriciaTrie.previousEntry(trieEntry);
            this.f105342f = this.f105343g;
            this.f105343g = trieEntry;
            return trieEntry;
        }

        @Override // org.apache.commons.collections4.MapIterator
        public K getKey() {
            TrieEntry<K, V> trieEntry = this.f105343g;
            if (trieEntry != null) {
                return trieEntry.getKey();
            }
            throw new IllegalStateException();
        }

        @Override // org.apache.commons.collections4.MapIterator
        public V getValue() {
            TrieEntry<K, V> trieEntry = this.f105343g;
            if (trieEntry != null) {
                return trieEntry.getValue();
            }
            throw new IllegalStateException();
        }

        @Override // org.apache.commons.collections4.OrderedMapIterator, org.apache.commons.collections4.OrderedIterator
        public boolean hasPrevious() {
            return this.f105345i != null;
        }

        @Override // java.util.Iterator, org.apache.commons.collections4.MapIterator
        public K next() {
            return mo66063b().getKey();
        }

        @Override // org.apache.commons.collections4.OrderedMapIterator, org.apache.commons.collections4.OrderedIterator
        public K previous() {
            return m66064c().getKey();
        }

        @Override // org.apache.commons.collections4.MapIterator
        public V setValue(V v) {
            TrieEntry<K, V> trieEntry = this.f105343g;
            if (trieEntry != null) {
                return trieEntry.setValue(v);
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: org.apache.commons.collections4.trie.AbstractPatriciaTrie$l */
    /* loaded from: classes11.dex */
    public class C18825l extends AbstractCollection<V> {

        /* renamed from: org.apache.commons.collections4.trie.AbstractPatriciaTrie$l$a */
        /* loaded from: classes11.dex */
        public class a extends AbstractPatriciaTrie<K, V>.AbstractC18823j<V> {
            public a() {
                super();
            }

            @Override // java.util.Iterator
            public V next() {
                return mo66063b().getValue();
            }
        }

        public C18825l() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            AbstractPatriciaTrie.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return AbstractPatriciaTrie.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            Iterator<V> it2 = iterator();
            while (it2.hasNext()) {
                if (AbstractBitwiseTrie.compare(it2.next(), obj)) {
                    it2.remove();
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return AbstractPatriciaTrie.this.size();
        }
    }

    public AbstractPatriciaTrie(KeyAnalyzer<? super K> keyAnalyzer) {
        super(keyAnalyzer);
        this.root = new TrieEntry<>(null, null, -1);
        this.size = 0;
        this.modCount = 0;
    }

    private SortedMap<K, V> getPrefixMapByBits(K k, int i, int i2) {
        int i3 = i + i2;
        if (i3 <= lengthInBits(k)) {
            return i3 == 0 ? this : new C18818e(k, i, i2);
        }
        throw new IllegalArgumentException(i + " + " + i2 + CloudStorageConstants.OPERATION_GREATER + lengthInBits(k));
    }

    private void incrementModCount() {
        this.modCount++;
    }

    public static boolean isValidUplink(TrieEntry<?, ?> trieEntry, TrieEntry<?, ?> trieEntry2) {
        return (trieEntry == null || trieEntry.bitIndex > trieEntry2.bitIndex || trieEntry.isEmpty()) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.root = new TrieEntry<>(null, null, -1);
        int readInt = objectInputStream.readInt();
        for (int i = 0; i < readInt; i++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    private void removeExternalEntry(TrieEntry<K, V> trieEntry) {
        if (trieEntry == this.root) {
            throw new IllegalArgumentException("Cannot delete root Entry!");
        }
        if (!trieEntry.isExternalNode()) {
            throw new IllegalArgumentException(trieEntry + " is not an external Entry!");
        }
        TrieEntry<K, V> trieEntry2 = trieEntry.parent;
        TrieEntry<K, V> trieEntry3 = trieEntry.left;
        if (trieEntry3 == trieEntry) {
            trieEntry3 = trieEntry.right;
        }
        if (trieEntry2.left == trieEntry) {
            trieEntry2.left = trieEntry3;
        } else {
            trieEntry2.right = trieEntry3;
        }
        if (trieEntry3.bitIndex > trieEntry2.bitIndex) {
            trieEntry3.parent = trieEntry2;
        } else {
            trieEntry3.predecessor = trieEntry2;
        }
    }

    private void removeInternalEntry(TrieEntry<K, V> trieEntry) {
        if (trieEntry == this.root) {
            throw new IllegalArgumentException("Cannot delete root Entry!");
        }
        if (!trieEntry.isInternalNode()) {
            throw new IllegalArgumentException(trieEntry + " is not an internal Entry!");
        }
        TrieEntry<K, V> trieEntry2 = trieEntry.predecessor;
        trieEntry2.bitIndex = trieEntry.bitIndex;
        TrieEntry<K, V> trieEntry3 = trieEntry2.parent;
        TrieEntry<K, V> trieEntry4 = trieEntry2.left;
        if (trieEntry4 == trieEntry) {
            trieEntry4 = trieEntry2.right;
        }
        if (trieEntry2.predecessor == trieEntry2 && trieEntry3 != trieEntry) {
            trieEntry2.predecessor = trieEntry3;
        }
        if (trieEntry3.left == trieEntry2) {
            trieEntry3.left = trieEntry4;
        } else {
            trieEntry3.right = trieEntry4;
        }
        if (trieEntry4.bitIndex > trieEntry3.bitIndex) {
            trieEntry4.parent = trieEntry3;
        }
        TrieEntry<K, V> trieEntry5 = trieEntry.left;
        if (trieEntry5.parent == trieEntry) {
            trieEntry5.parent = trieEntry2;
        }
        TrieEntry<K, V> trieEntry6 = trieEntry.right;
        if (trieEntry6.parent == trieEntry) {
            trieEntry6.parent = trieEntry2;
        }
        TrieEntry<K, V> trieEntry7 = trieEntry.parent;
        if (trieEntry7.left == trieEntry) {
            trieEntry7.left = trieEntry2;
        } else {
            trieEntry7.right = trieEntry2;
        }
        trieEntry2.parent = trieEntry7;
        TrieEntry<K, V> trieEntry8 = trieEntry.left;
        trieEntry2.left = trieEntry8;
        trieEntry2.right = trieEntry.right;
        if (isValidUplink(trieEntry8, trieEntry2)) {
            trieEntry2.left.predecessor = trieEntry2;
        }
        if (isValidUplink(trieEntry2.right, trieEntry2)) {
            trieEntry2.right.predecessor = trieEntry2;
        }
    }

    private boolean selectR(TrieEntry<K, V> trieEntry, int i, K k, int i2, C18822i<Map.Entry<K, V>> c18822i) {
        int i3 = trieEntry.bitIndex;
        if (i3 <= i) {
            if (trieEntry.isEmpty()) {
                return true;
            }
            c18822i.m66062b(trieEntry);
            return false;
        }
        if (isBitSet(k, i3, i2)) {
            if (selectR(trieEntry.right, trieEntry.bitIndex, k, i2, c18822i)) {
                return selectR(trieEntry.left, trieEntry.bitIndex, k, i2, c18822i);
            }
        } else if (selectR(trieEntry.left, trieEntry.bitIndex, k, i2, c18822i)) {
            return selectR(trieEntry.right, trieEntry.bitIndex, k, i2, c18822i);
        }
        return false;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    public TrieEntry<K, V> addEntry(TrieEntry<K, V> trieEntry, int i) {
        TrieEntry<K, V> trieEntry2;
        int i2;
        TrieEntry<K, V> trieEntry3 = this.root;
        TrieEntry<K, V> trieEntry4 = trieEntry3.left;
        while (true) {
            TrieEntry<K, V> trieEntry5 = trieEntry4;
            trieEntry2 = trieEntry3;
            trieEntry3 = trieEntry5;
            int i3 = trieEntry3.bitIndex;
            i2 = trieEntry.bitIndex;
            if (i3 >= i2 || i3 <= trieEntry2.bitIndex) {
                break;
            }
            trieEntry4 = !isBitSet(trieEntry.key, i3, i) ? trieEntry3.left : trieEntry3.right;
        }
        trieEntry.predecessor = trieEntry;
        if (isBitSet(trieEntry.key, i2, i)) {
            trieEntry.left = trieEntry3;
            trieEntry.right = trieEntry;
        } else {
            trieEntry.left = trieEntry;
            trieEntry.right = trieEntry3;
        }
        trieEntry.parent = trieEntry2;
        int i4 = trieEntry3.bitIndex;
        if (i4 >= trieEntry.bitIndex) {
            trieEntry3.parent = trieEntry;
        }
        int i5 = trieEntry2.bitIndex;
        if (i4 <= i5) {
            trieEntry3.predecessor = trieEntry;
        }
        if (trieEntry2 == this.root || !isBitSet(trieEntry.key, i5, i)) {
            trieEntry2.left = trieEntry;
        } else {
            trieEntry2.right = trieEntry;
        }
        return trieEntry;
    }

    public TrieEntry<K, V> ceilingEntry(K k) {
        int lengthInBits = lengthInBits(k);
        if (lengthInBits == 0) {
            return !this.root.isEmpty() ? this.root : firstEntry();
        }
        TrieEntry<K, V> nearestEntryForKey = getNearestEntryForKey(k, lengthInBits);
        if (compareKeys(k, nearestEntryForKey.key)) {
            return nearestEntryForKey;
        }
        int bitIndex = bitIndex(k, nearestEntryForKey.key);
        if (KeyAnalyzer.isValidBitIndex(bitIndex)) {
            TrieEntry<K, V> trieEntry = new TrieEntry<>(k, null, bitIndex);
            addEntry(trieEntry, lengthInBits);
            incrementSize();
            TrieEntry<K, V> nextEntry = nextEntry(trieEntry);
            removeEntry(trieEntry);
            this.modCount -= 2;
            return nextEntry;
        }
        if (KeyAnalyzer.isNullBitKey(bitIndex)) {
            return !this.root.isEmpty() ? this.root : firstEntry();
        }
        if (KeyAnalyzer.isEqualBitKey(bitIndex)) {
            return nearestEntryForKey;
        }
        throw new IllegalStateException("invalid lookup: " + k);
    }

    @Override // java.util.AbstractMap, java.util.Map, org.apache.commons.collections4.Put
    public void clear() {
        TrieEntry<K, V> trieEntry = this.root;
        trieEntry.key = null;
        trieEntry.bitIndex = -1;
        trieEntry.value = null;
        trieEntry.parent = null;
        trieEntry.left = trieEntry;
        trieEntry.right = null;
        trieEntry.predecessor = trieEntry;
        this.size = 0;
        incrementModCount();
    }

    @Override // java.util.SortedMap
    public Comparator<? super K> comparator() {
        return getKeyAnalyzer();
    }

    @Override // java.util.AbstractMap, java.util.Map, org.apache.commons.collections4.Get
    public boolean containsKey(Object obj) {
        if (obj == null) {
            return false;
        }
        K castKey = castKey(obj);
        TrieEntry<K, V> nearestEntryForKey = getNearestEntryForKey(castKey, lengthInBits(castKey));
        return !nearestEntryForKey.isEmpty() && compareKeys(castKey, nearestEntryForKey.key);
    }

    public void decrementSize() {
        this.size--;
        incrementModCount();
    }

    @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap, org.apache.commons.collections4.Get
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.entrySet == null) {
            this.entrySet = new C18815b();
        }
        return this.entrySet;
    }

    public TrieEntry<K, V> firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return followLeft(this.root);
    }

    @Override // java.util.SortedMap, org.apache.commons.collections4.OrderedMap
    public K firstKey() {
        if (size() != 0) {
            return firstEntry().getKey();
        }
        throw new NoSuchElementException();
    }

    public TrieEntry<K, V> floorEntry(K k) {
        int lengthInBits = lengthInBits(k);
        if (lengthInBits == 0) {
            if (this.root.isEmpty()) {
                return null;
            }
            return this.root;
        }
        TrieEntry<K, V> nearestEntryForKey = getNearestEntryForKey(k, lengthInBits);
        if (compareKeys(k, nearestEntryForKey.key)) {
            return nearestEntryForKey;
        }
        int bitIndex = bitIndex(k, nearestEntryForKey.key);
        if (KeyAnalyzer.isValidBitIndex(bitIndex)) {
            TrieEntry<K, V> trieEntry = new TrieEntry<>(k, null, bitIndex);
            addEntry(trieEntry, lengthInBits);
            incrementSize();
            TrieEntry<K, V> previousEntry = previousEntry(trieEntry);
            removeEntry(trieEntry);
            this.modCount -= 2;
            return previousEntry;
        }
        if (KeyAnalyzer.isNullBitKey(bitIndex)) {
            if (this.root.isEmpty()) {
                return null;
            }
            return this.root;
        }
        if (KeyAnalyzer.isEqualBitKey(bitIndex)) {
            return nearestEntryForKey;
        }
        throw new IllegalStateException("invalid lookup: " + k);
    }

    public TrieEntry<K, V> followLeft(TrieEntry<K, V> trieEntry) {
        while (true) {
            TrieEntry<K, V> trieEntry2 = trieEntry.left;
            if (trieEntry2.isEmpty()) {
                trieEntry2 = trieEntry.right;
            }
            if (trieEntry2.bitIndex <= trieEntry.bitIndex) {
                return trieEntry2;
            }
            trieEntry = trieEntry2;
        }
    }

    public TrieEntry<K, V> followRight(TrieEntry<K, V> trieEntry) {
        if (trieEntry.right == null) {
            return null;
        }
        while (true) {
            TrieEntry<K, V> trieEntry2 = trieEntry.right;
            if (trieEntry2.bitIndex <= trieEntry.bitIndex) {
                return trieEntry2;
            }
            trieEntry = trieEntry2;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map, org.apache.commons.collections4.Get
    public V get(Object obj) {
        TrieEntry<K, V> entry = getEntry(obj);
        if (entry != null) {
            return entry.getValue();
        }
        return null;
    }

    public TrieEntry<K, V> getEntry(Object obj) {
        K castKey = castKey(obj);
        if (castKey == null) {
            return null;
        }
        TrieEntry<K, V> nearestEntryForKey = getNearestEntryForKey(castKey, lengthInBits(castKey));
        if (nearestEntryForKey.isEmpty() || !compareKeys(castKey, nearestEntryForKey.key)) {
            return null;
        }
        return nearestEntryForKey;
    }

    public TrieEntry<K, V> getNearestEntryForKey(K k, int i) {
        TrieEntry<K, V> trieEntry = this.root;
        TrieEntry<K, V> trieEntry2 = trieEntry.left;
        while (true) {
            TrieEntry<K, V> trieEntry3 = trieEntry2;
            TrieEntry<K, V> trieEntry4 = trieEntry;
            trieEntry = trieEntry3;
            int i2 = trieEntry.bitIndex;
            if (i2 <= trieEntry4.bitIndex) {
                return trieEntry;
            }
            trieEntry2 = !isBitSet(k, i2, i) ? trieEntry.left : trieEntry.right;
        }
    }

    @Override // java.util.SortedMap
    public SortedMap<K, V> headMap(K k) {
        return new C18819f(this, null, k);
    }

    public TrieEntry<K, V> higherEntry(K k) {
        int lengthInBits = lengthInBits(k);
        if (lengthInBits == 0) {
            if (this.root.isEmpty()) {
                return firstEntry();
            }
            if (size() > 1) {
                return nextEntry(this.root);
            }
            return null;
        }
        TrieEntry<K, V> nearestEntryForKey = getNearestEntryForKey(k, lengthInBits);
        if (compareKeys(k, nearestEntryForKey.key)) {
            return nextEntry(nearestEntryForKey);
        }
        int bitIndex = bitIndex(k, nearestEntryForKey.key);
        if (KeyAnalyzer.isValidBitIndex(bitIndex)) {
            TrieEntry<K, V> trieEntry = new TrieEntry<>(k, null, bitIndex);
            addEntry(trieEntry, lengthInBits);
            incrementSize();
            TrieEntry<K, V> nextEntry = nextEntry(trieEntry);
            removeEntry(trieEntry);
            this.modCount -= 2;
            return nextEntry;
        }
        if (KeyAnalyzer.isNullBitKey(bitIndex)) {
            if (!this.root.isEmpty()) {
                return firstEntry();
            }
            if (size() > 1) {
                return nextEntry(firstEntry());
            }
            return null;
        }
        if (KeyAnalyzer.isEqualBitKey(bitIndex)) {
            return nextEntry(nearestEntryForKey);
        }
        throw new IllegalStateException("invalid lookup: " + k);
    }

    public void incrementSize() {
        this.size++;
        incrementModCount();
    }

    @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap, org.apache.commons.collections4.Get
    public Set<K> keySet() {
        if (this.keySet == null) {
            this.keySet = new C18816c();
        }
        return this.keySet;
    }

    public TrieEntry<K, V> lastEntry() {
        return followRight(this.root.left);
    }

    @Override // java.util.SortedMap, org.apache.commons.collections4.OrderedMap
    public K lastKey() {
        TrieEntry<K, V> lastEntry = lastEntry();
        if (lastEntry != null) {
            return lastEntry.getKey();
        }
        throw new NoSuchElementException();
    }

    public TrieEntry<K, V> lowerEntry(K k) {
        int lengthInBits = lengthInBits(k);
        if (lengthInBits == 0) {
            return null;
        }
        TrieEntry<K, V> nearestEntryForKey = getNearestEntryForKey(k, lengthInBits);
        if (compareKeys(k, nearestEntryForKey.key)) {
            return previousEntry(nearestEntryForKey);
        }
        int bitIndex = bitIndex(k, nearestEntryForKey.key);
        if (KeyAnalyzer.isValidBitIndex(bitIndex)) {
            TrieEntry<K, V> trieEntry = new TrieEntry<>(k, null, bitIndex);
            addEntry(trieEntry, lengthInBits);
            incrementSize();
            TrieEntry<K, V> previousEntry = previousEntry(trieEntry);
            removeEntry(trieEntry);
            this.modCount -= 2;
            return previousEntry;
        }
        if (KeyAnalyzer.isNullBitKey(bitIndex)) {
            return null;
        }
        if (KeyAnalyzer.isEqualBitKey(bitIndex)) {
            return previousEntry(nearestEntryForKey);
        }
        throw new IllegalStateException("invalid lookup: " + k);
    }

    public TrieEntry<K, V> nextEntry(TrieEntry<K, V> trieEntry) {
        return trieEntry == null ? firstEntry() : nextEntryImpl(trieEntry.predecessor, trieEntry, null);
    }

    public TrieEntry<K, V> nextEntryImpl(TrieEntry<K, V> trieEntry, TrieEntry<K, V> trieEntry2, TrieEntry<K, V> trieEntry3) {
        TrieEntry<K, V> trieEntry4;
        TrieEntry<K, V> trieEntry5;
        if (trieEntry2 == null || trieEntry != trieEntry2.predecessor) {
            while (!trieEntry.left.isEmpty() && trieEntry2 != (trieEntry4 = trieEntry.left)) {
                if (isValidUplink(trieEntry4, trieEntry)) {
                    return trieEntry.left;
                }
                trieEntry = trieEntry.left;
            }
        }
        if (trieEntry.isEmpty() || (trieEntry5 = trieEntry.right) == null) {
            return null;
        }
        if (trieEntry2 != trieEntry5) {
            return isValidUplink(trieEntry5, trieEntry) ? trieEntry.right : nextEntryImpl(trieEntry.right, trieEntry2, trieEntry3);
        }
        while (true) {
            TrieEntry<K, V> trieEntry6 = trieEntry.parent;
            TrieEntry<K, V> trieEntry7 = trieEntry6.right;
            if (trieEntry != trieEntry7) {
                if (trieEntry == trieEntry3 || trieEntry7 == null) {
                    return null;
                }
                if (trieEntry2 != trieEntry7 && isValidUplink(trieEntry7, trieEntry6)) {
                    return trieEntry.parent.right;
                }
                TrieEntry<K, V> trieEntry8 = trieEntry.parent;
                TrieEntry<K, V> trieEntry9 = trieEntry8.right;
                if (trieEntry9 == trieEntry8) {
                    return null;
                }
                return nextEntryImpl(trieEntry9, trieEntry2, trieEntry3);
            }
            if (trieEntry == trieEntry3) {
                return null;
            }
            trieEntry = trieEntry6;
        }
    }

    public TrieEntry<K, V> nextEntryInSubtree(TrieEntry<K, V> trieEntry, TrieEntry<K, V> trieEntry2) {
        return trieEntry == null ? firstEntry() : nextEntryImpl(trieEntry.predecessor, trieEntry, trieEntry2);
    }

    @Override // org.apache.commons.collections4.OrderedMap
    public K nextKey(K k) {
        TrieEntry<K, V> nextEntry;
        k.getClass();
        TrieEntry<K, V> entry = getEntry(k);
        if (entry == null || (nextEntry = nextEntry(entry)) == null) {
            return null;
        }
        return nextEntry.getKey();
    }

    @Override // org.apache.commons.collections4.Trie
    public SortedMap<K, V> prefixMap(K k) {
        return getPrefixMapByBits(k, 0, lengthInBits(k));
    }

    public TrieEntry<K, V> previousEntry(TrieEntry<K, V> trieEntry) {
        TrieEntry<K, V> trieEntry2;
        TrieEntry<K, V> trieEntry3 = trieEntry.predecessor;
        if (trieEntry3 == null) {
            throw new IllegalArgumentException("must have come from somewhere!");
        }
        if (trieEntry3.right == trieEntry) {
            return isValidUplink(trieEntry3.left, trieEntry3) ? trieEntry.predecessor.left : followRight(trieEntry.predecessor.left);
        }
        while (true) {
            trieEntry2 = trieEntry3.parent;
            if (trieEntry2 == null || trieEntry3 != trieEntry2.left) {
                break;
            }
            trieEntry3 = trieEntry2;
        }
        if (trieEntry2 == null) {
            return null;
        }
        if (!isValidUplink(trieEntry2.left, trieEntry2)) {
            return followRight(trieEntry3.parent.left);
        }
        TrieEntry<K, V> trieEntry4 = trieEntry3.parent.left;
        TrieEntry<K, V> trieEntry5 = this.root;
        if (trieEntry4 != trieEntry5) {
            return trieEntry4;
        }
        if (trieEntry5.isEmpty()) {
            return null;
        }
        return this.root;
    }

    @Override // org.apache.commons.collections4.OrderedMap
    public K previousKey(K k) {
        TrieEntry<K, V> previousEntry;
        k.getClass();
        TrieEntry<K, V> entry = getEntry(k);
        if (entry == null || (previousEntry = previousEntry(entry)) == null) {
            return null;
        }
        return previousEntry.getKey();
    }

    @Override // java.util.AbstractMap, java.util.Map, org.apache.commons.collections4.Put
    public V put(K k, V v) {
        if (k == null) {
            throw new NullPointerException("Key cannot be null");
        }
        int lengthInBits = lengthInBits(k);
        if (lengthInBits == 0) {
            if (this.root.isEmpty()) {
                incrementSize();
            } else {
                incrementModCount();
            }
            return this.root.setKeyValue(k, v);
        }
        TrieEntry<K, V> nearestEntryForKey = getNearestEntryForKey(k, lengthInBits);
        if (compareKeys(k, nearestEntryForKey.key)) {
            if (nearestEntryForKey.isEmpty()) {
                incrementSize();
            } else {
                incrementModCount();
            }
            return nearestEntryForKey.setKeyValue(k, v);
        }
        int bitIndex = bitIndex(k, nearestEntryForKey.key);
        if (!KeyAnalyzer.isOutOfBoundsIndex(bitIndex)) {
            if (KeyAnalyzer.isValidBitIndex(bitIndex)) {
                addEntry(new TrieEntry<>(k, v, bitIndex), lengthInBits);
                incrementSize();
                return null;
            }
            if (KeyAnalyzer.isNullBitKey(bitIndex)) {
                if (this.root.isEmpty()) {
                    incrementSize();
                } else {
                    incrementModCount();
                }
                return this.root.setKeyValue(k, v);
            }
            if (KeyAnalyzer.isEqualBitKey(bitIndex) && nearestEntryForKey != this.root) {
                incrementModCount();
                return nearestEntryForKey.setKeyValue(k, v);
            }
        }
        throw new IllegalArgumentException("Failed to put: " + k + AlphabetConverter.f109940d + v + ", " + bitIndex);
    }

    @Override // java.util.AbstractMap, java.util.Map, org.apache.commons.collections4.Get
    public V remove(Object obj) {
        if (obj == null) {
            return null;
        }
        K castKey = castKey(obj);
        int lengthInBits = lengthInBits(castKey);
        TrieEntry<K, V> trieEntry = this.root;
        TrieEntry<K, V> trieEntry2 = trieEntry.left;
        while (true) {
            TrieEntry<K, V> trieEntry3 = trieEntry2;
            TrieEntry<K, V> trieEntry4 = trieEntry;
            trieEntry = trieEntry3;
            int i = trieEntry.bitIndex;
            if (i <= trieEntry4.bitIndex) {
                break;
            }
            trieEntry2 = !isBitSet(castKey, i, lengthInBits) ? trieEntry.left : trieEntry.right;
        }
        if (trieEntry.isEmpty() || !compareKeys(castKey, trieEntry.key)) {
            return null;
        }
        return removeEntry(trieEntry);
    }

    public V removeEntry(TrieEntry<K, V> trieEntry) {
        if (trieEntry != this.root) {
            if (trieEntry.isInternalNode()) {
                removeInternalEntry(trieEntry);
            } else {
                removeExternalEntry(trieEntry);
            }
        }
        decrementSize();
        return trieEntry.setKeyValue(null, null);
    }

    public Map.Entry<K, V> select(K k) {
        int lengthInBits = lengthInBits(k);
        C18822i<Map.Entry<K, V>> c18822i = new C18822i<>();
        if (selectR(this.root.left, -1, k, lengthInBits, c18822i)) {
            return null;
        }
        return c18822i.m66061a();
    }

    public K selectKey(K k) {
        Map.Entry<K, V> select = select(k);
        if (select == null) {
            return null;
        }
        return select.getKey();
    }

    public V selectValue(K k) {
        Map.Entry<K, V> select = select(k);
        if (select == null) {
            return null;
        }
        return select.getValue();
    }

    @Override // java.util.AbstractMap, java.util.Map, org.apache.commons.collections4.Get
    public int size() {
        return this.size;
    }

    @Override // java.util.SortedMap
    public SortedMap<K, V> subMap(K k, K k2) {
        return new C18819f(this, k, k2);
    }

    public TrieEntry<K, V> subtree(K k, int i, int i2) {
        TrieEntry<K, V> trieEntry;
        TrieEntry<K, V> trieEntry2 = this.root;
        TrieEntry<K, V> trieEntry3 = trieEntry2.left;
        while (true) {
            TrieEntry<K, V> trieEntry4 = trieEntry3;
            trieEntry = trieEntry2;
            trieEntry2 = trieEntry4;
            int i3 = trieEntry2.bitIndex;
            if (i3 <= trieEntry.bitIndex || i2 <= i3) {
                break;
            }
            trieEntry3 = !isBitSet(k, i3 + i, i + i2) ? trieEntry2.left : trieEntry2.right;
        }
        if (trieEntry2.isEmpty()) {
            trieEntry2 = trieEntry;
        }
        if (trieEntry2.isEmpty()) {
            return null;
        }
        int i4 = i + i2;
        if (trieEntry2 == this.root && lengthInBits(trieEntry2.getKey()) < i4) {
            return null;
        }
        boolean isBitSet = isBitSet(k, i4 - 1, i4);
        K k2 = trieEntry2.key;
        if (isBitSet != isBitSet(k2, i2 - 1, lengthInBits(k2))) {
            return null;
        }
        int bitIndex = getKeyAnalyzer().bitIndex(k, i, i2, trieEntry2.key, 0, lengthInBits(trieEntry2.getKey()));
        if (bitIndex < 0 || bitIndex >= i2) {
            return trieEntry2;
        }
        return null;
    }

    @Override // java.util.SortedMap
    public SortedMap<K, V> tailMap(K k) {
        return new C18819f(this, k, null);
    }

    @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap, org.apache.commons.collections4.Get
    public Collection<V> values() {
        if (this.values == null) {
            this.values = new C18825l();
        }
        return this.values;
    }

    @Override // org.apache.commons.collections4.OrderedMap, org.apache.commons.collections4.IterableGet
    public OrderedMapIterator<K, V> mapIterator() {
        return new C18824k();
    }

    /* renamed from: org.apache.commons.collections4.trie.AbstractPatriciaTrie$j */
    /* loaded from: classes11.dex */
    public abstract class AbstractC18823j<E> implements Iterator<E> {

        /* renamed from: e */
        public int f105341e;

        /* renamed from: f */
        public TrieEntry<K, V> f105342f;

        /* renamed from: g */
        public TrieEntry<K, V> f105343g;

        public AbstractC18823j() {
            this.f105341e = AbstractPatriciaTrie.this.modCount;
            this.f105342f = AbstractPatriciaTrie.this.nextEntry(null);
        }

        /* renamed from: a */
        public TrieEntry<K, V> mo66042a(TrieEntry<K, V> trieEntry) {
            return AbstractPatriciaTrie.this.nextEntry(trieEntry);
        }

        /* renamed from: b */
        public TrieEntry<K, V> mo66063b() {
            if (this.f105341e != AbstractPatriciaTrie.this.modCount) {
                throw new ConcurrentModificationException();
            }
            TrieEntry<K, V> trieEntry = this.f105342f;
            if (trieEntry == null) {
                throw new NoSuchElementException();
            }
            this.f105342f = mo66042a(trieEntry);
            this.f105343g = trieEntry;
            return trieEntry;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f105342f != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            TrieEntry<K, V> trieEntry = this.f105343g;
            if (trieEntry == null) {
                throw new IllegalStateException();
            }
            int i = this.f105341e;
            AbstractPatriciaTrie abstractPatriciaTrie = AbstractPatriciaTrie.this;
            if (i != abstractPatriciaTrie.modCount) {
                throw new ConcurrentModificationException();
            }
            this.f105343g = null;
            abstractPatriciaTrie.removeEntry(trieEntry);
            this.f105341e = AbstractPatriciaTrie.this.modCount;
        }

        public AbstractC18823j(TrieEntry<K, V> trieEntry) {
            this.f105341e = AbstractPatriciaTrie.this.modCount;
            this.f105342f = trieEntry;
        }
    }

    public AbstractPatriciaTrie(KeyAnalyzer<? super K> keyAnalyzer, Map<? extends K, ? extends V> map) {
        super(keyAnalyzer);
        this.root = new TrieEntry<>(null, null, -1);
        this.size = 0;
        this.modCount = 0;
        putAll(map);
    }
}
