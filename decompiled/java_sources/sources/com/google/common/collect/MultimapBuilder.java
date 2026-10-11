package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.sunia.HTREnginev2.k4l;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.szd;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public abstract class MultimapBuilder<K0, V0> {

    /* renamed from: a */
    public static final int f34306a = 8;

    /* loaded from: classes6.dex */
    public static final class ArrayListSupplier<V> implements Supplier<List<V>>, Serializable {
        private final int expectedValuesPerKey;

        public ArrayListSupplier(int i) {
            this.expectedValuesPerKey = szd.m57279b(i, "expectedValuesPerKey");
        }

        @Override // com.google.common.base.Supplier, java.util.function.Supplier
        public List<V> get() {
            return new ArrayList(this.expectedValuesPerKey);
        }
    }

    /* loaded from: classes6.dex */
    public static final class EnumSetSupplier<V extends Enum<V>> implements Supplier<Set<V>>, Serializable {
        private final Class<V> clazz;

        public EnumSetSupplier(Class<V> cls) {
            this.clazz = (Class) Preconditions.checkNotNull(cls);
        }

        @Override // com.google.common.base.Supplier, java.util.function.Supplier
        public Set<V> get() {
            return EnumSet.noneOf(this.clazz);
        }
    }

    /* loaded from: classes6.dex */
    public static final class HashSetSupplier<V> implements Supplier<Set<V>>, Serializable {
        private final int expectedValuesPerKey;

        public HashSetSupplier(int i) {
            this.expectedValuesPerKey = szd.m57279b(i, "expectedValuesPerKey");
        }

        @Override // com.google.common.base.Supplier, java.util.function.Supplier
        public Set<V> get() {
            return k4l.m55167f(this.expectedValuesPerKey);
        }
    }

    /* loaded from: classes6.dex */
    public static final class LinkedHashSetSupplier<V> implements Supplier<Set<V>>, Serializable {
        private final int expectedValuesPerKey;

        public LinkedHashSetSupplier(int i) {
            this.expectedValuesPerKey = szd.m57279b(i, "expectedValuesPerKey");
        }

        @Override // com.google.common.base.Supplier, java.util.function.Supplier
        public Set<V> get() {
            return k4l.m55169h(this.expectedValuesPerKey);
        }
    }

    /* loaded from: classes6.dex */
    public enum LinkedListSupplier implements Supplier<List<?>> {
        INSTANCE;

        public static <V> Supplier<List<V>> instance() {
            return INSTANCE;
        }

        @Override // com.google.common.base.Supplier, java.util.function.Supplier
        public List<?> get() {
            return new LinkedList();
        }
    }

    /* loaded from: classes6.dex */
    public static abstract class MultimapBuilderWithKeys<K0> {

        /* renamed from: a */
        public static final int f34307a = 2;

        /* renamed from: com.google.common.collect.MultimapBuilder$MultimapBuilderWithKeys$a */
        /* loaded from: classes6.dex */
        public class C5978a extends ListMultimapBuilder<K0, Object> {

            /* renamed from: b */
            public final /* synthetic */ int f34308b;

            public C5978a(int i) {
                this.f34308b = i;
            }

            @Override // com.google.common.collect.MultimapBuilder.ListMultimapBuilder, com.google.common.collect.MultimapBuilder
            public <K extends K0, V> ListMultimap<K, V> build() {
                return Multimaps.newListMultimap(MultimapBuilderWithKeys.this.mo26606a(), new ArrayListSupplier(this.f34308b));
            }
        }

        /* renamed from: com.google.common.collect.MultimapBuilder$MultimapBuilderWithKeys$b */
        /* loaded from: classes6.dex */
        public class C5979b extends ListMultimapBuilder<K0, Object> {
            public C5979b() {
            }

            @Override // com.google.common.collect.MultimapBuilder.ListMultimapBuilder, com.google.common.collect.MultimapBuilder
            public <K extends K0, V> ListMultimap<K, V> build() {
                return Multimaps.newListMultimap(MultimapBuilderWithKeys.this.mo26606a(), LinkedListSupplier.instance());
            }
        }

        /* renamed from: com.google.common.collect.MultimapBuilder$MultimapBuilderWithKeys$c */
        /* loaded from: classes6.dex */
        public class C5980c extends SetMultimapBuilder<K0, Object> {

            /* renamed from: b */
            public final /* synthetic */ int f34311b;

            public C5980c(int i) {
                this.f34311b = i;
            }

            @Override // com.google.common.collect.MultimapBuilder.SetMultimapBuilder, com.google.common.collect.MultimapBuilder
            public <K extends K0, V> SetMultimap<K, V> build() {
                return Multimaps.newSetMultimap(MultimapBuilderWithKeys.this.mo26606a(), new HashSetSupplier(this.f34311b));
            }
        }

        /* renamed from: com.google.common.collect.MultimapBuilder$MultimapBuilderWithKeys$d */
        /* loaded from: classes6.dex */
        public class C5981d extends SetMultimapBuilder<K0, Object> {

            /* renamed from: b */
            public final /* synthetic */ int f34313b;

            public C5981d(int i) {
                this.f34313b = i;
            }

            @Override // com.google.common.collect.MultimapBuilder.SetMultimapBuilder, com.google.common.collect.MultimapBuilder
            public <K extends K0, V> SetMultimap<K, V> build() {
                return Multimaps.newSetMultimap(MultimapBuilderWithKeys.this.mo26606a(), new LinkedHashSetSupplier(this.f34313b));
            }
        }

        /* renamed from: com.google.common.collect.MultimapBuilder$MultimapBuilderWithKeys$f */
        /* loaded from: classes6.dex */
        public class C5983f extends SetMultimapBuilder<K0, V0> {

            /* renamed from: b */
            public final /* synthetic */ Class f34317b;

            public C5983f(Class cls) {
                this.f34317b = cls;
            }

            @Override // com.google.common.collect.MultimapBuilder.SetMultimapBuilder, com.google.common.collect.MultimapBuilder
            public <K extends K0, V extends V0> SetMultimap<K, V> build() {
                return Multimaps.newSetMultimap(MultimapBuilderWithKeys.this.mo26606a(), new EnumSetSupplier(this.f34317b));
            }
        }

        /* renamed from: a */
        public abstract <K extends K0, V> Map<K, Collection<V>> mo26606a();

        public ListMultimapBuilder<K0, Object> arrayListValues() {
            return arrayListValues(2);
        }

        public <V0 extends Enum<V0>> SetMultimapBuilder<K0, V0> enumSetValues(Class<V0> cls) {
            Preconditions.checkNotNull(cls, "valueClass");
            return new C5983f(cls);
        }

        public SetMultimapBuilder<K0, Object> hashSetValues() {
            return hashSetValues(2);
        }

        public SetMultimapBuilder<K0, Object> linkedHashSetValues() {
            return linkedHashSetValues(2);
        }

        public ListMultimapBuilder<K0, Object> linkedListValues() {
            return new C5979b();
        }

        public SortedSetMultimapBuilder<K0, Comparable> treeSetValues() {
            return treeSetValues(Ordering.natural());
        }

        /* renamed from: com.google.common.collect.MultimapBuilder$MultimapBuilderWithKeys$e */
        /* loaded from: classes6.dex */
        public class C5982e extends SortedSetMultimapBuilder<K0, V0> {

            /* renamed from: b */
            public final /* synthetic */ Comparator f34315b;

            public C5982e(Comparator comparator) {
                this.f34315b = comparator;
            }

            @Override // com.google.common.collect.MultimapBuilder.SortedSetMultimapBuilder, com.google.common.collect.MultimapBuilder.SetMultimapBuilder, com.google.common.collect.MultimapBuilder
            public <K extends K0, V extends V0> SortedSetMultimap<K, V> build() {
                return Multimaps.newSortedSetMultimap(MultimapBuilderWithKeys.this.mo26606a(), new TreeSetSupplier(this.f34315b));
            }
        }

        public ListMultimapBuilder<K0, Object> arrayListValues(int i) {
            szd.m57279b(i, "expectedValuesPerKey");
            return new C5978a(i);
        }

        public SetMultimapBuilder<K0, Object> hashSetValues(int i) {
            szd.m57279b(i, "expectedValuesPerKey");
            return new C5980c(i);
        }

        public SetMultimapBuilder<K0, Object> linkedHashSetValues(int i) {
            szd.m57279b(i, "expectedValuesPerKey");
            return new C5981d(i);
        }

        public <V0> SortedSetMultimapBuilder<K0, V0> treeSetValues(Comparator<V0> comparator) {
            Preconditions.checkNotNull(comparator, "comparator");
            return new C5982e(comparator);
        }
    }

    /* loaded from: classes6.dex */
    public static final class TreeSetSupplier<V> implements Supplier<SortedSet<V>>, Serializable {
        private final Comparator<? super V> comparator;

        public TreeSetSupplier(Comparator<? super V> comparator) {
            this.comparator = (Comparator) Preconditions.checkNotNull(comparator);
        }

        @Override // com.google.common.base.Supplier, java.util.function.Supplier
        public SortedSet<V> get() {
            return new TreeSet(this.comparator);
        }
    }

    /* renamed from: com.google.common.collect.MultimapBuilder$a */
    /* loaded from: classes6.dex */
    public class C5984a extends MultimapBuilderWithKeys<Object> {

        /* renamed from: b */
        public final /* synthetic */ int f34319b;

        public C5984a(int i) {
            this.f34319b = i;
        }

        @Override // com.google.common.collect.MultimapBuilder.MultimapBuilderWithKeys
        /* renamed from: a */
        public <K, V> Map<K, Collection<V>> mo26606a() {
            return k4l.m55166e(this.f34319b);
        }
    }

    /* renamed from: com.google.common.collect.MultimapBuilder$b */
    /* loaded from: classes6.dex */
    public class C5985b extends MultimapBuilderWithKeys<Object> {

        /* renamed from: b */
        public final /* synthetic */ int f34320b;

        public C5985b(int i) {
            this.f34320b = i;
        }

        @Override // com.google.common.collect.MultimapBuilder.MultimapBuilderWithKeys
        /* renamed from: a */
        public <K, V> Map<K, Collection<V>> mo26606a() {
            return k4l.m55168g(this.f34320b);
        }
    }

    /* renamed from: com.google.common.collect.MultimapBuilder$c */
    /* loaded from: classes6.dex */
    public class C5986c extends MultimapBuilderWithKeys<K0> {

        /* renamed from: b */
        public final /* synthetic */ Comparator f34321b;

        public C5986c(Comparator comparator) {
            this.f34321b = comparator;
        }

        @Override // com.google.common.collect.MultimapBuilder.MultimapBuilderWithKeys
        /* renamed from: a */
        public <K extends K0, V> Map<K, Collection<V>> mo26606a() {
            return new TreeMap(this.f34321b);
        }
    }

    /* renamed from: com.google.common.collect.MultimapBuilder$d */
    /* loaded from: classes6.dex */
    public class C5987d extends MultimapBuilderWithKeys<K0> {

        /* renamed from: b */
        public final /* synthetic */ Class f34322b;

        public C5987d(Class cls) {
            this.f34322b = cls;
        }

        @Override // com.google.common.collect.MultimapBuilder.MultimapBuilderWithKeys
        /* renamed from: a */
        public <K extends K0, V> Map<K, Collection<V>> mo26606a() {
            return new EnumMap(this.f34322b);
        }
    }

    public /* synthetic */ MultimapBuilder(C5984a c5984a) {
        this();
    }

    public static <K0 extends Enum<K0>> MultimapBuilderWithKeys<K0> enumKeys(Class<K0> cls) {
        Preconditions.checkNotNull(cls);
        return new C5987d(cls);
    }

    public static MultimapBuilderWithKeys<Object> hashKeys() {
        return hashKeys(8);
    }

    public static MultimapBuilderWithKeys<Object> linkedHashKeys() {
        return linkedHashKeys(8);
    }

    public static MultimapBuilderWithKeys<Comparable> treeKeys() {
        return treeKeys(Ordering.natural());
    }

    public abstract <K extends K0, V extends V0> Multimap<K, V> build();

    public <K extends K0, V extends V0> Multimap<K, V> build(Multimap<? extends K, ? extends V> multimap) {
        Multimap<K, V> build = build();
        build.putAll(multimap);
        return build;
    }

    /* loaded from: classes6.dex */
    public static abstract class ListMultimapBuilder<K0, V0> extends MultimapBuilder<K0, V0> {
        public ListMultimapBuilder() {
            super(null);
        }

        @Override // com.google.common.collect.MultimapBuilder
        public abstract <K extends K0, V extends V0> ListMultimap<K, V> build();

        @Override // com.google.common.collect.MultimapBuilder
        public <K extends K0, V extends V0> ListMultimap<K, V> build(Multimap<? extends K, ? extends V> multimap) {
            return (ListMultimap) super.build((Multimap) multimap);
        }
    }

    /* loaded from: classes6.dex */
    public static abstract class SetMultimapBuilder<K0, V0> extends MultimapBuilder<K0, V0> {
        public SetMultimapBuilder() {
            super(null);
        }

        @Override // com.google.common.collect.MultimapBuilder
        public abstract <K extends K0, V extends V0> SetMultimap<K, V> build();

        @Override // com.google.common.collect.MultimapBuilder
        public <K extends K0, V extends V0> SetMultimap<K, V> build(Multimap<? extends K, ? extends V> multimap) {
            return (SetMultimap) super.build((Multimap) multimap);
        }
    }

    public MultimapBuilder() {
    }

    public static MultimapBuilderWithKeys<Object> hashKeys(int i) {
        szd.m57279b(i, "expectedKeys");
        return new C5984a(i);
    }

    public static MultimapBuilderWithKeys<Object> linkedHashKeys(int i) {
        szd.m57279b(i, "expectedKeys");
        return new C5985b(i);
    }

    public static <K0> MultimapBuilderWithKeys<K0> treeKeys(Comparator<K0> comparator) {
        Preconditions.checkNotNull(comparator);
        return new C5986c(comparator);
    }

    /* loaded from: classes6.dex */
    public static abstract class SortedSetMultimapBuilder<K0, V0> extends SetMultimapBuilder<K0, V0> {
        @Override // com.google.common.collect.MultimapBuilder.SetMultimapBuilder, com.google.common.collect.MultimapBuilder
        public abstract <K extends K0, V extends V0> SortedSetMultimap<K, V> build();

        @Override // com.google.common.collect.MultimapBuilder.SetMultimapBuilder, com.google.common.collect.MultimapBuilder
        public <K extends K0, V extends V0> SortedSetMultimap<K, V> build(Multimap<? extends K, ? extends V> multimap) {
            return (SortedSetMultimap) super.build((Multimap) multimap);
        }
    }
}
