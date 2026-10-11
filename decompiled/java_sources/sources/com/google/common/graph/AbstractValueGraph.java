package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.Function;
import com.google.common.collect.Maps;
import com.sunia.HTREnginev2.AbstractC13904j2;
import com.sunia.HTREnginev2.vnf;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import javax.annotation.CheckForNull;

@Beta
@vnf
/* loaded from: classes6.dex */
public abstract class AbstractValueGraph<N, V> extends AbstractC13904j2<N> implements ValueGraph<N, V> {

    /* renamed from: com.google.common.graph.AbstractValueGraph$a */
    /* loaded from: classes6.dex */
    public class C6140a extends AbstractGraph<N> {
        public C6140a() {
        }

        @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public Set<N> adjacentNodes(N n) {
            return AbstractValueGraph.this.adjacentNodes(n);
        }

        @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public boolean allowsSelfLoops() {
            return AbstractValueGraph.this.allowsSelfLoops();
        }

        @Override // com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public int degree(N n) {
            return AbstractValueGraph.this.degree(n);
        }

        @Override // com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public Set<EndpointPair<N>> edges() {
            return AbstractValueGraph.this.edges();
        }

        @Override // com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public int inDegree(N n) {
            return AbstractValueGraph.this.inDegree(n);
        }

        @Override // com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public ElementOrder<N> incidentEdgeOrder() {
            return AbstractValueGraph.this.incidentEdgeOrder();
        }

        @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public boolean isDirected() {
            return AbstractValueGraph.this.isDirected();
        }

        @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public ElementOrder<N> nodeOrder() {
            return AbstractValueGraph.this.nodeOrder();
        }

        @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public Set<N> nodes() {
            return AbstractValueGraph.this.nodes();
        }

        @Override // com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public int outDegree(N n) {
            return AbstractValueGraph.this.outDegree(n);
        }

        @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
        public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
            return predecessors((C6140a) obj);
        }

        @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
        public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
            return successors((C6140a) obj);
        }

        @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
        public Set<N> predecessors(N n) {
            return AbstractValueGraph.this.predecessors((AbstractValueGraph) n);
        }

        @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
        public Set<N> successors(N n) {
            return AbstractValueGraph.this.successors((AbstractValueGraph) n);
        }
    }

    /* renamed from: com.google.common.graph.AbstractValueGraph$b */
    /* loaded from: classes6.dex */
    public class C6141b implements Function<EndpointPair<N>, V> {

        /* renamed from: e */
        public final /* synthetic */ ValueGraph f34685e;

        public C6141b(ValueGraph valueGraph) {
            this.f34685e = valueGraph;
        }

        @Override // com.google.common.base.Function, java.util.function.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public V apply(EndpointPair<N> endpointPair) {
            V v = (V) this.f34685e.edgeValueOrDefault(endpointPair.nodeU(), endpointPair.nodeV(), null);
            Objects.requireNonNull(v);
            return v;
        }
    }

    /* renamed from: a */
    public static <N, V> Map<EndpointPair<N>, V> m27040a(ValueGraph<N, V> valueGraph) {
        return Maps.asMap(valueGraph.edges(), new C6141b(valueGraph));
    }

    @Override // com.google.common.graph.ValueGraph
    public Graph<N> asGraph() {
        return new C6140a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ int degree(Object obj) {
        return super.degree(obj);
    }

    @Override // com.google.common.graph.ValueGraph
    public Optional<V> edgeValue(N n, N n2) {
        return Optional.ofNullable(edgeValueOrDefault(n, n2, null));
    }

    @Override // com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set edges() {
        return super.edges();
    }

    @Override // com.google.common.graph.ValueGraph
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ValueGraph)) {
            return false;
        }
        ValueGraph valueGraph = (ValueGraph) obj;
        return isDirected() == valueGraph.isDirected() && nodes().equals(valueGraph.nodes()) && m27040a(this).equals(m27040a(valueGraph));
    }

    @Override // com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ boolean hasEdgeConnecting(EndpointPair endpointPair) {
        return super.hasEdgeConnecting(endpointPair);
    }

    @Override // com.google.common.graph.ValueGraph
    public final int hashCode() {
        return m27040a(this).hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ int inDegree(Object obj) {
        return super.inDegree(obj);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ ElementOrder incidentEdgeOrder() {
        return super.incidentEdgeOrder();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set incidentEdges(Object obj) {
        return super.incidentEdges(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ int outDegree(Object obj) {
        return super.outDegree(obj);
    }

    public String toString() {
        boolean isDirected = isDirected();
        boolean allowsSelfLoops = allowsSelfLoops();
        String valueOf = String.valueOf(nodes());
        String valueOf2 = String.valueOf(m27040a(this));
        StringBuilder sb = new StringBuilder(valueOf.length() + 59 + valueOf2.length());
        sb.append("isDirected: ");
        sb.append(isDirected);
        sb.append(", allowsSelfLoops: ");
        sb.append(allowsSelfLoops);
        sb.append(", nodes: ");
        sb.append(valueOf);
        sb.append(", edges: ");
        sb.append(valueOf2);
        return sb.toString();
    }

    @Override // com.google.common.graph.ValueGraph
    public Optional<V> edgeValue(EndpointPair<N> endpointPair) {
        return Optional.ofNullable(edgeValueOrDefault(endpointPair, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ boolean hasEdgeConnecting(Object obj, Object obj2) {
        return super.hasEdgeConnecting(obj, obj2);
    }
}
