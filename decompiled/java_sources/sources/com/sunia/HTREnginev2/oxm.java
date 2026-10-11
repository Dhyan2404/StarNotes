package com.sunia.HTREnginev2;

import com.google.common.base.Preconditions;
import com.google.common.graph.C6157a;
import com.google.common.graph.C6159c;
import com.google.common.graph.ElementOrder;
import com.google.common.graph.EndpointPair;
import com.google.common.graph.GraphConstants;
import com.google.common.graph.Graphs;
import com.google.common.graph.MutableValueGraph;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Iterator;
import java.util.Objects;
import javax.annotation.CheckForNull;

@vnf
/* loaded from: classes6.dex */
public final class oxm<N, V> extends sxm<N, V> implements MutableValueGraph<N, V> {

    /* renamed from: f */
    public final ElementOrder<N> f80241f;

    public oxm(AbstractC14332r3<? super N> abstractC14332r3) {
        super(abstractC14332r3);
        this.f80241f = (ElementOrder<N>) abstractC14332r3.f82679d.m27042a();
    }

    @Override // com.google.common.graph.MutableValueGraph
    @CanIgnoreReturnValue
    public boolean addNode(N n) {
        Preconditions.checkNotNull(n, "node");
        if (m57274c(n)) {
            return false;
        }
        m56180f(n);
        return true;
    }

    @CanIgnoreReturnValue
    /* renamed from: f */
    public final w4h<N, V> m56180f(N n) {
        w4h<N, V> m56181g = m56181g();
        Preconditions.checkState(this.f84671d.m56245i(n, m56181g) == null);
        return m56181g;
    }

    /* renamed from: g */
    public final w4h<N, V> m56181g() {
        return isDirected() ? C6157a.m27107x(this.f80241f) : C6159c.m27125l(this.f80241f);
    }

    @Override // com.google.common.graph.AbstractValueGraph, com.sunia.HTREnginev2.AbstractC13904j2, com.sunia.HTREnginev2.InterfaceC14203on, com.google.common.graph.Graph
    public ElementOrder<N> incidentEdgeOrder() {
        return this.f80241f;
    }

    @Override // com.google.common.graph.MutableValueGraph
    @CanIgnoreReturnValue
    @CheckForNull
    public V putEdgeValue(N n, N n2, V v) {
        Preconditions.checkNotNull(n, "nodeU");
        Preconditions.checkNotNull(n2, "nodeV");
        Preconditions.checkNotNull(v, "value");
        if (!allowsSelfLoops()) {
            Preconditions.checkArgument(!n.equals(n2), GraphConstants.f34701k, n);
        }
        w4h<N, V> mo56242f = this.f84671d.mo56242f(n);
        if (mo56242f == null) {
            mo56242f = m56180f(n);
        }
        V mo27117i = mo56242f.mo27117i(n2, v);
        w4h<N, V> mo56242f2 = this.f84671d.mo56242f(n2);
        if (mo56242f2 == null) {
            mo56242f2 = m56180f(n2);
        }
        mo56242f2.mo27115g(n, v);
        if (mo27117i == null) {
            long j = this.f84672e + 1;
            this.f84672e = j;
            Graphs.m27052e(j);
        }
        return mo27117i;
    }

    @Override // com.google.common.graph.MutableValueGraph
    @CanIgnoreReturnValue
    @CheckForNull
    public V removeEdge(N n, N n2) {
        Preconditions.checkNotNull(n, "nodeU");
        Preconditions.checkNotNull(n2, "nodeV");
        w4h<N, V> mo56242f = this.f84671d.mo56242f(n);
        w4h<N, V> mo56242f2 = this.f84671d.mo56242f(n2);
        if (mo56242f == null || mo56242f2 == null) {
            return null;
        }
        V mo27113e = mo56242f.mo27113e(n2);
        if (mo27113e != null) {
            mo56242f2.mo27116h(n);
            long j = this.f84672e - 1;
            this.f84672e = j;
            Graphs.m27050c(j);
        }
        return mo27113e;
    }

    @Override // com.google.common.graph.MutableValueGraph
    @CanIgnoreReturnValue
    public boolean removeNode(N n) {
        Preconditions.checkNotNull(n, "node");
        w4h<N, V> mo56242f = this.f84671d.mo56242f(n);
        if (mo56242f == null) {
            return false;
        }
        if (allowsSelfLoops() && mo56242f.mo27113e(n) != null) {
            mo56242f.mo27116h(n);
            this.f84672e--;
        }
        Iterator<N> it2 = mo56242f.mo27111c().iterator();
        while (it2.hasNext()) {
            w4h<N, V> m56244h = this.f84671d.m56244h(it2.next());
            Objects.requireNonNull(m56244h);
            m56244h.mo27116h(n);
            this.f84672e--;
        }
        if (isDirected()) {
            Iterator<N> it3 = mo56242f.mo27109a().iterator();
            while (it3.hasNext()) {
                w4h<N, V> m56244h2 = this.f84671d.m56244h(it3.next());
                Objects.requireNonNull(m56244h2);
                Preconditions.checkState(m56244h2.mo27113e(n) != null);
                this.f84672e--;
            }
        }
        this.f84671d.m56246j(n);
        Graphs.m27050c(this.f84672e);
        return true;
    }

    @Override // com.google.common.graph.MutableValueGraph
    @CanIgnoreReturnValue
    @CheckForNull
    public V removeEdge(EndpointPair<N> endpointPair) {
        validateEndpoints(endpointPair);
        return removeEdge(endpointPair.nodeU(), endpointPair.nodeV());
    }

    @Override // com.google.common.graph.MutableValueGraph
    @CanIgnoreReturnValue
    @CheckForNull
    public V putEdgeValue(EndpointPair<N> endpointPair, V v) {
        validateEndpoints(endpointPair);
        return putEdgeValue(endpointPair.nodeU(), endpointPair.nodeV(), v);
    }
}
