package com.google.common.graph;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterators;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.graph.C6157a;
import com.google.common.graph.ElementOrder;
import com.google.common.graph.EndpointPair;
import com.sunia.HTREnginev2.vnf;
import com.sunia.HTREnginev2.w4h;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.CheckForNull;

@vnf
/* renamed from: com.google.common.graph.a */
/* loaded from: classes6.dex */
public final class C6157a<N, V> implements w4h<N, V> {

    /* renamed from: e */
    public static final Object f34734e = new Object();

    /* renamed from: a */
    public final Map<N, Object> f34735a;

    /* renamed from: b */
    @CheckForNull
    public final List<f<N>> f34736b;

    /* renamed from: c */
    public int f34737c;

    /* renamed from: d */
    public int f34738d;

    /* renamed from: com.google.common.graph.a$a */
    /* loaded from: classes6.dex */
    public class a extends AbstractSet<N> {

        /* renamed from: com.google.common.graph.a$a$a, reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public class C20597a extends AbstractIterator<N> {

            /* renamed from: g */
            public final /* synthetic */ Iterator f34740g;

            /* renamed from: h */
            public final /* synthetic */ Set f34741h;

            public C20597a(a aVar, Iterator it2, Set set) {
                this.f34740g = it2;
                this.f34741h = set;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            public N computeNext() {
                while (this.f34740g.hasNext()) {
                    f fVar = (f) this.f34740g.next();
                    if (this.f34741h.add(fVar.f34751a)) {
                        return fVar.f34751a;
                    }
                }
                return endOfData();
            }
        }

        public a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UnmodifiableIterator<N> iterator() {
            return new C20597a(this, C6157a.this.f34736b.iterator(), new HashSet());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            return C6157a.this.f34735a.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return C6157a.this.f34735a.size();
        }
    }

    /* renamed from: com.google.common.graph.a$b */
    /* loaded from: classes6.dex */
    public class b extends AbstractSet<N> {

        /* renamed from: com.google.common.graph.a$b$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractIterator<N> {

            /* renamed from: g */
            public final /* synthetic */ Iterator f34743g;

            public a(b bVar, Iterator it2) {
                this.f34743g = it2;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            public N computeNext() {
                while (this.f34743g.hasNext()) {
                    Map.Entry entry = (Map.Entry) this.f34743g.next();
                    if (C6157a.m27102s(entry.getValue())) {
                        return (N) entry.getKey();
                    }
                }
                return endOfData();
            }
        }

        /* renamed from: com.google.common.graph.a$b$b, reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public class C20598b extends AbstractIterator<N> {

            /* renamed from: g */
            public final /* synthetic */ Iterator f34744g;

            public C20598b(b bVar, Iterator it2) {
                this.f34744g = it2;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            public N computeNext() {
                while (this.f34744g.hasNext()) {
                    f fVar = (f) this.f34744g.next();
                    if (fVar instanceof f.a) {
                        return fVar.f34751a;
                    }
                }
                return endOfData();
            }
        }

        public b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UnmodifiableIterator<N> iterator() {
            return C6157a.this.f34736b == null ? new a(this, C6157a.this.f34735a.entrySet().iterator()) : new C20598b(this, C6157a.this.f34736b.iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            return C6157a.m27102s(C6157a.this.f34735a.get(obj));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return C6157a.this.f34737c;
        }
    }

    /* renamed from: com.google.common.graph.a$c */
    /* loaded from: classes6.dex */
    public class c extends AbstractSet<N> {

        /* renamed from: com.google.common.graph.a$c$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractIterator<N> {

            /* renamed from: g */
            public final /* synthetic */ Iterator f34746g;

            public a(c cVar, Iterator it2) {
                this.f34746g = it2;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            public N computeNext() {
                while (this.f34746g.hasNext()) {
                    Map.Entry entry = (Map.Entry) this.f34746g.next();
                    if (C6157a.m27103t(entry.getValue())) {
                        return (N) entry.getKey();
                    }
                }
                return endOfData();
            }
        }

        /* renamed from: com.google.common.graph.a$c$b */
        /* loaded from: classes6.dex */
        public class b extends AbstractIterator<N> {

            /* renamed from: g */
            public final /* synthetic */ Iterator f34747g;

            public b(c cVar, Iterator it2) {
                this.f34747g = it2;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            public N computeNext() {
                while (this.f34747g.hasNext()) {
                    f fVar = (f) this.f34747g.next();
                    if (fVar instanceof f.b) {
                        return fVar.f34751a;
                    }
                }
                return endOfData();
            }
        }

        public c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UnmodifiableIterator<N> iterator() {
            return C6157a.this.f34736b == null ? new a(this, C6157a.this.f34735a.entrySet().iterator()) : new b(this, C6157a.this.f34736b.iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            return C6157a.m27103t(C6157a.this.f34735a.get(obj));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return C6157a.this.f34738d;
        }
    }

    /* renamed from: com.google.common.graph.a$d */
    /* loaded from: classes6.dex */
    public class d extends AbstractIterator<EndpointPair<N>> {

        /* renamed from: g */
        public final /* synthetic */ Iterator f34748g;

        /* renamed from: h */
        public final /* synthetic */ AtomicBoolean f34749h;

        public d(C6157a c6157a, Iterator it2, AtomicBoolean atomicBoolean) {
            this.f34748g = it2;
            this.f34749h = atomicBoolean;
        }

        @Override // com.google.common.collect.AbstractIterator
        @CheckForNull
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public EndpointPair<N> computeNext() {
            while (this.f34748g.hasNext()) {
                EndpointPair<N> endpointPair = (EndpointPair) this.f34748g.next();
                if (!endpointPair.nodeU().equals(endpointPair.nodeV()) || !this.f34749h.getAndSet(true)) {
                    return endpointPair;
                }
            }
            return endOfData();
        }
    }

    /* renamed from: com.google.common.graph.a$e */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class e {

        /* renamed from: a */
        public static final /* synthetic */ int[] f34750a;

        static {
            int[] iArr = new int[ElementOrder.Type.values().length];
            f34750a = iArr;
            try {
                iArr[ElementOrder.Type.UNORDERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34750a[ElementOrder.Type.STABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.google.common.graph.a$f */
    /* loaded from: classes6.dex */
    public static abstract class f<N> {

        /* renamed from: a */
        public final N f34751a;

        /* renamed from: com.google.common.graph.a$f$a */
        /* loaded from: classes6.dex */
        public static final class a<N> extends f<N> {
            public a(N n) {
                super(n);
            }

            public boolean equals(@CheckForNull Object obj) {
                if (obj instanceof a) {
                    return this.f34751a.equals(((a) obj).f34751a);
                }
                return false;
            }

            public int hashCode() {
                return a.class.hashCode() + this.f34751a.hashCode();
            }
        }

        /* renamed from: com.google.common.graph.a$f$b */
        /* loaded from: classes6.dex */
        public static final class b<N> extends f<N> {
            public b(N n) {
                super(n);
            }

            public boolean equals(@CheckForNull Object obj) {
                if (obj instanceof b) {
                    return this.f34751a.equals(((b) obj).f34751a);
                }
                return false;
            }

            public int hashCode() {
                return b.class.hashCode() + this.f34751a.hashCode();
            }
        }

        public f(N n) {
            this.f34751a = (N) Preconditions.checkNotNull(n);
        }
    }

    /* renamed from: com.google.common.graph.a$g */
    /* loaded from: classes6.dex */
    public static final class g {

        /* renamed from: a */
        public final Object f34752a;

        public g(Object obj) {
            this.f34752a = obj;
        }
    }

    public C6157a(Map<N, Object> map, @CheckForNull List<f<N>> list, int i, int i2) {
        this.f34735a = (Map) Preconditions.checkNotNull(map);
        this.f34736b = list;
        this.f34737c = Graphs.m27049b(i);
        this.f34738d = Graphs.m27049b(i2);
        Preconditions.checkState(i <= map.size() && i2 <= map.size());
    }

    /* renamed from: s */
    public static boolean m27102s(@CheckForNull Object obj) {
        return obj == f34734e || (obj instanceof g);
    }

    /* renamed from: t */
    public static boolean m27103t(@CheckForNull Object obj) {
        return (obj == f34734e || obj == null) ? false : true;
    }

    /* renamed from: u */
    public static /* synthetic */ EndpointPair m27104u(Object obj, Object obj2) {
        return EndpointPair.ordered(obj2, obj);
    }

    /* renamed from: w */
    public static /* synthetic */ EndpointPair m27106w(Object obj, f fVar) {
        return fVar instanceof f.b ? EndpointPair.ordered(obj, fVar.f34751a) : EndpointPair.ordered(fVar.f34751a, obj);
    }

    /* renamed from: x */
    public static <N, V> C6157a<N, V> m27107x(ElementOrder<N> elementOrder) {
        ArrayList arrayList;
        int i = e.f34750a[elementOrder.type().ordinal()];
        if (i == 1) {
            arrayList = null;
        } else {
            if (i != 2) {
                throw new AssertionError(elementOrder.type());
            }
            arrayList = new ArrayList();
        }
        return new C6157a<>(new HashMap(4, 1.0f), arrayList, 0, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: y */
    public static <N, V> C6157a<N, V> m27108y(N n, Iterable<EndpointPair<N>> iterable, Function<N, V> function) {
        Preconditions.checkNotNull(n);
        Preconditions.checkNotNull(function);
        HashMap hashMap = new HashMap();
        ImmutableList.Builder builder = ImmutableList.builder();
        int i = 0;
        int i2 = 0;
        for (EndpointPair<N> endpointPair : iterable) {
            if (endpointPair.nodeU().equals(n) && endpointPair.nodeV().equals(n)) {
                hashMap.put(n, new g(function.apply(n)));
                builder.add((ImmutableList.Builder) new f.a(n));
                builder.add((ImmutableList.Builder) new f.b(n));
                i++;
            } else if (endpointPair.nodeV().equals(n)) {
                N nodeU = endpointPair.nodeU();
                Object put = hashMap.put(nodeU, f34734e);
                if (put != null) {
                    hashMap.put(nodeU, new g(put));
                }
                builder.add((ImmutableList.Builder) new f.a(nodeU));
                i++;
            } else {
                Preconditions.checkArgument(endpointPair.nodeU().equals(n));
                N nodeV = endpointPair.nodeV();
                V apply = function.apply(nodeV);
                Object put2 = hashMap.put(nodeV, apply);
                if (put2 != null) {
                    Preconditions.checkArgument(put2 == f34734e);
                    hashMap.put(nodeV, new g(apply));
                }
                builder.add((ImmutableList.Builder) new f.b(nodeV));
            }
            i2++;
        }
        return new C6157a<>(hashMap, builder.build(), i, i2);
    }

    @Override // com.sunia.HTREnginev2.w4h
    /* renamed from: a */
    public Set<N> mo27109a() {
        return new b();
    }

    @Override // com.sunia.HTREnginev2.w4h
    /* renamed from: b */
    public Set<N> mo27110b() {
        return this.f34736b == null ? Collections.unmodifiableSet(this.f34735a.keySet()) : new a();
    }

    @Override // com.sunia.HTREnginev2.w4h
    /* renamed from: c */
    public Set<N> mo27111c() {
        return new c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.w4h
    @CheckForNull
    /* renamed from: d */
    public V mo27112d(N n) {
        Preconditions.checkNotNull(n);
        V v = (V) this.f34735a.get(n);
        if (v == f34734e) {
            return null;
        }
        return v instanceof g ? (V) ((g) v).f34752a : v;
    }

    @Override // com.sunia.HTREnginev2.w4h
    @CheckForNull
    /* renamed from: e */
    public V mo27113e(Object obj) {
        Object obj2;
        Preconditions.checkNotNull(obj);
        Object obj3 = this.f34735a.get(obj);
        if (obj3 == null || obj3 == (obj2 = f34734e)) {
            obj3 = null;
        } else if (obj3 instanceof g) {
            this.f34735a.put(obj, obj2);
            obj3 = ((g) obj3).f34752a;
        } else {
            this.f34735a.remove(obj);
        }
        if (obj3 != null) {
            int i = this.f34738d - 1;
            this.f34738d = i;
            Graphs.m27049b(i);
            List<f<N>> list = this.f34736b;
            if (list != null) {
                list.remove(new f.b(obj));
            }
        }
        if (obj3 == null) {
            return null;
        }
        return (V) obj3;
    }

    @Override // com.sunia.HTREnginev2.w4h
    /* renamed from: f */
    public Iterator<EndpointPair<N>> mo27114f(final N n) {
        Preconditions.checkNotNull(n);
        List<f<N>> list = this.f34736b;
        return new d(this, list == null ? Iterators.concat(Iterators.transform(mo27109a().iterator(), new Function() { // from class: com.sunia.HTREnginev2.h5f
            @Override // com.google.common.base.Function, java.util.function.Function
            public final Object apply(Object obj) {
                EndpointPair m27104u;
                m27104u = C6157a.m27104u(n, obj);
                return m27104u;
            }
        }), Iterators.transform(mo27111c().iterator(), new Function() { // from class: com.sunia.HTREnginev2.i5f
            @Override // com.google.common.base.Function, java.util.function.Function
            public final Object apply(Object obj) {
                EndpointPair ordered;
                ordered = EndpointPair.ordered(n, obj);
                return ordered;
            }
        })) : Iterators.transform(list.iterator(), new Function() { // from class: com.sunia.HTREnginev2.j5f
            @Override // com.google.common.base.Function, java.util.function.Function
            public final Object apply(Object obj) {
                EndpointPair m27106w;
                m27106w = C6157a.m27106w(n, (C6157a.f) obj);
                return m27106w;
            }
        }), new AtomicBoolean(false));
    }

    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0027  */
    @Override // com.sunia.HTREnginev2.w4h
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo27115g(N r5, V r6) {
        /*
            r4 = this;
            java.util.Map<N, java.lang.Object> r6 = r4.f34735a
            java.lang.Object r0 = com.google.common.graph.C6157a.f34734e
            java.lang.Object r6 = r6.put(r5, r0)
            r1 = 1
            if (r6 != 0) goto Ld
        Lb:
            r3 = r1
            goto L25
        Ld:
            boolean r2 = r6 instanceof com.google.common.graph.C6157a.g
            r3 = 0
            if (r2 == 0) goto L18
            java.util.Map<N, java.lang.Object> r0 = r4.f34735a
            r0.put(r5, r6)
            goto L25
        L18:
            if (r6 == r0) goto L25
            java.util.Map<N, java.lang.Object> r0 = r4.f34735a
            com.google.common.graph.a$g r2 = new com.google.common.graph.a$g
            r2.<init>(r6)
            r0.put(r5, r2)
            goto Lb
        L25:
            if (r3 == 0) goto L3b
            int r6 = r4.f34737c
            int r6 = r6 + r1
            r4.f34737c = r6
            com.google.common.graph.Graphs.m27051d(r6)
            java.util.List<com.google.common.graph.a$f<N>> r4 = r4.f34736b
            if (r4 == 0) goto L3b
            com.google.common.graph.a$f$a r6 = new com.google.common.graph.a$f$a
            r6.<init>(r5)
            r4.add(r6)
        L3b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.graph.C6157a.mo27115g(java.lang.Object, java.lang.Object):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0028  */
    @Override // com.sunia.HTREnginev2.w4h
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo27116h(N r4) {
        /*
            r3 = this;
            com.google.common.base.Preconditions.checkNotNull(r4)
            java.util.Map<N, java.lang.Object> r0 = r3.f34735a
            java.lang.Object r0 = r0.get(r4)
            java.lang.Object r1 = com.google.common.graph.C6157a.f34734e
            r2 = 1
            if (r0 != r1) goto L15
            java.util.Map<N, java.lang.Object> r0 = r3.f34735a
            r0.remove(r4)
        L13:
            r0 = r2
            goto L26
        L15:
            boolean r1 = r0 instanceof com.google.common.graph.C6157a.g
            if (r1 == 0) goto L25
            java.util.Map<N, java.lang.Object> r1 = r3.f34735a
            com.google.common.graph.a$g r0 = (com.google.common.graph.C6157a.g) r0
            java.lang.Object r0 = com.google.common.graph.C6157a.g.m27122a(r0)
            r1.put(r4, r0)
            goto L13
        L25:
            r0 = 0
        L26:
            if (r0 == 0) goto L3c
            int r0 = r3.f34737c
            int r0 = r0 - r2
            r3.f34737c = r0
            com.google.common.graph.Graphs.m27049b(r0)
            java.util.List<com.google.common.graph.a$f<N>> r3 = r3.f34736b
            if (r3 == 0) goto L3c
            com.google.common.graph.a$f$a r0 = new com.google.common.graph.a$f$a
            r0.<init>(r4)
            r3.remove(r0)
        L3c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.graph.C6157a.mo27116h(java.lang.Object):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0049  */
    @Override // com.sunia.HTREnginev2.w4h
    @javax.annotation.CheckForNull
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V mo27117i(N r5, V r6) {
        /*
            r4 = this;
            java.util.Map<N, java.lang.Object> r0 = r4.f34735a
            java.lang.Object r0 = r0.put(r5, r6)
            r1 = 0
            if (r0 != 0) goto Lb
        L9:
            r0 = r1
            goto L2f
        Lb:
            boolean r2 = r0 instanceof com.google.common.graph.C6157a.g
            if (r2 == 0) goto L20
            java.util.Map<N, java.lang.Object> r2 = r4.f34735a
            com.google.common.graph.a$g r3 = new com.google.common.graph.a$g
            r3.<init>(r6)
            r2.put(r5, r3)
            com.google.common.graph.a$g r0 = (com.google.common.graph.C6157a.g) r0
            java.lang.Object r0 = com.google.common.graph.C6157a.g.m27122a(r0)
            goto L2f
        L20:
            java.lang.Object r2 = com.google.common.graph.C6157a.f34734e
            if (r0 != r2) goto L2f
            java.util.Map<N, java.lang.Object> r0 = r4.f34735a
            com.google.common.graph.a$g r2 = new com.google.common.graph.a$g
            r2.<init>(r6)
            r0.put(r5, r2)
            goto L9
        L2f:
            if (r0 != 0) goto L46
            int r6 = r4.f34738d
            int r6 = r6 + 1
            r4.f34738d = r6
            com.google.common.graph.Graphs.m27051d(r6)
            java.util.List<com.google.common.graph.a$f<N>> r4 = r4.f34736b
            if (r4 == 0) goto L46
            com.google.common.graph.a$f$b r6 = new com.google.common.graph.a$f$b
            r6.<init>(r5)
            r4.add(r6)
        L46:
            if (r0 != 0) goto L49
            goto L4a
        L49:
            r1 = r0
        L4a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.graph.C6157a.mo27117i(java.lang.Object, java.lang.Object):java.lang.Object");
    }
}
