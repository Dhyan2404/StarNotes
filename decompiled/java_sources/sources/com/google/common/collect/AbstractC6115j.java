package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Table;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.vzd;
import com.sunia.HTREnginev2.xvk;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.Function;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
/* renamed from: com.google.common.collect.j */
/* loaded from: classes6.dex */
public abstract class AbstractC6115j<R, C, V> implements Table<R, C, V> {

    @CheckForNull
    @LazyInit
    private transient Set<Table.Cell<R, C, V>> cellSet;

    @CheckForNull
    @LazyInit
    private transient Collection<V> values;

    /* renamed from: com.google.common.collect.j$a */
    /* loaded from: classes6.dex */
    public class a extends AbstractC6108d0<Table.Cell<R, C, V>, V> {
        public a(AbstractC6115j abstractC6115j, Iterator it2) {
            super(it2);
        }

        @Override // com.google.common.collect.AbstractC6108d0
        @xvk
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public V mo26351a(Table.Cell<R, C, V> cell) {
            return cell.getValue();
        }
    }

    /* renamed from: com.google.common.collect.j$b */
    /* loaded from: classes6.dex */
    public class b extends AbstractSet<Table.Cell<R, C, V>> {
        public b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            AbstractC6115j.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof Table.Cell)) {
                return false;
            }
            Table.Cell cell = (Table.Cell) obj;
            Map map = (Map) Maps.m26468G(AbstractC6115j.this.rowMap(), cell.getRowKey());
            return map != null && Collections2.m26077e(map.entrySet(), Maps.immutableEntry(cell.getColumnKey(), cell.getValue()));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Table.Cell<R, C, V>> iterator() {
            return AbstractC6115j.this.cellIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@CheckForNull Object obj) {
            if (!(obj instanceof Table.Cell)) {
                return false;
            }
            Table.Cell cell = (Table.Cell) obj;
            Map map = (Map) Maps.m26468G(AbstractC6115j.this.rowMap(), cell.getRowKey());
            return map != null && Collections2.m26078f(map.entrySet(), Maps.immutableEntry(cell.getColumnKey(), cell.getValue()));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return AbstractC6115j.this.size();
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public Spliterator<Table.Cell<R, C, V>> spliterator() {
            return AbstractC6115j.this.cellSpliterator();
        }
    }

    /* renamed from: com.google.common.collect.j$c */
    /* loaded from: classes6.dex */
    public class c extends AbstractCollection<V> {
        public c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            AbstractC6115j.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@CheckForNull Object obj) {
            return AbstractC6115j.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return AbstractC6115j.this.valuesIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return AbstractC6115j.this.size();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Spliterator<V> spliterator() {
            return AbstractC6115j.this.valuesSpliterator();
        }
    }

    abstract Iterator<Table.Cell<R, C, V>> cellIterator();

    @Override // com.google.common.collect.Table
    public Set<Table.Cell<R, C, V>> cellSet() {
        Set<Table.Cell<R, C, V>> set = this.cellSet;
        if (set != null) {
            return set;
        }
        Set<Table.Cell<R, C, V>> createCellSet = createCellSet();
        this.cellSet = createCellSet;
        return createCellSet;
    }

    public abstract Spliterator<Table.Cell<R, C, V>> cellSpliterator();

    @Override // com.google.common.collect.Table
    public void clear() {
        Iterators.m26340c(cellSet().iterator());
    }

    @Override // com.google.common.collect.Table
    public Set<C> columnKeySet() {
        return columnMap().keySet();
    }

    @Override // com.google.common.collect.Table
    public boolean contains(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Map map = (Map) Maps.m26468G(rowMap(), obj);
        return map != null && Maps.m26467F(map, obj2);
    }

    @Override // com.google.common.collect.Table
    public boolean containsColumn(@CheckForNull Object obj) {
        return Maps.m26467F(columnMap(), obj);
    }

    @Override // com.google.common.collect.Table
    public boolean containsRow(@CheckForNull Object obj) {
        return Maps.m26467F(rowMap(), obj);
    }

    @Override // com.google.common.collect.Table
    public boolean containsValue(@CheckForNull Object obj) {
        Iterator<Map<C, V>> it2 = rowMap().values().iterator();
        while (it2.hasNext()) {
            if (it2.next().containsValue(obj)) {
                return true;
            }
        }
        return false;
    }

    public Set<Table.Cell<R, C, V>> createCellSet() {
        return new b();
    }

    public Collection<V> createValues() {
        return new c();
    }

    @Override // com.google.common.collect.Table
    public boolean equals(@CheckForNull Object obj) {
        return Tables.m26776b(this, obj);
    }

    @Override // com.google.common.collect.Table
    @CheckForNull
    public V get(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Map map = (Map) Maps.m26468G(rowMap(), obj);
        if (map == null) {
            return null;
        }
        return (V) Maps.m26468G(map, obj2);
    }

    @Override // com.google.common.collect.Table
    public int hashCode() {
        return cellSet().hashCode();
    }

    @Override // com.google.common.collect.Table
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // com.google.common.collect.Table
    @CanIgnoreReturnValue
    @CheckForNull
    public V put(@xvk R r, @xvk C c2, @xvk V v) {
        return row(r).put(c2, v);
    }

    @Override // com.google.common.collect.Table
    public void putAll(Table<? extends R, ? extends C, ? extends V> table) {
        for (Table.Cell<? extends R, ? extends C, ? extends V> cell : table.cellSet()) {
            put(cell.getRowKey(), cell.getColumnKey(), cell.getValue());
        }
    }

    @Override // com.google.common.collect.Table
    @CanIgnoreReturnValue
    @CheckForNull
    public V remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Map map = (Map) Maps.m26468G(rowMap(), obj);
        if (map == null) {
            return null;
        }
        return (V) Maps.m26469H(map, obj2);
    }

    @Override // com.google.common.collect.Table
    public Set<R> rowKeySet() {
        return rowMap().keySet();
    }

    public String toString() {
        return rowMap().toString();
    }

    @Override // com.google.common.collect.Table
    public Collection<V> values() {
        Collection<V> collection = this.values;
        if (collection != null) {
            return collection;
        }
        Collection<V> createValues = createValues();
        this.values = createValues;
        return createValues;
    }

    Iterator<V> valuesIterator() {
        return new a(this, cellSet().iterator());
    }

    public Spliterator<V> valuesSpliterator() {
        return vzd.m57903h(cellSpliterator(), new Function() { // from class: com.sunia.HTREnginev2.y4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((Table.Cell) obj).getValue();
            }
        });
    }
}
