package com.google.common.graph;

import com.google.common.graph.GraphConstants;
import com.sunia.HTREnginev2.AbstractC14332r3;
import com.sunia.HTREnginev2.InterfaceC14203on;
import com.sunia.HTREnginev2.aug;
import com.sunia.HTREnginev2.oxm;
import com.sunia.HTREnginev2.vnf;

@vnf
/* renamed from: com.google.common.graph.b */
/* loaded from: classes6.dex */
public final class C6158b<N> extends aug<N> implements MutableGraph<N> {

    /* renamed from: a */
    public final MutableValueGraph<N, GraphConstants.Presence> f34753a;

    public C6158b(AbstractC14332r3<? super N> abstractC14332r3) {
        this.f34753a = new oxm(abstractC14332r3);
    }

    @Override // com.sunia.HTREnginev2.aug
    /* renamed from: a */
    public InterfaceC14203on<N> mo27056a() {
        return this.f34753a;
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean addNode(N n) {
        return this.f34753a.addNode(n);
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean putEdge(N n, N n2) {
        return this.f34753a.putEdgeValue(n, n2, GraphConstants.Presence.EDGE_EXISTS) == null;
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean removeEdge(N n, N n2) {
        return this.f34753a.removeEdge(n, n2) != null;
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean removeNode(N n) {
        return this.f34753a.removeNode(n);
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean putEdge(EndpointPair<N> endpointPair) {
        validateEndpoints(endpointPair);
        return putEdge(endpointPair.nodeU(), endpointPair.nodeV());
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean removeEdge(EndpointPair<N> endpointPair) {
        validateEndpoints(endpointPair);
        return removeEdge(endpointPair.nodeU(), endpointPair.nodeV());
    }
}
