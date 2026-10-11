package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.Function;
import com.google.common.base.Functions;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.common.graph.GraphConstants;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.Immutable;
import com.sunia.HTREnginev2.InterfaceC14203on;
import com.sunia.HTREnginev2.aug;
import com.sunia.HTREnginev2.sxm;
import com.sunia.HTREnginev2.vnf;
import com.sunia.HTREnginev2.w4h;
import java.util.Set;

@Immutable(containerOf = {"N"})
@Beta
@vnf
/* loaded from: classes6.dex */
public class ImmutableGraph<N> extends aug<N> {

    /* renamed from: a */
    public final InterfaceC14203on<N> f34710a;

    /* loaded from: classes6.dex */
    public static class Builder<N> {

        /* renamed from: a */
        public final MutableGraph<N> f34711a;

        public Builder(GraphBuilder<N> graphBuilder) {
            this.f34711a = graphBuilder.m27047b().incidentEdgeOrder(ElementOrder.stable()).build();
        }

        @CanIgnoreReturnValue
        public Builder<N> addNode(N n) {
            this.f34711a.addNode(n);
            return this;
        }

        public ImmutableGraph<N> build() {
            return ImmutableGraph.copyOf(this.f34711a);
        }

        @CanIgnoreReturnValue
        public Builder<N> putEdge(N n, N n2) {
            this.f34711a.putEdge(n, n2);
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<N> putEdge(EndpointPair<N> endpointPair) {
            this.f34711a.putEdge(endpointPair);
            return this;
        }
    }

    public ImmutableGraph(InterfaceC14203on<N> interfaceC14203on) {
        this.f34710a = interfaceC14203on;
    }

    /* renamed from: b */
    public static <N> w4h<N, GraphConstants.Presence> m27063b(Graph<N> graph, N n) {
        Function constant = Functions.constant(GraphConstants.Presence.EDGE_EXISTS);
        return graph.isDirected() ? C6157a.m27108y(n, graph.incidentEdges(n), constant) : C6159c.m27126m(Maps.asMap(graph.adjacentNodes(n), constant));
    }

    /* renamed from: c */
    public static <N> ImmutableMap<N, w4h<N, GraphConstants.Presence>> m27064c(Graph<N> graph) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        for (N n : graph.nodes()) {
            builder.put(n, m27063b(graph, n));
        }
        return builder.buildOrThrow();
    }

    public static <N> ImmutableGraph<N> copyOf(Graph<N> graph) {
        if (graph instanceof ImmutableGraph) {
            return (ImmutableGraph) graph;
        }
        return new ImmutableGraph<>(new sxm(GraphBuilder.from(graph), m27064c(graph), graph.edges().size()));
    }

    @Override // com.sunia.HTREnginev2.aug
    /* renamed from: a */
    public InterfaceC14203on<N> mo27056a() {
        return this.f34710a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.aug, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set adjacentNodes(Object obj) {
        return super.adjacentNodes(obj);
    }

    @Override // com.sunia.HTREnginev2.aug, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ boolean allowsSelfLoops() {
        return super.allowsSelfLoops();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.aug, com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ int degree(Object obj) {
        return super.degree(obj);
    }

    @Override // com.sunia.HTREnginev2.aug, com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ boolean hasEdgeConnecting(EndpointPair endpointPair) {
        return super.hasEdgeConnecting(endpointPair);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.aug, com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ int inDegree(Object obj) {
        return super.inDegree(obj);
    }

    @Override // com.sunia.HTREnginev2.aug, com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public ElementOrder<N> incidentEdgeOrder() {
        return ElementOrder.stable();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.aug, com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set incidentEdges(Object obj) {
        return super.incidentEdges(obj);
    }

    @Override // com.sunia.HTREnginev2.aug, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ boolean isDirected() {
        return super.isDirected();
    }

    @Override // com.sunia.HTREnginev2.aug, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ ElementOrder nodeOrder() {
        return super.nodeOrder();
    }

    @Override // com.sunia.HTREnginev2.aug, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set nodes() {
        return super.nodes();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.aug, com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ int outDegree(Object obj) {
        return super.outDegree(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.aug, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set predecessors(Object obj) {
        return super.predecessors((ImmutableGraph<N>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.aug, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set successors(Object obj) {
        return super.successors((ImmutableGraph<N>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.aug, com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ boolean hasEdgeConnecting(Object obj, Object obj2) {
        return super.hasEdgeConnecting(obj, obj2);
    }

    @Deprecated
    public static <N> ImmutableGraph<N> copyOf(ImmutableGraph<N> immutableGraph) {
        return (ImmutableGraph) Preconditions.checkNotNull(immutableGraph);
    }
}
