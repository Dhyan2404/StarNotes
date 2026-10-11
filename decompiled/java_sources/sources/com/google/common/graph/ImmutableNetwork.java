package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.common.graph.ImmutableNetwork;
import com.google.common.graph.Network;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.Immutable;
import com.sunia.HTREnginev2.jsn;
import com.sunia.HTREnginev2.k5f;
import com.sunia.HTREnginev2.ksn;
import com.sunia.HTREnginev2.l5f;
import com.sunia.HTREnginev2.pxm;
import com.sunia.HTREnginev2.rtj;
import com.sunia.HTREnginev2.vnf;
import java.util.Map;
import java.util.Set;

@Immutable(containerOf = {"N", "E"})
@Beta
@vnf
/* loaded from: classes6.dex */
public final class ImmutableNetwork<N, E> extends pxm<N, E> {

    /* loaded from: classes6.dex */
    public static class Builder<N, E> {

        /* renamed from: a */
        public final MutableNetwork<N, E> f34712a;

        public Builder(NetworkBuilder<N, E> networkBuilder) {
            this.f34712a = (MutableNetwork<N, E>) networkBuilder.build();
        }

        @CanIgnoreReturnValue
        public Builder<N, E> addEdge(N n, N n2, E e) {
            this.f34712a.addEdge(n, n2, e);
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<N, E> addNode(N n) {
            this.f34712a.addNode(n);
            return this;
        }

        public ImmutableNetwork<N, E> build() {
            return ImmutableNetwork.copyOf(this.f34712a);
        }

        @CanIgnoreReturnValue
        public Builder<N, E> addEdge(EndpointPair<N> endpointPair, E e) {
            this.f34712a.addEdge(endpointPair, e);
            return this;
        }
    }

    public ImmutableNetwork(Network<N, E> network) {
        super(NetworkBuilder.from(network), m27071m(network), m27070l(network));
    }

    public static <N, E> ImmutableNetwork<N, E> copyOf(Network<N, E> network) {
        if (network instanceof ImmutableNetwork) {
            return (ImmutableNetwork) network;
        }
        return new ImmutableNetwork<>(network);
    }

    /* renamed from: j */
    public static <N, E> Function<E, N> m27068j(final Network<N, E> network, final N n) {
        return new Function() { // from class: com.sunia.HTREnginev2.aii
            @Override // com.google.common.base.Function, java.util.function.Function
            public final Object apply(Object obj) {
                Object m27072n;
                m27072n = ImmutableNetwork.m27072n(Network.this, n, obj);
                return m27072n;
            }
        };
    }

    /* renamed from: k */
    public static <N, E> rtj<N, E> m27069k(Network<N, E> network, N n) {
        if (!network.isDirected()) {
            Map asMap = Maps.asMap(network.incidentEdges(n), m27068j(network, n));
            return network.allowsParallelEdges() ? jsn.m55040q(asMap) : ksn.m55317n(asMap);
        }
        Map asMap2 = Maps.asMap(network.inEdges(n), m27075q(network));
        Map asMap3 = Maps.asMap(network.outEdges(n), m27076r(network));
        int size = network.edgesConnecting(n, n).size();
        return network.allowsParallelEdges() ? k5f.m55188q(asMap2, asMap3, size) : l5f.m55380o(asMap2, asMap3, size);
    }

    /* renamed from: l */
    public static <N, E> Map<E, N> m27070l(Network<N, E> network) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        for (E e : network.edges()) {
            builder.put(e, network.incidentNodes(e).nodeU());
        }
        return builder.buildOrThrow();
    }

    /* renamed from: m */
    public static <N, E> Map<N, rtj<N, E>> m27071m(Network<N, E> network) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        for (N n : network.nodes()) {
            builder.put(n, m27069k(network, n));
        }
        return builder.buildOrThrow();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: n */
    public static /* synthetic */ Object m27072n(Network network, Object obj, Object obj2) {
        return network.incidentNodes(obj2).adjacentNode(obj);
    }

    /* renamed from: o */
    public static /* synthetic */ Object m27073o(Network network, Object obj) {
        return network.incidentNodes(obj).source();
    }

    /* renamed from: p */
    public static /* synthetic */ Object m27074p(Network network, Object obj) {
        return network.incidentNodes(obj).target();
    }

    /* renamed from: q */
    public static <N, E> Function<E, N> m27075q(final Network<N, E> network) {
        return new Function() { // from class: com.sunia.HTREnginev2.yhi
            @Override // com.google.common.base.Function, java.util.function.Function
            public final Object apply(Object obj) {
                Object m27073o;
                m27073o = ImmutableNetwork.m27073o(Network.this, obj);
                return m27073o;
            }
        };
    }

    /* renamed from: r */
    public static <N, E> Function<E, N> m27076r(final Network<N, E> network) {
        return new Function() { // from class: com.sunia.HTREnginev2.zhi
            @Override // com.google.common.base.Function, java.util.function.Function
            public final Object apply(Object obj) {
                Object m27074p;
                m27074p = ImmutableNetwork.m27074p(Network.this, obj);
                return m27074p;
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.pxm, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Set adjacentNodes(Object obj) {
        return super.adjacentNodes(obj);
    }

    @Override // com.sunia.HTREnginev2.pxm, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ boolean allowsParallelEdges() {
        return super.allowsParallelEdges();
    }

    @Override // com.sunia.HTREnginev2.pxm, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ boolean allowsSelfLoops() {
        return super.allowsSelfLoops();
    }

    @Override // com.sunia.HTREnginev2.pxm, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ ElementOrder edgeOrder() {
        return super.edgeOrder();
    }

    @Override // com.sunia.HTREnginev2.pxm, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Set edges() {
        return super.edges();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.pxm, com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Set edgesConnecting(Object obj, Object obj2) {
        return super.edgesConnecting(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.pxm, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Set inEdges(Object obj) {
        return super.inEdges(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.pxm, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Set incidentEdges(Object obj) {
        return super.incidentEdges(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.pxm, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ EndpointPair incidentNodes(Object obj) {
        return super.incidentNodes(obj);
    }

    @Override // com.sunia.HTREnginev2.pxm, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ boolean isDirected() {
        return super.isDirected();
    }

    @Override // com.sunia.HTREnginev2.pxm, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ ElementOrder nodeOrder() {
        return super.nodeOrder();
    }

    @Override // com.sunia.HTREnginev2.pxm, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Set nodes() {
        return super.nodes();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.pxm, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Set outEdges(Object obj) {
        return super.outEdges(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.pxm, com.google.common.graph.Network, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set predecessors(Object obj) {
        return super.predecessors((ImmutableNetwork<N, E>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.pxm, com.google.common.graph.Network, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set successors(Object obj) {
        return super.successors((ImmutableNetwork<N, E>) obj);
    }

    @Override // com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
    public ImmutableGraph<N> asGraph() {
        return new ImmutableGraph<>(super.asGraph());
    }

    @Deprecated
    public static <N, E> ImmutableNetwork<N, E> copyOf(ImmutableNetwork<N, E> immutableNetwork) {
        return (ImmutableNetwork) Preconditions.checkNotNull(immutableNetwork);
    }
}
