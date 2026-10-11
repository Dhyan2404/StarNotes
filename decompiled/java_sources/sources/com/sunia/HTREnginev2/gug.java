package com.sunia.HTREnginev2;

import com.google.common.graph.AbstractNetwork;
import com.google.common.graph.ElementOrder;
import com.google.common.graph.EndpointPair;
import com.google.common.graph.Network;
import java.util.Optional;
import java.util.Set;
import javax.annotation.CheckForNull;

@vnf
/* loaded from: classes6.dex */
public abstract class gug<N, E> extends AbstractNetwork<N, E> {
    @Override // com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
    public Set<E> adjacentEdges(E e) {
        return mo27060c().adjacentEdges(e);
    }

    @Override // com.google.common.graph.Network
    public Set<N> adjacentNodes(N n) {
        return mo27060c().adjacentNodes(n);
    }

    @Override // com.google.common.graph.Network
    public boolean allowsParallelEdges() {
        return mo27060c().allowsParallelEdges();
    }

    @Override // com.google.common.graph.Network
    public boolean allowsSelfLoops() {
        return mo27060c().allowsSelfLoops();
    }

    /* renamed from: c */
    public abstract Network<N, E> mo27060c();

    @Override // com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
    public int degree(N n) {
        return mo27060c().degree(n);
    }

    @Override // com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
    public Optional<E> edgeConnecting(N n, N n2) {
        return mo27060c().edgeConnecting(n, n2);
    }

    @Override // com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
    @CheckForNull
    public E edgeConnectingOrNull(N n, N n2) {
        return mo27060c().edgeConnectingOrNull(n, n2);
    }

    @Override // com.google.common.graph.Network
    public ElementOrder<E> edgeOrder() {
        return mo27060c().edgeOrder();
    }

    @Override // com.google.common.graph.Network
    public Set<E> edges() {
        return mo27060c().edges();
    }

    @Override // com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
    public Set<E> edgesConnecting(N n, N n2) {
        return mo27060c().edgesConnecting(n, n2);
    }

    @Override // com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
    public boolean hasEdgeConnecting(N n, N n2) {
        return mo27060c().hasEdgeConnecting(n, n2);
    }

    @Override // com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
    public int inDegree(N n) {
        return mo27060c().inDegree(n);
    }

    @Override // com.google.common.graph.Network
    public Set<E> inEdges(N n) {
        return mo27060c().inEdges(n);
    }

    @Override // com.google.common.graph.Network
    public Set<E> incidentEdges(N n) {
        return mo27060c().incidentEdges(n);
    }

    @Override // com.google.common.graph.Network
    public EndpointPair<N> incidentNodes(E e) {
        return mo27060c().incidentNodes(e);
    }

    @Override // com.google.common.graph.Network
    public boolean isDirected() {
        return mo27060c().isDirected();
    }

    @Override // com.google.common.graph.Network
    public ElementOrder<N> nodeOrder() {
        return mo27060c().nodeOrder();
    }

    @Override // com.google.common.graph.Network
    public Set<N> nodes() {
        return mo27060c().nodes();
    }

    @Override // com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
    public int outDegree(N n) {
        return mo27060c().outDegree(n);
    }

    @Override // com.google.common.graph.Network
    public Set<E> outEdges(N n) {
        return mo27060c().outEdges(n);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Network, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
        return predecessors((gug<N, E>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Network, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
        return successors((gug<N, E>) obj);
    }

    @Override // com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
    public Optional<E> edgeConnecting(EndpointPair<N> endpointPair) {
        return mo27060c().edgeConnecting(endpointPair);
    }

    @Override // com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
    @CheckForNull
    public E edgeConnectingOrNull(EndpointPair<N> endpointPair) {
        return mo27060c().edgeConnectingOrNull(endpointPair);
    }

    @Override // com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
    public Set<E> edgesConnecting(EndpointPair<N> endpointPair) {
        return mo27060c().edgesConnecting(endpointPair);
    }

    @Override // com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
    public boolean hasEdgeConnecting(EndpointPair<N> endpointPair) {
        return mo27060c().hasEdgeConnecting(endpointPair);
    }

    @Override // com.google.common.graph.Network, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
    public Set<N> predecessors(N n) {
        return mo27060c().predecessors((Network<N, E>) n);
    }

    @Override // com.google.common.graph.Network, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
    public Set<N> successors(N n) {
        return mo27060c().successors((Network<N, E>) n);
    }
}
