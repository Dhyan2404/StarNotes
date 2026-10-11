package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.graph.ElementOrder;
import com.google.common.graph.ImmutableGraph;
import com.google.errorprone.annotations.DoNotMock;
import com.sunia.HTREnginev2.AbstractC14332r3;
import com.sunia.HTREnginev2.vnf;

@DoNotMock
@Beta
@vnf
/* loaded from: classes6.dex */
public final class GraphBuilder<N> extends AbstractC14332r3<N> {
    public GraphBuilder(boolean z) {
        super(z);
    }

    public static GraphBuilder<Object> directed() {
        return new GraphBuilder<>(true);
    }

    public static <N> GraphBuilder<N> from(Graph<N> graph) {
        return new GraphBuilder(graph.isDirected()).allowsSelfLoops(graph.allowsSelfLoops()).nodeOrder(graph.nodeOrder()).incidentEdgeOrder(graph.incidentEdgeOrder());
    }

    public static GraphBuilder<Object> undirected() {
        return new GraphBuilder<>(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final <N1 extends N> GraphBuilder<N1> m27046a() {
        return this;
    }

    public GraphBuilder<N> allowsSelfLoops(boolean z) {
        this.f82677b = z;
        return this;
    }

    /* renamed from: b */
    public GraphBuilder<N> m27047b() {
        GraphBuilder<N> graphBuilder = new GraphBuilder<>(this.f82676a);
        graphBuilder.f82677b = this.f82677b;
        graphBuilder.f82678c = this.f82678c;
        graphBuilder.f82680e = this.f82680e;
        graphBuilder.f82679d = this.f82679d;
        return graphBuilder;
    }

    public <N1 extends N> MutableGraph<N1> build() {
        return new C6158b(this);
    }

    public GraphBuilder<N> expectedNodeCount(int i) {
        this.f82680e = Optional.m25808of(Integer.valueOf(Graphs.m27049b(i)));
        return this;
    }

    public <N1 extends N> ImmutableGraph.Builder<N1> immutable() {
        return new ImmutableGraph.Builder<>(m27046a());
    }

    public <N1 extends N> GraphBuilder<N1> incidentEdgeOrder(ElementOrder<N1> elementOrder) {
        Preconditions.checkArgument(elementOrder.type() == ElementOrder.Type.UNORDERED || elementOrder.type() == ElementOrder.Type.STABLE, "The given elementOrder (%s) is unsupported. incidentEdgeOrder() only supports ElementOrder.unordered() and ElementOrder.stable().", elementOrder);
        GraphBuilder<N1> m27046a = m27046a();
        m27046a.f82679d = (ElementOrder) Preconditions.checkNotNull(elementOrder);
        return m27046a;
    }

    public <N1 extends N> GraphBuilder<N1> nodeOrder(ElementOrder<N1> elementOrder) {
        GraphBuilder<N1> m27046a = m27046a();
        m27046a.f82678c = (ElementOrder) Preconditions.checkNotNull(elementOrder);
        return m27046a;
    }
}
