package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multimaps;
import com.google.common.collect.Sets;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.AbstractC14741z3;
import com.sunia.HTREnginev2.k4l;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.xvk;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes6.dex */
public class LinkedListMultimap<K, V> extends AbstractC6111f<K, V> implements ListMultimap<K, V>, Serializable {

    @GwtIncompatible
    private static final long serialVersionUID = 0;

    @CheckForNull
    private transient C5890g<K, V> head;
    private transient Map<K, C5889f<K, V>> keyToKeyList;
    private transient int modCount;
    private transient int size;

    @CheckForNull
    private transient C5890g<K, V> tail;

    /* renamed from: com.google.common.collect.LinkedListMultimap$a */
    /* loaded from: classes6.dex */
    public class C5884a extends AbstractSequentialList<V> {

        /* renamed from: e */
        public final /* synthetic */ Object f34135e;

        public C5884a(Object obj) {
            this.f34135e = obj;
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<V> listIterator(int i) {
            return new C5892i(this.f34135e, i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            C5889f c5889f = (C5889f) LinkedListMultimap.this.keyToKeyList.get(this.f34135e);
            if (c5889f == null) {
                return 0;
            }
            return c5889f.f34148c;
        }
    }

    /* renamed from: com.google.common.collect.LinkedListMultimap$b */
    /* loaded from: classes6.dex */
    public class C5885b extends AbstractSequentialList<Map.Entry<K, V>> {
        public C5885b() {
        }

        @Override // java.lang.Iterable
        public void forEach(Consumer<? super Map.Entry<K, V>> consumer) {
            Preconditions.checkNotNull(consumer);
            for (C5890g<K, V> c5890g = LinkedListMultimap.this.head; c5890g != null; c5890g = c5890g.f34151g) {
                consumer.accept(c5890g);
            }
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<Map.Entry<K, V>> listIterator(int i) {
            return new C5891h(i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return LinkedListMultimap.this.size;
        }
    }

    /* renamed from: com.google.common.collect.LinkedListMultimap$c */
    /* loaded from: classes6.dex */
    public class C5886c extends Sets.AbstractC6030j<K> {
        public C5886c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            return LinkedListMultimap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new C5888e(LinkedListMultimap.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@CheckForNull Object obj) {
            return !LinkedListMultimap.this.removeAll(obj).isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedListMultimap.this.keyToKeyList.size();
        }
    }

    /* renamed from: com.google.common.collect.LinkedListMultimap$d */
    /* loaded from: classes6.dex */
    public class C5887d extends AbstractSequentialList<V> {

        /* renamed from: com.google.common.collect.LinkedListMultimap$d$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractC6110e0<Map.Entry<K, V>, V> {

            /* renamed from: f */
            public final /* synthetic */ C5891h f34140f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(C5887d c5887d, ListIterator listIterator, C5891h c5891h) {
                super(listIterator);
                this.f34140f = c5891h;
            }

            @Override // com.google.common.collect.AbstractC6108d0
            @xvk
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public V mo26351a(Map.Entry<K, V> entry) {
                return entry.getValue();
            }

            @Override // com.google.common.collect.AbstractC6110e0, java.util.ListIterator
            public void set(@xvk V v) {
                this.f34140f.m26369f(v);
            }
        }

        public C5887d() {
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<V> listIterator(int i) {
            C5891h c5891h = new C5891h(i);
            return new a(this, c5891h, c5891h);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return LinkedListMultimap.this.size;
        }
    }

    /* renamed from: com.google.common.collect.LinkedListMultimap$f */
    /* loaded from: classes6.dex */
    public static class C5889f<K, V> {

        /* renamed from: a */
        public C5890g<K, V> f34146a;

        /* renamed from: b */
        public C5890g<K, V> f34147b;

        /* renamed from: c */
        public int f34148c;

        public C5889f(C5890g<K, V> c5890g) {
            this.f34146a = c5890g;
            this.f34147b = c5890g;
            c5890g.f34154j = null;
            c5890g.f34153i = null;
            this.f34148c = 1;
        }
    }

    /* renamed from: com.google.common.collect.LinkedListMultimap$g */
    /* loaded from: classes6.dex */
    public static final class C5890g<K, V> extends AbstractC14741z3<K, V> {

        /* renamed from: e */
        @xvk
        public final K f34149e;

        /* renamed from: f */
        @xvk
        public V f34150f;

        /* renamed from: g */
        @CheckForNull
        public C5890g<K, V> f34151g;

        /* renamed from: h */
        @CheckForNull
        public C5890g<K, V> f34152h;

        /* renamed from: i */
        @CheckForNull
        public C5890g<K, V> f34153i;

        /* renamed from: j */
        @CheckForNull
        public C5890g<K, V> f34154j;

        public C5890g(@xvk K k, @xvk V v) {
            this.f34149e = k;
            this.f34150f = v;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
        @xvk
        public K getKey() {
            return this.f34149e;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
        @xvk
        public V getValue() {
            return this.f34150f;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
        @xvk
        public V setValue(@xvk V v) {
            V v2 = this.f34150f;
            this.f34150f = v;
            return v2;
        }
    }

    /* renamed from: com.google.common.collect.LinkedListMultimap$h */
    /* loaded from: classes6.dex */
    public class C5891h implements ListIterator<Map.Entry<K, V>> {

        /* renamed from: e */
        public int f34155e;

        /* renamed from: f */
        @CheckForNull
        public C5890g<K, V> f34156f;

        /* renamed from: g */
        @CheckForNull
        public C5890g<K, V> f34157g;

        /* renamed from: h */
        @CheckForNull
        public C5890g<K, V> f34158h;

        /* renamed from: i */
        public int f34159i;

        public C5891h(int i) {
            this.f34159i = LinkedListMultimap.this.modCount;
            int size = LinkedListMultimap.this.size();
            Preconditions.checkPositionIndex(i, size);
            if (i < size / 2) {
                this.f34156f = LinkedListMultimap.this.head;
                while (true) {
                    int i2 = i - 1;
                    if (i <= 0) {
                        break;
                    }
                    next();
                    i = i2;
                }
            } else {
                this.f34158h = LinkedListMultimap.this.tail;
                this.f34155e = size;
                while (true) {
                    int i3 = i + 1;
                    if (i >= size) {
                        break;
                    }
                    previous();
                    i = i3;
                }
            }
            this.f34157g = null;
        }

        @Override // java.util.ListIterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void add(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        /* renamed from: b */
        public final void m26365b() {
            if (LinkedListMultimap.this.modCount != this.f34159i) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.ListIterator, java.util.Iterator
        @CanIgnoreReturnValue
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public C5890g<K, V> next() {
            m26365b();
            C5890g<K, V> c5890g = this.f34156f;
            if (c5890g == null) {
                throw new NoSuchElementException();
            }
            this.f34157g = c5890g;
            this.f34158h = c5890g;
            this.f34156f = c5890g.f34151g;
            this.f34155e++;
            return c5890g;
        }

        @Override // java.util.ListIterator
        @CanIgnoreReturnValue
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public C5890g<K, V> previous() {
            m26365b();
            C5890g<K, V> c5890g = this.f34158h;
            if (c5890g == null) {
                throw new NoSuchElementException();
            }
            this.f34157g = c5890g;
            this.f34156f = c5890g;
            this.f34158h = c5890g.f34152h;
            this.f34155e--;
            return c5890g;
        }

        @Override // java.util.ListIterator
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public void set(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        /* renamed from: f */
        public void m26369f(@xvk V v) {
            Preconditions.checkState(this.f34157g != null);
            this.f34157g.f34150f = v;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            m26365b();
            return this.f34156f != null;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            m26365b();
            return this.f34158h != null;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f34155e;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f34155e - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            m26365b();
            Preconditions.checkState(this.f34157g != null, "no calls to next() since the last call to remove()");
            C5890g<K, V> c5890g = this.f34157g;
            if (c5890g != this.f34156f) {
                this.f34158h = c5890g.f34152h;
                this.f34155e--;
            } else {
                this.f34156f = c5890g.f34151g;
            }
            LinkedListMultimap.this.removeNode(c5890g);
            this.f34157g = null;
            this.f34159i = LinkedListMultimap.this.modCount;
        }
    }

    public LinkedListMultimap() {
        this(12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @CanIgnoreReturnValue
    public C5890g<K, V> addNode(@xvk K k, @xvk V v, @CheckForNull C5890g<K, V> c5890g) {
        C5890g<K, V> c5890g2 = new C5890g<>(k, v);
        if (this.head == null) {
            this.tail = c5890g2;
            this.head = c5890g2;
            this.keyToKeyList.put(k, new C5889f<>(c5890g2));
            this.modCount++;
        } else if (c5890g == null) {
            C5890g<K, V> c5890g3 = this.tail;
            Objects.requireNonNull(c5890g3);
            c5890g3.f34151g = c5890g2;
            c5890g2.f34152h = this.tail;
            this.tail = c5890g2;
            C5889f<K, V> c5889f = this.keyToKeyList.get(k);
            if (c5889f == null) {
                this.keyToKeyList.put(k, new C5889f<>(c5890g2));
                this.modCount++;
            } else {
                c5889f.f34148c++;
                C5890g<K, V> c5890g4 = c5889f.f34147b;
                c5890g4.f34153i = c5890g2;
                c5890g2.f34154j = c5890g4;
                c5889f.f34147b = c5890g2;
            }
        } else {
            C5889f<K, V> c5889f2 = this.keyToKeyList.get(k);
            Objects.requireNonNull(c5889f2);
            c5889f2.f34148c++;
            c5890g2.f34152h = c5890g.f34152h;
            c5890g2.f34154j = c5890g.f34154j;
            c5890g2.f34151g = c5890g;
            c5890g2.f34153i = c5890g;
            C5890g<K, V> c5890g5 = c5890g.f34154j;
            if (c5890g5 == null) {
                c5889f2.f34146a = c5890g2;
            } else {
                c5890g5.f34153i = c5890g2;
            }
            C5890g<K, V> c5890g6 = c5890g.f34152h;
            if (c5890g6 == null) {
                this.head = c5890g2;
            } else {
                c5890g6.f34151g = c5890g2;
            }
            c5890g.f34152h = c5890g2;
            c5890g.f34154j = c5890g2;
        }
        this.size++;
        return c5890g2;
    }

    public static <K, V> LinkedListMultimap<K, V> create() {
        return new LinkedListMultimap<>();
    }

    private List<V> getCopy(@xvk K k) {
        return Collections.unmodifiableList(Lists.newArrayList(new C5892i(k)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @GwtIncompatible
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.keyToKeyList = Maps.newLinkedHashMap();
        int readInt = objectInputStream.readInt();
        for (int i = 0; i < readInt; i++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeAllNodes(@xvk K k) {
        Iterators.m26340c(new C5892i(k));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeNode(C5890g<K, V> c5890g) {
        C5890g<K, V> c5890g2 = c5890g.f34152h;
        if (c5890g2 != null) {
            c5890g2.f34151g = c5890g.f34151g;
        } else {
            this.head = c5890g.f34151g;
        }
        C5890g<K, V> c5890g3 = c5890g.f34151g;
        if (c5890g3 != null) {
            c5890g3.f34152h = c5890g2;
        } else {
            this.tail = c5890g2;
        }
        if (c5890g.f34154j == null && c5890g.f34153i == null) {
            C5889f<K, V> remove = this.keyToKeyList.remove(c5890g.f34149e);
            Objects.requireNonNull(remove);
            remove.f34148c = 0;
            this.modCount++;
        } else {
            C5889f<K, V> c5889f = this.keyToKeyList.get(c5890g.f34149e);
            Objects.requireNonNull(c5889f);
            c5889f.f34148c--;
            C5890g<K, V> c5890g4 = c5890g.f34154j;
            if (c5890g4 == null) {
                C5890g<K, V> c5890g5 = c5890g.f34153i;
                Objects.requireNonNull(c5890g5);
                c5889f.f34146a = c5890g5;
            } else {
                c5890g4.f34153i = c5890g.f34153i;
            }
            C5890g<K, V> c5890g6 = c5890g.f34153i;
            if (c5890g6 == null) {
                C5890g<K, V> c5890g7 = c5890g.f34154j;
                Objects.requireNonNull(c5890g7);
                c5889f.f34147b = c5890g7;
            } else {
                c5890g6.f34154j = c5890g.f34154j;
            }
        }
        this.size--;
    }

    @GwtIncompatible
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : entries()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        this.head = null;
        this.tail = null;
        this.keyToKeyList.clear();
        this.size = 0;
        this.modCount++;
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsEntry(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@CheckForNull Object obj) {
        return this.keyToKeyList.containsKey(obj);
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    public boolean containsValue(@CheckForNull Object obj) {
        return values().contains(obj);
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Map<K, Collection<V>> createAsMap() {
        return new Multimaps.C5990a(this);
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Set<K> createKeySet() {
        return new C5886c();
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Multiset<K> createKeys() {
        return new Multimaps.C5992c(this);
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Iterator<Map.Entry<K, V>> entryIterator() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection get(@xvk Object obj) {
        return get((LinkedListMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    public boolean isEmpty() {
        return this.head == null;
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Multiset keys() {
        return super.keys();
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    public boolean put(@xvk K k, @xvk V v) {
        addNode(k, v, null);
        return true;
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean putAll(Multimap multimap) {
        return super.putAll(multimap);
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.remove(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Collection replaceValues(@xvk Object obj, Iterable iterable) {
        return replaceValues((LinkedListMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        return this.size;
    }

    @Override // com.google.common.collect.AbstractC6111f
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    private LinkedListMultimap(int i) {
        this.keyToKeyList = k4l.m55166e(i);
    }

    public static <K, V> LinkedListMultimap<K, V> create(int i) {
        return new LinkedListMultimap<>(i);
    }

    @Override // com.google.common.collect.AbstractC6111f
    public List<Map.Entry<K, V>> createEntries() {
        return new C5885b();
    }

    @Override // com.google.common.collect.AbstractC6111f
    public List<V> createValues() {
        return new C5887d();
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    public List<Map.Entry<K, V>> entries() {
        return (List) super.entries();
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public List<V> get(@xvk K k) {
        return new C5884a(k);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean putAll(@xvk Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public List<V> removeAll(Object obj) {
        List<V> copy = getCopy(obj);
        removeAllNodes(obj);
        return copy;
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public List<V> replaceValues(@xvk K k, Iterable<? extends V> iterable) {
        List<V> copy = getCopy(k);
        C5892i c5892i = new C5892i(k);
        Iterator<? extends V> it2 = iterable.iterator();
        while (c5892i.hasNext() && it2.hasNext()) {
            c5892i.next();
            c5892i.set(it2.next());
        }
        while (c5892i.hasNext()) {
            c5892i.next();
            c5892i.remove();
        }
        while (it2.hasNext()) {
            c5892i.add(it2.next());
        }
        return copy;
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    public List<V> values() {
        return (List) super.values();
    }

    public static <K, V> LinkedListMultimap<K, V> create(Multimap<? extends K, ? extends V> multimap) {
        return new LinkedListMultimap<>(multimap);
    }

    /* renamed from: com.google.common.collect.LinkedListMultimap$e */
    /* loaded from: classes6.dex */
    public class C5888e implements Iterator<K> {

        /* renamed from: e */
        public final Set<K> f34141e;

        /* renamed from: f */
        @CheckForNull
        public C5890g<K, V> f34142f;

        /* renamed from: g */
        @CheckForNull
        public C5890g<K, V> f34143g;

        /* renamed from: h */
        public int f34144h;

        public C5888e() {
            this.f34141e = Sets.newHashSetWithExpectedSize(LinkedListMultimap.this.keySet().size());
            this.f34142f = LinkedListMultimap.this.head;
            this.f34144h = LinkedListMultimap.this.modCount;
        }

        /* renamed from: a */
        public final void m26363a() {
            if (LinkedListMultimap.this.modCount != this.f34144h) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            m26363a();
            return this.f34142f != null;
        }

        @Override // java.util.Iterator
        @xvk
        public K next() {
            C5890g<K, V> c5890g;
            m26363a();
            C5890g<K, V> c5890g2 = this.f34142f;
            if (c5890g2 == null) {
                throw new NoSuchElementException();
            }
            this.f34143g = c5890g2;
            this.f34141e.add(c5890g2.f34149e);
            do {
                c5890g = this.f34142f.f34151g;
                this.f34142f = c5890g;
                if (c5890g == null) {
                    break;
                }
            } while (!this.f34141e.add(c5890g.f34149e));
            return this.f34143g.f34149e;
        }

        @Override // java.util.Iterator
        public void remove() {
            m26363a();
            Preconditions.checkState(this.f34143g != null, "no calls to next() since the last call to remove()");
            LinkedListMultimap.this.removeAllNodes(this.f34143g.f34149e);
            this.f34143g = null;
            this.f34144h = LinkedListMultimap.this.modCount;
        }

        public /* synthetic */ C5888e(LinkedListMultimap linkedListMultimap, C5884a c5884a) {
            this();
        }
    }

    /* renamed from: com.google.common.collect.LinkedListMultimap$i */
    /* loaded from: classes6.dex */
    public class C5892i implements ListIterator<V> {

        /* renamed from: e */
        @xvk
        public final K f34161e;

        /* renamed from: f */
        public int f34162f;

        /* renamed from: g */
        @CheckForNull
        public C5890g<K, V> f34163g;

        /* renamed from: h */
        @CheckForNull
        public C5890g<K, V> f34164h;

        /* renamed from: i */
        @CheckForNull
        public C5890g<K, V> f34165i;

        public C5892i(@xvk K k) {
            this.f34161e = k;
            C5889f c5889f = (C5889f) LinkedListMultimap.this.keyToKeyList.get(k);
            this.f34163g = c5889f == null ? null : c5889f.f34146a;
        }

        @Override // java.util.ListIterator
        public void add(@xvk V v) {
            this.f34165i = LinkedListMultimap.this.addNode(this.f34161e, v, this.f34163g);
            this.f34162f++;
            this.f34164h = null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f34163g != null;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f34165i != null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        @CanIgnoreReturnValue
        @xvk
        public V next() {
            C5890g<K, V> c5890g = this.f34163g;
            if (c5890g == null) {
                throw new NoSuchElementException();
            }
            this.f34164h = c5890g;
            this.f34165i = c5890g;
            this.f34163g = c5890g.f34153i;
            this.f34162f++;
            return c5890g.f34150f;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f34162f;
        }

        @Override // java.util.ListIterator
        @CanIgnoreReturnValue
        @xvk
        public V previous() {
            C5890g<K, V> c5890g = this.f34165i;
            if (c5890g == null) {
                throw new NoSuchElementException();
            }
            this.f34164h = c5890g;
            this.f34163g = c5890g;
            this.f34165i = c5890g.f34154j;
            this.f34162f--;
            return c5890g.f34150f;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f34162f - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            Preconditions.checkState(this.f34164h != null, "no calls to next() since the last call to remove()");
            C5890g<K, V> c5890g = this.f34164h;
            if (c5890g != this.f34163g) {
                this.f34165i = c5890g.f34154j;
                this.f34162f--;
            } else {
                this.f34163g = c5890g.f34153i;
            }
            LinkedListMultimap.this.removeNode(c5890g);
            this.f34164h = null;
        }

        @Override // java.util.ListIterator
        public void set(@xvk V v) {
            Preconditions.checkState(this.f34164h != null);
            this.f34164h.f34150f = v;
        }

        public C5892i(@xvk K k, int i) {
            C5889f c5889f = (C5889f) LinkedListMultimap.this.keyToKeyList.get(k);
            int i2 = c5889f == null ? 0 : c5889f.f34148c;
            Preconditions.checkPositionIndex(i, i2);
            if (i >= i2 / 2) {
                this.f34165i = c5889f == null ? null : c5889f.f34147b;
                this.f34162f = i2;
                while (true) {
                    int i3 = i + 1;
                    if (i >= i2) {
                        break;
                    }
                    previous();
                    i = i3;
                }
            } else {
                this.f34163g = c5889f == null ? null : c5889f.f34146a;
                while (true) {
                    int i4 = i - 1;
                    if (i <= 0) {
                        break;
                    }
                    next();
                    i = i4;
                }
            }
            this.f34161e = k;
            this.f34164h = null;
        }
    }

    private LinkedListMultimap(Multimap<? extends K, ? extends V> multimap) {
        this(multimap.keySet().size());
        putAll(multimap);
    }
}
