package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Iterators;
import com.google.common.collect.UnmodifiableIterator;
import com.google.errorprone.annotations.Immutable;
import com.sunia.HTREnginev2.vnf;
import java.util.Iterator;
import javax.annotation.CheckForNull;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.text.AlphabetConverter;

@Immutable(containerOf = {"N"})
@Beta
@vnf
/* loaded from: classes6.dex */
public abstract class EndpointPair<N> implements Iterable<N> {

    /* renamed from: e */
    public final N f34689e;

    /* renamed from: f */
    public final N f34690f;

    /* renamed from: com.google.common.graph.EndpointPair$b */
    /* loaded from: classes6.dex */
    public static final class C6144b<N> extends EndpointPair<N> {
        @Override // com.google.common.graph.EndpointPair
        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof EndpointPair)) {
                return false;
            }
            EndpointPair endpointPair = (EndpointPair) obj;
            if (isOrdered() != endpointPair.isOrdered()) {
                return false;
            }
            return source().equals(endpointPair.source()) && target().equals(endpointPair.target());
        }

        @Override // com.google.common.graph.EndpointPair
        public int hashCode() {
            return Objects.hashCode(source(), target());
        }

        @Override // com.google.common.graph.EndpointPair
        public boolean isOrdered() {
            return true;
        }

        @Override // com.google.common.graph.EndpointPair, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.common.graph.EndpointPair
        public N source() {
            return nodeU();
        }

        @Override // com.google.common.graph.EndpointPair
        public N target() {
            return nodeV();
        }

        public String toString() {
            String valueOf = String.valueOf(source());
            String valueOf2 = String.valueOf(target());
            StringBuilder sb = new StringBuilder(valueOf.length() + 6 + valueOf2.length());
            sb.append("<");
            sb.append(valueOf);
            sb.append(AlphabetConverter.f109940d);
            sb.append(valueOf2);
            sb.append(">");
            return sb.toString();
        }

        public C6144b(N n, N n2) {
            super(n, n2);
        }
    }

    /* renamed from: com.google.common.graph.EndpointPair$c */
    /* loaded from: classes6.dex */
    public static final class C6145c<N> extends EndpointPair<N> {
        @Override // com.google.common.graph.EndpointPair
        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof EndpointPair)) {
                return false;
            }
            EndpointPair endpointPair = (EndpointPair) obj;
            if (isOrdered() != endpointPair.isOrdered()) {
                return false;
            }
            return nodeU().equals(endpointPair.nodeU()) ? nodeV().equals(endpointPair.nodeV()) : nodeU().equals(endpointPair.nodeV()) && nodeV().equals(endpointPair.nodeU());
        }

        @Override // com.google.common.graph.EndpointPair
        public int hashCode() {
            return nodeU().hashCode() + nodeV().hashCode();
        }

        @Override // com.google.common.graph.EndpointPair
        public boolean isOrdered() {
            return false;
        }

        @Override // com.google.common.graph.EndpointPair, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.common.graph.EndpointPair
        public N source() {
            throw new UnsupportedOperationException(GraphConstants.f34702l);
        }

        @Override // com.google.common.graph.EndpointPair
        public N target() {
            throw new UnsupportedOperationException(GraphConstants.f34702l);
        }

        public String toString() {
            String valueOf = String.valueOf(nodeU());
            String valueOf2 = String.valueOf(nodeV());
            StringBuilder sb = new StringBuilder(valueOf.length() + 4 + valueOf2.length());
            sb.append(IteratorUtils.f104923a);
            sb.append(valueOf);
            sb.append(", ");
            sb.append(valueOf2);
            sb.append(IteratorUtils.f104924b);
            return sb.toString();
        }

        public C6145c(N n, N n2) {
            super(n, n2);
        }
    }

    /* renamed from: a */
    public static <N> EndpointPair<N> m27044a(Graph<?> graph, N n, N n2) {
        return graph.isDirected() ? ordered(n, n2) : unordered(n, n2);
    }

    /* renamed from: b */
    public static <N> EndpointPair<N> m27045b(Network<?, ?> network, N n, N n2) {
        return network.isDirected() ? ordered(n, n2) : unordered(n, n2);
    }

    public static <N> EndpointPair<N> ordered(N n, N n2) {
        return new C6144b(n, n2);
    }

    public static <N> EndpointPair<N> unordered(N n, N n2) {
        return new C6145c(n2, n);
    }

    public final N adjacentNode(N n) {
        if (n.equals(this.f34689e)) {
            return this.f34690f;
        }
        if (n.equals(this.f34690f)) {
            return this.f34689e;
        }
        String valueOf = String.valueOf(this);
        String valueOf2 = String.valueOf(n);
        StringBuilder sb = new StringBuilder(valueOf.length() + 36 + valueOf2.length());
        sb.append("EndpointPair ");
        sb.append(valueOf);
        sb.append(" does not contain node ");
        sb.append(valueOf2);
        throw new IllegalArgumentException(sb.toString());
    }

    public abstract boolean equals(@CheckForNull Object obj);

    public abstract int hashCode();

    public abstract boolean isOrdered();

    public final N nodeU() {
        return this.f34689e;
    }

    public final N nodeV() {
        return this.f34690f;
    }

    public abstract N source();

    public abstract N target();

    public EndpointPair(N n, N n2) {
        this.f34689e = (N) Preconditions.checkNotNull(n);
        this.f34690f = (N) Preconditions.checkNotNull(n2);
    }

    @Override // java.lang.Iterable
    public final UnmodifiableIterator<N> iterator() {
        return Iterators.forArray(this.f34689e, this.f34690f);
    }
}
