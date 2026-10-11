package org.apache.commons.collections4.bidimap;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.AbstractSet;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.apache.commons.collections4.KeyValue;
import org.apache.commons.collections4.MapIterator;
import org.apache.commons.collections4.OrderedBidiMap;
import org.apache.commons.collections4.OrderedIterator;
import org.apache.commons.collections4.OrderedMapIterator;
import org.apache.commons.collections4.iterators.EmptyOrderedMapIterator;
import org.apache.commons.collections4.keyvalue.UnmodifiableMapEntry;

/* loaded from: classes11.dex */
public class TreeBidiMap<K extends Comparable<K>, V extends Comparable<V>> implements OrderedBidiMap<K, V>, Serializable {
    private static final long serialVersionUID = 721969328361807L;
    private transient Set<Map.Entry<K, V>> entrySet;
    private transient TreeBidiMap<K, V>.C18728c inverse;
    private transient Set<K> keySet;
    private transient int modifications;
    private transient int nodeCount;
    private transient C18733h<K, V>[] rootNode;
    private transient Set<V> valuesSet;

    /* loaded from: classes11.dex */
    public enum DataElement {
        KEY("key"),
        VALUE("value");

        private final String description;

        DataElement(String str) {
            this.description = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.description;
        }
    }

    /* renamed from: org.apache.commons.collections4.bidimap.TreeBidiMap$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18726a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f104957a;

        static {
            int[] iArr = new int[DataElement.values().length];
            f104957a = iArr;
            try {
                iArr[DataElement.KEY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f104957a[DataElement.VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: org.apache.commons.collections4.bidimap.TreeBidiMap$b */
    /* loaded from: classes11.dex */
    public class C18727b extends TreeBidiMap<K, V>.AbstractC18735j<Map.Entry<K, V>> {
        public C18727b() {
            super(DataElement.KEY);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object value = entry.getValue();
            C18733h lookupKey = TreeBidiMap.this.lookupKey(entry.getKey());
            return lookupKey != null && lookupKey.getValue().equals(value);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C18737l();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object value = entry.getValue();
            C18733h lookupKey = TreeBidiMap.this.lookupKey(entry.getKey());
            if (lookupKey == null || !lookupKey.getValue().equals(value)) {
                return false;
            }
            TreeBidiMap.this.doRedBlackDelete(lookupKey);
            return true;
        }
    }

    /* renamed from: org.apache.commons.collections4.bidimap.TreeBidiMap$c */
    /* loaded from: classes11.dex */
    public class C18728c implements OrderedBidiMap<V, K> {

        /* renamed from: e */
        public Set<V> f104959e;

        /* renamed from: f */
        public Set<K> f104960f;

        /* renamed from: g */
        public Set<Map.Entry<V, K>> f104961g;

        public C18728c() {
        }

        @Override // org.apache.commons.collections4.OrderedMap
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public V firstKey() {
            if (TreeBidiMap.this.nodeCount == 0) {
                throw new NoSuchElementException("Map is empty");
            }
            TreeBidiMap treeBidiMap = TreeBidiMap.this;
            C18733h[] c18733hArr = treeBidiMap.rootNode;
            DataElement dataElement = DataElement.VALUE;
            return (V) treeBidiMap.leastNode(c18733hArr[dataElement.ordinal()], dataElement).getValue();
        }

        @Override // java.util.Map, org.apache.commons.collections4.Get
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public K get(Object obj) {
            return (K) TreeBidiMap.this.getKey(obj);
        }

        @Override // org.apache.commons.collections4.BidiMap
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public V getKey(Object obj) {
            return (V) TreeBidiMap.this.get(obj);
        }

        @Override // java.util.Map, org.apache.commons.collections4.Put
        public void clear() {
            TreeBidiMap.this.clear();
        }

        @Override // java.util.Map, org.apache.commons.collections4.Get
        public boolean containsKey(Object obj) {
            return TreeBidiMap.this.containsValue(obj);
        }

        @Override // java.util.Map, org.apache.commons.collections4.Get
        public boolean containsValue(Object obj) {
            return TreeBidiMap.this.containsKey(obj);
        }

        @Override // org.apache.commons.collections4.OrderedMap
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public V lastKey() {
            if (TreeBidiMap.this.nodeCount == 0) {
                throw new NoSuchElementException("Map is empty");
            }
            TreeBidiMap treeBidiMap = TreeBidiMap.this;
            C18733h[] c18733hArr = treeBidiMap.rootNode;
            DataElement dataElement = DataElement.VALUE;
            return (V) treeBidiMap.greatestNode(c18733hArr[dataElement.ordinal()], dataElement).getValue();
        }

        @Override // org.apache.commons.collections4.OrderedMap
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public V nextKey(V v) {
            TreeBidiMap.checkKey(v);
            TreeBidiMap treeBidiMap = TreeBidiMap.this;
            DataElement dataElement = DataElement.VALUE;
            C18733h nextGreater = treeBidiMap.nextGreater(treeBidiMap.lookup(v, dataElement), dataElement);
            if (nextGreater == null) {
                return null;
            }
            return (V) nextGreater.getValue();
        }

        @Override // java.util.Map, org.apache.commons.collections4.Get
        public Set<Map.Entry<V, K>> entrySet() {
            if (this.f104961g == null) {
                this.f104961g = new C18729d();
            }
            return this.f104961g;
        }

        @Override // java.util.Map
        public boolean equals(Object obj) {
            return TreeBidiMap.this.doEquals(obj, DataElement.VALUE);
        }

        @Override // org.apache.commons.collections4.OrderedMap
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public V previousKey(V v) {
            TreeBidiMap.checkKey(v);
            TreeBidiMap treeBidiMap = TreeBidiMap.this;
            DataElement dataElement = DataElement.VALUE;
            C18733h nextSmaller = treeBidiMap.nextSmaller(treeBidiMap.lookup(v, dataElement), dataElement);
            if (nextSmaller == null) {
                return null;
            }
            return (V) nextSmaller.getValue();
        }

        @Override // org.apache.commons.collections4.BidiMap, java.util.Map, org.apache.commons.collections4.Put
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public K put(V v, K k) {
            K k2 = (K) get(v);
            TreeBidiMap.this.doPut(k, v);
            return k2;
        }

        @Override // java.util.Map, org.apache.commons.collections4.Get
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public K remove(Object obj) {
            return (K) TreeBidiMap.this.removeValue(obj);
        }

        @Override // java.util.Map
        public int hashCode() {
            return TreeBidiMap.this.doHashCode(DataElement.VALUE);
        }

        @Override // org.apache.commons.collections4.BidiMap
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public V removeValue(Object obj) {
            return (V) TreeBidiMap.this.remove(obj);
        }

        @Override // java.util.Map, org.apache.commons.collections4.Get
        public boolean isEmpty() {
            return TreeBidiMap.this.isEmpty();
        }

        @Override // java.util.Map, org.apache.commons.collections4.Get
        public Set<V> keySet() {
            if (this.f104959e == null) {
                this.f104959e = new C18734i(DataElement.VALUE);
            }
            return this.f104959e;
        }

        @Override // java.util.Map, org.apache.commons.collections4.Put
        public void putAll(Map<? extends V, ? extends K> map) {
            for (Map.Entry<? extends V, ? extends K> entry : map.entrySet()) {
                put(entry.getKey(), entry.getValue());
            }
        }

        @Override // java.util.Map, org.apache.commons.collections4.Get
        public int size() {
            return TreeBidiMap.this.size();
        }

        public String toString() {
            return TreeBidiMap.this.doToString(DataElement.VALUE);
        }

        @Override // org.apache.commons.collections4.OrderedBidiMap, org.apache.commons.collections4.BidiMap
        public OrderedBidiMap<K, V> inverseBidiMap() {
            return TreeBidiMap.this;
        }

        @Override // org.apache.commons.collections4.IterableGet
        public OrderedMapIterator<V, K> mapIterator() {
            if (isEmpty()) {
                return EmptyOrderedMapIterator.emptyOrderedMapIterator();
            }
            return new C18731f(DataElement.VALUE);
        }

        @Override // org.apache.commons.collections4.BidiMap, java.util.Map, org.apache.commons.collections4.Get
        public Set<K> values() {
            if (this.f104960f == null) {
                this.f104960f = new C18732g(DataElement.VALUE);
            }
            return this.f104960f;
        }
    }

    /* renamed from: org.apache.commons.collections4.bidimap.TreeBidiMap$d */
    /* loaded from: classes11.dex */
    public class C18729d extends TreeBidiMap<K, V>.AbstractC18735j<Map.Entry<V, K>> {
        public C18729d() {
            super(DataElement.VALUE);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object value = entry.getValue();
            C18733h lookupValue = TreeBidiMap.this.lookupValue(entry.getKey());
            return lookupValue != null && lookupValue.getKey().equals(value);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<V, K>> iterator() {
            return new C18730e();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object value = entry.getValue();
            C18733h lookupValue = TreeBidiMap.this.lookupValue(entry.getKey());
            if (lookupValue == null || !lookupValue.getKey().equals(value)) {
                return false;
            }
            TreeBidiMap.this.doRedBlackDelete(lookupValue);
            return true;
        }
    }

    /* renamed from: org.apache.commons.collections4.bidimap.TreeBidiMap$e */
    /* loaded from: classes11.dex */
    public class C18730e extends TreeBidiMap<K, V>.AbstractC18736k implements OrderedIterator<Map.Entry<V, K>> {
        public C18730e() {
            super(DataElement.VALUE);
        }

        /* renamed from: c */
        public final Map.Entry<V, K> m65899c(C18733h<K, V> c18733h) {
            return new UnmodifiableMapEntry(c18733h.getValue(), c18733h.getKey());
        }

        @Override // java.util.Iterator
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public Map.Entry<V, K> next() {
            return m65899c(m65940a());
        }

        @Override // org.apache.commons.collections4.OrderedIterator
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public Map.Entry<V, K> previous() {
            return m65899c(m65941b());
        }
    }

    /* renamed from: org.apache.commons.collections4.bidimap.TreeBidiMap$f */
    /* loaded from: classes11.dex */
    public class C18731f extends TreeBidiMap<K, V>.AbstractC18736k implements OrderedMapIterator<V, K> {
        public C18731f(DataElement dataElement) {
            super(dataElement);
        }

        @Override // org.apache.commons.collections4.MapIterator
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public V getKey() {
            C18733h<K, V> c18733h = this.f104979f;
            if (c18733h != null) {
                return c18733h.getValue();
            }
            throw new IllegalStateException("Iterator getKey() can only be called after next() and before remove()");
        }

        @Override // org.apache.commons.collections4.MapIterator
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public K getValue() {
            C18733h<K, V> c18733h = this.f104979f;
            if (c18733h != null) {
                return c18733h.getKey();
            }
            throw new IllegalStateException("Iterator getValue() can only be called after next() and before remove()");
        }

        @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public V next() {
            return m65940a().getValue();
        }

        @Override // org.apache.commons.collections4.OrderedMapIterator, org.apache.commons.collections4.OrderedIterator
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public V previous() {
            return m65941b().getValue();
        }

        @Override // org.apache.commons.collections4.MapIterator
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public K setValue(K k) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: org.apache.commons.collections4.bidimap.TreeBidiMap$g */
    /* loaded from: classes11.dex */
    public class C18732g extends TreeBidiMap<K, V>.AbstractC18735j<K> {
        public C18732g(DataElement dataElement) {
            super(dataElement);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            TreeBidiMap.checkNonNullComparable(obj, DataElement.KEY);
            return TreeBidiMap.this.lookupKey(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new C18738m(this.f104976e);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return TreeBidiMap.this.doRemoveKey(obj) != null;
        }
    }

    /* renamed from: org.apache.commons.collections4.bidimap.TreeBidiMap$h */
    /* loaded from: classes11.dex */
    public static class C18733h<K extends Comparable<K>, V extends Comparable<V>> implements Map.Entry<K, V>, KeyValue<K, V> {

        /* renamed from: e */
        public final K f104967e;

        /* renamed from: f */
        public final V f104968f;

        /* renamed from: k */
        public int f104973k;

        /* renamed from: g */
        public final C18733h<K, V>[] f104969g = new C18733h[2];

        /* renamed from: h */
        public final C18733h<K, V>[] f104970h = new C18733h[2];

        /* renamed from: i */
        public final C18733h<K, V>[] f104971i = new C18733h[2];

        /* renamed from: j */
        public final boolean[] f104972j = {true, true};

        /* renamed from: l */
        public boolean f104974l = false;

        public C18733h(K k, V v) {
            this.f104967e = k;
            this.f104968f = v;
        }

        /* renamed from: A */
        public final void m65922A(DataElement dataElement) {
            this.f104972j[dataElement.ordinal()] = true;
        }

        /* renamed from: B */
        public final void m65923B(C18733h<K, V> c18733h, DataElement dataElement) {
            this.f104969g[dataElement.ordinal()] = c18733h;
        }

        /* renamed from: C */
        public final void m65924C(C18733h<K, V> c18733h, DataElement dataElement) {
            this.f104971i[dataElement.ordinal()] = c18733h;
        }

        /* renamed from: D */
        public final void m65925D(DataElement dataElement) {
            this.f104972j[dataElement.ordinal()] = false;
        }

        /* renamed from: E */
        public final void m65926E(C18733h<K, V> c18733h, DataElement dataElement) {
            this.f104970h[dataElement.ordinal()] = c18733h;
        }

        @Override // java.util.Map.Entry
        /* renamed from: F, reason: merged with bridge method [inline-methods] */
        public V setValue(V v) throws UnsupportedOperationException {
            throw new UnsupportedOperationException("Map.Entry.setValue is not supported");
        }

        /* renamed from: G */
        public final void m65928G(C18733h<K, V> c18733h, DataElement dataElement) {
            boolean[] zArr = this.f104972j;
            int ordinal = dataElement.ordinal();
            zArr[ordinal] = zArr[ordinal] ^ c18733h.f104972j[dataElement.ordinal()];
            boolean[] zArr2 = c18733h.f104972j;
            int ordinal2 = dataElement.ordinal();
            zArr2[ordinal2] = zArr2[ordinal2] ^ this.f104972j[dataElement.ordinal()];
            boolean[] zArr3 = this.f104972j;
            int ordinal3 = dataElement.ordinal();
            zArr3[ordinal3] = c18733h.f104972j[dataElement.ordinal()] ^ zArr3[ordinal3];
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return getKey().equals(entry.getKey()) && getValue().equals(entry.getValue());
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (!this.f104974l) {
                this.f104973k = getKey().hashCode() ^ getValue().hashCode();
                this.f104974l = true;
            }
            return this.f104973k;
        }

        /* renamed from: p */
        public final void m65929p(C18733h<K, V> c18733h, DataElement dataElement) {
            this.f104972j[dataElement.ordinal()] = c18733h.f104972j[dataElement.ordinal()];
        }

        /* renamed from: q */
        public final Object m65930q(DataElement dataElement) {
            int i = C18726a.f104957a[dataElement.ordinal()];
            if (i == 1) {
                return getKey();
            }
            if (i == 2) {
                return getValue();
            }
            throw new IllegalArgumentException();
        }

        @Override // java.util.Map.Entry, org.apache.commons.collections4.KeyValue
        /* renamed from: r, reason: merged with bridge method [inline-methods] */
        public K getKey() {
            return this.f104967e;
        }

        /* renamed from: s */
        public final C18733h<K, V> m65932s(DataElement dataElement) {
            return this.f104969g[dataElement.ordinal()];
        }

        /* renamed from: t */
        public final C18733h<K, V> m65933t(DataElement dataElement) {
            return this.f104971i[dataElement.ordinal()];
        }

        /* renamed from: u */
        public final C18733h<K, V> m65934u(DataElement dataElement) {
            return this.f104970h[dataElement.ordinal()];
        }

        @Override // java.util.Map.Entry, org.apache.commons.collections4.KeyValue
        /* renamed from: v, reason: merged with bridge method [inline-methods] */
        public V getValue() {
            return this.f104968f;
        }

        /* renamed from: w */
        public final boolean m65936w(DataElement dataElement) {
            return this.f104972j[dataElement.ordinal()];
        }

        /* renamed from: x */
        public final boolean m65937x(DataElement dataElement) {
            return this.f104971i[dataElement.ordinal()] != null && this.f104971i[dataElement.ordinal()].f104969g[dataElement.ordinal()] == this;
        }

        /* renamed from: y */
        public final boolean m65938y(DataElement dataElement) {
            return !this.f104972j[dataElement.ordinal()];
        }

        /* renamed from: z */
        public final boolean m65939z(DataElement dataElement) {
            return this.f104971i[dataElement.ordinal()] != null && this.f104971i[dataElement.ordinal()].f104970h[dataElement.ordinal()] == this;
        }
    }

    /* renamed from: org.apache.commons.collections4.bidimap.TreeBidiMap$i */
    /* loaded from: classes11.dex */
    public class C18734i extends TreeBidiMap<K, V>.AbstractC18735j<V> {
        public C18734i(DataElement dataElement) {
            super(dataElement);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            TreeBidiMap.checkNonNullComparable(obj, DataElement.VALUE);
            return TreeBidiMap.this.lookupValue(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<V> iterator() {
            return new C18731f(this.f104976e);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return TreeBidiMap.this.doRemoveValue(obj) != null;
        }
    }

    /* renamed from: org.apache.commons.collections4.bidimap.TreeBidiMap$j */
    /* loaded from: classes11.dex */
    public abstract class AbstractC18735j<E> extends AbstractSet<E> {

        /* renamed from: e */
        public final DataElement f104976e;

        public AbstractC18735j(DataElement dataElement) {
            this.f104976e = dataElement;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            TreeBidiMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return TreeBidiMap.this.size();
        }
    }

    /* renamed from: org.apache.commons.collections4.bidimap.TreeBidiMap$k */
    /* loaded from: classes11.dex */
    public abstract class AbstractC18736k {

        /* renamed from: e */
        public final DataElement f104978e;

        /* renamed from: g */
        public C18733h<K, V> f104980g;

        /* renamed from: i */
        public int f104982i;

        /* renamed from: f */
        public C18733h<K, V> f104979f = null;

        /* renamed from: h */
        public C18733h<K, V> f104981h = null;

        public AbstractC18736k(DataElement dataElement) {
            this.f104978e = dataElement;
            this.f104982i = TreeBidiMap.this.modifications;
            this.f104980g = TreeBidiMap.this.leastNode(TreeBidiMap.this.rootNode[dataElement.ordinal()], dataElement);
        }

        /* renamed from: a */
        public C18733h<K, V> m65940a() {
            if (this.f104980g == null) {
                throw new NoSuchElementException();
            }
            if (TreeBidiMap.this.modifications != this.f104982i) {
                throw new ConcurrentModificationException();
            }
            C18733h<K, V> c18733h = this.f104980g;
            this.f104979f = c18733h;
            this.f104981h = c18733h;
            this.f104980g = TreeBidiMap.this.nextGreater(c18733h, this.f104978e);
            return this.f104979f;
        }

        /* renamed from: b */
        public C18733h<K, V> m65941b() {
            if (this.f104981h == null) {
                throw new NoSuchElementException();
            }
            if (TreeBidiMap.this.modifications != this.f104982i) {
                throw new ConcurrentModificationException();
            }
            C18733h<K, V> c18733h = this.f104979f;
            this.f104980g = c18733h;
            if (c18733h == null) {
                this.f104980g = TreeBidiMap.this.nextGreater(this.f104981h, this.f104978e);
            }
            C18733h<K, V> c18733h2 = this.f104981h;
            this.f104979f = c18733h2;
            this.f104981h = TreeBidiMap.this.nextSmaller(c18733h2, this.f104978e);
            return this.f104979f;
        }

        public final boolean hasNext() {
            return this.f104980g != null;
        }

        public boolean hasPrevious() {
            return this.f104981h != null;
        }

        public final void remove() {
            if (this.f104979f == null) {
                throw new IllegalStateException();
            }
            if (TreeBidiMap.this.modifications != this.f104982i) {
                throw new ConcurrentModificationException();
            }
            TreeBidiMap.this.doRedBlackDelete(this.f104979f);
            this.f104982i++;
            this.f104979f = null;
            C18733h<K, V> c18733h = this.f104980g;
            if (c18733h != null) {
                this.f104981h = TreeBidiMap.this.nextSmaller(c18733h, this.f104978e);
            } else {
                TreeBidiMap treeBidiMap = TreeBidiMap.this;
                this.f104981h = treeBidiMap.greatestNode(treeBidiMap.rootNode[this.f104978e.ordinal()], this.f104978e);
            }
        }
    }

    /* renamed from: org.apache.commons.collections4.bidimap.TreeBidiMap$l */
    /* loaded from: classes11.dex */
    public class C18737l extends TreeBidiMap<K, V>.AbstractC18736k implements OrderedIterator<Map.Entry<K, V>> {
        public C18737l() {
            super(DataElement.KEY);
        }

        @Override // java.util.Iterator
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            return m65940a();
        }

        @Override // org.apache.commons.collections4.OrderedIterator
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> previous() {
            return m65941b();
        }
    }

    /* renamed from: org.apache.commons.collections4.bidimap.TreeBidiMap$m */
    /* loaded from: classes11.dex */
    public class C18738m extends TreeBidiMap<K, V>.AbstractC18736k implements OrderedMapIterator<K, V> {
        public C18738m(DataElement dataElement) {
            super(dataElement);
        }

        @Override // org.apache.commons.collections4.MapIterator
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public K getKey() {
            C18733h<K, V> c18733h = this.f104979f;
            if (c18733h != null) {
                return c18733h.getKey();
            }
            throw new IllegalStateException("Iterator getKey() can only be called after next() and before remove()");
        }

        @Override // org.apache.commons.collections4.MapIterator
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public V getValue() {
            C18733h<K, V> c18733h = this.f104979f;
            if (c18733h != null) {
                return c18733h.getValue();
            }
            throw new IllegalStateException("Iterator getValue() can only be called after next() and before remove()");
        }

        @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public K next() {
            return m65940a().getKey();
        }

        @Override // org.apache.commons.collections4.OrderedMapIterator, org.apache.commons.collections4.OrderedIterator
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public K previous() {
            return m65941b().getKey();
        }

        @Override // org.apache.commons.collections4.MapIterator
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public V setValue(V v) {
            throw new UnsupportedOperationException();
        }
    }

    public TreeBidiMap() {
        this.nodeCount = 0;
        this.modifications = 0;
        this.inverse = null;
        this.rootNode = new C18733h[2];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void checkKey(Object obj) {
        checkNonNullComparable(obj, DataElement.KEY);
    }

    private static void checkKeyAndValue(Object obj, Object obj2) {
        checkKey(obj);
        checkValue(obj2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void checkNonNullComparable(Object obj, DataElement dataElement) {
        if (obj == null) {
            throw new NullPointerException(dataElement + " cannot be null");
        }
        if (obj instanceof Comparable) {
            return;
        }
        throw new ClassCastException(dataElement + " must be Comparable");
    }

    private static void checkValue(Object obj) {
        checkNonNullComparable(obj, DataElement.VALUE);
    }

    private static <T extends Comparable<T>> int compare(T t, T t2) {
        return t.compareTo(t2);
    }

    private void copyColor(C18733h<K, V> c18733h, C18733h<K, V> c18733h2, DataElement dataElement) {
        if (c18733h2 != null) {
            if (c18733h == null) {
                c18733h2.m65922A(dataElement);
            } else {
                c18733h2.m65929p(c18733h, dataElement);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean doEquals(Object obj, DataElement dataElement) {
        MapIterator<?, ?> mapIterator;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (map.size() != size()) {
            return false;
        }
        if (this.nodeCount > 0) {
            try {
                mapIterator = getMapIterator(dataElement);
            } catch (ClassCastException | NullPointerException unused) {
            }
            while (mapIterator.hasNext()) {
                if (!mapIterator.getValue().equals(map.get(mapIterator.next()))) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int doHashCode(DataElement dataElement) {
        int i = 0;
        if (this.nodeCount > 0) {
            MapIterator<?, ?> mapIterator = getMapIterator(dataElement);
            while (mapIterator.hasNext()) {
                i += mapIterator.next().hashCode() ^ mapIterator.getValue().hashCode();
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doPut(K k, V v) {
        checkKeyAndValue(k, v);
        doRemoveKey(k);
        doRemoveValue(v);
        C18733h<K, V>[] c18733hArr = this.rootNode;
        DataElement dataElement = DataElement.KEY;
        C18733h<K, V> c18733h = c18733hArr[dataElement.ordinal()];
        if (c18733h == null) {
            C18733h<K, V> c18733h2 = new C18733h<>(k, v);
            this.rootNode[dataElement.ordinal()] = c18733h2;
            this.rootNode[DataElement.VALUE.ordinal()] = c18733h2;
            grow();
            return;
        }
        while (true) {
            int compare = compare(k, c18733h.getKey());
            if (compare == 0) {
                throw new IllegalArgumentException("Cannot store a duplicate key (\"" + k + "\") in this Map");
            }
            if (compare < 0) {
                DataElement dataElement2 = DataElement.KEY;
                if (c18733h.m65932s(dataElement2) == null) {
                    C18733h<K, V> c18733h3 = new C18733h<>(k, v);
                    insertValue(c18733h3);
                    c18733h.m65923B(c18733h3, dataElement2);
                    c18733h3.m65924C(c18733h, dataElement2);
                    doRedBlackInsert(c18733h3, dataElement2);
                    grow();
                    return;
                }
                c18733h = c18733h.m65932s(dataElement2);
            } else {
                DataElement dataElement3 = DataElement.KEY;
                if (c18733h.m65934u(dataElement3) == null) {
                    C18733h<K, V> c18733h4 = new C18733h<>(k, v);
                    insertValue(c18733h4);
                    c18733h.m65926E(c18733h4, dataElement3);
                    c18733h4.m65924C(c18733h, dataElement3);
                    doRedBlackInsert(c18733h4, dataElement3);
                    grow();
                    return;
                }
                c18733h = c18733h.m65934u(dataElement3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doRedBlackDelete(C18733h<K, V> c18733h) {
        for (DataElement dataElement : DataElement.values()) {
            if (c18733h.m65932s(dataElement) != null && c18733h.m65934u(dataElement) != null) {
                swapPosition(nextGreater(c18733h, dataElement), c18733h, dataElement);
            }
            C18733h<K, V> m65932s = c18733h.m65932s(dataElement) != null ? c18733h.m65932s(dataElement) : c18733h.m65934u(dataElement);
            if (m65932s != null) {
                m65932s.m65924C(c18733h.m65933t(dataElement), dataElement);
                if (c18733h.m65933t(dataElement) == null) {
                    this.rootNode[dataElement.ordinal()] = m65932s;
                } else if (c18733h == c18733h.m65933t(dataElement).m65932s(dataElement)) {
                    c18733h.m65933t(dataElement).m65923B(m65932s, dataElement);
                } else {
                    c18733h.m65933t(dataElement).m65926E(m65932s, dataElement);
                }
                c18733h.m65923B(null, dataElement);
                c18733h.m65926E(null, dataElement);
                c18733h.m65924C(null, dataElement);
                if (isBlack(c18733h, dataElement)) {
                    doRedBlackDeleteFixup(m65932s, dataElement);
                }
            } else if (c18733h.m65933t(dataElement) == null) {
                this.rootNode[dataElement.ordinal()] = null;
            } else {
                if (isBlack(c18733h, dataElement)) {
                    doRedBlackDeleteFixup(c18733h, dataElement);
                }
                if (c18733h.m65933t(dataElement) != null) {
                    if (c18733h == c18733h.m65933t(dataElement).m65932s(dataElement)) {
                        c18733h.m65933t(dataElement).m65923B(null, dataElement);
                    } else {
                        c18733h.m65933t(dataElement).m65926E(null, dataElement);
                    }
                    c18733h.m65924C(null, dataElement);
                }
            }
        }
        shrink();
    }

    private void doRedBlackDeleteFixup(C18733h<K, V> c18733h, DataElement dataElement) {
        while (c18733h != this.rootNode[dataElement.ordinal()] && isBlack(c18733h, dataElement)) {
            if (c18733h.m65937x(dataElement)) {
                C18733h<K, V> rightChild = getRightChild(getParent(c18733h, dataElement), dataElement);
                if (isRed(rightChild, dataElement)) {
                    makeBlack(rightChild, dataElement);
                    makeRed(getParent(c18733h, dataElement), dataElement);
                    rotateLeft(getParent(c18733h, dataElement), dataElement);
                    rightChild = getRightChild(getParent(c18733h, dataElement), dataElement);
                }
                if (isBlack(getLeftChild(rightChild, dataElement), dataElement) && isBlack(getRightChild(rightChild, dataElement), dataElement)) {
                    makeRed(rightChild, dataElement);
                    c18733h = getParent(c18733h, dataElement);
                } else {
                    if (isBlack(getRightChild(rightChild, dataElement), dataElement)) {
                        makeBlack(getLeftChild(rightChild, dataElement), dataElement);
                        makeRed(rightChild, dataElement);
                        rotateRight(rightChild, dataElement);
                        rightChild = getRightChild(getParent(c18733h, dataElement), dataElement);
                    }
                    copyColor(getParent(c18733h, dataElement), rightChild, dataElement);
                    makeBlack(getParent(c18733h, dataElement), dataElement);
                    makeBlack(getRightChild(rightChild, dataElement), dataElement);
                    rotateLeft(getParent(c18733h, dataElement), dataElement);
                    c18733h = this.rootNode[dataElement.ordinal()];
                }
            } else {
                C18733h<K, V> leftChild = getLeftChild(getParent(c18733h, dataElement), dataElement);
                if (isRed(leftChild, dataElement)) {
                    makeBlack(leftChild, dataElement);
                    makeRed(getParent(c18733h, dataElement), dataElement);
                    rotateRight(getParent(c18733h, dataElement), dataElement);
                    leftChild = getLeftChild(getParent(c18733h, dataElement), dataElement);
                }
                if (isBlack(getRightChild(leftChild, dataElement), dataElement) && isBlack(getLeftChild(leftChild, dataElement), dataElement)) {
                    makeRed(leftChild, dataElement);
                    c18733h = getParent(c18733h, dataElement);
                } else {
                    if (isBlack(getLeftChild(leftChild, dataElement), dataElement)) {
                        makeBlack(getRightChild(leftChild, dataElement), dataElement);
                        makeRed(leftChild, dataElement);
                        rotateLeft(leftChild, dataElement);
                        leftChild = getLeftChild(getParent(c18733h, dataElement), dataElement);
                    }
                    copyColor(getParent(c18733h, dataElement), leftChild, dataElement);
                    makeBlack(getParent(c18733h, dataElement), dataElement);
                    makeBlack(getLeftChild(leftChild, dataElement), dataElement);
                    rotateRight(getParent(c18733h, dataElement), dataElement);
                    c18733h = this.rootNode[dataElement.ordinal()];
                }
            }
        }
        makeBlack(c18733h, dataElement);
    }

    private void doRedBlackInsert(C18733h<K, V> c18733h, DataElement dataElement) {
        makeRed(c18733h, dataElement);
        while (c18733h != null && c18733h != this.rootNode[dataElement.ordinal()] && isRed(c18733h.m65933t(dataElement), dataElement)) {
            if (c18733h.m65937x(dataElement)) {
                C18733h<K, V> rightChild = getRightChild(getGrandParent(c18733h, dataElement), dataElement);
                if (isRed(rightChild, dataElement)) {
                    makeBlack(getParent(c18733h, dataElement), dataElement);
                    makeBlack(rightChild, dataElement);
                    makeRed(getGrandParent(c18733h, dataElement), dataElement);
                    c18733h = getGrandParent(c18733h, dataElement);
                } else {
                    if (c18733h.m65939z(dataElement)) {
                        c18733h = getParent(c18733h, dataElement);
                        rotateLeft(c18733h, dataElement);
                    }
                    makeBlack(getParent(c18733h, dataElement), dataElement);
                    makeRed(getGrandParent(c18733h, dataElement), dataElement);
                    if (getGrandParent(c18733h, dataElement) != null) {
                        rotateRight(getGrandParent(c18733h, dataElement), dataElement);
                    }
                }
            } else {
                C18733h<K, V> leftChild = getLeftChild(getGrandParent(c18733h, dataElement), dataElement);
                if (isRed(leftChild, dataElement)) {
                    makeBlack(getParent(c18733h, dataElement), dataElement);
                    makeBlack(leftChild, dataElement);
                    makeRed(getGrandParent(c18733h, dataElement), dataElement);
                    c18733h = getGrandParent(c18733h, dataElement);
                } else {
                    if (c18733h.m65937x(dataElement)) {
                        c18733h = getParent(c18733h, dataElement);
                        rotateRight(c18733h, dataElement);
                    }
                    makeBlack(getParent(c18733h, dataElement), dataElement);
                    makeRed(getGrandParent(c18733h, dataElement), dataElement);
                    if (getGrandParent(c18733h, dataElement) != null) {
                        rotateLeft(getGrandParent(c18733h, dataElement), dataElement);
                    }
                }
            }
        }
        makeBlack(this.rootNode[dataElement.ordinal()], dataElement);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V doRemoveKey(Object obj) {
        C18733h<K, V> lookupKey = lookupKey(obj);
        if (lookupKey == null) {
            return null;
        }
        doRedBlackDelete(lookupKey);
        return lookupKey.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public K doRemoveValue(Object obj) {
        C18733h<K, V> lookupValue = lookupValue(obj);
        if (lookupValue == null) {
            return null;
        }
        doRedBlackDelete(lookupValue);
        return lookupValue.getKey();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String doToString(DataElement dataElement) {
        int i = this.nodeCount;
        if (i == 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(i * 32);
        sb.append('{');
        MapIterator<?, ?> mapIterator = getMapIterator(dataElement);
        boolean hasNext = mapIterator.hasNext();
        while (hasNext) {
            Object next = mapIterator.next();
            Object value = mapIterator.getValue();
            if (next == this) {
                next = "(this Map)";
            }
            sb.append(next);
            sb.append('=');
            if (value == this) {
                value = "(this Map)";
            }
            sb.append(value);
            hasNext = mapIterator.hasNext();
            if (hasNext) {
                sb.append(", ");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    private C18733h<K, V> getGrandParent(C18733h<K, V> c18733h, DataElement dataElement) {
        return getParent(getParent(c18733h, dataElement), dataElement);
    }

    private C18733h<K, V> getLeftChild(C18733h<K, V> c18733h, DataElement dataElement) {
        if (c18733h == null) {
            return null;
        }
        return c18733h.m65932s(dataElement);
    }

    private MapIterator<?, ?> getMapIterator(DataElement dataElement) {
        int i = C18726a.f104957a[dataElement.ordinal()];
        if (i == 1) {
            return new C18738m(DataElement.KEY);
        }
        if (i == 2) {
            return new C18731f(DataElement.VALUE);
        }
        throw new IllegalArgumentException();
    }

    private C18733h<K, V> getParent(C18733h<K, V> c18733h, DataElement dataElement) {
        if (c18733h == null) {
            return null;
        }
        return c18733h.m65933t(dataElement);
    }

    private C18733h<K, V> getRightChild(C18733h<K, V> c18733h, DataElement dataElement) {
        if (c18733h == null) {
            return null;
        }
        return c18733h.m65934u(dataElement);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C18733h<K, V> greatestNode(C18733h<K, V> c18733h, DataElement dataElement) {
        if (c18733h != null) {
            while (c18733h.m65934u(dataElement) != null) {
                c18733h = c18733h.m65934u(dataElement);
            }
        }
        return c18733h;
    }

    private void grow() {
        modify();
        this.nodeCount++;
    }

    private void insertValue(C18733h<K, V> c18733h) throws IllegalArgumentException {
        C18733h<K, V> c18733h2 = this.rootNode[DataElement.VALUE.ordinal()];
        while (true) {
            int compare = compare(c18733h.getValue(), c18733h2.getValue());
            if (compare == 0) {
                throw new IllegalArgumentException("Cannot store a duplicate value (\"" + c18733h.m65930q(DataElement.VALUE) + "\") in this Map");
            }
            if (compare < 0) {
                DataElement dataElement = DataElement.VALUE;
                if (c18733h2.m65932s(dataElement) == null) {
                    c18733h2.m65923B(c18733h, dataElement);
                    c18733h.m65924C(c18733h2, dataElement);
                    doRedBlackInsert(c18733h, dataElement);
                    return;
                }
                c18733h2 = c18733h2.m65932s(dataElement);
            } else {
                DataElement dataElement2 = DataElement.VALUE;
                if (c18733h2.m65934u(dataElement2) == null) {
                    c18733h2.m65926E(c18733h, dataElement2);
                    c18733h.m65924C(c18733h2, dataElement2);
                    doRedBlackInsert(c18733h, dataElement2);
                    return;
                }
                c18733h2 = c18733h2.m65934u(dataElement2);
            }
        }
    }

    private static boolean isBlack(C18733h<?, ?> c18733h, DataElement dataElement) {
        return c18733h == null || c18733h.m65936w(dataElement);
    }

    private static boolean isRed(C18733h<?, ?> c18733h, DataElement dataElement) {
        return c18733h != null && c18733h.m65938y(dataElement);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C18733h<K, V> leastNode(C18733h<K, V> c18733h, DataElement dataElement) {
        if (c18733h != null) {
            while (c18733h.m65932s(dataElement) != null) {
                c18733h = c18733h.m65932s(dataElement);
            }
        }
        return c18733h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T extends Comparable<T>> C18733h<K, V> lookup(Object obj, DataElement dataElement) {
        C18733h<K, V> c18733h = this.rootNode[dataElement.ordinal()];
        while (c18733h != null) {
            int compare = compare((Comparable) obj, (Comparable) c18733h.m65930q(dataElement));
            if (compare == 0) {
                return c18733h;
            }
            c18733h = compare < 0 ? c18733h.m65932s(dataElement) : c18733h.m65934u(dataElement);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C18733h<K, V> lookupKey(Object obj) {
        return lookup(obj, DataElement.KEY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C18733h<K, V> lookupValue(Object obj) {
        return lookup(obj, DataElement.VALUE);
    }

    private static void makeBlack(C18733h<?, ?> c18733h, DataElement dataElement) {
        if (c18733h != null) {
            c18733h.m65922A(dataElement);
        }
    }

    private static void makeRed(C18733h<?, ?> c18733h, DataElement dataElement) {
        if (c18733h != null) {
            c18733h.m65925D(dataElement);
        }
    }

    private void modify() {
        this.modifications++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C18733h<K, V> nextGreater(C18733h<K, V> c18733h, DataElement dataElement) {
        if (c18733h == null) {
            return null;
        }
        if (c18733h.m65934u(dataElement) != null) {
            return leastNode(c18733h.m65934u(dataElement), dataElement);
        }
        C18733h<K, V> m65933t = c18733h.m65933t(dataElement);
        while (true) {
            C18733h<K, V> c18733h2 = c18733h;
            c18733h = m65933t;
            if (c18733h == null || c18733h2 != c18733h.m65934u(dataElement)) {
                break;
            }
            m65933t = c18733h.m65933t(dataElement);
        }
        return c18733h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C18733h<K, V> nextSmaller(C18733h<K, V> c18733h, DataElement dataElement) {
        if (c18733h == null) {
            return null;
        }
        if (c18733h.m65932s(dataElement) != null) {
            return greatestNode(c18733h.m65932s(dataElement), dataElement);
        }
        C18733h<K, V> m65933t = c18733h.m65933t(dataElement);
        while (true) {
            C18733h<K, V> c18733h2 = c18733h;
            c18733h = m65933t;
            if (c18733h == null || c18733h2 != c18733h.m65932s(dataElement)) {
                break;
            }
            m65933t = c18733h.m65933t(dataElement);
        }
        return c18733h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.rootNode = new C18733h[2];
        int readInt = objectInputStream.readInt();
        for (int i = 0; i < readInt; i++) {
            put((TreeBidiMap<K, V>) objectInputStream.readObject(), (Comparable) objectInputStream.readObject());
        }
    }

    private void rotateLeft(C18733h<K, V> c18733h, DataElement dataElement) {
        C18733h<K, V> m65934u = c18733h.m65934u(dataElement);
        c18733h.m65926E(m65934u.m65932s(dataElement), dataElement);
        if (m65934u.m65932s(dataElement) != null) {
            m65934u.m65932s(dataElement).m65924C(c18733h, dataElement);
        }
        m65934u.m65924C(c18733h.m65933t(dataElement), dataElement);
        if (c18733h.m65933t(dataElement) == null) {
            this.rootNode[dataElement.ordinal()] = m65934u;
        } else if (c18733h.m65933t(dataElement).m65932s(dataElement) == c18733h) {
            c18733h.m65933t(dataElement).m65923B(m65934u, dataElement);
        } else {
            c18733h.m65933t(dataElement).m65926E(m65934u, dataElement);
        }
        m65934u.m65923B(c18733h, dataElement);
        c18733h.m65924C(m65934u, dataElement);
    }

    private void rotateRight(C18733h<K, V> c18733h, DataElement dataElement) {
        C18733h<K, V> m65932s = c18733h.m65932s(dataElement);
        c18733h.m65923B(m65932s.m65934u(dataElement), dataElement);
        if (m65932s.m65934u(dataElement) != null) {
            m65932s.m65934u(dataElement).m65924C(c18733h, dataElement);
        }
        m65932s.m65924C(c18733h.m65933t(dataElement), dataElement);
        if (c18733h.m65933t(dataElement) == null) {
            this.rootNode[dataElement.ordinal()] = m65932s;
        } else if (c18733h.m65933t(dataElement).m65934u(dataElement) == c18733h) {
            c18733h.m65933t(dataElement).m65926E(m65932s, dataElement);
        } else {
            c18733h.m65933t(dataElement).m65923B(m65932s, dataElement);
        }
        m65932s.m65926E(c18733h, dataElement);
        c18733h.m65924C(m65932s, dataElement);
    }

    private void shrink() {
        modify();
        this.nodeCount--;
    }

    private void swapPosition(C18733h<K, V> c18733h, C18733h<K, V> c18733h2, DataElement dataElement) {
        C18733h<K, V> m65933t = c18733h.m65933t(dataElement);
        C18733h m65932s = c18733h.m65932s(dataElement);
        C18733h m65934u = c18733h.m65934u(dataElement);
        C18733h<K, V> m65933t2 = c18733h2.m65933t(dataElement);
        C18733h m65932s2 = c18733h2.m65932s(dataElement);
        C18733h m65934u2 = c18733h2.m65934u(dataElement);
        boolean z = c18733h.m65933t(dataElement) != null && c18733h == c18733h.m65933t(dataElement).m65932s(dataElement);
        boolean z2 = c18733h2.m65933t(dataElement) != null && c18733h2 == c18733h2.m65933t(dataElement).m65932s(dataElement);
        if (c18733h == m65933t2) {
            c18733h.m65924C(c18733h2, dataElement);
            if (z2) {
                c18733h2.m65923B(c18733h, dataElement);
                c18733h2.m65926E(m65934u, dataElement);
            } else {
                c18733h2.m65926E(c18733h, dataElement);
                c18733h2.m65923B(m65932s, dataElement);
            }
        } else {
            c18733h.m65924C(m65933t2, dataElement);
            if (m65933t2 != null) {
                if (z2) {
                    m65933t2.m65923B(c18733h, dataElement);
                } else {
                    m65933t2.m65926E(c18733h, dataElement);
                }
            }
            c18733h2.m65923B(m65932s, dataElement);
            c18733h2.m65926E(m65934u, dataElement);
        }
        if (c18733h2 == m65933t) {
            c18733h2.m65924C(c18733h, dataElement);
            if (z) {
                c18733h.m65923B(c18733h2, dataElement);
                c18733h.m65926E(m65934u2, dataElement);
            } else {
                c18733h.m65926E(c18733h2, dataElement);
                c18733h.m65923B(m65932s2, dataElement);
            }
        } else {
            c18733h2.m65924C(m65933t, dataElement);
            if (m65933t != null) {
                if (z) {
                    m65933t.m65923B(c18733h2, dataElement);
                } else {
                    m65933t.m65926E(c18733h2, dataElement);
                }
            }
            c18733h.m65923B(m65932s2, dataElement);
            c18733h.m65926E(m65934u2, dataElement);
        }
        if (c18733h.m65932s(dataElement) != null) {
            c18733h.m65932s(dataElement).m65924C(c18733h, dataElement);
        }
        if (c18733h.m65934u(dataElement) != null) {
            c18733h.m65934u(dataElement).m65924C(c18733h, dataElement);
        }
        if (c18733h2.m65932s(dataElement) != null) {
            c18733h2.m65932s(dataElement).m65924C(c18733h2, dataElement);
        }
        if (c18733h2.m65934u(dataElement) != null) {
            c18733h2.m65934u(dataElement).m65924C(c18733h2, dataElement);
        }
        c18733h.m65928G(c18733h2, dataElement);
        if (this.rootNode[dataElement.ordinal()] == c18733h) {
            this.rootNode[dataElement.ordinal()] = c18733h2;
        } else if (this.rootNode[dataElement.ordinal()] == c18733h2) {
            this.rootNode[dataElement.ordinal()] = c18733h;
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    @Override // java.util.Map, org.apache.commons.collections4.Put
    public void clear() {
        modify();
        this.nodeCount = 0;
        this.rootNode[DataElement.KEY.ordinal()] = null;
        this.rootNode[DataElement.VALUE.ordinal()] = null;
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public boolean containsKey(Object obj) {
        checkKey(obj);
        return lookupKey(obj) != null;
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public boolean containsValue(Object obj) {
        checkValue(obj);
        return lookupValue(obj) != null;
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.entrySet == null) {
            this.entrySet = new C18727b();
        }
        return this.entrySet;
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return doEquals(obj, DataElement.KEY);
    }

    @Override // java.util.Map
    public int hashCode() {
        return doHashCode(DataElement.KEY);
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public boolean isEmpty() {
        return this.nodeCount == 0;
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public Set<K> keySet() {
        if (this.keySet == null) {
            this.keySet = new C18732g(DataElement.KEY);
        }
        return this.keySet;
    }

    @Override // java.util.Map, org.apache.commons.collections4.Put
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put((TreeBidiMap<K, V>) entry.getKey(), (K) entry.getValue());
        }
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public int size() {
        return this.nodeCount;
    }

    public String toString() {
        return doToString(DataElement.KEY);
    }

    @Override // org.apache.commons.collections4.OrderedMap
    public K firstKey() {
        if (this.nodeCount != 0) {
            C18733h<K, V>[] c18733hArr = this.rootNode;
            DataElement dataElement = DataElement.KEY;
            return leastNode(c18733hArr[dataElement.ordinal()], dataElement).getKey();
        }
        throw new NoSuchElementException("Map is empty");
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public V get(Object obj) {
        checkKey(obj);
        C18733h<K, V> lookupKey = lookupKey(obj);
        if (lookupKey == null) {
            return null;
        }
        return lookupKey.getValue();
    }

    @Override // org.apache.commons.collections4.BidiMap
    public K getKey(Object obj) {
        checkValue(obj);
        C18733h<K, V> lookupValue = lookupValue(obj);
        if (lookupValue == null) {
            return null;
        }
        return lookupValue.getKey();
    }

    @Override // org.apache.commons.collections4.OrderedBidiMap, org.apache.commons.collections4.BidiMap
    public OrderedBidiMap<V, K> inverseBidiMap() {
        if (this.inverse == null) {
            this.inverse = new C18728c();
        }
        return this.inverse;
    }

    @Override // org.apache.commons.collections4.OrderedMap
    public K lastKey() {
        if (this.nodeCount != 0) {
            C18733h<K, V>[] c18733hArr = this.rootNode;
            DataElement dataElement = DataElement.KEY;
            return greatestNode(c18733hArr[dataElement.ordinal()], dataElement).getKey();
        }
        throw new NoSuchElementException("Map is empty");
    }

    @Override // org.apache.commons.collections4.IterableGet
    public OrderedMapIterator<K, V> mapIterator() {
        if (isEmpty()) {
            return EmptyOrderedMapIterator.emptyOrderedMapIterator();
        }
        return new C18738m(DataElement.KEY);
    }

    @Override // org.apache.commons.collections4.OrderedMap
    public K nextKey(K k) {
        checkKey(k);
        C18733h<K, V> nextGreater = nextGreater(lookupKey(k), DataElement.KEY);
        if (nextGreater == null) {
            return null;
        }
        return nextGreater.getKey();
    }

    @Override // org.apache.commons.collections4.OrderedMap
    public K previousKey(K k) {
        checkKey(k);
        C18733h<K, V> nextSmaller = nextSmaller(lookupKey(k), DataElement.KEY);
        if (nextSmaller == null) {
            return null;
        }
        return nextSmaller.getKey();
    }

    @Override // org.apache.commons.collections4.BidiMap, java.util.Map, org.apache.commons.collections4.Put
    public V put(K k, V v) {
        V v2 = get((Object) k);
        doPut(k, v);
        return v2;
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public V remove(Object obj) {
        return doRemoveKey(obj);
    }

    @Override // org.apache.commons.collections4.BidiMap
    public K removeValue(Object obj) {
        return doRemoveValue(obj);
    }

    @Override // org.apache.commons.collections4.BidiMap, java.util.Map, org.apache.commons.collections4.Get
    public Set<V> values() {
        if (this.valuesSet == null) {
            this.valuesSet = new C18734i(DataElement.KEY);
        }
        return this.valuesSet;
    }

    public TreeBidiMap(Map<? extends K, ? extends V> map) {
        this();
        putAll(map);
    }
}
