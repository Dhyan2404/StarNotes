package com.sunia.HTREnginev2;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Sets;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.graph.ElementOrder;
import com.google.common.graph.EndpointPair;
import com.google.common.graph.GraphConstants;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import com.sunia.HTREnginev2.AbstractC13904j2;
import java.util.AbstractSet;
import java.util.Set;
import javax.annotation.CheckForNull;

@vnf
/* renamed from: com.sunia.HTREnginev2.j2 */
/* loaded from: classes6.dex */
public abstract class AbstractC13904j2<N> implements InterfaceC14203on<N> {

    /* renamed from: com.sunia.HTREnginev2.j2$a */
    /* loaded from: classes6.dex */
    public class a extends AbstractSet<EndpointPair<N>> {
        public a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UnmodifiableIterator<EndpointPair<N>> iterator() {
            return rqf.m57002c(AbstractC13904j2.this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof EndpointPair)) {
                return false;
            }
            EndpointPair<?> endpointPair = (EndpointPair) obj;
            return AbstractC13904j2.this.isOrderingCompatible(endpointPair) && AbstractC13904j2.this.nodes().contains(endpointPair.nodeU()) && AbstractC13904j2.this.successors((AbstractC13904j2) endpointPair.nodeU()).contains(endpointPair.nodeV());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@CheckForNull Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Ints.saturatedCast(AbstractC13904j2.this.edgeCount());
        }
    }

    /* renamed from: com.sunia.HTREnginev2.j2$b */
    /* loaded from: classes6.dex */
    public class b extends iji<N> {
        public b(AbstractC13904j2 abstractC13904j2, InterfaceC14203on interfaceC14203on, Object obj) {
            super(interfaceC14203on, obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: e */
        public /* synthetic */ EndpointPair m54858e(Object obj) {
            return EndpointPair.ordered(obj, this.f73301e);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: g */
        public /* synthetic */ EndpointPair m54859g(Object obj) {
            return EndpointPair.ordered(this.f73301e, obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: h */
        public /* synthetic */ EndpointPair m54860h(Object obj) {
            return EndpointPair.unordered(this.f73301e, obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public UnmodifiableIterator<EndpointPair<N>> iterator() {
            return this.f73302f.isDirected() ? Iterators.unmodifiableIterator(Iterators.concat(Iterators.transform(this.f73302f.predecessors((InterfaceC14203on<N>) this.f73301e).iterator(), new Function() { // from class: com.sunia.HTREnginev2.k2
                @Override // com.google.common.base.Function, java.util.function.Function
                public final Object apply(Object obj) {
                    EndpointPair m54858e;
                    m54858e = AbstractC13904j2.b.this.m54858e(obj);
                    return m54858e;
                }
            }), Iterators.transform(Sets.difference(this.f73302f.successors((InterfaceC14203on<N>) this.f73301e), ImmutableSet.m26235of(this.f73301e)).iterator(), new Function() { // from class: com.sunia.HTREnginev2.l2
                @Override // com.google.common.base.Function, java.util.function.Function
                public final Object apply(Object obj) {
                    EndpointPair m54859g;
                    m54859g = AbstractC13904j2.b.this.m54859g(obj);
                    return m54859g;
                }
            }))) : Iterators.unmodifiableIterator(Iterators.transform(this.f73302f.adjacentNodes(this.f73301e).iterator(), new Function() { // from class: com.sunia.HTREnginev2.m2
                @Override // com.google.common.base.Function, java.util.function.Function
                public final Object apply(Object obj) {
                    EndpointPair m54860h;
                    m54860h = AbstractC13904j2.b.this.m54860h(obj);
                    return m54860h;
                }
            }));
        }
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public int degree(N n) {
        if (isDirected()) {
            return IntMath.saturatedAdd(predecessors((AbstractC13904j2<N>) n).size(), successors((AbstractC13904j2<N>) n).size());
        }
        Set<N> adjacentNodes = adjacentNodes(n);
        return IntMath.saturatedAdd(adjacentNodes.size(), (allowsSelfLoops() && adjacentNodes.contains(n)) ? 1 : 0);
    }

    public long edgeCount() {
        long j = 0;
        while (nodes().iterator().hasNext()) {
            j += degree(r0.next());
        }
        Preconditions.checkState((1 & j) == 0);
        return j >>> 1;
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public Set<EndpointPair<N>> edges() {
        return new a();
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public boolean hasEdgeConnecting(N n, N n2) {
        Preconditions.checkNotNull(n);
        Preconditions.checkNotNull(n2);
        return nodes().contains(n) && successors((AbstractC13904j2<N>) n).contains(n2);
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public int inDegree(N n) {
        return isDirected() ? predecessors((AbstractC13904j2<N>) n).size() : degree(n);
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public ElementOrder<N> incidentEdgeOrder() {
        return ElementOrder.unordered();
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public Set<EndpointPair<N>> incidentEdges(N n) {
        Preconditions.checkNotNull(n);
        Preconditions.checkArgument(nodes().contains(n), GraphConstants.f34696f, n);
        return new b(this, this, n);
    }

    public final boolean isOrderingCompatible(EndpointPair<?> endpointPair) {
        return endpointPair.isOrdered() || !isDirected();
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public int outDegree(N n) {
        return isDirected() ? successors((AbstractC13904j2<N>) n).size() : degree(n);
    }

    public final void validateEndpoints(EndpointPair<?> endpointPair) {
        Preconditions.checkNotNull(endpointPair);
        Preconditions.checkArgument(isOrderingCompatible(endpointPair), GraphConstants.f34704n);
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public boolean hasEdgeConnecting(EndpointPair<N> endpointPair) {
        Preconditions.checkNotNull(endpointPair);
        if (!isOrderingCompatible(endpointPair)) {
            return false;
        }
        N nodeU = endpointPair.nodeU();
        return nodes().contains(nodeU) && successors((AbstractC13904j2<N>) nodeU).contains(endpointPair.nodeV());
    }
}
