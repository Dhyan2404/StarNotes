package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.C6106c0;
import com.google.common.collect.ImmutableTable;
import com.google.common.collect.Table;
import com.google.common.collect.Tables;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.xvk;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collector;

@snf
@GwtCompatible
/* renamed from: com.google.common.collect.c0 */
/* loaded from: classes6.dex */
public final class C6106c0 {

    /* renamed from: com.google.common.collect.c0$b */
    /* loaded from: classes6.dex */
    public static final class b<R, C, V> {

        /* renamed from: a */
        public final List<c<R, C, V>> f34582a;

        /* renamed from: b */
        public final Table<R, C, c<R, C, V>> f34583b;

        public b() {
            this.f34582a = new ArrayList();
            this.f34583b = HashBasedTable.create();
        }

        /* renamed from: a */
        public b<R, C, V> m26904a(b<R, C, V> bVar, BinaryOperator<V> binaryOperator) {
            for (c<R, C, V> cVar : bVar.f34582a) {
                m26905b(cVar.getRowKey(), cVar.getColumnKey(), cVar.getValue(), binaryOperator);
            }
            return this;
        }

        /* renamed from: b */
        public void m26905b(R r, C c, V v, BinaryOperator<V> binaryOperator) {
            c<R, C, V> cVar = this.f34583b.get(r, c);
            if (cVar != null) {
                cVar.m26907a(v, binaryOperator);
                return;
            }
            c<R, C, V> cVar2 = new c<>(r, c, v);
            this.f34582a.add(cVar2);
            this.f34583b.put(r, c, cVar2);
        }

        /* renamed from: c */
        public ImmutableTable<R, C, V> m26906c() {
            return ImmutableTable.copyOf(this.f34582a);
        }
    }

    /* renamed from: com.google.common.collect.c0$c */
    /* loaded from: classes6.dex */
    public static final class c<R, C, V> extends Tables.AbstractC6071b<R, C, V> {

        /* renamed from: e */
        public final R f34584e;

        /* renamed from: f */
        public final C f34585f;

        /* renamed from: g */
        public V f34586g;

        public c(R r, C c, V v) {
            this.f34584e = (R) Preconditions.checkNotNull(r, "row");
            this.f34585f = (C) Preconditions.checkNotNull(c, "column");
            this.f34586g = (V) Preconditions.checkNotNull(v, "value");
        }

        /* renamed from: a */
        public void m26907a(V v, BinaryOperator<V> binaryOperator) {
            Preconditions.checkNotNull(v, "value");
            this.f34586g = (V) Preconditions.checkNotNull(binaryOperator.apply(this.f34586g, v), "mergeFunction.apply");
        }

        @Override // com.google.common.collect.Table.Cell
        public C getColumnKey() {
            return this.f34585f;
        }

        @Override // com.google.common.collect.Table.Cell
        public R getRowKey() {
            return this.f34584e;
        }

        @Override // com.google.common.collect.Table.Cell
        public V getValue() {
            return this.f34586g;
        }
    }

    /* renamed from: i */
    public static /* synthetic */ void m26891i(Function function, Function function2, Function function3, ImmutableTable.Builder builder, Object obj) {
        builder.put(function.apply(obj), function2.apply(obj), function3.apply(obj));
    }

    /* renamed from: j */
    public static /* synthetic */ b m26892j() {
        return new b();
    }

    /* renamed from: k */
    public static /* synthetic */ void m26893k(Function function, Function function2, Function function3, BinaryOperator binaryOperator, b bVar, Object obj) {
        bVar.m26905b(function.apply(obj), function2.apply(obj), function3.apply(obj), binaryOperator);
    }

    /* renamed from: l */
    public static /* synthetic */ b m26894l(BinaryOperator binaryOperator, b bVar, b bVar2) {
        return bVar.m26904a(bVar2, binaryOperator);
    }

    /* renamed from: n */
    public static /* synthetic */ Object m26896n(Object obj, Object obj2) {
        String valueOf = String.valueOf(obj);
        String valueOf2 = String.valueOf(obj2);
        StringBuilder sb = new StringBuilder(valueOf.length() + 24 + valueOf2.length());
        sb.append("Conflicting values ");
        sb.append(valueOf);
        sb.append(CloudStorageConstants.OPERATION_AND);
        sb.append(valueOf2);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: o */
    public static /* synthetic */ void m26897o(Function function, Function function2, Function function3, BinaryOperator binaryOperator, Table table, Object obj) {
        m26899q(table, function.apply(obj), function2.apply(obj), function3.apply(obj), binaryOperator);
    }

    /* renamed from: p */
    public static /* synthetic */ Table m26898p(BinaryOperator binaryOperator, Table table, Table table2) {
        for (Table.Cell cell : table2.cellSet()) {
            m26899q(table, cell.getRowKey(), cell.getColumnKey(), cell.getValue(), binaryOperator);
        }
        return table;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: q */
    public static <R, C, V> void m26899q(Table<R, C, V> table, @xvk R r, @xvk C c2, @xvk V v, BinaryOperator<V> binaryOperator) {
        Preconditions.checkNotNull(v);
        V v2 = table.get(r, c2);
        if (v2 == null) {
            table.put(r, c2, v);
            return;
        }
        Object apply = binaryOperator.apply(v2, v);
        if (apply == null) {
            table.remove(r, c2);
        } else {
            table.put(r, c2, apply);
        }
    }

    /* renamed from: r */
    public static <T, R, C, V> Collector<T, ?, ImmutableTable<R, C, V>> m26900r(final Function<? super T, ? extends R> function, final Function<? super T, ? extends C> function2, final Function<? super T, ? extends V> function3) {
        Preconditions.checkNotNull(function, "rowFunction");
        Preconditions.checkNotNull(function2, "columnFunction");
        Preconditions.checkNotNull(function3, "valueFunction");
        return Collector.of(new Supplier() { // from class: com.sunia.HTREnginev2.c8n
            @Override // java.util.function.Supplier
            public final Object get() {
                return new ImmutableTable.Builder();
            }
        }, new BiConsumer() { // from class: com.sunia.HTREnginev2.d8n
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                C6106c0.m26891i(function, function2, function3, (ImmutableTable.Builder) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.e8n
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableTable.Builder) obj).m26324a((ImmutableTable.Builder) obj2);
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.f8n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableTable.Builder) obj).build();
            }
        }, new Collector.Characteristics[0]);
    }

    /* renamed from: s */
    public static <T, R, C, V> Collector<T, ?, ImmutableTable<R, C, V>> m26901s(final Function<? super T, ? extends R> function, final Function<? super T, ? extends C> function2, final Function<? super T, ? extends V> function3, final BinaryOperator<V> binaryOperator) {
        Preconditions.checkNotNull(function, "rowFunction");
        Preconditions.checkNotNull(function2, "columnFunction");
        Preconditions.checkNotNull(function3, "valueFunction");
        Preconditions.checkNotNull(binaryOperator, "mergeFunction");
        return Collector.of(new Supplier() { // from class: com.sunia.HTREnginev2.h8n
            @Override // java.util.function.Supplier
            public final Object get() {
                C6106c0.b m26892j;
                m26892j = C6106c0.m26892j();
                return m26892j;
            }
        }, new BiConsumer() { // from class: com.sunia.HTREnginev2.i8n
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                C6106c0.m26893k(function, function2, function3, binaryOperator, (C6106c0.b) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.j8n
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                C6106c0.b m26894l;
                m26894l = C6106c0.m26894l(binaryOperator, (C6106c0.b) obj, (C6106c0.b) obj2);
                return m26894l;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.a8n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ImmutableTable m26906c;
                m26906c = ((C6106c0.b) obj).m26906c();
                return m26906c;
            }
        }, new Collector.Characteristics[0]);
    }

    /* renamed from: t */
    public static <T, R, C, V, I extends Table<R, C, V>> Collector<T, ?, I> m26902t(final Function<? super T, ? extends R> function, final Function<? super T, ? extends C> function2, final Function<? super T, ? extends V> function3, final BinaryOperator<V> binaryOperator, Supplier<I> supplier) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        Preconditions.checkNotNull(function3);
        Preconditions.checkNotNull(binaryOperator);
        Preconditions.checkNotNull(supplier);
        return Collector.of(supplier, new BiConsumer() { // from class: com.sunia.HTREnginev2.z7n
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                C6106c0.m26897o(function, function2, function3, binaryOperator, (Table) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.b8n
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Table m26898p;
                m26898p = C6106c0.m26898p(binaryOperator, (Table) obj, (Table) obj2);
                return m26898p;
            }
        }, new Collector.Characteristics[0]);
    }

    /* renamed from: u */
    public static <T, R, C, V, I extends Table<R, C, V>> Collector<T, ?, I> m26903u(Function<? super T, ? extends R> function, Function<? super T, ? extends C> function2, Function<? super T, ? extends V> function3, Supplier<I> supplier) {
        return m26902t(function, function2, function3, new BinaryOperator() { // from class: com.sunia.HTREnginev2.g8n
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Object m26896n;
                m26896n = C6106c0.m26896n(obj, obj2);
                return m26896n;
            }
        }, supplier);
    }
}
