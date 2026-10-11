package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.C6116k;
import com.google.common.collect.ImmutableBiMap;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.ImmutableRangeMap;
import com.google.common.collect.ImmutableRangeSet;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ImmutableSetMultimap;
import com.google.common.collect.ImmutableSortedMap;
import com.google.common.collect.ImmutableSortedSet;
import com.google.common.collect.LinkedHashMultiset;
import com.google.common.collect.Multimap;
import com.google.common.collect.MultimapBuilder;
import com.google.common.collect.Multiset;
import com.google.common.collect.Range;
import com.sunia.HTREnginev2.exd;
import com.sunia.HTREnginev2.gxd;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.vwd;
import com.sunia.HTREnginev2.wwd;
import java.util.Collection;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
/* renamed from: com.google.common.collect.k */
/* loaded from: classes6.dex */
public final class C6116k {

    /* renamed from: a */
    public static final Collector<Object, ?, ImmutableList<Object>> f34598a = Collector.of(new Supplier() { // from class: com.sunia.HTREnginev2.lxd
        @Override // java.util.function.Supplier
        public final Object get() {
            return ImmutableList.builder();
        }
    }, new BiConsumer() { // from class: com.sunia.HTREnginev2.oxd
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            ((ImmutableList.Builder) obj).add((ImmutableList.Builder) obj2);
        }
    }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.pxd
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return ((ImmutableList.Builder) obj).m26175c((ImmutableList.Builder) obj2);
        }
    }, new Function() { // from class: com.sunia.HTREnginev2.rxd
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return ((ImmutableList.Builder) obj).build();
        }
    }, new Collector.Characteristics[0]);

    /* renamed from: b */
    public static final Collector<Object, ?, ImmutableSet<Object>> f34599b = Collector.of(new Supplier() { // from class: com.sunia.HTREnginev2.sxd
        @Override // java.util.function.Supplier
        public final Object get() {
            return ImmutableSet.builder();
        }
    }, new BiConsumer() { // from class: com.sunia.HTREnginev2.txd
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            ((ImmutableSet.Builder) obj).add((ImmutableSet.Builder) obj2);
        }
    }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.uxd
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return ((ImmutableSet.Builder) obj).mo26241b((ImmutableSet.Builder) obj2);
        }
    }, new Function() { // from class: com.sunia.HTREnginev2.vxd
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return ((ImmutableSet.Builder) obj).build();
        }
    }, new Collector.Characteristics[0]);

    /* renamed from: c */
    @GwtIncompatible
    public static final Collector<Range<Comparable<?>>, ?, ImmutableRangeSet<Comparable<?>>> f34600c = Collector.of(new Supplier() { // from class: com.sunia.HTREnginev2.wxd
        @Override // java.util.function.Supplier
        public final Object get() {
            return ImmutableRangeSet.builder();
        }
    }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xxd
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            ((ImmutableRangeSet.Builder) obj).add((Range) obj2);
        }
    }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.mxd
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return ((ImmutableRangeSet.Builder) obj).m26233a((ImmutableRangeSet.Builder) obj2);
        }
    }, new Function() { // from class: com.sunia.HTREnginev2.nxd
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return ((ImmutableRangeSet.Builder) obj).build();
        }
    }, new Collector.Characteristics[0]);

    /* renamed from: com.google.common.collect.k$a */
    /* loaded from: classes6.dex */
    public static class a<K extends Enum<K>, V> {

        /* renamed from: a */
        public final BinaryOperator<V> f34601a;

        /* renamed from: b */
        @CheckForNull
        public EnumMap<K, V> f34602b = null;

        public a(BinaryOperator<V> binaryOperator) {
            this.f34601a = binaryOperator;
        }

        /* renamed from: a */
        public a<K, V> m26985a(a<K, V> aVar) {
            if (this.f34602b == null) {
                return aVar;
            }
            EnumMap<K, V> enumMap = aVar.f34602b;
            if (enumMap == null) {
                return this;
            }
            enumMap.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.nzd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    C6116k.a.this.m26986b((Enum) obj, obj2);
                }
            });
            return this;
        }

        /* renamed from: b */
        public void m26986b(K k, V v) {
            if (this.f34602b == null) {
                this.f34602b = new EnumMap<>(k.getDeclaringClass());
            }
            this.f34602b.merge(k, v, this.f34601a);
        }

        /* renamed from: c */
        public ImmutableMap<K, V> m26987c() {
            EnumMap<K, V> enumMap = this.f34602b;
            return enumMap == null ? ImmutableMap.m26185of() : ImmutableEnumMap.asImmutable(enumMap);
        }
    }

    /* renamed from: com.google.common.collect.k$b */
    /* loaded from: classes6.dex */
    public static final class b<E extends Enum<E>> {

        /* renamed from: b */
        public static final Collector<Enum<?>, ?, ImmutableSet<? extends Enum<?>>> f34603b = Collector.of(new Supplier() { // from class: com.sunia.HTREnginev2.ozd
            @Override // java.util.function.Supplier
            public final Object get() {
                return C6116k.b.m26988a();
            }
        }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pzd
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((C6116k.b) obj).m26989b((Enum) obj2);
            }
        }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.qzd
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((C6116k.b) obj).m26990c((C6116k.b) obj2);
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.rzd
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((C6116k.b) obj).m26991d();
            }
        }, Collector.Characteristics.UNORDERED);

        /* renamed from: a */
        @CheckForNull
        public EnumSet<E> f34604a;

        /* renamed from: a */
        public static /* synthetic */ b m26988a() {
            return new b();
        }

        /* renamed from: b */
        public void m26989b(E e) {
            EnumSet<E> enumSet = this.f34604a;
            if (enumSet == null) {
                this.f34604a = EnumSet.of((Enum) e);
            } else {
                enumSet.add(e);
            }
        }

        /* renamed from: c */
        public b<E> m26990c(b<E> bVar) {
            EnumSet<E> enumSet = this.f34604a;
            if (enumSet == null) {
                return bVar;
            }
            EnumSet<E> enumSet2 = bVar.f34604a;
            if (enumSet2 == null) {
                return this;
            }
            enumSet.addAll(enumSet2);
            return this;
        }

        /* renamed from: d */
        public ImmutableSet<E> m26991d() {
            EnumSet<E> enumSet = this.f34604a;
            return enumSet == null ? ImmutableSet.m26234of() : ImmutableEnumSet.asImmutable(enumSet);
        }
    }

    /* renamed from: B */
    public static <T, K, V> Collector<T, ?, ImmutableListMultimap<K, V>> m26911B(final Function<? super T, ? extends K> function, final Function<? super T, ? extends Stream<? extends V>> function2) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        Function function3 = new Function() { // from class: com.sunia.HTREnginev2.myd
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Object m26914E;
                m26914E = C6116k.m26914E(function, obj);
                return m26914E;
            }
        };
        Function function4 = new Function() { // from class: com.sunia.HTREnginev2.xyd
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream m26915F;
                m26915F = C6116k.m26915F(function2, obj);
                return m26915F;
            }
        };
        final MultimapBuilder.ListMultimapBuilder<Object, Object> arrayListValues = MultimapBuilder.linkedHashKeys().arrayListValues();
        Objects.requireNonNull(arrayListValues);
        return Collectors.collectingAndThen(m26913D(function3, function4, new Supplier() { // from class: com.sunia.HTREnginev2.izd
            @Override // java.util.function.Supplier
            public final Object get() {
                return MultimapBuilder.ListMultimapBuilder.this.build();
            }
        }), new Function() { // from class: com.sunia.HTREnginev2.kzd
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ImmutableListMultimap.copyOf((Multimap) obj);
            }
        });
    }

    /* renamed from: C */
    public static <T, K, V> Collector<T, ?, ImmutableSetMultimap<K, V>> m26912C(final Function<? super T, ? extends K> function, final Function<? super T, ? extends Stream<? extends V>> function2) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        Function function3 = new Function() { // from class: com.sunia.HTREnginev2.yxd
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Object m26916G;
                m26916G = C6116k.m26916G(function, obj);
                return m26916G;
            }
        };
        Function function4 = new Function() { // from class: com.sunia.HTREnginev2.zxd
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream m26917H;
                m26917H = C6116k.m26917H(function2, obj);
                return m26917H;
            }
        };
        final MultimapBuilder.SetMultimapBuilder<Object, Object> linkedHashSetValues = MultimapBuilder.linkedHashKeys().linkedHashSetValues();
        Objects.requireNonNull(linkedHashSetValues);
        return Collectors.collectingAndThen(m26913D(function3, function4, new Supplier() { // from class: com.sunia.HTREnginev2.ayd
            @Override // java.util.function.Supplier
            public final Object get() {
                return MultimapBuilder.SetMultimapBuilder.this.build();
            }
        }), new Function() { // from class: com.sunia.HTREnginev2.cyd
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ImmutableSetMultimap.copyOf((Multimap) obj);
            }
        });
    }

    /* renamed from: D */
    public static <T, K, V, M extends Multimap<K, V>> Collector<T, ?, M> m26913D(final Function<? super T, ? extends K> function, final Function<? super T, ? extends Stream<? extends V>> function2, Supplier<M> supplier) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        Preconditions.checkNotNull(supplier);
        return Collector.of(supplier, new BiConsumer() { // from class: com.sunia.HTREnginev2.lzd
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                C6116k.m26918I(function, function2, (Multimap) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.mzd
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Multimap m26919J;
                m26919J = C6116k.m26919J((Multimap) obj, (Multimap) obj2);
                return m26919J;
            }
        }, new Collector.Characteristics[0]);
    }

    /* renamed from: E */
    public static /* synthetic */ Object m26914E(Function function, Object obj) {
        return Preconditions.checkNotNull(function.apply(obj));
    }

    /* renamed from: F */
    public static /* synthetic */ Stream m26915F(Function function, Object obj) {
        return ((Stream) function.apply(obj)).peek(new vwd());
    }

    /* renamed from: G */
    public static /* synthetic */ Object m26916G(Function function, Object obj) {
        return Preconditions.checkNotNull(function.apply(obj));
    }

    /* renamed from: H */
    public static /* synthetic */ Stream m26917H(Function function, Object obj) {
        return ((Stream) function.apply(obj)).peek(new vwd());
    }

    /* renamed from: I */
    public static /* synthetic */ void m26918I(Function function, Function function2, Multimap multimap, Object obj) {
        final Collection collection = multimap.get(function.apply(obj));
        Stream stream = (Stream) function2.apply(obj);
        Objects.requireNonNull(collection);
        stream.forEachOrdered(new Consumer() { // from class: com.sunia.HTREnginev2.jzd
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                collection.add(obj2);
            }
        });
    }

    /* renamed from: J */
    public static /* synthetic */ Multimap m26919J(Multimap multimap, Multimap multimap2) {
        multimap.putAll(multimap2);
        return multimap;
    }

    /* renamed from: K */
    public static /* synthetic */ void m26920K(Function function, Function function2, ImmutableBiMap.Builder builder, Object obj) {
        builder.put((ImmutableBiMap.Builder) function.apply(obj), function2.apply(obj));
    }

    /* renamed from: L */
    public static /* synthetic */ Object m26921L(Object obj, Object obj2) {
        String valueOf = String.valueOf(obj);
        String valueOf2 = String.valueOf(obj2);
        StringBuilder sb = new StringBuilder(valueOf.length() + 27 + valueOf2.length());
        sb.append("Multiple values for key: ");
        sb.append(valueOf);
        sb.append(", ");
        sb.append(valueOf2);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: M */
    public static /* synthetic */ a m26922M() {
        return new a(new BinaryOperator() { // from class: com.sunia.HTREnginev2.lyd
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Object m26921L;
                m26921L = C6116k.m26921L(obj, obj2);
                return m26921L;
            }
        });
    }

    /* renamed from: N */
    public static /* synthetic */ void m26923N(Function function, Function function2, a aVar, Object obj) {
        aVar.m26986b((Enum) Preconditions.checkNotNull((Enum) function.apply(obj), "Null key for input %s", obj), Preconditions.checkNotNull(function2.apply(obj), "Null value for input %s", obj));
    }

    /* renamed from: O */
    public static /* synthetic */ a m26924O(BinaryOperator binaryOperator) {
        return new a(binaryOperator);
    }

    /* renamed from: P */
    public static /* synthetic */ void m26925P(Function function, Function function2, a aVar, Object obj) {
        aVar.m26986b((Enum) Preconditions.checkNotNull((Enum) function.apply(obj), "Null key for input %s", obj), Preconditions.checkNotNull(function2.apply(obj), "Null value for input %s", obj));
    }

    /* renamed from: Q */
    public static /* synthetic */ void m26926Q(Function function, Function function2, ImmutableListMultimap.Builder builder, Object obj) {
        builder.put((ImmutableListMultimap.Builder) function.apply(obj), function2.apply(obj));
    }

    /* renamed from: R */
    public static /* synthetic */ void m26927R(Function function, Function function2, ImmutableMap.Builder builder, Object obj) {
        builder.put(function.apply(obj), function2.apply(obj));
    }

    /* renamed from: S */
    public static /* synthetic */ void m26928S(Function function, ToIntFunction toIntFunction, Multiset multiset, Object obj) {
        multiset.add(Preconditions.checkNotNull(function.apply(obj)), toIntFunction.applyAsInt(obj));
    }

    /* renamed from: T */
    public static /* synthetic */ Multiset m26929T(Multiset multiset, Multiset multiset2) {
        multiset.addAll(multiset2);
        return multiset;
    }

    /* renamed from: U */
    public static /* synthetic */ ImmutableMultiset m26930U(Multiset multiset) {
        return ImmutableMultiset.copyFromEntries(multiset.entrySet());
    }

    /* renamed from: V */
    public static /* synthetic */ void m26931V(Function function, Function function2, ImmutableRangeMap.Builder builder, Object obj) {
        builder.put((Range) function.apply(obj), function2.apply(obj));
    }

    /* renamed from: W */
    public static /* synthetic */ void m26932W(Function function, Function function2, ImmutableSetMultimap.Builder builder, Object obj) {
        builder.put((ImmutableSetMultimap.Builder) function.apply(obj), function2.apply(obj));
    }

    /* renamed from: X */
    public static /* synthetic */ ImmutableSortedMap.Builder m26933X(Comparator comparator) {
        return new ImmutableSortedMap.Builder(comparator);
    }

    /* renamed from: Y */
    public static /* synthetic */ void m26934Y(Function function, Function function2, ImmutableSortedMap.Builder builder, Object obj) {
        builder.put((ImmutableSortedMap.Builder) function.apply(obj), function2.apply(obj));
    }

    /* renamed from: Z */
    public static /* synthetic */ TreeMap m26935Z(Comparator comparator) {
        return new TreeMap(comparator);
    }

    /* renamed from: a0 */
    public static /* synthetic */ ImmutableSortedSet.Builder m26937a0(Comparator comparator) {
        return new ImmutableSortedSet.Builder(comparator);
    }

    /* renamed from: b0 */
    public static /* synthetic */ void m26939b0(Function function, Function function2, Multimap multimap, Object obj) {
        multimap.put(function.apply(obj), function2.apply(obj));
    }

    /* renamed from: c0 */
    public static /* synthetic */ Multimap m26941c0(Multimap multimap, Multimap multimap2) {
        multimap.putAll(multimap2);
        return multimap;
    }

    /* renamed from: d0 */
    public static /* synthetic */ void m26943d0(Function function, ToIntFunction toIntFunction, Multiset multiset, Object obj) {
        multiset.add(function.apply(obj), toIntFunction.applyAsInt(obj));
    }

    /* renamed from: e0 */
    public static /* synthetic */ Multiset m26945e0(Multiset multiset, Multiset multiset2) {
        multiset.addAll(multiset2);
        return multiset;
    }

    /* renamed from: f0 */
    public static <T, K, V> Collector<T, ?, ImmutableBiMap<K, V>> m26947f0(final Function<? super T, ? extends K> function, final Function<? super T, ? extends V> function2) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        return Collector.of(new Supplier() { // from class: com.sunia.HTREnginev2.hxd
            @Override // java.util.function.Supplier
            public final Object get() {
                return new ImmutableBiMap.Builder();
            }
        }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ixd
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                C6116k.m26920K(function, function2, (ImmutableBiMap.Builder) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.jxd
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableBiMap.Builder) obj).mo26154c((ImmutableBiMap.Builder) obj2);
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.kxd
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableBiMap.Builder) obj).build();
            }
        }, new Collector.Characteristics[0]);
    }

    /* renamed from: g0 */
    public static <T, K extends Enum<K>, V> Collector<T, ?, ImmutableMap<K, V>> m26949g0(final Function<? super T, ? extends K> function, final Function<? super T, ? extends V> function2) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        return Collector.of(new Supplier() { // from class: com.sunia.HTREnginev2.cxd
            @Override // java.util.function.Supplier
            public final Object get() {
                C6116k.a m26922M;
                m26922M = C6116k.m26922M();
                return m26922M;
            }
        }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dxd
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                C6116k.m26923N(function, function2, (C6116k.a) obj, obj2);
            }
        }, new exd(), new gxd(), Collector.Characteristics.UNORDERED);
    }

    /* renamed from: h0 */
    public static <T, K extends Enum<K>, V> Collector<T, ?, ImmutableMap<K, V>> m26951h0(final Function<? super T, ? extends K> function, final Function<? super T, ? extends V> function2, final BinaryOperator<V> binaryOperator) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        Preconditions.checkNotNull(binaryOperator);
        return Collector.of(new Supplier() { // from class: com.sunia.HTREnginev2.ryd
            @Override // java.util.function.Supplier
            public final Object get() {
                C6116k.a m26924O;
                m26924O = C6116k.m26924O(binaryOperator);
                return m26924O;
            }
        }, new BiConsumer() { // from class: com.sunia.HTREnginev2.syd
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                C6116k.m26925P(function, function2, (C6116k.a) obj, obj2);
            }
        }, new exd(), new gxd(), new Collector.Characteristics[0]);
    }

    /* renamed from: i0 */
    public static <E extends Enum<E>> Collector<E, ?, ImmutableSet<E>> m26953i0() {
        return (Collector<E, ?, ImmutableSet<E>>) b.f34603b;
    }

    /* renamed from: j0 */
    public static <E> Collector<E, ?, ImmutableList<E>> m26955j0() {
        return (Collector<E, ?, ImmutableList<E>>) f34598a;
    }

    /* renamed from: k0 */
    public static <T, K, V> Collector<T, ?, ImmutableListMultimap<K, V>> m26957k0(final Function<? super T, ? extends K> function, final Function<? super T, ? extends V> function2) {
        Preconditions.checkNotNull(function, "keyFunction");
        Preconditions.checkNotNull(function2, "valueFunction");
        return Collector.of(new Supplier() { // from class: com.sunia.HTREnginev2.yyd
            @Override // java.util.function.Supplier
            public final Object get() {
                return ImmutableListMultimap.builder();
            }
        }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zyd
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                C6116k.m26926Q(function, function2, (ImmutableListMultimap.Builder) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.azd
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableListMultimap.Builder) obj).mo26183a((ImmutableListMultimap.Builder) obj2);
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.bzd
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableListMultimap.Builder) obj).build();
            }
        }, new Collector.Characteristics[0]);
    }

    /* renamed from: l0 */
    public static <T, K, V> Collector<T, ?, ImmutableMap<K, V>> m26959l0(final Function<? super T, ? extends K> function, final Function<? super T, ? extends V> function2) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        return Collector.of(new Supplier() { // from class: com.sunia.HTREnginev2.nyd
            @Override // java.util.function.Supplier
            public final Object get() {
                return new ImmutableMap.Builder();
            }
        }, new BiConsumer() { // from class: com.sunia.HTREnginev2.oyd
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                C6116k.m26927R(function, function2, (ImmutableMap.Builder) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.pyd
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableMap.Builder) obj).mo26154c((ImmutableMap.Builder) obj2);
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.qyd
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableMap.Builder) obj).build();
            }
        }, new Collector.Characteristics[0]);
    }

    /* renamed from: m0 */
    public static <T, K, V> Collector<T, ?, ImmutableMap<K, V>> m26961m0(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, BinaryOperator<V> binaryOperator) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        Preconditions.checkNotNull(binaryOperator);
        return Collectors.collectingAndThen(Collectors.toMap(function, function2, binaryOperator, new wwd()), new Function() { // from class: com.sunia.HTREnginev2.xwd
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ImmutableMap.copyOf((Map) obj);
            }
        });
    }

    /* renamed from: n0 */
    public static <T, E> Collector<T, ?, ImmutableMultiset<E>> m26963n0(final Function<? super T, ? extends E> function, final ToIntFunction<? super T> toIntFunction) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(toIntFunction);
        return Collector.of(new Supplier() { // from class: com.sunia.HTREnginev2.ywd
            @Override // java.util.function.Supplier
            public final Object get() {
                return LinkedHashMultiset.create();
            }
        }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zwd
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                C6116k.m26928S(function, toIntFunction, (Multiset) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.axd
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Multiset m26929T;
                m26929T = C6116k.m26929T((Multiset) obj, (Multiset) obj2);
                return m26929T;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.bxd
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ImmutableMultiset m26930U;
                m26930U = C6116k.m26930U((Multiset) obj);
                return m26930U;
            }
        }, new Collector.Characteristics[0]);
    }

    @GwtIncompatible
    /* renamed from: o0 */
    public static <T, K extends Comparable<? super K>, V> Collector<T, ?, ImmutableRangeMap<K, V>> m26965o0(final Function<? super T, Range<K>> function, final Function<? super T, ? extends V> function2) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        return Collector.of(new Supplier() { // from class: com.sunia.HTREnginev2.hyd
            @Override // java.util.function.Supplier
            public final Object get() {
                return ImmutableRangeMap.builder();
            }
        }, new BiConsumer() { // from class: com.sunia.HTREnginev2.iyd
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                C6116k.m26931V(function, function2, (ImmutableRangeMap.Builder) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.jyd
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableRangeMap.Builder) obj).m26228a((ImmutableRangeMap.Builder) obj2);
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.kyd
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableRangeMap.Builder) obj).build();
            }
        }, new Collector.Characteristics[0]);
    }

    @GwtIncompatible
    /* renamed from: p0 */
    public static <E extends Comparable<? super E>> Collector<Range<E>, ?, ImmutableRangeSet<E>> m26967p0() {
        return (Collector<Range<E>, ?, ImmutableRangeSet<E>>) f34600c;
    }

    /* renamed from: q0 */
    public static <E> Collector<E, ?, ImmutableSet<E>> m26969q0() {
        return (Collector<E, ?, ImmutableSet<E>>) f34599b;
    }

    /* renamed from: r0 */
    public static <T, K, V> Collector<T, ?, ImmutableSetMultimap<K, V>> m26971r0(final Function<? super T, ? extends K> function, final Function<? super T, ? extends V> function2) {
        Preconditions.checkNotNull(function, "keyFunction");
        Preconditions.checkNotNull(function2, "valueFunction");
        return Collector.of(new Supplier() { // from class: com.sunia.HTREnginev2.dyd
            @Override // java.util.function.Supplier
            public final Object get() {
                return ImmutableSetMultimap.builder();
            }
        }, new BiConsumer() { // from class: com.sunia.HTREnginev2.eyd
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                C6116k.m26932W(function, function2, (ImmutableSetMultimap.Builder) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.fyd
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableSetMultimap.Builder) obj).mo26183a((ImmutableSetMultimap.Builder) obj2);
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.gyd
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableSetMultimap.Builder) obj).build();
            }
        }, new Collector.Characteristics[0]);
    }

    /* renamed from: s0 */
    public static <T, K, V> Collector<T, ?, ImmutableSortedMap<K, V>> m26973s0(final Comparator<? super K> comparator, final Function<? super T, ? extends K> function, final Function<? super T, ? extends V> function2) {
        Preconditions.checkNotNull(comparator);
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        return Collector.of(new Supplier() { // from class: com.sunia.HTREnginev2.tyd
            @Override // java.util.function.Supplier
            public final Object get() {
                ImmutableSortedMap.Builder m26933X;
                m26933X = C6116k.m26933X(comparator);
                return m26933X;
            }
        }, new BiConsumer() { // from class: com.sunia.HTREnginev2.uyd
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                C6116k.m26934Y(function, function2, (ImmutableSortedMap.Builder) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.vyd
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableSortedMap.Builder) obj).mo26154c((ImmutableSortedMap.Builder) obj2);
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.wyd
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableSortedMap.Builder) obj).build();
            }
        }, Collector.Characteristics.UNORDERED);
    }

    /* renamed from: t0 */
    public static <T, K, V> Collector<T, ?, ImmutableSortedMap<K, V>> m26975t0(final Comparator<? super K> comparator, Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, BinaryOperator<V> binaryOperator) {
        Preconditions.checkNotNull(comparator);
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        Preconditions.checkNotNull(binaryOperator);
        return Collectors.collectingAndThen(Collectors.toMap(function, function2, binaryOperator, new Supplier() { // from class: com.sunia.HTREnginev2.qxd
            @Override // java.util.function.Supplier
            public final Object get() {
                TreeMap m26935Z;
                m26935Z = C6116k.m26935Z(comparator);
                return m26935Z;
            }
        }), new Function() { // from class: com.sunia.HTREnginev2.byd
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ImmutableSortedMap.copyOfSorted((TreeMap) obj);
            }
        });
    }

    /* renamed from: u0 */
    public static <E> Collector<E, ?, ImmutableSortedSet<E>> m26977u0(final Comparator<? super E> comparator) {
        Preconditions.checkNotNull(comparator);
        return Collector.of(new Supplier() { // from class: com.sunia.HTREnginev2.czd
            @Override // java.util.function.Supplier
            public final Object get() {
                ImmutableSortedSet.Builder m26937a0;
                m26937a0 = C6116k.m26937a0(comparator);
                return m26937a0;
            }
        }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dzd
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((ImmutableSortedSet.Builder) obj).add((ImmutableSortedSet.Builder) obj2);
            }
        }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.ezd
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableSortedSet.Builder) obj).mo26241b((ImmutableSortedSet.Builder) obj2);
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.fzd
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableSortedSet.Builder) obj).build();
            }
        }, new Collector.Characteristics[0]);
    }

    /* renamed from: v0 */
    public static <T, K, V, M extends Multimap<K, V>> Collector<T, ?, M> m26979v0(final Function<? super T, ? extends K> function, final Function<? super T, ? extends V> function2, Supplier<M> supplier) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        Preconditions.checkNotNull(supplier);
        return Collector.of(supplier, new BiConsumer() { // from class: com.sunia.HTREnginev2.gzd
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                C6116k.m26939b0(function, function2, (Multimap) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.hzd
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Multimap m26941c0;
                m26941c0 = C6116k.m26941c0((Multimap) obj, (Multimap) obj2);
                return m26941c0;
            }
        }, new Collector.Characteristics[0]);
    }

    /* renamed from: w0 */
    public static <T, E, M extends Multiset<E>> Collector<T, ?, M> m26981w0(final Function<? super T, E> function, final ToIntFunction<? super T> toIntFunction, Supplier<M> supplier) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(toIntFunction);
        Preconditions.checkNotNull(supplier);
        return Collector.of(supplier, new BiConsumer() { // from class: com.sunia.HTREnginev2.uwd
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                C6116k.m26943d0(function, toIntFunction, (Multiset) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.fxd
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Multiset m26945e0;
                m26945e0 = C6116k.m26945e0((Multiset) obj, (Multiset) obj2);
                return m26945e0;
            }
        }, new Collector.Characteristics[0]);
    }
}
