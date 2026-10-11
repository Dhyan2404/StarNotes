package com.sunia.HTREnginev2;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.graph.EndpointPair;
import com.google.common.graph.GraphConstants;
import com.google.common.graph.MutableNetwork;
import com.google.common.graph.NetworkBuilder;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Objects;

@vnf
/* loaded from: classes6.dex */
public final class nxm<N, E> extends pxm<N, E> implements MutableNetwork<N, E> {
    public nxm(NetworkBuilder<? super N, ? super E> networkBuilder) {
        super(networkBuilder);
    }

    @Override // com.google.common.graph.MutableNetwork
    @CanIgnoreReturnValue
    public boolean addEdge(N n, N n2, E e) {
        Preconditions.checkNotNull(n, "nodeU");
        Preconditions.checkNotNull(n2, "nodeV");
        Preconditions.checkNotNull(e, "edge");
        if (m56471e(e)) {
            EndpointPair<N> incidentNodes = incidentNodes(e);
            EndpointPair m27045b = EndpointPair.m27045b(this, n, n2);
            Preconditions.checkArgument(incidentNodes.equals(m27045b), GraphConstants.f34698h, e, incidentNodes, m27045b);
            return false;
        }
        rtj<N, E> mo56242f = this.f81368f.mo56242f(n);
        if (!allowsParallelEdges()) {
            Preconditions.checkArgument(mo56242f == null || !mo56242f.mo54677c().contains(n2), GraphConstants.f34700j, n, n2);
        }
        boolean equals = n.equals(n2);
        if (!allowsSelfLoops()) {
            Preconditions.checkArgument(!equals, GraphConstants.f34701k, n);
        }
        if (mo56242f == null) {
            mo56242f = m55809g(n);
        }
        mo56242f.mo52948i(e, n2);
        rtj<N, E> mo56242f2 = this.f81368f.mo56242f(n2);
        if (mo56242f2 == null) {
            mo56242f2 = m55809g(n2);
        }
        mo56242f2.mo52949j(e, n, equals);
        this.f81369g.m56245i(e, n);
        return true;
    }

    @Override // com.google.common.graph.MutableNetwork
    @CanIgnoreReturnValue
    public boolean addNode(N n) {
        Preconditions.checkNotNull(n, "node");
        if (m56472f(n)) {
            return false;
        }
        m55809g(n);
        return true;
    }

    @CanIgnoreReturnValue
    /* renamed from: g */
    public final rtj<N, E> m55809g(N n) {
        rtj<N, E> m55810h = m55810h();
        Preconditions.checkState(this.f81368f.m56245i(n, m55810h) == null);
        return m55810h;
    }

    /* renamed from: h */
    public final rtj<N, E> m55810h() {
        return isDirected() ? allowsParallelEdges() ? k5f.m55187p() : l5f.m55379n() : allowsParallelEdges() ? jsn.m55039p() : ksn.m55316m();
    }

    @Override // com.google.common.graph.MutableNetwork
    @CanIgnoreReturnValue
    public boolean removeEdge(E e) {
        Preconditions.checkNotNull(e, "edge");
        N mo56242f = this.f81369g.mo56242f(e);
        boolean z = false;
        if (mo56242f == null) {
            return false;
        }
        rtj<N, E> mo56242f2 = this.f81368f.mo56242f(mo56242f);
        Objects.requireNonNull(mo56242f2);
        rtj<N, E> rtjVar = mo56242f2;
        N mo52945f = rtjVar.mo52945f(e);
        rtj<N, E> mo56242f3 = this.f81368f.mo56242f(mo52945f);
        Objects.requireNonNull(mo56242f3);
        rtj<N, E> rtjVar2 = mo56242f3;
        rtjVar.mo52943d(e);
        if (allowsSelfLoops() && mo56242f.equals(mo52945f)) {
            z = true;
        }
        rtjVar2.mo52947h(e, z);
        this.f81369g.m56246j(e);
        return true;
    }

    @Override // com.google.common.graph.MutableNetwork
    @CanIgnoreReturnValue
    public boolean removeNode(N n) {
        Preconditions.checkNotNull(n, "node");
        rtj<N, E> mo56242f = this.f81368f.mo56242f(n);
        if (mo56242f == null) {
            return false;
        }
        UnmodifiableIterator<E> it2 = ImmutableList.copyOf((Collection) mo56242f.mo52950k()).iterator();
        while (it2.hasNext()) {
            removeEdge(it2.next());
        }
        this.f81368f.m56246j(n);
        return true;
    }

    @Override // com.google.common.graph.MutableNetwork
    @CanIgnoreReturnValue
    public boolean addEdge(EndpointPair<N> endpointPair, E e) {
        validateEndpoints(endpointPair);
        return addEdge(endpointPair.nodeU(), endpointPair.nodeV(), e);
    }
}
