package com.sunia.HTREnginev2;

import com.google.common.graph.EndpointPair;
import java.util.AbstractSet;
import java.util.Set;
import javax.annotation.CheckForNull;

@vnf
/* loaded from: classes6.dex */
public abstract class iji<N> extends AbstractSet<EndpointPair<N>> {

    /* renamed from: e */
    public final N f73301e;

    /* renamed from: f */
    public final InterfaceC14203on<N> f73302f;

    public iji(InterfaceC14203on<N> interfaceC14203on, N n) {
        this.f73302f = interfaceC14203on;
        this.f73301e = n;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@CheckForNull Object obj) {
        if (!(obj instanceof EndpointPair)) {
            return false;
        }
        EndpointPair endpointPair = (EndpointPair) obj;
        if (this.f73302f.isDirected()) {
            if (!endpointPair.isOrdered()) {
                return false;
            }
            Object source = endpointPair.source();
            Object target = endpointPair.target();
            return (this.f73301e.equals(source) && this.f73302f.successors((InterfaceC14203on<N>) this.f73301e).contains(target)) || (this.f73301e.equals(target) && this.f73302f.predecessors((InterfaceC14203on<N>) this.f73301e).contains(source));
        }
        if (endpointPair.isOrdered()) {
            return false;
        }
        Set<N> adjacentNodes = this.f73302f.adjacentNodes(this.f73301e);
        Object nodeU = endpointPair.nodeU();
        Object nodeV = endpointPair.nodeV();
        return (this.f73301e.equals(nodeV) && adjacentNodes.contains(nodeU)) || (this.f73301e.equals(nodeU) && adjacentNodes.contains(nodeV));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(@CheckForNull Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f73302f.isDirected() ? (this.f73302f.inDegree(this.f73301e) + this.f73302f.outDegree(this.f73301e)) - (this.f73302f.successors((InterfaceC14203on<N>) this.f73301e).contains(this.f73301e) ? 1 : 0) : this.f73302f.adjacentNodes(this.f73301e).size();
    }
}
