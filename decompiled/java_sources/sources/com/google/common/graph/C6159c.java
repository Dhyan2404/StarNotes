package com.google.common.graph;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Iterators;
import com.google.common.graph.ElementOrder;
import com.google.common.graph.EndpointPair;
import com.sunia.HTREnginev2.vnf;
import com.sunia.HTREnginev2.w4h;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@vnf
/* renamed from: com.google.common.graph.c */
/* loaded from: classes6.dex */
public final class C6159c<N, V> implements w4h<N, V> {

    /* renamed from: a */
    public final Map<N, V> f34754a;

    /* renamed from: com.google.common.graph.c$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f34755a;

        static {
            int[] iArr = new int[ElementOrder.Type.values().length];
            f34755a = iArr;
            try {
                iArr[ElementOrder.Type.UNORDERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34755a[ElementOrder.Type.STABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public C6159c(Map<N, V> map) {
        this.f34754a = (Map) Preconditions.checkNotNull(map);
    }

    /* renamed from: l */
    public static <N, V> C6159c<N, V> m27125l(ElementOrder<N> elementOrder) {
        int i = a.f34755a[elementOrder.type().ordinal()];
        if (i == 1) {
            return new C6159c<>(new HashMap(2, 1.0f));
        }
        if (i == 2) {
            return new C6159c<>(new LinkedHashMap(2, 1.0f));
        }
        throw new AssertionError(elementOrder.type());
    }

    /* renamed from: m */
    public static <N, V> C6159c<N, V> m27126m(Map<N, V> map) {
        return new C6159c<>(ImmutableMap.copyOf((Map) map));
    }

    @Override // com.sunia.HTREnginev2.w4h
    /* renamed from: a */
    public Set<N> mo27109a() {
        return mo27110b();
    }

    @Override // com.sunia.HTREnginev2.w4h
    /* renamed from: b */
    public Set<N> mo27110b() {
        return Collections.unmodifiableSet(this.f34754a.keySet());
    }

    @Override // com.sunia.HTREnginev2.w4h
    /* renamed from: c */
    public Set<N> mo27111c() {
        return mo27110b();
    }

    @Override // com.sunia.HTREnginev2.w4h
    @CheckForNull
    /* renamed from: d */
    public V mo27112d(N n) {
        return this.f34754a.get(n);
    }

    @Override // com.sunia.HTREnginev2.w4h
    @CheckForNull
    /* renamed from: e */
    public V mo27113e(N n) {
        return this.f34754a.remove(n);
    }

    @Override // com.sunia.HTREnginev2.w4h
    /* renamed from: f */
    public Iterator<EndpointPair<N>> mo27114f(final N n) {
        return Iterators.transform(this.f34754a.keySet().iterator(), new Function() { // from class: com.sunia.HTREnginev2.isn
            @Override // com.google.common.base.Function, java.util.function.Function
            public final Object apply(Object obj) {
                EndpointPair unordered;
                unordered = EndpointPair.unordered(n, obj);
                return unordered;
            }
        });
    }

    @Override // com.sunia.HTREnginev2.w4h
    /* renamed from: g */
    public void mo27115g(N n, V v) {
        mo27117i(n, v);
    }

    @Override // com.sunia.HTREnginev2.w4h
    /* renamed from: h */
    public void mo27116h(N n) {
        mo27113e(n);
    }

    @Override // com.sunia.HTREnginev2.w4h
    @CheckForNull
    /* renamed from: i */
    public V mo27117i(N n, V v) {
        return this.f34754a.put(n, v);
    }
}
