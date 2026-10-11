package com.google.common.collect;

import com.google.android.material.motion.MotionUtils;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.collect.Table;
import com.sunia.HTREnginev2.p5k;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.vzd;
import com.sunia.HTREnginev2.xvk;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.Spliterator;
import java.util.function.BinaryOperator;
import java.util.stream.Collector;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public final class Tables {

    /* renamed from: a */
    public static final Function<? extends Map<?, ?>, ? extends Map<?, ?>> f34481a = new C6070a();

    /* loaded from: classes6.dex */
    public static final class ImmutableCell<R, C, V> extends AbstractC6071b<R, C, V> implements Serializable {
        private static final long serialVersionUID = 0;

        @xvk
        private final C columnKey;

        @xvk
        private final R rowKey;

        @xvk
        private final V value;

        public ImmutableCell(@xvk R r, @xvk C c, @xvk V v) {
            this.rowKey = r;
            this.columnKey = c;
            this.value = v;
        }

        @Override // com.google.common.collect.Table.Cell
        @xvk
        public C getColumnKey() {
            return this.columnKey;
        }

        @Override // com.google.common.collect.Table.Cell
        @xvk
        public R getRowKey() {
            return this.rowKey;
        }

        @Override // com.google.common.collect.Table.Cell
        @xvk
        public V getValue() {
            return this.value;
        }
    }

    /* loaded from: classes6.dex */
    public static final class UnmodifiableRowSortedMap<R, C, V> extends UnmodifiableTable<R, C, V> implements RowSortedTable<R, C, V> {
        private static final long serialVersionUID = 0;

        public UnmodifiableRowSortedMap(RowSortedTable<R, ? extends C, ? extends V> rowSortedTable) {
            super(rowSortedTable);
        }

        @Override // com.google.common.collect.Tables.UnmodifiableTable, com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public SortedSet<R> rowKeySet() {
            return Collections.unmodifiableSortedSet(delegate().rowKeySet());
        }

        @Override // com.google.common.collect.Tables.UnmodifiableTable, com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public SortedMap<R, Map<C, V>> rowMap() {
            return Collections.unmodifiableSortedMap(Maps.transformValues((SortedMap) delegate().rowMap(), Tables.m26775a()));
        }

        @Override // com.google.common.collect.Tables.UnmodifiableTable, com.google.common.collect.ForwardingTable, com.google.common.collect.ForwardingObject
        public RowSortedTable<R, C, V> delegate() {
            return (RowSortedTable) super.delegate();
        }
    }

    /* loaded from: classes6.dex */
    public static class UnmodifiableTable<R, C, V> extends ForwardingTable<R, C, V> implements Serializable {
        private static final long serialVersionUID = 0;
        final Table<? extends R, ? extends C, ? extends V> delegate;

        public UnmodifiableTable(Table<? extends R, ? extends C, ? extends V> table) {
            this.delegate = (Table) Preconditions.checkNotNull(table);
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Set<Table.Cell<R, C, V>> cellSet() {
            return Collections.unmodifiableSet(super.cellSet());
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Map<R, V> column(@xvk C c) {
            return Collections.unmodifiableMap(super.column(c));
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Set<C> columnKeySet() {
            return Collections.unmodifiableSet(super.columnKeySet());
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Map<C, Map<R, V>> columnMap() {
            return Collections.unmodifiableMap(Maps.transformValues(super.columnMap(), Tables.m26775a()));
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        @CheckForNull
        public V put(@xvk R r, @xvk C c, @xvk V v) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public void putAll(Table<? extends R, ? extends C, ? extends V> table) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        @CheckForNull
        public V remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Map<C, V> row(@xvk R r) {
            return Collections.unmodifiableMap(super.row(r));
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Set<R> rowKeySet() {
            return Collections.unmodifiableSet(super.rowKeySet());
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Map<R, Map<C, V>> rowMap() {
            return Collections.unmodifiableMap(Maps.transformValues(super.rowMap(), Tables.m26775a()));
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Collection<V> values() {
            return Collections.unmodifiableCollection(super.values());
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.ForwardingObject
        public Table<R, C, V> delegate() {
            return this.delegate;
        }
    }

    /* renamed from: com.google.common.collect.Tables$a */
    /* loaded from: classes6.dex */
    public class C6070a implements Function<Map<Object, Object>, Map<Object, Object>> {
        @Override // com.google.common.base.Function, java.util.function.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map<Object, Object> apply(Map<Object, Object> map) {
            return Collections.unmodifiableMap(map);
        }
    }

    /* renamed from: com.google.common.collect.Tables$b */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC6071b<R, C, V> implements Table.Cell<R, C, V> {
        @Override // com.google.common.collect.Table.Cell
        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Table.Cell)) {
                return false;
            }
            Table.Cell cell = (Table.Cell) obj;
            return Objects.equal(getRowKey(), cell.getRowKey()) && Objects.equal(getColumnKey(), cell.getColumnKey()) && Objects.equal(getValue(), cell.getValue());
        }

        @Override // com.google.common.collect.Table.Cell
        public int hashCode() {
            return Objects.hashCode(getRowKey(), getColumnKey(), getValue());
        }

        public String toString() {
            String valueOf = String.valueOf(getRowKey());
            String valueOf2 = String.valueOf(getColumnKey());
            String valueOf3 = String.valueOf(getValue());
            StringBuilder sb = new StringBuilder(valueOf.length() + 4 + valueOf2.length() + valueOf3.length());
            sb.append(MotionUtils.f31761c);
            sb.append(valueOf);
            sb.append(",");
            sb.append(valueOf2);
            sb.append(")=");
            sb.append(valueOf3);
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.collect.Tables$c */
    /* loaded from: classes6.dex */
    public static class C6072c<R, C, V1, V2> extends AbstractC6115j<R, C, V2> {

        /* renamed from: e */
        public final Table<R, C, V1> f34482e;

        /* renamed from: f */
        public final Function<? super V1, V2> f34483f;

        /* renamed from: com.google.common.collect.Tables$c$a */
        /* loaded from: classes6.dex */
        public class a implements Function<Table.Cell<R, C, V1>, Table.Cell<R, C, V2>> {
            public a() {
            }

            @Override // com.google.common.base.Function, java.util.function.Function
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Table.Cell<R, C, V2> apply(Table.Cell<R, C, V1> cell) {
                return Tables.immutableCell(cell.getRowKey(), cell.getColumnKey(), C6072c.this.f34483f.apply(cell.getValue()));
            }
        }

        /* renamed from: com.google.common.collect.Tables$c$b */
        /* loaded from: classes6.dex */
        public class b implements Function<Map<C, V1>, Map<C, V2>> {
            public b() {
            }

            @Override // com.google.common.base.Function, java.util.function.Function
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map<C, V2> apply(Map<C, V1> map) {
                return Maps.transformValues(map, C6072c.this.f34483f);
            }
        }

        /* renamed from: com.google.common.collect.Tables$c$c */
        /* loaded from: classes6.dex */
        public class c implements Function<Map<R, V1>, Map<R, V2>> {
            public c() {
            }

            @Override // com.google.common.base.Function, java.util.function.Function
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map<R, V2> apply(Map<R, V1> map) {
                return Maps.transformValues(map, C6072c.this.f34483f);
            }
        }

        public C6072c(Table<R, C, V1> table, Function<? super V1, V2> function) {
            this.f34482e = (Table) Preconditions.checkNotNull(table);
            this.f34483f = (Function) Preconditions.checkNotNull(function);
        }

        /* renamed from: a */
        public Function<Table.Cell<R, C, V1>, Table.Cell<R, C, V2>> m26779a() {
            return new a();
        }

        @Override // com.google.common.collect.AbstractC6115j
        public Iterator<Table.Cell<R, C, V2>> cellIterator() {
            return Iterators.transform(this.f34482e.cellSet().iterator(), m26779a());
        }

        @Override // com.google.common.collect.AbstractC6115j
        public Spliterator<Table.Cell<R, C, V2>> cellSpliterator() {
            return vzd.m57903h(this.f34482e.cellSet().spliterator(), m26779a());
        }

        @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
        public void clear() {
            this.f34482e.clear();
        }

        @Override // com.google.common.collect.Table
        public Map<R, V2> column(@xvk C c2) {
            return Maps.transformValues(this.f34482e.column(c2), this.f34483f);
        }

        @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
        public Set<C> columnKeySet() {
            return this.f34482e.columnKeySet();
        }

        @Override // com.google.common.collect.Table
        public Map<C, Map<R, V2>> columnMap() {
            return Maps.transformValues(this.f34482e.columnMap(), new c());
        }

        @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
        public boolean contains(@CheckForNull Object obj, @CheckForNull Object obj2) {
            return this.f34482e.contains(obj, obj2);
        }

        @Override // com.google.common.collect.AbstractC6115j
        public Collection<V2> createValues() {
            return Collections2.transform(this.f34482e.values(), this.f34483f);
        }

        @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
        @CheckForNull
        public V2 get(@CheckForNull Object obj, @CheckForNull Object obj2) {
            if (contains(obj, obj2)) {
                return this.f34483f.apply((Object) p5k.m56213a(this.f34482e.get(obj, obj2)));
            }
            return null;
        }

        @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
        @CheckForNull
        public V2 put(@xvk R r, @xvk C c2, @xvk V2 v2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
        public void putAll(Table<? extends R, ? extends C, ? extends V2> table) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
        @CheckForNull
        public V2 remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
            if (contains(obj, obj2)) {
                return this.f34483f.apply((Object) p5k.m56213a(this.f34482e.remove(obj, obj2)));
            }
            return null;
        }

        @Override // com.google.common.collect.Table
        public Map<C, V2> row(@xvk R r) {
            return Maps.transformValues(this.f34482e.row(r), this.f34483f);
        }

        @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
        public Set<R> rowKeySet() {
            return this.f34482e.rowKeySet();
        }

        @Override // com.google.common.collect.Table
        public Map<R, Map<C, V2>> rowMap() {
            return Maps.transformValues(this.f34482e.rowMap(), new b());
        }

        @Override // com.google.common.collect.Table
        public int size() {
            return this.f34482e.size();
        }
    }

    /* renamed from: com.google.common.collect.Tables$d */
    /* loaded from: classes6.dex */
    public static class C6073d<C, R, V> extends AbstractC6115j<C, R, V> {

        /* renamed from: f */
        public static final Function<Table.Cell<?, ?, ?>, Table.Cell<?, ?, ?>> f34487f = new a();

        /* renamed from: e */
        public final Table<R, C, V> f34488e;

        /* renamed from: com.google.common.collect.Tables$d$a */
        /* loaded from: classes6.dex */
        public class a implements Function<Table.Cell<?, ?, ?>, Table.Cell<?, ?, ?>> {
            @Override // com.google.common.base.Function, java.util.function.Function
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Table.Cell<?, ?, ?> apply(Table.Cell<?, ?, ?> cell) {
                return Tables.immutableCell(cell.getColumnKey(), cell.getRowKey(), cell.getValue());
            }
        }

        public C6073d(Table<R, C, V> table) {
            this.f34488e = (Table) Preconditions.checkNotNull(table);
        }

        @Override // com.google.common.collect.AbstractC6115j
        public Iterator<Table.Cell<C, R, V>> cellIterator() {
            return Iterators.transform(this.f34488e.cellSet().iterator(), f34487f);
        }

        @Override // com.google.common.collect.AbstractC6115j
        public Spliterator<Table.Cell<C, R, V>> cellSpliterator() {
            return vzd.m57903h(this.f34488e.cellSet().spliterator(), f34487f);
        }

        @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
        public void clear() {
            this.f34488e.clear();
        }

        @Override // com.google.common.collect.Table
        public Map<C, V> column(@xvk R r) {
            return this.f34488e.row(r);
        }

        @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
        public Set<R> columnKeySet() {
            return this.f34488e.rowKeySet();
        }

        @Override // com.google.common.collect.Table
        public Map<R, Map<C, V>> columnMap() {
            return this.f34488e.rowMap();
        }

        @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
        public boolean contains(@CheckForNull Object obj, @CheckForNull Object obj2) {
            return this.f34488e.contains(obj2, obj);
        }

        @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
        public boolean containsColumn(@CheckForNull Object obj) {
            return this.f34488e.containsRow(obj);
        }

        @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
        public boolean containsRow(@CheckForNull Object obj) {
            return this.f34488e.containsColumn(obj);
        }

        @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
        public boolean containsValue(@CheckForNull Object obj) {
            return this.f34488e.containsValue(obj);
        }

        @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
        @CheckForNull
        public V get(@CheckForNull Object obj, @CheckForNull Object obj2) {
            return this.f34488e.get(obj2, obj);
        }

        @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
        @CheckForNull
        public V put(@xvk C c, @xvk R r, @xvk V v) {
            return this.f34488e.put(r, c, v);
        }

        @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
        public void putAll(Table<? extends C, ? extends R, ? extends V> table) {
            this.f34488e.putAll(Tables.transpose(table));
        }

        @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
        @CheckForNull
        public V remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
            return this.f34488e.remove(obj2, obj);
        }

        @Override // com.google.common.collect.Table
        public Map<R, V> row(@xvk C c) {
            return this.f34488e.column(c);
        }

        @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
        public Set<C> rowKeySet() {
            return this.f34488e.columnKeySet();
        }

        @Override // com.google.common.collect.Table
        public Map<C, Map<R, V>> rowMap() {
            return this.f34488e.columnMap();
        }

        @Override // com.google.common.collect.Table
        public int size() {
            return this.f34488e.size();
        }

        @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
        public Collection<V> values() {
            return this.f34488e.values();
        }
    }

    /* renamed from: a */
    public static /* synthetic */ Function m26775a() {
        return m26777c();
    }

    /* renamed from: b */
    public static boolean m26776b(Table<?, ?, ?> table, @CheckForNull Object obj) {
        if (obj == table) {
            return true;
        }
        if (obj instanceof Table) {
            return table.cellSet().equals(((Table) obj).cellSet());
        }
        return false;
    }

    /* renamed from: c */
    public static <K, V> Function<Map<K, V>, Map<K, V>> m26777c() {
        return (Function<Map<K, V>, Map<K, V>>) f34481a;
    }

    public static <R, C, V> Table.Cell<R, C, V> immutableCell(@xvk R r, @xvk C c, @xvk V v) {
        return new ImmutableCell(r, c, v);
    }

    @Beta
    public static <R, C, V> Table<R, C, V> newCustomTable(Map<R, Map<C, V>> map, Supplier<? extends Map<C, V>> supplier) {
        Preconditions.checkArgument(map.isEmpty());
        Preconditions.checkNotNull(supplier);
        return new StandardTable(map, supplier);
    }

    public static <R, C, V> Table<R, C, V> synchronizedTable(Table<R, C, V> table) {
        return Synchronized.m26769z(table, null);
    }

    @Beta
    public static <T, R, C, V, I extends Table<R, C, V>> Collector<T, ?, I> toTable(java.util.function.Function<? super T, ? extends R> function, java.util.function.Function<? super T, ? extends C> function2, java.util.function.Function<? super T, ? extends V> function3, java.util.function.Supplier<I> supplier) {
        return C6106c0.m26903u(function, function2, function3, supplier);
    }

    @Beta
    public static <R, C, V1, V2> Table<R, C, V2> transformValues(Table<R, C, V1> table, Function<? super V1, V2> function) {
        return new C6072c(table, function);
    }

    public static <R, C, V> Table<C, R, V> transpose(Table<R, C, V> table) {
        return table instanceof C6073d ? ((C6073d) table).f34488e : new C6073d(table);
    }

    @Beta
    public static <R, C, V> RowSortedTable<R, C, V> unmodifiableRowSortedTable(RowSortedTable<R, ? extends C, ? extends V> rowSortedTable) {
        return new UnmodifiableRowSortedMap(rowSortedTable);
    }

    public static <R, C, V> Table<R, C, V> unmodifiableTable(Table<? extends R, ? extends C, ? extends V> table) {
        return new UnmodifiableTable(table);
    }

    public static <T, R, C, V, I extends Table<R, C, V>> Collector<T, ?, I> toTable(java.util.function.Function<? super T, ? extends R> function, java.util.function.Function<? super T, ? extends C> function2, java.util.function.Function<? super T, ? extends V> function3, BinaryOperator<V> binaryOperator, java.util.function.Supplier<I> supplier) {
        return C6106c0.m26902t(function, function2, function3, binaryOperator, supplier);
    }
}
