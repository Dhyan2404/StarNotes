package com.sunia.HTREnginev2;

import com.google.common.graph.AbstractValueGraph;
import com.google.common.graph.ElementOrder;
import com.google.common.graph.EndpointPair;
import com.google.common.graph.ValueGraph;
import java.util.Optional;
import java.util.Set;
import javax.annotation.CheckForNull;

@vnf
/* loaded from: classes6.dex */
public abstract class hug<N, V> extends AbstractValueGraph<N, V> {
    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public Set<N> adjacentNodes(N n) {
        return mo27062b().adjacentNodes(n);
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public boolean allowsSelfLoops() {
        return mo27062b().allowsSelfLoops();
    }

    /* renamed from: b */
    public abstract ValueGraph<N, V> mo27062b();

    @Override // com.google.common.graph.AbstractValueGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public int degree(N n) {
        return mo27062b().degree(n);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13904j2
    public long edgeCount() {
        return mo27062b().edges().size();
    }

    @Override // com.google.common.graph.AbstractValueGraph, com.google.common.graph.ValueGraph
    public Optional<V> edgeValue(N n, N n2) {
        return mo27062b().edgeValue(n, n2);
    }

    @CheckForNull
    public V edgeValueOrDefault(N n, N n2, @CheckForNull V v) {
        return mo27062b().edgeValueOrDefault(n, n2, v);
    }

    @Override // com.google.common.graph.AbstractValueGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public boolean hasEdgeConnecting(N n, N n2) {
        return mo27062b().hasEdgeConnecting(n, n2);
    }

    @Override // com.google.common.graph.AbstractValueGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public int inDegree(N n) {
        return mo27062b().inDegree(n);
    }

    @Override // com.google.common.graph.AbstractValueGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public ElementOrder<N> incidentEdgeOrder() {
        return mo27062b().incidentEdgeOrder();
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public boolean isDirected() {
        return mo27062b().isDirected();
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public ElementOrder<N> nodeOrder() {
        return mo27062b().nodeOrder();
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public Set<N> nodes() {
        return mo27062b().nodes();
    }

    @Override // com.google.common.graph.AbstractValueGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public int outDegree(N n) {
        return mo27062b().outDegree(n);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
        return predecessors((hug<N, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
        return successors((hug<N, V>) obj);
    }

    @Override // com.google.common.graph.AbstractValueGraph, com.google.common.graph.ValueGraph
    public Optional<V> edgeValue(EndpointPair<N> endpointPair) {
        return mo27062b().edgeValue(endpointPair);
    }

    @CheckForNull
    public V edgeValueOrDefault(EndpointPair<N> endpointPair, @CheckForNull V v) {
        return mo27062b().edgeValueOrDefault(endpointPair, v);
    }

    @Override // com.google.common.graph.AbstractValueGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public boolean hasEdgeConnecting(EndpointPair<N> endpointPair) {
        return mo27062b().hasEdgeConnecting(endpointPair);
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
    public Set<N> predecessors(N n) {
        return mo27062b().predecessors((ValueGraph<N, V>) n);
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
    public Set<N> successors(N n) {
        return mo27062b().successors((ValueGraph<N, V>) n);
    }
}
