package com.sunia.HTREnginev2;

import com.google.common.collect.BiMap;
import com.google.common.collect.HashBiMap;
import com.google.common.collect.ImmutableBiMap;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

@vnf
/* loaded from: classes6.dex */
public final class l5f<N, E> extends AbstractC13468a3<N, E> {
    public l5f(Map<E, N> map, Map<E, N> map2, int i) {
        super(map, map2, i);
    }

    /* renamed from: n */
    public static <N, E> l5f<N, E> m55379n() {
        return new l5f<>(HashBiMap.create(2), HashBiMap.create(2), 0);
    }

    /* renamed from: o */
    public static <N, E> l5f<N, E> m55380o(Map<E, N> map, Map<E, N> map2, int i) {
        return new l5f<>(ImmutableBiMap.copyOf((Map) map), ImmutableBiMap.copyOf((Map) map2), i);
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: a */
    public Set<N> mo54676a() {
        return Collections.unmodifiableSet(((BiMap) this.f64263a).values());
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: c */
    public Set<N> mo54677c() {
        return Collections.unmodifiableSet(((BiMap) this.f64264b).values());
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: l */
    public Set<E> mo55041l(N n) {
        return new ukf(((BiMap) this.f64264b).inverse(), n);
    }
}
