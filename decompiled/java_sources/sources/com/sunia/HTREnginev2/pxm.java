package com.sunia.HTREnginev2;

import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.graph.AbstractNetwork;
import com.google.common.graph.ElementOrder;
import com.google.common.graph.EndpointPair;
import com.google.common.graph.GraphConstants;
import com.google.common.graph.NetworkBuilder;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;

@vnf
/* loaded from: classes6.dex */
public class pxm<N, E> extends AbstractNetwork<N, E> {

    /* renamed from: a */
    public final boolean f81363a;

    /* renamed from: b */
    public final boolean f81364b;

    /* renamed from: c */
    public final boolean f81365c;

    /* renamed from: d */
    public final ElementOrder<N> f81366d;

    /* renamed from: e */
    public final ElementOrder<E> f81367e;

    /* renamed from: f */
    public final p8j<N, rtj<N, E>> f81368f;

    /* renamed from: g */
    public final p8j<E, N> f81369g;

    public pxm(NetworkBuilder<? super N, ? super E> networkBuilder) {
        this(networkBuilder, networkBuilder.f82678c.m27043b(networkBuilder.f82680e.mo25761or((Optional<Integer>) 10).intValue()), networkBuilder.f34715g.m27043b(networkBuilder.f34716h.mo25761or((Optional<Integer>) 20).intValue()));
    }

    @Override // com.google.common.graph.Network
    public Set<N> adjacentNodes(N n) {
        return m56469c(n).mo52942b();
    }

    @Override // com.google.common.graph.Network
    public boolean allowsParallelEdges() {
        return this.f81364b;
    }

    @Override // com.google.common.graph.Network
    public boolean allowsSelfLoops() {
        return this.f81365c;
    }

    /* renamed from: c */
    public final rtj<N, E> m56469c(N n) {
        rtj<N, E> mo56242f = this.f81368f.mo56242f(n);
        if (mo56242f != null) {
            return mo56242f;
        }
        Preconditions.checkNotNull(n);
        throw new IllegalArgumentException(String.format(GraphConstants.f34696f, n));
    }

    /* renamed from: d */
    public final N m56470d(E e) {
        N mo56242f = this.f81369g.mo56242f(e);
        if (mo56242f != null) {
            return mo56242f;
        }
        Preconditions.checkNotNull(e);
        throw new IllegalArgumentException(String.format(GraphConstants.f34697g, e));
    }

    /* renamed from: e */
    public final boolean m56471e(E e) {
        return this.f81369g.m56241e(e);
    }

    @Override // com.google.common.graph.Network
    public ElementOrder<E> edgeOrder() {
        return this.f81367e;
    }

    @Override // com.google.common.graph.Network
    public Set<E> edges() {
        return this.f81369g.m56247k();
    }

    @Override // com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
    public Set<E> edgesConnecting(N n, N n2) {
        rtj<N, E> m56469c = m56469c(n);
        if (!this.f81365c && n == n2) {
            return ImmutableSet.m26234of();
        }
        Preconditions.checkArgument(m56472f(n2), GraphConstants.f34696f, n2);
        return m56469c.mo55041l(n2);
    }

    /* renamed from: f */
    public final boolean m56472f(N n) {
        return this.f81368f.m56241e(n);
    }

    @Override // com.google.common.graph.Network
    public Set<E> inEdges(N n) {
        return m56469c(n).mo52946g();
    }

    @Override // com.google.common.graph.Network
    public Set<E> incidentEdges(N n) {
        return m56469c(n).mo52950k();
    }

    @Override // com.google.common.graph.Network
    public EndpointPair<N> incidentNodes(E e) {
        N m56470d = m56470d(e);
        rtj<N, E> mo56242f = this.f81368f.mo56242f(m56470d);
        Objects.requireNonNull(mo56242f);
        return EndpointPair.m27045b(this, m56470d, mo56242f.mo52945f(e));
    }

    @Override // com.google.common.graph.Network
    public boolean isDirected() {
        return this.f81363a;
    }

    @Override // com.google.common.graph.Network
    public ElementOrder<N> nodeOrder() {
        return this.f81366d;
    }

    @Override // com.google.common.graph.Network
    public Set<N> nodes() {
        return this.f81368f.m56247k();
    }

    @Override // com.google.common.graph.Network
    public Set<E> outEdges(N n) {
        return m56469c(n).mo52944e();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Network, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
        return predecessors((pxm<N, E>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Network, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
        return successors((pxm<N, E>) obj);
    }

    @Override // com.google.common.graph.Network, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
    public Set<N> predecessors(N n) {
        return m56469c(n).mo54676a();
    }

    @Override // com.google.common.graph.Network, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
    public Set<N> successors(N n) {
        return m56469c(n).mo54677c();
    }

    public pxm(NetworkBuilder<? super N, ? super E> networkBuilder, Map<N, rtj<N, E>> map, Map<E, N> map2) {
        p8j<N, rtj<N, E>> p8jVar;
        this.f81363a = networkBuilder.f82676a;
        this.f81364b = networkBuilder.f34714f;
        this.f81365c = networkBuilder.f82677b;
        this.f81366d = (ElementOrder<N>) networkBuilder.f82678c.m27042a();
        this.f81367e = (ElementOrder<E>) networkBuilder.f34715g.m27042a();
        if (map instanceof TreeMap) {
            p8jVar = new q8j<>(map);
        } else {
            p8jVar = new p8j<>(map);
        }
        this.f81368f = p8jVar;
        this.f81369g = new p8j<>(map2);
    }
}
