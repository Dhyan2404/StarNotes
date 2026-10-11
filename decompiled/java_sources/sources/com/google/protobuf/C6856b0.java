package com.google.protobuf;

import com.google.protobuf.FieldSet;
import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* renamed from: com.google.protobuf.b0 */
/* loaded from: classes6.dex */
public class C6856b0<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: e */
    public final int f38002e;

    /* renamed from: f */
    public List<C6856b0<K, V>.e> f38003f;

    /* renamed from: g */
    public Map<K, V> f38004g;

    /* renamed from: h */
    public boolean f38005h;

    /* renamed from: i */
    public volatile C6856b0<K, V>.g f38006i;

    /* renamed from: j */
    public Map<K, V> f38007j;

    /* renamed from: k */
    public volatile C6856b0<K, V>.c f38008k;

    /* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
    /* renamed from: com.google.protobuf.b0$a */
    /* loaded from: classes6.dex */
    public class a<FieldDescriptorType> extends C6856b0<FieldDescriptorType, Object> {
        public a(int arraySize) {
            super(arraySize, null);
        }

        @Override // com.google.protobuf.C6856b0, java.util.AbstractMap, java.util.Map
        public /* bridge */ /* synthetic */ Object put(Object key, Object value) {
            return super.put((Comparable) key, value);
        }

        @Override // com.google.protobuf.C6856b0
        /* renamed from: q */
        public void mo29896q() {
            if (!m29895p()) {
                for (int i = 0; i < m29890k(); i++) {
                    Map.Entry<FieldDescriptorType, Object> m29889j = m29889j(i);
                    if (((FieldSet.FieldDescriptorLite) m29889j.getKey()).isRepeated()) {
                        m29889j.setValue(Collections.unmodifiableList((List) m29889j.getValue()));
                    }
                }
                for (Map.Entry<FieldDescriptorType, Object> entry : m29892m()) {
                    if (((FieldSet.FieldDescriptorLite) entry.getKey()).isRepeated()) {
                        entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                    }
                }
            }
            super.mo29896q();
        }
    }

    /* renamed from: com.google.protobuf.b0$c */
    /* loaded from: classes6.dex */
    public class c extends C6856b0<K, V>.g {
        public c() {
            super(C6856b0.this, null);
        }

        @Override // com.google.protobuf.C6856b0.g, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new b(C6856b0.this, null);
        }

        public /* synthetic */ c(C6856b0 c6856b0, a aVar) {
            this();
        }
    }

    /* renamed from: com.google.protobuf.b0$d */
    /* loaded from: classes6.dex */
    public static class d {

        /* renamed from: a */
        public static final Iterator<Object> f38013a = new a();

        /* renamed from: b */
        public static final Iterable<Object> f38014b = new b();

        /* renamed from: com.google.protobuf.b0$d$a */
        /* loaded from: classes6.dex */
        public class a implements Iterator<Object> {
            @Override // java.util.Iterator
            public boolean hasNext() {
                return false;
            }

            @Override // java.util.Iterator
            public Object next() {
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        /* renamed from: com.google.protobuf.b0$d$b */
        /* loaded from: classes6.dex */
        public class b implements Iterable<Object> {
            @Override // java.lang.Iterable
            public Iterator<Object> iterator() {
                return d.f38013a;
            }
        }

        /* renamed from: b */
        public static <T> Iterable<T> m29902b() {
            return (Iterable<T>) f38014b;
        }
    }

    /* renamed from: com.google.protobuf.b0$e */
    /* loaded from: classes6.dex */
    public class e implements Map.Entry<K, V>, Comparable<C6856b0<K, V>.e> {

        /* renamed from: e */
        public final K f38015e;

        /* renamed from: f */
        public V f38016f;

        public e(final C6856b0 this$0, Map.Entry<K, V> copy) {
            this(copy.getKey(), copy.getValue());
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(C6856b0<K, V>.e other) {
            return getKey().compareTo(other.getKey());
        }

        /* renamed from: b */
        public final boolean m29904b(Object o1, Object o2) {
            return o1 == null ? o2 == null : o1.equals(o2);
        }

        @Override // java.util.Map.Entry
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public K getKey() {
            return this.f38015e;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object o) {
            if (o == this) {
                return true;
            }
            if (!(o instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) o;
            return m29904b(this.f38015e, entry.getKey()) && m29904b(this.f38016f, entry.getValue());
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f38016f;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.f38015e;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f38016f;
            return hashCode ^ (v != null ? v.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V newValue) {
            C6856b0.this.m29886g();
            V v = this.f38016f;
            this.f38016f = newValue;
            return v;
        }

        public String toString() {
            return this.f38015e + "=" + this.f38016f;
        }

        public e(K key, V value) {
            this.f38015e = key;
            this.f38016f = value;
        }
    }

    /* renamed from: com.google.protobuf.b0$g */
    /* loaded from: classes6.dex */
    public class g extends AbstractSet<Map.Entry<K, V>> {
        public g() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean add(Map.Entry<K, V> entry) {
            if (contains(entry)) {
                return false;
            }
            C6856b0.this.put(entry.getKey(), entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            C6856b0.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object o) {
            Map.Entry entry = (Map.Entry) o;
            Object obj = C6856b0.this.get(entry.getKey());
            Object value = entry.getValue();
            return obj == value || (obj != null && obj.equals(value));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new f(C6856b0.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object o) {
            Map.Entry entry = (Map.Entry) o;
            if (!contains(entry)) {
                return false;
            }
            C6856b0.this.remove(entry.getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return C6856b0.this.size();
        }

        public /* synthetic */ g(C6856b0 c6856b0, a aVar) {
            this();
        }
    }

    public /* synthetic */ C6856b0(int i, a aVar) {
        this(i);
    }

    /* renamed from: r */
    public static <FieldDescriptorType extends FieldSet.FieldDescriptorLite<FieldDescriptorType>> C6856b0<FieldDescriptorType, Object> m29883r(int arraySize) {
        return new a(arraySize);
    }

    /* renamed from: s */
    public static <K extends Comparable<K>, V> C6856b0<K, V> m29884s(int arraySize) {
        return new C6856b0<>(arraySize);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m29886g();
        if (!this.f38003f.isEmpty()) {
            this.f38003f.clear();
        }
        if (this.f38004g.isEmpty()) {
            return;
        }
        this.f38004g.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object o) {
        Comparable comparable = (Comparable) o;
        return m29885f(comparable) >= 0 || this.f38004g.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f38006i == null) {
            this.f38006i = new g(this, null);
        }
        return this.f38006i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof C6856b0)) {
            return super.equals(o);
        }
        C6856b0 c6856b0 = (C6856b0) o;
        int size = size();
        if (size != c6856b0.size()) {
            return false;
        }
        int m29890k = m29890k();
        if (m29890k != c6856b0.m29890k()) {
            return entrySet().equals(c6856b0.entrySet());
        }
        for (int i = 0; i < m29890k; i++) {
            if (!m29889j(i).equals(c6856b0.m29889j(i))) {
                return false;
            }
        }
        if (m29890k != size) {
            return this.f38004g.equals(c6856b0.f38004g);
        }
        return true;
    }

    /* renamed from: f */
    public final int m29885f(K key) {
        int size = this.f38003f.size() - 1;
        if (size >= 0) {
            int compareTo = key.compareTo(this.f38003f.get(size).getKey());
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
        }
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) / 2;
            int compareTo2 = key.compareTo(this.f38003f.get(i2).getKey());
            if (compareTo2 < 0) {
                size = i2 - 1;
            } else {
                if (compareTo2 <= 0) {
                    return i2;
                }
                i = i2 + 1;
            }
        }
        return -(i + 1);
    }

    /* renamed from: g */
    public final void m29886g() {
        if (this.f38005h) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object o) {
        Comparable comparable = (Comparable) o;
        int m29885f = m29885f(comparable);
        return m29885f >= 0 ? this.f38003f.get(m29885f).getValue() : this.f38004g.get(comparable);
    }

    /* renamed from: h */
    public Set<Map.Entry<K, V>> m29887h() {
        if (this.f38008k == null) {
            this.f38008k = new c(this, null);
        }
        return this.f38008k;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int m29890k = m29890k();
        int i = 0;
        for (int i2 = 0; i2 < m29890k; i2++) {
            i += this.f38003f.get(i2).hashCode();
        }
        return m29891l() > 0 ? i + this.f38004g.hashCode() : i;
    }

    /* renamed from: i */
    public final void m29888i() {
        m29886g();
        if (!this.f38003f.isEmpty() || (this.f38003f instanceof ArrayList)) {
            return;
        }
        this.f38003f = new ArrayList(this.f38002e);
    }

    /* renamed from: j */
    public Map.Entry<K, V> m29889j(int index) {
        return this.f38003f.get(index);
    }

    /* renamed from: k */
    public int m29890k() {
        return this.f38003f.size();
    }

    /* renamed from: l */
    public int m29891l() {
        return this.f38004g.size();
    }

    /* renamed from: m */
    public Iterable<Map.Entry<K, V>> m29892m() {
        return this.f38004g.isEmpty() ? d.m29902b() : this.f38004g.entrySet();
    }

    /* renamed from: n */
    public Iterable<Map.Entry<K, V>> m29893n() {
        return this.f38007j.isEmpty() ? d.m29902b() : this.f38007j.entrySet();
    }

    /* renamed from: o */
    public final SortedMap<K, V> m29894o() {
        m29886g();
        if (this.f38004g.isEmpty() && !(this.f38004g instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f38004g = treeMap;
            this.f38007j = treeMap.descendingMap();
        }
        return (SortedMap) this.f38004g;
    }

    /* renamed from: p */
    public boolean m29895p() {
        return this.f38005h;
    }

    /* renamed from: q */
    public void mo29896q() {
        if (this.f38005h) {
            return;
        }
        this.f38004g = this.f38004g.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f38004g);
        this.f38007j = this.f38007j.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f38007j);
        this.f38005h = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m29886g();
        Comparable comparable = (Comparable) obj;
        int m29885f = m29885f(comparable);
        if (m29885f >= 0) {
            return (V) m29898u(m29885f);
        }
        if (this.f38004g.isEmpty()) {
            return null;
        }
        return this.f38004g.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f38003f.size() + this.f38004g.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: t, reason: merged with bridge method [inline-methods] */
    public V put(K k, V v) {
        m29886g();
        int m29885f = m29885f(k);
        if (m29885f >= 0) {
            return this.f38003f.get(m29885f).setValue(v);
        }
        m29888i();
        int i = -(m29885f + 1);
        if (i >= this.f38002e) {
            return m29894o().put(k, v);
        }
        int size = this.f38003f.size();
        int i2 = this.f38002e;
        if (size == i2) {
            C6856b0<K, V>.e remove = this.f38003f.remove(i2 - 1);
            m29894o().put(remove.getKey(), remove.getValue());
        }
        this.f38003f.add(i, new e(k, v));
        return null;
    }

    /* renamed from: u */
    public final V m29898u(int index) {
        m29886g();
        V value = this.f38003f.remove(index).getValue();
        if (!this.f38004g.isEmpty()) {
            Iterator<Map.Entry<K, V>> it2 = m29894o().entrySet().iterator();
            this.f38003f.add(new e(this, it2.next()));
            it2.remove();
        }
        return value;
    }

    /* renamed from: com.google.protobuf.b0$b */
    /* loaded from: classes6.dex */
    public class b implements Iterator<Map.Entry<K, V>> {

        /* renamed from: e */
        public int f38009e;

        /* renamed from: f */
        public Iterator<Map.Entry<K, V>> f38010f;

        public b() {
            this.f38009e = C6856b0.this.f38003f.size();
        }

        /* renamed from: a */
        public final Iterator<Map.Entry<K, V>> m29899a() {
            if (this.f38010f == null) {
                this.f38010f = C6856b0.this.f38007j.entrySet().iterator();
            }
            return this.f38010f;
        }

        @Override // java.util.Iterator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            if (m29899a().hasNext()) {
                return m29899a().next();
            }
            List list = C6856b0.this.f38003f;
            int i = this.f38009e - 1;
            this.f38009e = i;
            return (Map.Entry) list.get(i);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            int i = this.f38009e;
            return (i > 0 && i <= C6856b0.this.f38003f.size()) || m29899a().hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        public /* synthetic */ b(C6856b0 c6856b0, a aVar) {
            this();
        }
    }

    /* renamed from: com.google.protobuf.b0$f */
    /* loaded from: classes6.dex */
    public class f implements Iterator<Map.Entry<K, V>> {

        /* renamed from: e */
        public int f38018e;

        /* renamed from: f */
        public boolean f38019f;

        /* renamed from: g */
        public Iterator<Map.Entry<K, V>> f38020g;

        public f() {
            this.f38018e = -1;
        }

        /* renamed from: a */
        public final Iterator<Map.Entry<K, V>> m29906a() {
            if (this.f38020g == null) {
                this.f38020g = C6856b0.this.f38004g.entrySet().iterator();
            }
            return this.f38020g;
        }

        @Override // java.util.Iterator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            this.f38019f = true;
            int i = this.f38018e + 1;
            this.f38018e = i;
            return i < C6856b0.this.f38003f.size() ? (Map.Entry) C6856b0.this.f38003f.get(this.f38018e) : m29906a().next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f38018e + 1 >= C6856b0.this.f38003f.size()) {
                return !C6856b0.this.f38004g.isEmpty() && m29906a().hasNext();
            }
            return true;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f38019f) {
                throw new IllegalStateException("remove() was called before next()");
            }
            this.f38019f = false;
            C6856b0.this.m29886g();
            if (this.f38018e >= C6856b0.this.f38003f.size()) {
                m29906a().remove();
                return;
            }
            C6856b0 c6856b0 = C6856b0.this;
            int i = this.f38018e;
            this.f38018e = i - 1;
            c6856b0.m29898u(i);
        }

        public /* synthetic */ f(C6856b0 c6856b0, a aVar) {
            this();
        }
    }

    public C6856b0(int arraySize) {
        this.f38002e = arraySize;
        this.f38003f = Collections.emptyList();
        this.f38004g = Collections.emptyMap();
        this.f38007j = Collections.emptyMap();
    }
}
