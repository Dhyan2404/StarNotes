package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.common.graph.ImmutableValueGraph;
import com.google.common.graph.ValueGraph;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.Immutable;
import com.sunia.HTREnginev2.sxm;
import com.sunia.HTREnginev2.vnf;
import com.sunia.HTREnginev2.w4h;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@Immutable(containerOf = {"N", "V"})
@Beta
@vnf
/* loaded from: classes6.dex */
public final class ImmutableValueGraph<N, V> extends sxm<N, V> {

    /* loaded from: classes6.dex */
    public static class Builder<N, V> {

        /* renamed from: a */
        public final MutableValueGraph<N, V> f34713a;

        public Builder(ValueGraphBuilder<N, V> valueGraphBuilder) {
            this.f34713a = valueGraphBuilder.m27092b().incidentEdgeOrder(ElementOrder.stable()).build();
        }

        @CanIgnoreReturnValue
        public Builder<N, V> addNode(N n) {
            this.f34713a.addNode(n);
            return this;
        }

        public ImmutableValueGraph<N, V> build() {
            return ImmutableValueGraph.copyOf(this.f34713a);
        }

        @CanIgnoreReturnValue
        public Builder<N, V> putEdgeValue(N n, N n2, V v) {
            this.f34713a.putEdgeValue(n, n2, v);
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<N, V> putEdgeValue(EndpointPair<N> endpointPair, V v) {
            this.f34713a.putEdgeValue(endpointPair, v);
            return this;
        }
    }

    public ImmutableValueGraph(ValueGraph<N, V> valueGraph) {
        super(ValueGraphBuilder.from(valueGraph), m27079h(valueGraph), valueGraph.edges().size());
    }

    public static <N, V> ImmutableValueGraph<N, V> copyOf(ValueGraph<N, V> valueGraph) {
        if (valueGraph instanceof ImmutableValueGraph) {
            return (ImmutableValueGraph) valueGraph;
        }
        return new ImmutableValueGraph<>(valueGraph);
    }

    /* renamed from: g */
    public static <N, V> w4h<N, V> m27078g(final ValueGraph<N, V> valueGraph, final N n) {
        Function function = new Function() { // from class: com.sunia.HTREnginev2.hii
            @Override // com.google.common.base.Function, java.util.function.Function
            public final Object apply(Object obj) {
                Object m27080i;
                m27080i = ImmutableValueGraph.m27080i(ValueGraph.this, n, obj);
                return m27080i;
            }
        };
        return valueGraph.isDirected() ? C6157a.m27108y(n, valueGraph.incidentEdges(n), function) : C6159c.m27126m(Maps.asMap(valueGraph.adjacentNodes(n), function));
    }

    /* renamed from: h */
    public static <N, V> ImmutableMap<N, w4h<N, V>> m27079h(ValueGraph<N, V> valueGraph) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        for (N n : valueGraph.nodes()) {
            builder.put(n, m27078g(valueGraph, n));
        }
        return builder.buildOrThrow();
    }

    /* renamed from: i */
    public static /* synthetic */ Object m27080i(ValueGraph valueGraph, Object obj, Object obj2) {
        Object edgeValueOrDefault = valueGraph.edgeValueOrDefault(obj, obj2, null);
        Objects.requireNonNull(edgeValueOrDefault);
        return edgeValueOrDefault;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.sxm, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set adjacentNodes(Object obj) {
        return super.adjacentNodes(obj);
    }

    @Override // com.sunia.HTREnginev2.sxm, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ boolean allowsSelfLoops() {
        return super.allowsSelfLoops();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.sxm, com.google.common.graph.ValueGraph
    @CheckForNull
    public /* bridge */ /* synthetic */ Object edgeValueOrDefault(EndpointPair endpointPair, @CheckForNull Object obj) {
        return super.edgeValueOrDefault(endpointPair, obj);
    }

    @Override // com.sunia.HTREnginev2.sxm, com.google.common.graph.AbstractValueGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ boolean hasEdgeConnecting(EndpointPair endpointPair) {
        return super.hasEdgeConnecting(endpointPair);
    }

    @Override // com.google.common.graph.AbstractValueGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public ElementOrder<N> incidentEdgeOrder() {
        return ElementOrder.stable();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.sxm, com.google.common.graph.AbstractValueGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set incidentEdges(Object obj) {
        return super.incidentEdges(obj);
    }

    @Override // com.sunia.HTREnginev2.sxm, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ boolean isDirected() {
        return super.isDirected();
    }

    @Override // com.sunia.HTREnginev2.sxm, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ ElementOrder nodeOrder() {
        return super.nodeOrder();
    }

    @Override // com.sunia.HTREnginev2.sxm, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set nodes() {
        return super.nodes();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.sxm, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set predecessors(Object obj) {
        return super.predecessors((ImmutableValueGraph<N, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.sxm, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set successors(Object obj) {
        return super.successors((ImmutableValueGraph<N, V>) obj);
    }

    @Override // com.google.common.graph.AbstractValueGraph, com.google.common.graph.ValueGraph
    public ImmutableGraph<N> asGraph() {
        return new ImmutableGraph<>(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.sxm, com.google.common.graph.ValueGraph
    @CheckForNull
    public /* bridge */ /* synthetic */ Object edgeValueOrDefault(Object obj, Object obj2, @CheckForNull Object obj3) {
        return super.edgeValueOrDefault(obj, obj2, obj3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.sxm, com.google.common.graph.AbstractValueGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ boolean hasEdgeConnecting(Object obj, Object obj2) {
        return super.hasEdgeConnecting(obj, obj2);
    }

    @Deprecated
    public static <N, V> ImmutableValueGraph<N, V> copyOf(ImmutableValueGraph<N, V> immutableValueGraph) {
        return (ImmutableValueGraph) Preconditions.checkNotNull(immutableValueGraph);
    }
}
