package com.sunia.HTREnginev2;

import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Sets;
import com.google.common.graph.EndpointPair;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@vnf
/* loaded from: classes6.dex */
public abstract class rqf<N> extends AbstractIterator<EndpointPair<N>> {

    /* renamed from: g */
    public final InterfaceC14203on<N> f83375g;

    /* renamed from: h */
    public final Iterator<N> f83376h;

    /* renamed from: i */
    @CheckForNull
    public N f83377i;

    /* renamed from: j */
    public Iterator<N> f83378j;

    /* renamed from: com.sunia.HTREnginev2.rqf$b */
    /* loaded from: classes6.dex */
    public static final class C14362b<N> extends rqf<N> {
        @Override // com.google.common.collect.AbstractIterator
        @CheckForNull
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public EndpointPair<N> computeNext() {
            while (!this.f83378j.hasNext()) {
                if (!m57003b()) {
                    return endOfData();
                }
            }
            N n = this.f83377i;
            Objects.requireNonNull(n);
            return EndpointPair.ordered(n, this.f83378j.next());
        }

        public C14362b(InterfaceC14203on<N> interfaceC14203on) {
            super(interfaceC14203on);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.rqf$c */
    /* loaded from: classes6.dex */
    public static final class C14363c<N> extends rqf<N> {

        /* renamed from: k */
        @CheckForNull
        public Set<N> f83379k;

        @Override // com.google.common.collect.AbstractIterator
        @CheckForNull
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public EndpointPair<N> computeNext() {
            do {
                Objects.requireNonNull(this.f83379k);
                while (this.f83378j.hasNext()) {
                    N next = this.f83378j.next();
                    if (!this.f83379k.contains(next)) {
                        N n = this.f83377i;
                        Objects.requireNonNull(n);
                        return EndpointPair.unordered(n, next);
                    }
                }
                this.f83379k.add(this.f83377i);
            } while (m57003b());
            this.f83379k = null;
            return endOfData();
        }

        public C14363c(InterfaceC14203on<N> interfaceC14203on) {
            super(interfaceC14203on);
            this.f83379k = Sets.newHashSetWithExpectedSize(interfaceC14203on.nodes().size() + 1);
        }
    }

    /* renamed from: c */
    public static <N> rqf<N> m57002c(InterfaceC14203on<N> interfaceC14203on) {
        return interfaceC14203on.isDirected() ? new C14362b(interfaceC14203on) : new C14363c(interfaceC14203on);
    }

    /* renamed from: b */
    public final boolean m57003b() {
        Preconditions.checkState(!this.f83378j.hasNext());
        if (!this.f83376h.hasNext()) {
            return false;
        }
        N next = this.f83376h.next();
        this.f83377i = next;
        this.f83378j = this.f83375g.successors((InterfaceC14203on<N>) next).iterator();
        return true;
    }

    public rqf(InterfaceC14203on<N> interfaceC14203on) {
        this.f83377i = null;
        this.f83378j = ImmutableSet.m26234of().iterator();
        this.f83375g = interfaceC14203on;
        this.f83376h = interfaceC14203on.nodes().iterator();
    }
}
