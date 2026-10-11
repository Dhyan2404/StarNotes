package com.sunia.HTREnginev2;

import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.graph.AbstractValueGraph;
import com.google.common.graph.ElementOrder;
import com.google.common.graph.EndpointPair;
import com.google.common.graph.Graphs;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import javax.annotation.CheckForNull;

@vnf
/* loaded from: classes6.dex */
public class sxm<N, V> extends AbstractValueGraph<N, V> {

    /* renamed from: a */
    public final boolean f84668a;

    /* renamed from: b */
    public final boolean f84669b;

    /* renamed from: c */
    public final ElementOrder<N> f84670c;

    /* renamed from: d */
    public final p8j<N, w4h<N, V>> f84671d;

    /* renamed from: e */
    public long f84672e;

    /* renamed from: com.sunia.HTREnginev2.sxm$a */
    /* loaded from: classes6.dex */
    public class C14426a extends iji<N> {

        /* renamed from: g */
        public final /* synthetic */ w4h f84673g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14426a(sxm sxmVar, InterfaceC14203on interfaceC14203on, Object obj, w4h w4hVar) {
            super(interfaceC14203on, obj);
            this.f84673g = w4hVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<EndpointPair<N>> iterator() {
            return this.f84673g.mo27114f(this.f73301e);
        }
    }

    public sxm(AbstractC14332r3<? super N> abstractC14332r3) {
        this(abstractC14332r3, abstractC14332r3.f82678c.m27043b(abstractC14332r3.f82680e.mo25761or((Optional<Integer>) 10).intValue()), 0L);
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public Set<N> adjacentNodes(N n) {
        return m57273b(n).mo27110b();
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public boolean allowsSelfLoops() {
        return this.f84669b;
    }

    /* renamed from: b */
    public final w4h<N, V> m57273b(N n) {
        w4h<N, V> mo56242f = this.f84671d.mo56242f(n);
        if (mo56242f != null) {
            return mo56242f;
        }
        Preconditions.checkNotNull(n);
        String valueOf = String.valueOf(n);
        StringBuilder sb = new StringBuilder(valueOf.length() + 38);
        sb.append("Node ");
        sb.append(valueOf);
        sb.append(" is not an element of this graph.");
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: c */
    public final boolean m57274c(@CheckForNull N n) {
        return this.f84671d.m56241e(n);
    }

    @CheckForNull
    /* renamed from: d */
    public final V m57275d(N n, N n2, @CheckForNull V v) {
        w4h<N, V> mo56242f = this.f84671d.mo56242f(n);
        V mo27112d = mo56242f == null ? null : mo56242f.mo27112d(n2);
        return mo27112d == null ? v : mo27112d;
    }

    /* renamed from: e */
    public final boolean m57276e(N n, N n2) {
        w4h<N, V> mo56242f = this.f84671d.mo56242f(n);
        return mo56242f != null && mo56242f.mo27111c().contains(n2);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13904j2
    public long edgeCount() {
        return this.f84672e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckForNull
    public V edgeValueOrDefault(N n, N n2, @CheckForNull V v) {
        return (V) m57275d(Preconditions.checkNotNull(n), Preconditions.checkNotNull(n2), v);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.AbstractValueGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public boolean hasEdgeConnecting(N n, N n2) {
        return m57276e(Preconditions.checkNotNull(n), Preconditions.checkNotNull(n2));
    }

    @Override // com.google.common.graph.AbstractValueGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public Set<EndpointPair<N>> incidentEdges(N n) {
        return new C14426a(this, this, n, m57273b(n));
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public boolean isDirected() {
        return this.f84668a;
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public ElementOrder<N> nodeOrder() {
        return this.f84670c;
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public Set<N> nodes() {
        return this.f84671d.m56247k();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
        return predecessors((sxm<N, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
        return successors((sxm<N, V>) obj);
    }

    @CheckForNull
    public V edgeValueOrDefault(EndpointPair<N> endpointPair, @CheckForNull V v) {
        validateEndpoints(endpointPair);
        return m57275d(endpointPair.nodeU(), endpointPair.nodeV(), v);
    }

    @Override // com.google.common.graph.AbstractValueGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public boolean hasEdgeConnecting(EndpointPair<N> endpointPair) {
        Preconditions.checkNotNull(endpointPair);
        return isOrderingCompatible(endpointPair) && m57276e(endpointPair.nodeU(), endpointPair.nodeV());
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
    public Set<N> predecessors(N n) {
        return m57273b(n).mo27109a();
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
    public Set<N> successors(N n) {
        return m57273b(n).mo27111c();
    }

    public sxm(AbstractC14332r3<? super N> abstractC14332r3, Map<N, w4h<N, V>> map, long j) {
        p8j<N, w4h<N, V>> p8jVar;
        this.f84668a = abstractC14332r3.f82676a;
        this.f84669b = abstractC14332r3.f82677b;
        this.f84670c = (ElementOrder<N>) abstractC14332r3.f82678c.m27042a();
        if (map instanceof TreeMap) {
            p8jVar = new q8j<>(map);
        } else {
            p8jVar = new p8j<>(map);
        }
        this.f84671d = p8jVar;
        this.f84672e = Graphs.m27050c(j);
    }
}
