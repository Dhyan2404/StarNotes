package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.collect.Sets;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.k4l;
import com.sunia.HTREnginev2.pfh;
import com.sunia.HTREnginev2.rhi;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.szd;
import com.sunia.HTREnginev2.vzd;
import com.sunia.HTREnginev2.xvk;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes6.dex */
public final class LinkedHashMultimap<K, V> extends LinkedHashMultimapGwtSerializationDependencies<K, V> {
    private static final int DEFAULT_KEY_CAPACITY = 16;
    private static final int DEFAULT_VALUE_SET_CAPACITY = 2;

    @VisibleForTesting
    static final double VALUE_SET_LOAD_FACTOR = 1.0d;

    @GwtIncompatible
    private static final long serialVersionUID = 1;
    private transient ValueEntry<K, V> multimapHeaderEntry;

    @VisibleForTesting
    transient int valueSetCapacity;

    @VisibleForTesting
    /* loaded from: classes6.dex */
    public static final class ValueEntry<K, V> extends ImmutableEntry<K, V> implements InterfaceC5883c<K, V> {

        @CheckForNull
        ValueEntry<K, V> nextInValueBucket;

        @CheckForNull
        ValueEntry<K, V> predecessorInMultimap;

        @CheckForNull
        InterfaceC5883c<K, V> predecessorInValueSet;
        final int smearedValueHash;

        @CheckForNull
        ValueEntry<K, V> successorInMultimap;

        @CheckForNull
        InterfaceC5883c<K, V> successorInValueSet;

        public ValueEntry(@xvk K k, @xvk V v, int i, @CheckForNull ValueEntry<K, V> valueEntry) {
            super(k, v);
            this.smearedValueHash = i;
            this.nextInValueBucket = valueEntry;
        }

        public static <K, V> ValueEntry<K, V> newHeader() {
            return new ValueEntry<>(null, null, 0, null);
        }

        public ValueEntry<K, V> getPredecessorInMultimap() {
            ValueEntry<K, V> valueEntry = this.predecessorInMultimap;
            Objects.requireNonNull(valueEntry);
            return valueEntry;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.InterfaceC5883c
        public InterfaceC5883c<K, V> getPredecessorInValueSet() {
            InterfaceC5883c<K, V> interfaceC5883c = this.predecessorInValueSet;
            Objects.requireNonNull(interfaceC5883c);
            return interfaceC5883c;
        }

        public ValueEntry<K, V> getSuccessorInMultimap() {
            ValueEntry<K, V> valueEntry = this.successorInMultimap;
            Objects.requireNonNull(valueEntry);
            return valueEntry;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.InterfaceC5883c
        public InterfaceC5883c<K, V> getSuccessorInValueSet() {
            InterfaceC5883c<K, V> interfaceC5883c = this.successorInValueSet;
            Objects.requireNonNull(interfaceC5883c);
            return interfaceC5883c;
        }

        public boolean matchesValue(@CheckForNull Object obj, int i) {
            return this.smearedValueHash == i && com.google.common.base.Objects.equal(getValue(), obj);
        }

        public void setPredecessorInMultimap(ValueEntry<K, V> valueEntry) {
            this.predecessorInMultimap = valueEntry;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.InterfaceC5883c
        public void setPredecessorInValueSet(InterfaceC5883c<K, V> interfaceC5883c) {
            this.predecessorInValueSet = interfaceC5883c;
        }

        public void setSuccessorInMultimap(ValueEntry<K, V> valueEntry) {
            this.successorInMultimap = valueEntry;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.InterfaceC5883c
        public void setSuccessorInValueSet(InterfaceC5883c<K, V> interfaceC5883c) {
            this.successorInValueSet = interfaceC5883c;
        }
    }

    /* renamed from: com.google.common.collect.LinkedHashMultimap$a */
    /* loaded from: classes6.dex */
    public class C5881a implements Iterator<Map.Entry<K, V>> {

        /* renamed from: e */
        public ValueEntry<K, V> f34121e;

        /* renamed from: f */
        @CheckForNull
        public ValueEntry<K, V> f34122f;

        public C5881a() {
            this.f34121e = LinkedHashMultimap.this.multimapHeaderEntry.getSuccessorInMultimap();
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            ValueEntry<K, V> valueEntry = this.f34121e;
            this.f34122f = valueEntry;
            this.f34121e = valueEntry.getSuccessorInMultimap();
            return valueEntry;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f34121e != LinkedHashMultimap.this.multimapHeaderEntry;
        }

        @Override // java.util.Iterator
        public void remove() {
            Preconditions.checkState(this.f34122f != null, "no calls to next() since the last call to remove()");
            LinkedHashMultimap.this.remove(this.f34122f.getKey(), this.f34122f.getValue());
            this.f34122f = null;
        }
    }

    @VisibleForTesting
    /* renamed from: com.google.common.collect.LinkedHashMultimap$b */
    /* loaded from: classes6.dex */
    public final class C5882b extends Sets.AbstractC6030j<V> implements InterfaceC5883c<K, V> {

        /* renamed from: e */
        @xvk
        public final K f34124e;

        /* renamed from: f */
        @VisibleForTesting
        public ValueEntry<K, V>[] f34125f;

        /* renamed from: g */
        public int f34126g = 0;

        /* renamed from: h */
        public int f34127h = 0;

        /* renamed from: i */
        public InterfaceC5883c<K, V> f34128i = this;

        /* renamed from: j */
        public InterfaceC5883c<K, V> f34129j = this;

        /* renamed from: com.google.common.collect.LinkedHashMultimap$b$a */
        /* loaded from: classes6.dex */
        public class a implements Iterator<V> {

            /* renamed from: e */
            public InterfaceC5883c<K, V> f34131e;

            /* renamed from: f */
            @CheckForNull
            public ValueEntry<K, V> f34132f;

            /* renamed from: g */
            public int f34133g;

            public a() {
                this.f34131e = C5882b.this.f34128i;
                this.f34133g = C5882b.this.f34127h;
            }

            /* renamed from: a */
            public final void m26361a() {
                if (C5882b.this.f34127h != this.f34133g) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                m26361a();
                return this.f34131e != C5882b.this;
            }

            @Override // java.util.Iterator
            @xvk
            public V next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                ValueEntry<K, V> valueEntry = (ValueEntry) this.f34131e;
                V value = valueEntry.getValue();
                this.f34132f = valueEntry;
                this.f34131e = valueEntry.getSuccessorInValueSet();
                return value;
            }

            @Override // java.util.Iterator
            public void remove() {
                m26361a();
                Preconditions.checkState(this.f34132f != null, "no calls to next() since the last call to remove()");
                C5882b.this.remove(this.f34132f.getValue());
                this.f34133g = C5882b.this.f34127h;
                this.f34132f = null;
            }
        }

        public C5882b(@xvk K k, int i) {
            this.f34124e = k;
            this.f34125f = new ValueEntry[pfh.m56254a(i, 1.0d)];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(@xvk V v) {
            int m56257d = pfh.m56257d(v);
            int m26359c = m26359c() & m56257d;
            ValueEntry<K, V> valueEntry = this.f34125f[m26359c];
            for (ValueEntry<K, V> valueEntry2 = valueEntry; valueEntry2 != null; valueEntry2 = valueEntry2.nextInValueBucket) {
                if (valueEntry2.matchesValue(v, m56257d)) {
                    return false;
                }
            }
            ValueEntry<K, V> valueEntry3 = new ValueEntry<>(this.f34124e, v, m56257d, valueEntry);
            LinkedHashMultimap.succeedsInValueSet(this.f34129j, valueEntry3);
            LinkedHashMultimap.succeedsInValueSet(valueEntry3, this);
            LinkedHashMultimap.succeedsInMultimap(LinkedHashMultimap.this.multimapHeaderEntry.getPredecessorInMultimap(), valueEntry3);
            LinkedHashMultimap.succeedsInMultimap(valueEntry3, LinkedHashMultimap.this.multimapHeaderEntry);
            this.f34125f[m26359c] = valueEntry3;
            this.f34126g++;
            this.f34127h++;
            m26360d();
            return true;
        }

        /* renamed from: c */
        public final int m26359c() {
            return this.f34125f.length - 1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Arrays.fill(this.f34125f, (Object) null);
            this.f34126g = 0;
            for (InterfaceC5883c<K, V> interfaceC5883c = this.f34128i; interfaceC5883c != this; interfaceC5883c = interfaceC5883c.getSuccessorInValueSet()) {
                LinkedHashMultimap.deleteFromMultimap((ValueEntry) interfaceC5883c);
            }
            LinkedHashMultimap.succeedsInValueSet(this, this);
            this.f34127h++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            int m56257d = pfh.m56257d(obj);
            for (ValueEntry<K, V> valueEntry = this.f34125f[m26359c() & m56257d]; valueEntry != null; valueEntry = valueEntry.nextInValueBucket) {
                if (valueEntry.matchesValue(obj, m56257d)) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: d */
        public final void m26360d() {
            if (pfh.m56255b(this.f34126g, this.f34125f.length, 1.0d)) {
                int length = this.f34125f.length * 2;
                ValueEntry<K, V>[] valueEntryArr = new ValueEntry[length];
                this.f34125f = valueEntryArr;
                int i = length - 1;
                for (InterfaceC5883c<K, V> interfaceC5883c = this.f34128i; interfaceC5883c != this; interfaceC5883c = interfaceC5883c.getSuccessorInValueSet()) {
                    ValueEntry<K, V> valueEntry = (ValueEntry) interfaceC5883c;
                    int i2 = valueEntry.smearedValueHash & i;
                    valueEntry.nextInValueBucket = valueEntryArr[i2];
                    valueEntryArr[i2] = valueEntry;
                }
            }
        }

        @Override // java.lang.Iterable
        public void forEach(Consumer<? super V> consumer) {
            Preconditions.checkNotNull(consumer);
            for (InterfaceC5883c<K, V> interfaceC5883c = this.f34128i; interfaceC5883c != this; interfaceC5883c = interfaceC5883c.getSuccessorInValueSet()) {
                consumer.accept(((ValueEntry) interfaceC5883c).getValue());
            }
        }

        @Override // com.google.common.collect.LinkedHashMultimap.InterfaceC5883c
        public InterfaceC5883c<K, V> getPredecessorInValueSet() {
            return this.f34129j;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.InterfaceC5883c
        public InterfaceC5883c<K, V> getSuccessorInValueSet() {
            return this.f34128i;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<V> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        public boolean remove(@CheckForNull Object obj) {
            int m56257d = pfh.m56257d(obj);
            int m26359c = m26359c() & m56257d;
            ValueEntry<K, V> valueEntry = null;
            for (ValueEntry<K, V> valueEntry2 = this.f34125f[m26359c]; valueEntry2 != null; valueEntry2 = valueEntry2.nextInValueBucket) {
                if (valueEntry2.matchesValue(obj, m56257d)) {
                    if (valueEntry == null) {
                        this.f34125f[m26359c] = valueEntry2.nextInValueBucket;
                    } else {
                        valueEntry.nextInValueBucket = valueEntry2.nextInValueBucket;
                    }
                    LinkedHashMultimap.deleteFromValueSet(valueEntry2);
                    LinkedHashMultimap.deleteFromMultimap(valueEntry2);
                    this.f34126g--;
                    this.f34127h++;
                    return true;
                }
                valueEntry = valueEntry2;
            }
            return false;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.InterfaceC5883c
        public void setPredecessorInValueSet(InterfaceC5883c<K, V> interfaceC5883c) {
            this.f34129j = interfaceC5883c;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.InterfaceC5883c
        public void setSuccessorInValueSet(InterfaceC5883c<K, V> interfaceC5883c) {
            this.f34128i = interfaceC5883c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f34126g;
        }
    }

    /* renamed from: com.google.common.collect.LinkedHashMultimap$c */
    /* loaded from: classes6.dex */
    public interface InterfaceC5883c<K, V> {
        InterfaceC5883c<K, V> getPredecessorInValueSet();

        InterfaceC5883c<K, V> getSuccessorInValueSet();

        void setPredecessorInValueSet(InterfaceC5883c<K, V> interfaceC5883c);

        void setSuccessorInValueSet(InterfaceC5883c<K, V> interfaceC5883c);
    }

    private LinkedHashMultimap(int i, int i2) {
        super(k4l.m55168g(i));
        this.valueSetCapacity = 2;
        szd.m57279b(i2, "expectedValuesPerKey");
        this.valueSetCapacity = i2;
        ValueEntry<K, V> newHeader = ValueEntry.newHeader();
        this.multimapHeaderEntry = newHeader;
        succeedsInMultimap(newHeader, newHeader);
    }

    public static <K, V> LinkedHashMultimap<K, V> create() {
        return new LinkedHashMultimap<>(16, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void deleteFromMultimap(ValueEntry<K, V> valueEntry) {
        succeedsInMultimap(valueEntry.getPredecessorInMultimap(), valueEntry.getSuccessorInMultimap());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void deleteFromValueSet(InterfaceC5883c<K, V> interfaceC5883c) {
        succeedsInValueSet(interfaceC5883c.getPredecessorInValueSet(), interfaceC5883c.getSuccessorInValueSet());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @GwtIncompatible
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        ValueEntry<K, V> newHeader = ValueEntry.newHeader();
        this.multimapHeaderEntry = newHeader;
        succeedsInMultimap(newHeader, newHeader);
        this.valueSetCapacity = 2;
        int readInt = objectInputStream.readInt();
        Map m55168g = k4l.m55168g(12);
        for (int i = 0; i < readInt; i++) {
            Object readObject = objectInputStream.readObject();
            m55168g.put(readObject, createCollection(readObject));
        }
        int readInt2 = objectInputStream.readInt();
        for (int i2 = 0; i2 < readInt2; i2++) {
            Object readObject2 = objectInputStream.readObject();
            Object readObject3 = objectInputStream.readObject();
            Collection collection = (Collection) m55168g.get(readObject2);
            Objects.requireNonNull(collection);
            collection.add(readObject3);
        }
        setMap(m55168g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void succeedsInMultimap(ValueEntry<K, V> valueEntry, ValueEntry<K, V> valueEntry2) {
        valueEntry.setSuccessorInMultimap(valueEntry2);
        valueEntry2.setPredecessorInMultimap(valueEntry);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void succeedsInValueSet(InterfaceC5883c<K, V> interfaceC5883c, InterfaceC5883c<K, V> interfaceC5883c2) {
        interfaceC5883c.setSuccessorInValueSet(interfaceC5883c2);
        interfaceC5883c2.setPredecessorInValueSet(interfaceC5883c);
    }

    @GwtIncompatible
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(keySet().size());
        Iterator<K> it2 = keySet().iterator();
        while (it2.hasNext()) {
            objectOutputStream.writeObject(it2.next());
        }
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : entries()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public void clear() {
        super.clear();
        ValueEntry<K, V> valueEntry = this.multimapHeaderEntry;
        succeedsInMultimap(valueEntry, valueEntry);
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsEntry(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsKey(@CheckForNull Object obj) {
        return super.containsKey(obj);
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsValue(@CheckForNull Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractC6111f
    public Iterator<Map.Entry<K, V>> entryIterator() {
        return new C5881a();
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractC6111f
    public Spliterator<Map.Entry<K, V>> entrySpliterator() {
        return Spliterators.spliterator(entries(), 17);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ void forEach(BiConsumer biConsumer) {
        super.forEach(biConsumer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Set get(@xvk Object obj) {
        return super.get((LinkedHashMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    public Set<K> keySet() {
        return super.keySet();
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Multiset keys() {
        return super.keys();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean put(@xvk Object obj, @xvk Object obj2) {
        return super.put(obj, obj2);
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

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Set removeAll(@CheckForNull Object obj) {
        return super.removeAll(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Collection replaceValues(@xvk Object obj, Iterable iterable) {
        return replaceValues((LinkedHashMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.AbstractC6111f
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractC6111f
    public Iterator<V> valueIterator() {
        return Maps.m26478Q(entryIterator());
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractC6111f
    public Spliterator<V> valueSpliterator() {
        return vzd.m57903h(entrySpliterator(), new rhi());
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    public Collection<V> values() {
        return super.values();
    }

    public static <K, V> LinkedHashMultimap<K, V> create(int i, int i2) {
        return new LinkedHashMultimap<>(Maps.m26491k(i), Maps.m26491k(i2));
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
    public Set<V> createCollection() {
        return k4l.m55169h(this.valueSetCapacity);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    public Set<Map.Entry<K, V>> entries() {
        return super.entries();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean putAll(@xvk Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public Set<V> replaceValues(@xvk K k, Iterable<? extends V> iterable) {
        return super.replaceValues((LinkedHashMultimap<K, V>) k, (Iterable) iterable);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    public Collection<V> createCollection(@xvk K k) {
        return new C5882b(k, this.valueSetCapacity);
    }

    public static <K, V> LinkedHashMultimap<K, V> create(Multimap<? extends K, ? extends V> multimap) {
        LinkedHashMultimap<K, V> create = create(multimap.keySet().size(), 2);
        create.putAll(multimap);
        return create;
    }
}
