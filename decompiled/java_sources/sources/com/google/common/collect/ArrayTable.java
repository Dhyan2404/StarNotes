package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ArrayTable;
import com.google.common.collect.Maps;
import com.google.common.collect.Table;
import com.google.common.collect.Tables;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.DoNotCall;
import com.sunia.HTREnginev2.AbstractC14531v3;
import com.sunia.HTREnginev2.AbstractC14741z3;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.vzd;
import com.sunia.HTREnginev2.xvk;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.IntFunction;
import javax.annotation.CheckForNull;

@Beta
@GwtCompatible(emulated = true)
@snf
/* loaded from: classes6.dex */
public final class ArrayTable<R, C, V> extends AbstractC6115j<R, C, V> implements Serializable {
    private static final long serialVersionUID = 0;
    private final V[][] array;
    private final ImmutableMap<C, Integer> columnKeyToIndex;
    private final ImmutableList<C> columnList;

    @CheckForNull
    private transient ArrayTable<R, C, V>.C5777f columnMap;
    private final ImmutableMap<R, Integer> rowKeyToIndex;
    private final ImmutableList<R> rowList;

    @CheckForNull
    private transient ArrayTable<R, C, V>.C5779h rowMap;

    /* renamed from: com.google.common.collect.ArrayTable$a */
    /* loaded from: classes6.dex */
    public class C5772a extends AbstractC14531v3<Table.Cell<R, C, V>> {
        public C5772a(int i) {
            super(i);
        }

        @Override // com.sunia.HTREnginev2.AbstractC14531v3
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Table.Cell<R, C, V> mo26054a(int i) {
            return ArrayTable.this.getCell(i);
        }
    }

    /* renamed from: com.google.common.collect.ArrayTable$b */
    /* loaded from: classes6.dex */
    public class C5773b extends Tables.AbstractC6071b<R, C, V> {

        /* renamed from: e */
        public final int f33911e;

        /* renamed from: f */
        public final int f33912f;

        /* renamed from: g */
        public final /* synthetic */ int f33913g;

        public C5773b(int i) {
            this.f33913g = i;
            this.f33911e = i / ArrayTable.this.columnList.size();
            this.f33912f = i % ArrayTable.this.columnList.size();
        }

        @Override // com.google.common.collect.Table.Cell
        public C getColumnKey() {
            return (C) ArrayTable.this.columnList.get(this.f33912f);
        }

        @Override // com.google.common.collect.Table.Cell
        public R getRowKey() {
            return (R) ArrayTable.this.rowList.get(this.f33911e);
        }

        @Override // com.google.common.collect.Table.Cell
        @CheckForNull
        public V getValue() {
            return (V) ArrayTable.this.m26053at(this.f33911e, this.f33912f);
        }
    }

    /* renamed from: com.google.common.collect.ArrayTable$c */
    /* loaded from: classes6.dex */
    public class C5774c extends AbstractC14531v3<V> {
        public C5774c(int i) {
            super(i);
        }

        @Override // com.sunia.HTREnginev2.AbstractC14531v3
        @CheckForNull
        /* renamed from: a */
        public V mo26054a(int i) {
            return (V) ArrayTable.this.getValue(i);
        }
    }

    /* renamed from: com.google.common.collect.ArrayTable$d */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC5775d<K, V> extends Maps.AbstractC5970x<K, V> {

        /* renamed from: e */
        public final ImmutableMap<K, Integer> f33916e;

        /* renamed from: com.google.common.collect.ArrayTable$d$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractC14741z3<K, V> {

            /* renamed from: e */
            public final /* synthetic */ int f33917e;

            public a(int i) {
                this.f33917e = i;
            }

            @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
            public K getKey() {
                return (K) AbstractC5775d.this.m26057b(this.f33917e);
            }

            @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
            @xvk
            public V getValue() {
                return (V) AbstractC5775d.this.mo26059d(this.f33917e);
            }

            @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
            @xvk
            public V setValue(@xvk V v) {
                return (V) AbstractC5775d.this.mo26060e(this.f33917e, v);
            }
        }

        /* renamed from: com.google.common.collect.ArrayTable$d$b */
        /* loaded from: classes6.dex */
        public class b extends AbstractC14531v3<Map.Entry<K, V>> {
            public b(int i) {
                super(i);
            }

            @Override // com.sunia.HTREnginev2.AbstractC14531v3
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> mo26054a(int i) {
                return AbstractC5775d.this.m26056a(i);
            }
        }

        public /* synthetic */ AbstractC5775d(ImmutableMap immutableMap, C5772a c5772a) {
            this(immutableMap);
        }

        /* renamed from: a */
        public Map.Entry<K, V> m26056a(int i) {
            Preconditions.checkElementIndex(i, size());
            return new a(i);
        }

        /* renamed from: b */
        public K m26057b(int i) {
            return this.f33916e.keySet().asList().get(i);
        }

        /* renamed from: c */
        public abstract String mo26058c();

        @Override // com.google.common.collect.Maps.AbstractC5970x, java.util.AbstractMap, java.util.Map
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@CheckForNull Object obj) {
            return this.f33916e.containsKey(obj);
        }

        @xvk
        /* renamed from: d */
        public abstract V mo26059d(int i);

        @xvk
        /* renamed from: e */
        public abstract V mo26060e(int i, @xvk V v);

        @Override // com.google.common.collect.Maps.AbstractC5970x
        public Iterator<Map.Entry<K, V>> entryIterator() {
            return new b(size());
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x
        public Spliterator<Map.Entry<K, V>> entrySpliterator() {
            return vzd.m57901f(size(), 16, new IntFunction() { // from class: com.sunia.HTREnginev2.sf
                @Override // java.util.function.IntFunction
                public final Object apply(int i) {
                    return ArrayTable.AbstractC5775d.this.m26056a(i);
                }
            });
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public V get(@CheckForNull Object obj) {
            Integer num = this.f33916e.get(obj);
            if (num == null) {
                return null;
            }
            return mo26059d(num.intValue());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return this.f33916e.isEmpty();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return this.f33916e.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public V put(K k, @xvk V v) {
            Integer num = this.f33916e.get(k);
            if (num != null) {
                return mo26060e(num.intValue(), v);
            }
            String mo26058c = mo26058c();
            String valueOf = String.valueOf(k);
            String valueOf2 = String.valueOf(this.f33916e.keySet());
            StringBuilder sb = new StringBuilder(String.valueOf(mo26058c).length() + 9 + valueOf.length() + valueOf2.length());
            sb.append(mo26058c);
            sb.append(" ");
            sb.append(valueOf);
            sb.append(" not in ");
            sb.append(valueOf2);
            throw new IllegalArgumentException(sb.toString());
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public V remove(@CheckForNull Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x, java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f33916e.size();
        }

        public AbstractC5775d(ImmutableMap<K, Integer> immutableMap) {
            this.f33916e = immutableMap;
        }
    }

    /* renamed from: com.google.common.collect.ArrayTable$e */
    /* loaded from: classes6.dex */
    public class C5776e extends AbstractC5775d<R, V> {

        /* renamed from: f */
        public final int f33920f;

        public C5776e(int i) {
            super(ArrayTable.this.rowKeyToIndex, null);
            this.f33920f = i;
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC5775d
        /* renamed from: c */
        public String mo26058c() {
            return "Row";
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC5775d
        @CheckForNull
        /* renamed from: d */
        public V mo26059d(int i) {
            return (V) ArrayTable.this.m26053at(i, this.f33920f);
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC5775d
        @CheckForNull
        /* renamed from: e */
        public V mo26060e(int i, @CheckForNull V v) {
            return (V) ArrayTable.this.set(i, this.f33920f, v);
        }
    }

    /* renamed from: com.google.common.collect.ArrayTable$f */
    /* loaded from: classes6.dex */
    public class C5777f extends AbstractC5775d<C, Map<R, V>> {
        public /* synthetic */ C5777f(ArrayTable arrayTable, C5772a c5772a) {
            this();
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC5775d
        /* renamed from: c */
        public String mo26058c() {
            return "Column";
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC5775d
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public Map<R, V> mo26059d(int i) {
            return new C5776e(i);
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC5775d, java.util.AbstractMap, java.util.Map
        @CheckForNull
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public Map<R, V> put(C c, Map<R, V> map) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC5775d
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public Map<R, V> mo26060e(int i, Map<R, V> map) {
            throw new UnsupportedOperationException();
        }

        public C5777f() {
            super(ArrayTable.this.columnKeyToIndex, null);
        }
    }

    /* renamed from: com.google.common.collect.ArrayTable$g */
    /* loaded from: classes6.dex */
    public class C5778g extends AbstractC5775d<C, V> {

        /* renamed from: f */
        public final int f33923f;

        public C5778g(int i) {
            super(ArrayTable.this.columnKeyToIndex, null);
            this.f33923f = i;
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC5775d
        /* renamed from: c */
        public String mo26058c() {
            return "Column";
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC5775d
        @CheckForNull
        /* renamed from: d */
        public V mo26059d(int i) {
            return (V) ArrayTable.this.m26053at(this.f33923f, i);
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC5775d
        @CheckForNull
        /* renamed from: e */
        public V mo26060e(int i, @CheckForNull V v) {
            return (V) ArrayTable.this.set(this.f33923f, i, v);
        }
    }

    /* renamed from: com.google.common.collect.ArrayTable$h */
    /* loaded from: classes6.dex */
    public class C5779h extends AbstractC5775d<R, Map<C, V>> {
        public /* synthetic */ C5779h(ArrayTable arrayTable, C5772a c5772a) {
            this();
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC5775d
        /* renamed from: c */
        public String mo26058c() {
            return "Row";
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC5775d
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public Map<C, V> mo26059d(int i) {
            return new C5778g(i);
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC5775d, java.util.AbstractMap, java.util.Map
        @CheckForNull
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public Map<C, V> put(R r, Map<C, V> map) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ArrayTable.AbstractC5775d
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public Map<C, V> mo26060e(int i, Map<C, V> map) {
            throw new UnsupportedOperationException();
        }

        public C5779h() {
            super(ArrayTable.this.rowKeyToIndex, null);
        }
    }

    private ArrayTable(Iterable<? extends R> iterable, Iterable<? extends C> iterable2) {
        ImmutableList<R> copyOf = ImmutableList.copyOf(iterable);
        this.rowList = copyOf;
        ImmutableList<C> copyOf2 = ImmutableList.copyOf(iterable2);
        this.columnList = copyOf2;
        Preconditions.checkArgument(copyOf.isEmpty() == copyOf2.isEmpty());
        this.rowKeyToIndex = Maps.m26501u(copyOf);
        this.columnKeyToIndex = Maps.m26501u(copyOf2);
        this.array = (V[][]) ((Object[][]) Array.newInstance((Class<?>) Object.class, copyOf.size(), copyOf2.size()));
        eraseAll();
    }

    public static <R, C, V> ArrayTable<R, C, V> create(Iterable<? extends R> iterable, Iterable<? extends C> iterable2) {
        return new ArrayTable<>(iterable, iterable2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Table.Cell<R, C, V> getCell(int i) {
        return new C5773b(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @CheckForNull
    public V getValue(int i) {
        return m26053at(i / this.columnList.size(), i % this.columnList.size());
    }

    @CheckForNull
    /* renamed from: at */
    public V m26053at(int i, int i2) {
        Preconditions.checkElementIndex(i, this.rowList.size());
        Preconditions.checkElementIndex(i2, this.columnList.size());
        return this.array[i][i2];
    }

    @Override // com.google.common.collect.AbstractC6115j
    public Iterator<Table.Cell<R, C, V>> cellIterator() {
        return new C5772a(size());
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public Set<Table.Cell<R, C, V>> cellSet() {
        return super.cellSet();
    }

    @Override // com.google.common.collect.AbstractC6115j
    public Spliterator<Table.Cell<R, C, V>> cellSpliterator() {
        return vzd.m57901f(size(), 273, new IntFunction() { // from class: com.sunia.HTREnginev2.rf
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                Table.Cell cell;
                cell = ArrayTable.this.getCell(i);
                return cell;
            }
        });
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    @DoNotCall("Always throws UnsupportedOperationException")
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Table
    public Map<R, V> column(C c) {
        Preconditions.checkNotNull(c);
        Integer num = this.columnKeyToIndex.get(c);
        return num == null ? Collections.emptyMap() : new C5776e(num.intValue());
    }

    public ImmutableList<C> columnKeyList() {
        return this.columnList;
    }

    @Override // com.google.common.collect.Table
    public Map<C, Map<R, V>> columnMap() {
        ArrayTable<R, C, V>.C5777f c5777f = this.columnMap;
        if (c5777f != null) {
            return c5777f;
        }
        ArrayTable<R, C, V>.C5777f c5777f2 = new C5777f(this, null);
        this.columnMap = c5777f2;
        return c5777f2;
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public boolean contains(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return containsRow(obj) && containsColumn(obj2);
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public boolean containsColumn(@CheckForNull Object obj) {
        return this.columnKeyToIndex.containsKey(obj);
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public boolean containsRow(@CheckForNull Object obj) {
        return this.rowKeyToIndex.containsKey(obj);
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public boolean containsValue(@CheckForNull Object obj) {
        for (V[] vArr : this.array) {
            for (V v : vArr) {
                if (Objects.equal(obj, v)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    @CanIgnoreReturnValue
    @CheckForNull
    public V erase(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Integer num = this.rowKeyToIndex.get(obj);
        Integer num2 = this.columnKeyToIndex.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return set(num.intValue(), num2.intValue(), null);
    }

    public void eraseAll() {
        for (V[] vArr : this.array) {
            Arrays.fill(vArr, (Object) null);
        }
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    @CheckForNull
    public V get(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Integer num = this.rowKeyToIndex.get(obj);
        Integer num2 = this.columnKeyToIndex.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return m26053at(num.intValue(), num2.intValue());
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public boolean isEmpty() {
        return this.rowList.isEmpty() || this.columnList.isEmpty();
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    @CanIgnoreReturnValue
    @CheckForNull
    public V put(R r, C c, @CheckForNull V v) {
        Preconditions.checkNotNull(r);
        Preconditions.checkNotNull(c);
        Integer num = this.rowKeyToIndex.get(r);
        Preconditions.checkArgument(num != null, "Row %s not in %s", r, this.rowList);
        Integer num2 = this.columnKeyToIndex.get(c);
        Preconditions.checkArgument(num2 != null, "Column %s not in %s", c, this.columnList);
        return set(num.intValue(), num2.intValue(), v);
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public void putAll(Table<? extends R, ? extends C, ? extends V> table) {
        super.putAll(table);
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    @CheckForNull
    @DoNotCall("Always throws UnsupportedOperationException")
    @Deprecated
    @CanIgnoreReturnValue
    public V remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Table
    public Map<C, V> row(R r) {
        Preconditions.checkNotNull(r);
        Integer num = this.rowKeyToIndex.get(r);
        return num == null ? Collections.emptyMap() : new C5778g(num.intValue());
    }

    public ImmutableList<R> rowKeyList() {
        return this.rowList;
    }

    @Override // com.google.common.collect.Table
    public Map<R, Map<C, V>> rowMap() {
        ArrayTable<R, C, V>.C5779h c5779h = this.rowMap;
        if (c5779h != null) {
            return c5779h;
        }
        ArrayTable<R, C, V>.C5779h c5779h2 = new C5779h(this, null);
        this.rowMap = c5779h2;
        return c5779h2;
    }

    @CanIgnoreReturnValue
    @CheckForNull
    public V set(int i, int i2, @CheckForNull V v) {
        Preconditions.checkElementIndex(i, this.rowList.size());
        Preconditions.checkElementIndex(i2, this.columnList.size());
        V[] vArr = this.array[i];
        V v2 = vArr[i2];
        vArr[i2] = v;
        return v2;
    }

    @Override // com.google.common.collect.Table
    public int size() {
        return this.rowList.size() * this.columnList.size();
    }

    @GwtIncompatible
    public V[][] toArray(Class<V> cls) {
        V[][] vArr = (V[][]) ((Object[][]) Array.newInstance((Class<?>) cls, this.rowList.size(), this.columnList.size()));
        for (int i = 0; i < this.rowList.size(); i++) {
            V[] vArr2 = this.array[i];
            System.arraycopy(vArr2, 0, vArr[i], 0, vArr2.length);
        }
        return vArr;
    }

    @Override // com.google.common.collect.AbstractC6115j
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public Collection<V> values() {
        return super.values();
    }

    @Override // com.google.common.collect.AbstractC6115j
    public Iterator<V> valuesIterator() {
        return new C5774c(size());
    }

    @Override // com.google.common.collect.AbstractC6115j
    public Spliterator<V> valuesSpliterator() {
        return vzd.m57901f(size(), 16, new IntFunction() { // from class: com.sunia.HTREnginev2.qf
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                Object value;
                value = ArrayTable.this.getValue(i);
                return value;
            }
        });
    }

    public static <R, C, V> ArrayTable<R, C, V> create(Table<R, C, ? extends V> table) {
        if (table instanceof ArrayTable) {
            return new ArrayTable<>((ArrayTable) table);
        }
        return new ArrayTable<>(table);
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public ImmutableSet<C> columnKeySet() {
        return this.columnKeyToIndex.keySet();
    }

    @Override // com.google.common.collect.AbstractC6115j, com.google.common.collect.Table
    public ImmutableSet<R> rowKeySet() {
        return this.rowKeyToIndex.keySet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ArrayTable(Table<R, C, ? extends V> table) {
        this(table.rowKeySet(), table.columnKeySet());
        putAll(table);
    }

    private ArrayTable(ArrayTable<R, C, V> arrayTable) {
        ImmutableList<R> immutableList = arrayTable.rowList;
        this.rowList = immutableList;
        ImmutableList<C> immutableList2 = arrayTable.columnList;
        this.columnList = immutableList2;
        this.rowKeyToIndex = arrayTable.rowKeyToIndex;
        this.columnKeyToIndex = arrayTable.columnKeyToIndex;
        V[][] vArr = (V[][]) ((Object[][]) Array.newInstance((Class<?>) Object.class, immutableList.size(), immutableList2.size()));
        this.array = vArr;
        for (int i = 0; i < this.rowList.size(); i++) {
            V[] vArr2 = arrayTable.array[i];
            System.arraycopy(vArr2, 0, vArr[i], 0, vArr2.length);
        }
    }
}
