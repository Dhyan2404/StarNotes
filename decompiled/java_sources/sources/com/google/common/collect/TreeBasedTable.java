package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.collect.Maps;
import com.google.common.collect.TreeBasedTable;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.snf;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible(serializable = true)
/* loaded from: classes6.dex */
public class TreeBasedTable<R, C, V> extends StandardRowSortedTable<R, C, V> {
    private static final long serialVersionUID = 0;
    private final Comparator<? super C> columnComparator;

    /* loaded from: classes6.dex */
    public static class Factory<C, V> implements Supplier<TreeMap<C, V>>, Serializable {
        private static final long serialVersionUID = 0;
        final Comparator<? super C> comparator;

        public Factory(Comparator<? super C> comparator) {
            this.comparator = comparator;
        }

        @Override // com.google.common.base.Supplier, java.util.function.Supplier
        public TreeMap<C, V> get() {
            return new TreeMap<>(this.comparator);
        }
    }

    /* renamed from: com.google.common.collect.TreeBasedTable$a */
    /* loaded from: classes6.dex */
    public class C6074a extends AbstractIterator<C> {

        /* renamed from: g */
        @CheckForNull
        public C f34489g;

        /* renamed from: h */
        public final /* synthetic */ Iterator f34490h;

        /* renamed from: i */
        public final /* synthetic */ Comparator f34491i;

        public C6074a(TreeBasedTable treeBasedTable, Iterator it2, Comparator comparator) {
            this.f34490h = it2;
            this.f34491i = comparator;
        }

        @Override // com.google.common.collect.AbstractIterator
        @CheckForNull
        public C computeNext() {
            while (this.f34490h.hasNext()) {
                C c = (C) this.f34490h.next();
                C c2 = this.f34489g;
                if (!(c2 != null && this.f34491i.compare(c, c2) == 0)) {
                    this.f34489g = c;
                    return c;
                }
            }
            this.f34489g = null;
            return endOfData();
        }
    }

    /* renamed from: com.google.common.collect.TreeBasedTable$b */
    /* loaded from: classes6.dex */
    public class C6075b extends StandardTable<R, C, V>.C6050g implements SortedMap<C, V> {

        /* renamed from: h */
        @CheckForNull
        public final C f34492h;

        /* renamed from: i */
        @CheckForNull
        public final C f34493i;

        /* renamed from: j */
        @CheckForNull
        public transient SortedMap<C, V> f34494j;

        public C6075b(TreeBasedTable treeBasedTable, R r) {
            this(r, null, null);
        }

        @Override // com.google.common.collect.StandardTable.C6050g
        /* renamed from: b */
        public void mo26708b() {
            m26789i();
            SortedMap<C, V> sortedMap = this.f34494j;
            if (sortedMap == null || !sortedMap.isEmpty()) {
                return;
            }
            TreeBasedTable.this.backingMap.remove(this.f34436e);
            this.f34494j = null;
            this.f34437f = null;
        }

        @Override // java.util.SortedMap
        public Comparator<? super C> comparator() {
            return TreeBasedTable.this.columnComparator();
        }

        @Override // com.google.common.collect.StandardTable.C6050g, java.util.AbstractMap, java.util.Map
        public boolean containsKey(@CheckForNull Object obj) {
            return m26788h(obj) && super.containsKey(obj);
        }

        /* renamed from: e */
        public int m26785e(Object obj, Object obj2) {
            return comparator().compare(obj, obj2);
        }

        @Override // com.google.common.collect.StandardTable.C6050g
        @CheckForNull
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public SortedMap<C, V> mo26707a() {
            m26789i();
            SortedMap<C, V> sortedMap = this.f34494j;
            if (sortedMap == null) {
                return null;
            }
            C c = this.f34492h;
            if (c != null) {
                sortedMap = sortedMap.tailMap(c);
            }
            C c2 = this.f34493i;
            return c2 != null ? sortedMap.headMap(c2) : sortedMap;
        }

        @Override // java.util.SortedMap
        public C firstKey() {
            m26709c();
            Map<C, V> map = this.f34437f;
            if (map != null) {
                return (C) ((SortedMap) map).firstKey();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public SortedSet<C> keySet() {
            return new Maps.C5941d0(this);
        }

        /* renamed from: h */
        public boolean m26788h(@CheckForNull Object obj) {
            C c;
            C c2;
            return obj != null && ((c = this.f34492h) == null || m26785e(c, obj) <= 0) && ((c2 = this.f34493i) == null || m26785e(c2, obj) > 0);
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> headMap(C c) {
            Preconditions.checkArgument(m26788h(Preconditions.checkNotNull(c)));
            return new C6075b(this.f34436e, this.f34492h, c);
        }

        /* renamed from: i */
        public void m26789i() {
            SortedMap<C, V> sortedMap = this.f34494j;
            if (sortedMap == null || (sortedMap.isEmpty() && TreeBasedTable.this.backingMap.containsKey(this.f34436e))) {
                this.f34494j = (SortedMap) TreeBasedTable.this.backingMap.get(this.f34436e);
            }
        }

        @Override // java.util.SortedMap
        public C lastKey() {
            m26709c();
            Map<C, V> map = this.f34437f;
            if (map != null) {
                return (C) ((SortedMap) map).lastKey();
            }
            throw new NoSuchElementException();
        }

        @Override // com.google.common.collect.StandardTable.C6050g, java.util.AbstractMap, java.util.Map
        @CheckForNull
        public V put(C c, V v) {
            Preconditions.checkArgument(m26788h(Preconditions.checkNotNull(c)));
            return (V) super.put(c, v);
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> subMap(C c, C c2) {
            Preconditions.checkArgument(m26788h(Preconditions.checkNotNull(c)) && m26788h(Preconditions.checkNotNull(c2)));
            return new C6075b(this.f34436e, c, c2);
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> tailMap(C c) {
            Preconditions.checkArgument(m26788h(Preconditions.checkNotNull(c)));
            return new C6075b(this.f34436e, c, this.f34493i);
        }

        public C6075b(R r, @CheckForNull C c, @CheckForNull C c2) {
            super(r);
            this.f34492h = c;
            this.f34493i = c2;
            Preconditions.checkArgument(c == null || c2 == null || m26785e(c, c2) <= 0);
        }
    }

    public TreeBasedTable(Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        super(new TreeMap(comparator), new Factory(comparator2));
        this.columnComparator = comparator2;
    }

    public static <R extends Comparable, C extends Comparable, V> TreeBasedTable<R, C, V> create() {
        return new TreeBasedTable<>(Ordering.natural(), Ordering.natural());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Iterator lambda$createColumnKeyIterator$0(Map map) {
        return map.keySet().iterator();
    }

    @Override // com.google.common.collect.StandardTable, com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Set cellSet() {
        return super.cellSet();
    }

    @Override // com.google.common.collect.StandardTable, com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.StandardTable, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map column(Object obj) {
        return super.column(obj);
    }

    @Deprecated
    public Comparator<? super C> columnComparator() {
        return this.columnComparator;
    }

    @Override // com.google.common.collect.StandardTable, com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Set columnKeySet() {
        return super.columnKeySet();
    }

    @Override // com.google.common.collect.StandardTable, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map columnMap() {
        return super.columnMap();
    }

    @Override // com.google.common.collect.StandardTable, com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean contains(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.contains(obj, obj2);
    }

    @Override // com.google.common.collect.StandardTable, com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean containsColumn(@CheckForNull Object obj) {
        return super.containsColumn(obj);
    }

    @Override // com.google.common.collect.StandardTable, com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean containsRow(@CheckForNull Object obj) {
        return super.containsRow(obj);
    }

    @Override // com.google.common.collect.StandardTable, com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean containsValue(@CheckForNull Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.StandardTable
    public Iterator<C> createColumnKeyIterator() {
        Comparator<? super C> columnComparator = columnComparator();
        return new C6074a(this, Iterators.mergeSorted(Iterables.transform(this.backingMap.values(), new Function() { // from class: com.sunia.HTREnginev2.pnn
            @Override // com.google.common.base.Function, java.util.function.Function
            public final Object apply(Object obj) {
                Iterator lambda$createColumnKeyIterator$0;
                lambda$createColumnKeyIterator$0 = TreeBasedTable.lambda$createColumnKeyIterator$0((Map) obj);
                return lambda$createColumnKeyIterator$0;
            }
        }), columnComparator), columnComparator);
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.StandardTable, com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    @CheckForNull
    public /* bridge */ /* synthetic */ Object get(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.get(obj, obj2);
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.StandardTable, com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.StandardTable, com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    @CanIgnoreReturnValue
    @CheckForNull
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2, Object obj3) {
        return super.put(obj, obj2, obj3);
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ void putAll(Table table) {
        super.putAll(table);
    }

    @Override // com.google.common.collect.StandardTable, com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    @CanIgnoreReturnValue
    @CheckForNull
    public /* bridge */ /* synthetic */ Object remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.remove(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.StandardTable, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map row(Object obj) {
        return row((TreeBasedTable<R, C, V>) obj);
    }

    @Deprecated
    public Comparator<? super R> rowComparator() {
        Comparator<? super R> comparator = rowKeySet().comparator();
        Objects.requireNonNull(comparator);
        return comparator;
    }

    @Override // com.google.common.collect.StandardTable, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.AbstractC6115j
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.StandardTable, com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }

    public static <R, C, V> TreeBasedTable<R, C, V> create(Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        Preconditions.checkNotNull(comparator);
        Preconditions.checkNotNull(comparator2);
        return new TreeBasedTable<>(comparator, comparator2);
    }

    @Override // com.google.common.collect.StandardTable, com.google.common.collect.Table
    public SortedMap<C, V> row(R r) {
        return new C6075b(this, r);
    }

    @Override // com.google.common.collect.StandardRowSortedTable, com.google.common.collect.StandardTable, com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public SortedSet<R> rowKeySet() {
        return super.rowKeySet();
    }

    @Override // com.google.common.collect.StandardRowSortedTable, com.google.common.collect.StandardTable, com.google.common.collect.Table
    public SortedMap<R, Map<C, V>> rowMap() {
        return super.rowMap();
    }

    public static <R, C, V> TreeBasedTable<R, C, V> create(TreeBasedTable<R, C, ? extends V> treeBasedTable) {
        TreeBasedTable<R, C, V> treeBasedTable2 = new TreeBasedTable<>(treeBasedTable.rowComparator(), treeBasedTable.columnComparator());
        treeBasedTable2.putAll(treeBasedTable);
        return treeBasedTable2;
    }
}
