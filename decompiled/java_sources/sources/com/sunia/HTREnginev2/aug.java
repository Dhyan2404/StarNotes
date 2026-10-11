package com.sunia.HTREnginev2;

import com.google.common.graph.AbstractGraph;
import com.google.common.graph.ElementOrder;
import com.google.common.graph.EndpointPair;
import java.util.Set;

@vnf
/* loaded from: classes6.dex */
public abstract class aug<N> extends AbstractGraph<N> {
    /* renamed from: a */
    public abstract InterfaceC14203on<N> mo27056a();

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public Set<N> adjacentNodes(N n) {
        return mo27056a().adjacentNodes(n);
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public boolean allowsSelfLoops() {
        return mo27056a().allowsSelfLoops();
    }

    @Override // com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public int degree(N n) {
        return mo27056a().degree(n);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13904j2
    public long edgeCount() {
        return mo27056a().edges().size();
    }

    @Override // com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public boolean hasEdgeConnecting(N n, N n2) {
        return mo27056a().hasEdgeConnecting(n, n2);
    }

    @Override // com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public int inDegree(N n) {
        return mo27056a().inDegree(n);
    }

    @Override // com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public ElementOrder<N> incidentEdgeOrder() {
        return mo27056a().incidentEdgeOrder();
    }

    @Override // com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public Set<EndpointPair<N>> incidentEdges(N n) {
        return mo27056a().incidentEdges(n);
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public boolean isDirected() {
        return mo27056a().isDirected();
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public ElementOrder<N> nodeOrder() {
        return mo27056a().nodeOrder();
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public Set<N> nodes() {
        return mo27056a().nodes();
    }

    @Override // com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public int outDegree(N n) {
        return mo27056a().outDegree(n);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
        return predecessors((aug<N>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
        return successors((aug<N>) obj);
    }

    @Override // com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public boolean hasEdgeConnecting(EndpointPair<N> endpointPair) {
        return mo27056a().hasEdgeConnecting(endpointPair);
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
    public Set<N> predecessors(N n) {
        return mo27056a().predecessors((InterfaceC14203on<N>) n);
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
    public Set<N> successors(N n) {
        return mo27056a().successors((InterfaceC14203on<N>) n);
    }
}
