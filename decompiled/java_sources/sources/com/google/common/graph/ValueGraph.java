package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.sunia.HTREnginev2.InterfaceC14203on;
import com.sunia.HTREnginev2.vnf;
import java.util.Optional;
import java.util.Set;
import javax.annotation.CheckForNull;

@Beta
@vnf
/* loaded from: classes6.dex */
public interface ValueGraph<N, V> extends InterfaceC14203on<N> {
    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    Set<N> adjacentNodes(N n);

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    boolean allowsSelfLoops();

    Graph<N> asGraph();

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    int degree(N n);

    Optional<V> edgeValue(EndpointPair<N> endpointPair);

    Optional<V> edgeValue(N n, N n2);

    @CheckForNull
    V edgeValueOrDefault(EndpointPair<N> endpointPair, @CheckForNull V v);

    @CheckForNull
    V edgeValueOrDefault(N n, N n2, @CheckForNull V v);

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    Set<EndpointPair<N>> edges();

    boolean equals(@CheckForNull Object obj);

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    boolean hasEdgeConnecting(EndpointPair<N> endpointPair);

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    boolean hasEdgeConnecting(N n, N n2);

    int hashCode();

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    int inDegree(N n);

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    ElementOrder<N> incidentEdgeOrder();

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    Set<EndpointPair<N>> incidentEdges(N n);

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    boolean isDirected();

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    ElementOrder<N> nodeOrder();

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    Set<N> nodes();

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    int outDegree(N n);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
    /* bridge */ /* synthetic */ default Iterable predecessors(Object obj) {
        return predecessors((ValueGraph<N, V>) obj);
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
    Set<N> predecessors(N n);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
    /* bridge */ /* synthetic */ default Iterable successors(Object obj) {
        return successors((ValueGraph<N, V>) obj);
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
    Set<N> successors(N n);
}
