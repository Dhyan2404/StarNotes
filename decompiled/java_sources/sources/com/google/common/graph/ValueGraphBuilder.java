package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.graph.ElementOrder;
import com.google.common.graph.ImmutableValueGraph;
import com.sunia.HTREnginev2.AbstractC14332r3;
import com.sunia.HTREnginev2.oxm;
import com.sunia.HTREnginev2.vnf;

@Beta
@vnf
/* loaded from: classes6.dex */
public final class ValueGraphBuilder<N, V> extends AbstractC14332r3<N> {
    public ValueGraphBuilder(boolean z) {
        super(z);
    }

    public static ValueGraphBuilder<Object, Object> directed() {
        return new ValueGraphBuilder<>(true);
    }

    public static <N, V> ValueGraphBuilder<N, V> from(ValueGraph<N, V> valueGraph) {
        return new ValueGraphBuilder(valueGraph.isDirected()).allowsSelfLoops(valueGraph.allowsSelfLoops()).nodeOrder(valueGraph.nodeOrder()).incidentEdgeOrder(valueGraph.incidentEdgeOrder());
    }

    public static ValueGraphBuilder<Object, Object> undirected() {
        return new ValueGraphBuilder<>(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final <N1 extends N, V1 extends V> ValueGraphBuilder<N1, V1> m27091a() {
        return this;
    }

    public ValueGraphBuilder<N, V> allowsSelfLoops(boolean z) {
        this.f82677b = z;
        return this;
    }

    /* renamed from: b */
    public ValueGraphBuilder<N, V> m27092b() {
        ValueGraphBuilder<N, V> valueGraphBuilder = new ValueGraphBuilder<>(this.f82676a);
        valueGraphBuilder.f82677b = this.f82677b;
        valueGraphBuilder.f82678c = this.f82678c;
        valueGraphBuilder.f82680e = this.f82680e;
        valueGraphBuilder.f82679d = this.f82679d;
        return valueGraphBuilder;
    }

    public <N1 extends N, V1 extends V> MutableValueGraph<N1, V1> build() {
        return new oxm(this);
    }

    public ValueGraphBuilder<N, V> expectedNodeCount(int i) {
        this.f82680e = Optional.m25808of(Integer.valueOf(Graphs.m27049b(i)));
        return this;
    }

    public <N1 extends N, V1 extends V> ImmutableValueGraph.Builder<N1, V1> immutable() {
        return new ImmutableValueGraph.Builder<>(m27091a());
    }

    public <N1 extends N> ValueGraphBuilder<N1, V> incidentEdgeOrder(ElementOrder<N1> elementOrder) {
        Preconditions.checkArgument(elementOrder.type() == ElementOrder.Type.UNORDERED || elementOrder.type() == ElementOrder.Type.STABLE, "The given elementOrder (%s) is unsupported. incidentEdgeOrder() only supports ElementOrder.unordered() and ElementOrder.stable().", elementOrder);
        ValueGraphBuilder<N1, V> valueGraphBuilder = (ValueGraphBuilder<N1, V>) m27091a();
        valueGraphBuilder.f82679d = (ElementOrder) Preconditions.checkNotNull(elementOrder);
        return valueGraphBuilder;
    }

    public <N1 extends N> ValueGraphBuilder<N1, V> nodeOrder(ElementOrder<N1> elementOrder) {
        ValueGraphBuilder<N1, V> valueGraphBuilder = (ValueGraphBuilder<N1, V>) m27091a();
        valueGraphBuilder.f82678c = (ElementOrder) Preconditions.checkNotNull(elementOrder);
        return valueGraphBuilder;
    }
}
