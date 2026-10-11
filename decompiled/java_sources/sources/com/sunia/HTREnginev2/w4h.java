package com.sunia.HTREnginev2;

import com.google.common.graph.EndpointPair;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.CheckForNull;

@vnf
/* loaded from: classes6.dex */
public interface w4h<N, V> {
    /* renamed from: a */
    Set<N> mo27109a();

    /* renamed from: b */
    Set<N> mo27110b();

    /* renamed from: c */
    Set<N> mo27111c();

    @CheckForNull
    /* renamed from: d */
    V mo27112d(N n);

    @CanIgnoreReturnValue
    @CheckForNull
    /* renamed from: e */
    V mo27113e(N n);

    /* renamed from: f */
    Iterator<EndpointPair<N>> mo27114f(N n);

    /* renamed from: g */
    void mo27115g(N n, V v);

    /* renamed from: h */
    void mo27116h(N n);

    @CanIgnoreReturnValue
    @CheckForNull
    /* renamed from: i */
    V mo27117i(N n, V v);
}
