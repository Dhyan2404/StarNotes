package com.sunia.HTREnginev2;

import com.google.common.collect.BiMap;
import com.google.common.collect.HashBiMap;
import com.google.common.collect.ImmutableBiMap;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

@vnf
/* loaded from: classes6.dex */
public final class ksn<N, E> extends AbstractC13862i5<N, E> {
    public ksn(Map<E, N> map) {
        super(map);
    }

    /* renamed from: m */
    public static <N, E> ksn<N, E> m55316m() {
        return new ksn<>(HashBiMap.create(2));
    }

    /* renamed from: n */
    public static <N, E> ksn<N, E> m55317n(Map<E, N> map) {
        return new ksn<>(ImmutableBiMap.copyOf((Map) map));
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: b */
    public Set<N> mo52942b() {
        return Collections.unmodifiableSet(((BiMap) this.f72878a).values());
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: l */
    public Set<E> mo55041l(N n) {
        return new ukf(((BiMap) this.f72878a).inverse(), n);
    }
}
