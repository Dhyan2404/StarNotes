package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.Function;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterables;
import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.InterfaceC14203on;
import com.sunia.HTREnginev2.aug;
import com.sunia.HTREnginev2.gug;
import com.sunia.HTREnginev2.hug;
import com.sunia.HTREnginev2.iji;
import com.sunia.HTREnginev2.nxm;
import com.sunia.HTREnginev2.oxm;
import com.sunia.HTREnginev2.vnf;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import javax.annotation.CheckForNull;

@Beta
@vnf
/* loaded from: classes6.dex */
public final class Graphs {

    /* loaded from: classes6.dex */
    public enum NodeVisitState {
        PENDING,
        COMPLETE
    }

    /* renamed from: com.google.common.graph.Graphs$a */
    /* loaded from: classes6.dex */
    public static class C6146a<N> extends aug<N> {

        /* renamed from: a */
        public final Graph<N> f34705a;

        /* renamed from: com.google.common.graph.Graphs$a$a */
        /* loaded from: classes6.dex */
        public class a extends iji<N> {

            /* renamed from: com.google.common.graph.Graphs$a$a$a, reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public class C20596a implements Function<EndpointPair<N>, EndpointPair<N>> {
                public C20596a() {
                }

                @Override // com.google.common.base.Function, java.util.function.Function
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public EndpointPair<N> apply(EndpointPair<N> endpointPair) {
                    return EndpointPair.m27044a(C6146a.this.mo27056a(), endpointPair.nodeV(), endpointPair.nodeU());
                }
            }

            public a(InterfaceC14203on interfaceC14203on, Object obj) {
                super(interfaceC14203on, obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<EndpointPair<N>> iterator() {
                return Iterators.transform(C6146a.this.mo27056a().incidentEdges(this.f73301e).iterator(), new C20596a());
            }
        }

        public C6146a(Graph<N> graph) {
            this.f34705a = graph;
        }

        @Override // com.sunia.HTREnginev2.aug
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public Graph<N> mo27056a() {
            return this.f34705a;
        }

        @Override // com.sunia.HTREnginev2.aug, com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public boolean hasEdgeConnecting(N n, N n2) {
            return mo27056a().hasEdgeConnecting(n2, n);
        }

        @Override // com.sunia.HTREnginev2.aug, com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public int inDegree(N n) {
            return mo27056a().outDegree(n);
        }

        @Override // com.sunia.HTREnginev2.aug, com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public Set<EndpointPair<N>> incidentEdges(N n) {
            return new a(this, n);
        }

        @Override // com.sunia.HTREnginev2.aug, com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public int outDegree(N n) {
            return mo27056a().inDegree(n);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.sunia.HTREnginev2.aug, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
        public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
            return predecessors((C6146a<N>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.sunia.HTREnginev2.aug, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
        public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
            return successors((C6146a<N>) obj);
        }

        @Override // com.sunia.HTREnginev2.aug, com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public boolean hasEdgeConnecting(EndpointPair<N> endpointPair) {
            return mo27056a().hasEdgeConnecting(Graphs.m27054g(endpointPair));
        }

        @Override // com.sunia.HTREnginev2.aug, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
        public Set<N> predecessors(N n) {
            return mo27056a().successors((Graph<N>) n);
        }

        @Override // com.sunia.HTREnginev2.aug, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
        public Set<N> successors(N n) {
            return mo27056a().predecessors((Graph<N>) n);
        }
    }

    /* renamed from: com.google.common.graph.Graphs$b */
    /* loaded from: classes6.dex */
    public static class C6147b<N, E> extends gug<N, E> {

        /* renamed from: a */
        public final Network<N, E> f34708a;

        public C6147b(Network<N, E> network) {
            this.f34708a = network;
        }

        @Override // com.sunia.HTREnginev2.gug
        /* renamed from: c */
        public Network<N, E> mo27060c() {
            return this.f34708a;
        }

        @Override // com.sunia.HTREnginev2.gug, com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
        public Optional<E> edgeConnecting(N n, N n2) {
            return mo27060c().edgeConnecting(n2, n);
        }

        @Override // com.sunia.HTREnginev2.gug, com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
        @CheckForNull
        public E edgeConnectingOrNull(N n, N n2) {
            return mo27060c().edgeConnectingOrNull(n2, n);
        }

        @Override // com.sunia.HTREnginev2.gug, com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
        public Set<E> edgesConnecting(N n, N n2) {
            return mo27060c().edgesConnecting(n2, n);
        }

        @Override // com.sunia.HTREnginev2.gug, com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
        public boolean hasEdgeConnecting(N n, N n2) {
            return mo27060c().hasEdgeConnecting(n2, n);
        }

        @Override // com.sunia.HTREnginev2.gug, com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
        public int inDegree(N n) {
            return mo27060c().outDegree(n);
        }

        @Override // com.sunia.HTREnginev2.gug, com.google.common.graph.Network
        public Set<E> inEdges(N n) {
            return mo27060c().outEdges(n);
        }

        @Override // com.sunia.HTREnginev2.gug, com.google.common.graph.Network
        public EndpointPair<N> incidentNodes(E e) {
            EndpointPair<N> incidentNodes = mo27060c().incidentNodes(e);
            return EndpointPair.m27045b(this.f34708a, incidentNodes.nodeV(), incidentNodes.nodeU());
        }

        @Override // com.sunia.HTREnginev2.gug, com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
        public int outDegree(N n) {
            return mo27060c().inDegree(n);
        }

        @Override // com.sunia.HTREnginev2.gug, com.google.common.graph.Network
        public Set<E> outEdges(N n) {
            return mo27060c().inEdges(n);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.sunia.HTREnginev2.gug, com.google.common.graph.Network, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
        public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
            return predecessors((C6147b<N, E>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.sunia.HTREnginev2.gug, com.google.common.graph.Network, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
        public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
            return successors((C6147b<N, E>) obj);
        }

        @Override // com.sunia.HTREnginev2.gug, com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
        public Optional<E> edgeConnecting(EndpointPair<N> endpointPair) {
            return mo27060c().edgeConnecting(Graphs.m27054g(endpointPair));
        }

        @Override // com.sunia.HTREnginev2.gug, com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
        @CheckForNull
        public E edgeConnectingOrNull(EndpointPair<N> endpointPair) {
            return mo27060c().edgeConnectingOrNull(Graphs.m27054g(endpointPair));
        }

        @Override // com.sunia.HTREnginev2.gug, com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
        public Set<E> edgesConnecting(EndpointPair<N> endpointPair) {
            return mo27060c().edgesConnecting(Graphs.m27054g(endpointPair));
        }

        @Override // com.sunia.HTREnginev2.gug, com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
        public boolean hasEdgeConnecting(EndpointPair<N> endpointPair) {
            return mo27060c().hasEdgeConnecting(Graphs.m27054g(endpointPair));
        }

        @Override // com.sunia.HTREnginev2.gug, com.google.common.graph.Network, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
        public Set<N> predecessors(N n) {
            return mo27060c().successors((Network<N, E>) n);
        }

        @Override // com.sunia.HTREnginev2.gug, com.google.common.graph.Network, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
        public Set<N> successors(N n) {
            return mo27060c().predecessors((Network<N, E>) n);
        }
    }

    /* renamed from: com.google.common.graph.Graphs$c */
    /* loaded from: classes6.dex */
    public static class C6148c<N, V> extends hug<N, V> {

        /* renamed from: a */
        public final ValueGraph<N, V> f34709a;

        public C6148c(ValueGraph<N, V> valueGraph) {
            this.f34709a = valueGraph;
        }

        @Override // com.sunia.HTREnginev2.hug
        /* renamed from: b */
        public ValueGraph<N, V> mo27062b() {
            return this.f34709a;
        }

        @Override // com.sunia.HTREnginev2.hug, com.google.common.graph.AbstractValueGraph, com.google.common.graph.ValueGraph
        public Optional<V> edgeValue(N n, N n2) {
            return mo27062b().edgeValue(n2, n);
        }

        @Override // com.sunia.HTREnginev2.hug, com.google.common.graph.ValueGraph
        @CheckForNull
        public V edgeValueOrDefault(N n, N n2, @CheckForNull V v) {
            return mo27062b().edgeValueOrDefault(n2, n, v);
        }

        @Override // com.sunia.HTREnginev2.hug, com.google.common.graph.AbstractValueGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public boolean hasEdgeConnecting(N n, N n2) {
            return mo27062b().hasEdgeConnecting(n2, n);
        }

        @Override // com.sunia.HTREnginev2.hug, com.google.common.graph.AbstractValueGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public int inDegree(N n) {
            return mo27062b().outDegree(n);
        }

        @Override // com.sunia.HTREnginev2.hug, com.google.common.graph.AbstractValueGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public int outDegree(N n) {
            return mo27062b().inDegree(n);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.sunia.HTREnginev2.hug, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
        public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
            return predecessors((C6148c<N, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.sunia.HTREnginev2.hug, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
        public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
            return successors((C6148c<N, V>) obj);
        }

        @Override // com.sunia.HTREnginev2.hug, com.google.common.graph.AbstractValueGraph, com.google.common.graph.ValueGraph
        public Optional<V> edgeValue(EndpointPair<N> endpointPair) {
            return mo27062b().edgeValue(Graphs.m27054g(endpointPair));
        }

        @Override // com.sunia.HTREnginev2.hug, com.google.common.graph.ValueGraph
        @CheckForNull
        public V edgeValueOrDefault(EndpointPair<N> endpointPair, @CheckForNull V v) {
            return mo27062b().edgeValueOrDefault(Graphs.m27054g(endpointPair), v);
        }

        @Override // com.sunia.HTREnginev2.hug, com.google.common.graph.AbstractValueGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public boolean hasEdgeConnecting(EndpointPair<N> endpointPair) {
            return mo27062b().hasEdgeConnecting(Graphs.m27054g(endpointPair));
        }

        @Override // com.sunia.HTREnginev2.hug, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
        public Set<N> predecessors(N n) {
            return mo27062b().successors((ValueGraph<N, V>) n);
        }

        @Override // com.sunia.HTREnginev2.hug, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
        public Set<N> successors(N n) {
            return mo27062b().predecessors((ValueGraph<N, V>) n);
        }
    }

    /* renamed from: a */
    public static boolean m27048a(Graph<?> graph, Object obj, @CheckForNull Object obj2) {
        return graph.isDirected() || !Objects.equal(obj2, obj);
    }

    @CanIgnoreReturnValue
    /* renamed from: b */
    public static int m27049b(int i) {
        Preconditions.checkArgument(i >= 0, "Not true that %s is non-negative.", i);
        return i;
    }

    @CanIgnoreReturnValue
    /* renamed from: c */
    public static long m27050c(long j) {
        Preconditions.checkArgument(j >= 0, "Not true that %s is non-negative.", j);
        return j;
    }

    public static <N> MutableGraph<N> copyOf(Graph<N> graph) {
        MutableGraph<N> mutableGraph = (MutableGraph<N>) GraphBuilder.from(graph).expectedNodeCount(graph.nodes().size()).build();
        Iterator<N> it2 = graph.nodes().iterator();
        while (it2.hasNext()) {
            mutableGraph.addNode(it2.next());
        }
        for (EndpointPair<N> endpointPair : graph.edges()) {
            mutableGraph.putEdge(endpointPair.nodeU(), endpointPair.nodeV());
        }
        return mutableGraph;
    }

    @CanIgnoreReturnValue
    /* renamed from: d */
    public static int m27051d(int i) {
        Preconditions.checkArgument(i > 0, "Not true that %s is positive.", i);
        return i;
    }

    @CanIgnoreReturnValue
    /* renamed from: e */
    public static long m27052e(long j) {
        Preconditions.checkArgument(j > 0, "Not true that %s is positive.", j);
        return j;
    }

    /* renamed from: f */
    public static <N> boolean m27053f(Graph<N> graph, Map<Object, NodeVisitState> map, N n, @CheckForNull N n2) {
        NodeVisitState nodeVisitState = map.get(n);
        if (nodeVisitState == NodeVisitState.COMPLETE) {
            return false;
        }
        NodeVisitState nodeVisitState2 = NodeVisitState.PENDING;
        if (nodeVisitState == nodeVisitState2) {
            return true;
        }
        map.put(n, nodeVisitState2);
        for (N n3 : graph.successors((Graph<N>) n)) {
            if (m27048a(graph, n3, n2) && m27053f(graph, map, n3, n)) {
                return true;
            }
        }
        map.put(n, NodeVisitState.COMPLETE);
        return false;
    }

    /* renamed from: g */
    public static <N> EndpointPair<N> m27054g(EndpointPair<N> endpointPair) {
        return endpointPair.isOrdered() ? EndpointPair.ordered(endpointPair.target(), endpointPair.source()) : endpointPair;
    }

    public static <N> boolean hasCycle(Graph<N> graph) {
        int size = graph.edges().size();
        if (size == 0) {
            return false;
        }
        if (!graph.isDirected() && size >= graph.nodes().size()) {
            return true;
        }
        HashMap newHashMapWithExpectedSize = Maps.newHashMapWithExpectedSize(graph.nodes().size());
        Iterator<N> it2 = graph.nodes().iterator();
        while (it2.hasNext()) {
            if (m27053f(graph, newHashMapWithExpectedSize, it2.next(), null)) {
                return true;
            }
        }
        return false;
    }

    public static <N> MutableGraph<N> inducedSubgraph(Graph<N> graph, Iterable<? extends N> iterable) {
        C6158b c6158b;
        if (iterable instanceof Collection) {
            c6158b = (MutableGraph<N>) GraphBuilder.from(graph).expectedNodeCount(((Collection) iterable).size()).build();
        } else {
            c6158b = (MutableGraph<N>) GraphBuilder.from(graph).build();
        }
        Iterator<? extends N> it2 = iterable.iterator();
        while (it2.hasNext()) {
            c6158b.addNode(it2.next());
        }
        for (N n : c6158b.nodes()) {
            for (N n2 : graph.successors((Graph<N>) n)) {
                if (c6158b.nodes().contains(n2)) {
                    c6158b.putEdge(n, n2);
                }
            }
        }
        return c6158b;
    }

    public static <N> Set<N> reachableNodes(Graph<N> graph, N n) {
        Preconditions.checkArgument(graph.nodes().contains(n), GraphConstants.f34696f, n);
        return ImmutableSet.copyOf(Traverser.forGraph(graph).breadthFirst((Traverser) n));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <N> Graph<N> transitiveClosure(Graph<N> graph) {
        C6158b build = GraphBuilder.from(graph).allowsSelfLoops(true).build();
        if (graph.isDirected()) {
            for (N n : graph.nodes()) {
                Iterator it2 = reachableNodes(graph, n).iterator();
                while (it2.hasNext()) {
                    build.putEdge(n, it2.next());
                }
            }
        } else {
            HashSet hashSet = new HashSet();
            for (N n2 : graph.nodes()) {
                if (!hashSet.contains(n2)) {
                    Set reachableNodes = reachableNodes(graph, n2);
                    hashSet.addAll(reachableNodes);
                    int i = 1;
                    for (Object obj : reachableNodes) {
                        int i2 = i + 1;
                        Iterator it3 = Iterables.limit(reachableNodes, i).iterator();
                        while (it3.hasNext()) {
                            build.putEdge(obj, it3.next());
                        }
                        i = i2;
                    }
                }
            }
        }
        return build;
    }

    public static <N> Graph<N> transpose(Graph<N> graph) {
        if (!graph.isDirected()) {
            return graph;
        }
        if (graph instanceof C6146a) {
            return ((C6146a) graph).f34705a;
        }
        return new C6146a(graph);
    }

    public static <N, V> ValueGraph<N, V> transpose(ValueGraph<N, V> valueGraph) {
        if (!valueGraph.isDirected()) {
            return valueGraph;
        }
        if (valueGraph instanceof C6148c) {
            return ((C6148c) valueGraph).f34709a;
        }
        return new C6148c(valueGraph);
    }

    public static <N, V> MutableValueGraph<N, V> copyOf(ValueGraph<N, V> valueGraph) {
        MutableValueGraph<N, V> mutableValueGraph = (MutableValueGraph<N, V>) ValueGraphBuilder.from(valueGraph).expectedNodeCount(valueGraph.nodes().size()).build();
        Iterator<N> it2 = valueGraph.nodes().iterator();
        while (it2.hasNext()) {
            mutableValueGraph.addNode(it2.next());
        }
        for (EndpointPair<N> endpointPair : valueGraph.edges()) {
            N nodeU = endpointPair.nodeU();
            N nodeV = endpointPair.nodeV();
            V edgeValueOrDefault = valueGraph.edgeValueOrDefault(endpointPair.nodeU(), endpointPair.nodeV(), null);
            java.util.Objects.requireNonNull(edgeValueOrDefault);
            mutableValueGraph.putEdgeValue(nodeU, nodeV, edgeValueOrDefault);
        }
        return mutableValueGraph;
    }

    public static boolean hasCycle(Network<?, ?> network) {
        if (network.isDirected() || !network.allowsParallelEdges() || network.edges().size() <= network.asGraph().edges().size()) {
            return hasCycle(network.asGraph());
        }
        return true;
    }

    public static <N, E> Network<N, E> transpose(Network<N, E> network) {
        if (!network.isDirected()) {
            return network;
        }
        if (network instanceof C6147b) {
            return ((C6147b) network).f34708a;
        }
        return new C6147b(network);
    }

    public static <N, V> MutableValueGraph<N, V> inducedSubgraph(ValueGraph<N, V> valueGraph, Iterable<? extends N> iterable) {
        oxm oxmVar;
        if (iterable instanceof Collection) {
            oxmVar = (MutableValueGraph<N, V>) ValueGraphBuilder.from(valueGraph).expectedNodeCount(((Collection) iterable).size()).build();
        } else {
            oxmVar = (MutableValueGraph<N, V>) ValueGraphBuilder.from(valueGraph).build();
        }
        Iterator<? extends N> it2 = iterable.iterator();
        while (it2.hasNext()) {
            oxmVar.addNode(it2.next());
        }
        for (N n : oxmVar.nodes()) {
            for (N n2 : valueGraph.successors((ValueGraph<N, V>) n)) {
                if (oxmVar.nodes().contains(n2)) {
                    V edgeValueOrDefault = valueGraph.edgeValueOrDefault(n, n2, null);
                    java.util.Objects.requireNonNull(edgeValueOrDefault);
                    oxmVar.putEdgeValue(n, n2, edgeValueOrDefault);
                }
            }
        }
        return oxmVar;
    }

    public static <N, E> MutableNetwork<N, E> copyOf(Network<N, E> network) {
        MutableNetwork<N, E> mutableNetwork = (MutableNetwork<N, E>) NetworkBuilder.from(network).expectedNodeCount(network.nodes().size()).expectedEdgeCount(network.edges().size()).build();
        Iterator<N> it2 = network.nodes().iterator();
        while (it2.hasNext()) {
            mutableNetwork.addNode(it2.next());
        }
        for (E e : network.edges()) {
            EndpointPair<N> incidentNodes = network.incidentNodes(e);
            mutableNetwork.addEdge(incidentNodes.nodeU(), incidentNodes.nodeV(), e);
        }
        return mutableNetwork;
    }

    public static <N, E> MutableNetwork<N, E> inducedSubgraph(Network<N, E> network, Iterable<? extends N> iterable) {
        nxm nxmVar;
        if (iterable instanceof Collection) {
            nxmVar = (MutableNetwork<N, E>) NetworkBuilder.from(network).expectedNodeCount(((Collection) iterable).size()).build();
        } else {
            nxmVar = (MutableNetwork<N, E>) NetworkBuilder.from(network).build();
        }
        Iterator<? extends N> it2 = iterable.iterator();
        while (it2.hasNext()) {
            nxmVar.addNode(it2.next());
        }
        for (E e : nxmVar.nodes()) {
            for (E e2 : network.outEdges(e)) {
                N adjacentNode = network.incidentNodes(e2).adjacentNode(e);
                if (nxmVar.nodes().contains(adjacentNode)) {
                    nxmVar.addEdge(e, adjacentNode, e2);
                }
            }
        }
        return nxmVar;
    }
}
