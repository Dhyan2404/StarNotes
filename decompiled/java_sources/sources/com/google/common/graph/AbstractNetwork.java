package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.common.math.IntMath;
import com.sunia.HTREnginev2.vnf;
import java.util.AbstractSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import javax.annotation.CheckForNull;

@Beta
@vnf
/* loaded from: classes6.dex */
public abstract class AbstractNetwork<N, E> implements Network<N, E> {

    /* renamed from: com.google.common.graph.AbstractNetwork$a */
    /* loaded from: classes6.dex */
    public class C6137a extends AbstractGraph<N> {

        /* renamed from: com.google.common.graph.AbstractNetwork$a$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractSet<EndpointPair<N>> {

            /* renamed from: com.google.common.graph.AbstractNetwork$a$a$a, reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public class C20595a implements Function<E, EndpointPair<N>> {
                public C20595a() {
                }

                @Override // com.google.common.base.Function, java.util.function.Function
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public EndpointPair<N> apply(E e) {
                    return AbstractNetwork.this.incidentNodes(e);
                }
            }

            public a() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(@CheckForNull Object obj) {
                if (!(obj instanceof EndpointPair)) {
                    return false;
                }
                EndpointPair<?> endpointPair = (EndpointPair) obj;
                return C6137a.this.isOrderingCompatible(endpointPair) && C6137a.this.nodes().contains(endpointPair.nodeU()) && C6137a.this.successors((C6137a) endpointPair.nodeU()).contains(endpointPair.nodeV());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<EndpointPair<N>> iterator() {
                return Iterators.transform(AbstractNetwork.this.edges().iterator(), new C20595a());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return AbstractNetwork.this.edges().size();
            }
        }

        public C6137a() {
        }

        @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public Set<N> adjacentNodes(N n) {
            return AbstractNetwork.this.adjacentNodes(n);
        }

        @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public boolean allowsSelfLoops() {
            return AbstractNetwork.this.allowsSelfLoops();
        }

        @Override // com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public Set<EndpointPair<N>> edges() {
            return AbstractNetwork.this.allowsParallelEdges() ? super.edges() : new a();
        }

        @Override // com.google.common.graph.AbstractGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public ElementOrder<N> incidentEdgeOrder() {
            return ElementOrder.unordered();
        }

        @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public boolean isDirected() {
            return AbstractNetwork.this.isDirected();
        }

        @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public ElementOrder<N> nodeOrder() {
            return AbstractNetwork.this.nodeOrder();
        }

        @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
        public Set<N> nodes() {
            return AbstractNetwork.this.nodes();
        }

        @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
        public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
            return predecessors((C6137a) obj);
        }

        @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
        public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
            return successors((C6137a) obj);
        }

        @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
        public Set<N> predecessors(N n) {
            return AbstractNetwork.this.predecessors((AbstractNetwork) n);
        }

        @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
        public Set<N> successors(N n) {
            return AbstractNetwork.this.successors((AbstractNetwork) n);
        }
    }

    /* renamed from: com.google.common.graph.AbstractNetwork$b */
    /* loaded from: classes6.dex */
    public class C6138b implements Predicate<E> {

        /* renamed from: e */
        public final /* synthetic */ Object f34680e;

        /* renamed from: f */
        public final /* synthetic */ Object f34681f;

        public C6138b(Object obj, Object obj2) {
            this.f34680e = obj;
            this.f34681f = obj2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.base.Predicate
        public boolean apply(E e) {
            return AbstractNetwork.this.incidentNodes(e).adjacentNode(this.f34680e).equals(this.f34681f);
        }
    }

    /* renamed from: com.google.common.graph.AbstractNetwork$c */
    /* loaded from: classes6.dex */
    public class C6139c implements Function<E, EndpointPair<N>> {

        /* renamed from: e */
        public final /* synthetic */ Network f34683e;

        public C6139c(Network network) {
            this.f34683e = network;
        }

        @Override // com.google.common.base.Function, java.util.function.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public EndpointPair<N> apply(E e) {
            return this.f34683e.incidentNodes(e);
        }
    }

    /* renamed from: b */
    public static <N, E> Map<E, EndpointPair<N>> m27036b(Network<N, E> network) {
        return Maps.asMap(network.edges(), new C6139c(network));
    }

    /* renamed from: a */
    public final Predicate<E> m27037a(N n, N n2) {
        return new C6138b(n, n2);
    }

    @Override // com.google.common.graph.Network
    public Set<E> adjacentEdges(E e) {
        EndpointPair<N> incidentNodes = incidentNodes(e);
        return Sets.difference(Sets.union(incidentEdges(incidentNodes.nodeU()), incidentEdges(incidentNodes.nodeV())), ImmutableSet.m26235of((Object) e));
    }

    @Override // com.google.common.graph.Network
    public Graph<N> asGraph() {
        return new C6137a();
    }

    @Override // com.google.common.graph.Network
    public int degree(N n) {
        return isDirected() ? IntMath.saturatedAdd(inEdges(n).size(), outEdges(n).size()) : IntMath.saturatedAdd(incidentEdges(n).size(), edgesConnecting(n, n).size());
    }

    @Override // com.google.common.graph.Network
    public Optional<E> edgeConnecting(N n, N n2) {
        return Optional.ofNullable(edgeConnectingOrNull(n, n2));
    }

    @Override // com.google.common.graph.Network
    @CheckForNull
    public E edgeConnectingOrNull(N n, N n2) {
        Set<E> edgesConnecting = edgesConnecting(n, n2);
        int size = edgesConnecting.size();
        if (size == 0) {
            return null;
        }
        if (size == 1) {
            return edgesConnecting.iterator().next();
        }
        throw new IllegalArgumentException(String.format(GraphConstants.f34699i, n, n2));
    }

    @Override // com.google.common.graph.Network
    public Set<E> edgesConnecting(N n, N n2) {
        Set<E> outEdges = outEdges(n);
        Set<E> inEdges = inEdges(n2);
        if (outEdges.size() <= inEdges.size()) {
            return Collections.unmodifiableSet(Sets.filter(outEdges, m27037a(n, n2)));
        }
        return Collections.unmodifiableSet(Sets.filter(inEdges, m27037a(n2, n)));
    }

    @Override // com.google.common.graph.Network
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Network)) {
            return false;
        }
        Network network = (Network) obj;
        return isDirected() == network.isDirected() && nodes().equals(network.nodes()) && m27036b(this).equals(m27036b(network));
    }

    @Override // com.google.common.graph.Network
    public boolean hasEdgeConnecting(N n, N n2) {
        Preconditions.checkNotNull(n);
        Preconditions.checkNotNull(n2);
        return nodes().contains(n) && successors((AbstractNetwork<N, E>) n).contains(n2);
    }

    @Override // com.google.common.graph.Network
    public final int hashCode() {
        return m27036b(this).hashCode();
    }

    @Override // com.google.common.graph.Network
    public int inDegree(N n) {
        return isDirected() ? inEdges(n).size() : degree(n);
    }

    public final boolean isOrderingCompatible(EndpointPair<?> endpointPair) {
        return endpointPair.isOrdered() || !isDirected();
    }

    @Override // com.google.common.graph.Network
    public int outDegree(N n) {
        return isDirected() ? outEdges(n).size() : degree(n);
    }

    public String toString() {
        boolean isDirected = isDirected();
        boolean allowsParallelEdges = allowsParallelEdges();
        boolean allowsSelfLoops = allowsSelfLoops();
        String valueOf = String.valueOf(nodes());
        String valueOf2 = String.valueOf(m27036b(this));
        StringBuilder sb = new StringBuilder(valueOf.length() + 87 + valueOf2.length());
        sb.append("isDirected: ");
        sb.append(isDirected);
        sb.append(", allowsParallelEdges: ");
        sb.append(allowsParallelEdges);
        sb.append(", allowsSelfLoops: ");
        sb.append(allowsSelfLoops);
        sb.append(", nodes: ");
        sb.append(valueOf);
        sb.append(", edges: ");
        sb.append(valueOf2);
        return sb.toString();
    }

    public final void validateEndpoints(EndpointPair<?> endpointPair) {
        Preconditions.checkNotNull(endpointPair);
        Preconditions.checkArgument(isOrderingCompatible(endpointPair), GraphConstants.f34704n);
    }

    @Override // com.google.common.graph.Network
    public Optional<E> edgeConnecting(EndpointPair<N> endpointPair) {
        validateEndpoints(endpointPair);
        return edgeConnecting(endpointPair.nodeU(), endpointPair.nodeV());
    }

    @Override // com.google.common.graph.Network
    public boolean hasEdgeConnecting(EndpointPair<N> endpointPair) {
        Preconditions.checkNotNull(endpointPair);
        if (isOrderingCompatible(endpointPair)) {
            return hasEdgeConnecting(endpointPair.nodeU(), endpointPair.nodeV());
        }
        return false;
    }

    @Override // com.google.common.graph.Network
    @CheckForNull
    public E edgeConnectingOrNull(EndpointPair<N> endpointPair) {
        validateEndpoints(endpointPair);
        return edgeConnectingOrNull(endpointPair.nodeU(), endpointPair.nodeV());
    }

    @Override // com.google.common.graph.Network
    public Set<E> edgesConnecting(EndpointPair<N> endpointPair) {
        validateEndpoints(endpointPair);
        return edgesConnecting(endpointPair.nodeU(), endpointPair.nodeV());
    }
}
