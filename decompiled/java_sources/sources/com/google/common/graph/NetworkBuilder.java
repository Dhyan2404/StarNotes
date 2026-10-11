package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.graph.ImmutableNetwork;
import com.sunia.HTREnginev2.AbstractC14332r3;
import com.sunia.HTREnginev2.nxm;
import com.sunia.HTREnginev2.vnf;

@Beta
@vnf
/* loaded from: classes6.dex */
public final class NetworkBuilder<N, E> extends AbstractC14332r3<N> {

    /* renamed from: f */
    public boolean f34714f;

    /* renamed from: g */
    public ElementOrder<? super E> f34715g;

    /* renamed from: h */
    public Optional<Integer> f34716h;

    public NetworkBuilder(boolean z) {
        super(z);
        this.f34714f = false;
        this.f34715g = ElementOrder.insertion();
        this.f34716h = Optional.absent();
    }

    public static NetworkBuilder<Object, Object> directed() {
        return new NetworkBuilder<>(true);
    }

    public static <N, E> NetworkBuilder<N, E> from(Network<N, E> network) {
        return new NetworkBuilder(network.isDirected()).allowsParallelEdges(network.allowsParallelEdges()).allowsSelfLoops(network.allowsSelfLoops()).nodeOrder(network.nodeOrder()).edgeOrder(network.edgeOrder());
    }

    public static NetworkBuilder<Object, Object> undirected() {
        return new NetworkBuilder<>(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final <N1 extends N, E1 extends E> NetworkBuilder<N1, E1> m27081a() {
        return this;
    }

    public NetworkBuilder<N, E> allowsParallelEdges(boolean z) {
        this.f34714f = z;
        return this;
    }

    public NetworkBuilder<N, E> allowsSelfLoops(boolean z) {
        this.f82677b = z;
        return this;
    }

    public <N1 extends N, E1 extends E> MutableNetwork<N1, E1> build() {
        return new nxm(this);
    }

    public <E1 extends E> NetworkBuilder<N, E1> edgeOrder(ElementOrder<E1> elementOrder) {
        NetworkBuilder<N, E1> networkBuilder = (NetworkBuilder<N, E1>) m27081a();
        networkBuilder.f34715g = (ElementOrder) Preconditions.checkNotNull(elementOrder);
        return networkBuilder;
    }

    public NetworkBuilder<N, E> expectedEdgeCount(int i) {
        this.f34716h = Optional.m25808of(Integer.valueOf(Graphs.m27049b(i)));
        return this;
    }

    public NetworkBuilder<N, E> expectedNodeCount(int i) {
        this.f82680e = Optional.m25808of(Integer.valueOf(Graphs.m27049b(i)));
        return this;
    }

    public <N1 extends N, E1 extends E> ImmutableNetwork.Builder<N1, E1> immutable() {
        return new ImmutableNetwork.Builder<>(m27081a());
    }

    public <N1 extends N> NetworkBuilder<N1, E> nodeOrder(ElementOrder<N1> elementOrder) {
        NetworkBuilder<N1, E> networkBuilder = (NetworkBuilder<N1, E>) m27081a();
        networkBuilder.f82678c = (ElementOrder) Preconditions.checkNotNull(elementOrder);
        return networkBuilder;
    }
}
