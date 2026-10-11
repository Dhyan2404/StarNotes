package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.UnmodifiableIterator;
import com.google.errorprone.annotations.DoNotMock;
import com.sunia.HTREnginev2.InterfaceC14203on;
import com.sunia.HTREnginev2.vnf;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@Beta
@vnf
@DoNotMock("Call forGraph or forTree, passing a lambda or a Graph with the desired edges (built with GraphBuilder)")
/* loaded from: classes6.dex */
public abstract class Traverser<N> {

    /* renamed from: a */
    public final SuccessorsFunction<N> f34717a;

    /* loaded from: classes6.dex */
    public enum InsertionOrder {
        FRONT { // from class: com.google.common.graph.Traverser.InsertionOrder.1
            @Override // com.google.common.graph.Traverser.InsertionOrder
            public <T> void insertInto(Deque<T> deque, T t) {
                deque.addFirst(t);
            }
        },
        BACK { // from class: com.google.common.graph.Traverser.InsertionOrder.2
            @Override // com.google.common.graph.Traverser.InsertionOrder
            public <T> void insertInto(Deque<T> deque, T t) {
                deque.addLast(t);
            }
        };

        public abstract <T> void insertInto(Deque<T> deque, T t);

        /* synthetic */ InsertionOrder(C6151a c6151a) {
            this();
        }
    }

    /* renamed from: com.google.common.graph.Traverser$a */
    /* loaded from: classes6.dex */
    public class C6151a extends Traverser<N> {

        /* renamed from: b */
        public final /* synthetic */ SuccessorsFunction f34718b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6151a(SuccessorsFunction successorsFunction, SuccessorsFunction successorsFunction2) {
            super(successorsFunction, null);
            this.f34718b = successorsFunction2;
        }

        @Override // com.google.common.graph.Traverser
        /* renamed from: a */
        public AbstractC6156f<N> mo27082a() {
            return AbstractC6156f.m27084b(this.f34718b);
        }
    }

    /* renamed from: com.google.common.graph.Traverser$b */
    /* loaded from: classes6.dex */
    public class C6152b extends Traverser<N> {

        /* renamed from: b */
        public final /* synthetic */ SuccessorsFunction f34719b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6152b(SuccessorsFunction successorsFunction, SuccessorsFunction successorsFunction2) {
            super(successorsFunction, null);
            this.f34719b = successorsFunction2;
        }

        @Override // com.google.common.graph.Traverser
        /* renamed from: a */
        public AbstractC6156f<N> mo27082a() {
            return AbstractC6156f.m27085c(this.f34719b);
        }
    }

    /* renamed from: com.google.common.graph.Traverser$c */
    /* loaded from: classes6.dex */
    public class C6153c implements Iterable<N> {

        /* renamed from: e */
        public final /* synthetic */ ImmutableSet f34720e;

        public C6153c(ImmutableSet immutableSet) {
            this.f34720e = immutableSet;
        }

        @Override // java.lang.Iterable
        public Iterator<N> iterator() {
            return Traverser.this.mo27082a().m27086a(this.f34720e.iterator());
        }
    }

    /* renamed from: com.google.common.graph.Traverser$d */
    /* loaded from: classes6.dex */
    public class C6154d implements Iterable<N> {

        /* renamed from: e */
        public final /* synthetic */ ImmutableSet f34722e;

        public C6154d(ImmutableSet immutableSet) {
            this.f34722e = immutableSet;
        }

        @Override // java.lang.Iterable
        public Iterator<N> iterator() {
            return Traverser.this.mo27082a().m27088e(this.f34722e.iterator());
        }
    }

    /* renamed from: com.google.common.graph.Traverser$e */
    /* loaded from: classes6.dex */
    public class C6155e implements Iterable<N> {

        /* renamed from: e */
        public final /* synthetic */ ImmutableSet f34724e;

        public C6155e(ImmutableSet immutableSet) {
            this.f34724e = immutableSet;
        }

        @Override // java.lang.Iterable
        public Iterator<N> iterator() {
            return Traverser.this.mo27082a().m27087d(this.f34724e.iterator());
        }
    }

    /* renamed from: com.google.common.graph.Traverser$f */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC6156f<N> {

        /* renamed from: a */
        public final SuccessorsFunction<N> f34726a;

        /* renamed from: com.google.common.graph.Traverser$f$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractC6156f<N> {

            /* renamed from: b */
            public final /* synthetic */ Set f34727b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(SuccessorsFunction successorsFunction, Set set) {
                super(successorsFunction);
                this.f34727b = set;
            }

            @Override // com.google.common.graph.Traverser.AbstractC6156f
            @CheckForNull
            /* renamed from: g */
            public N mo27090g(Deque<Iterator<? extends N>> deque) {
                Iterator<? extends N> first = deque.getFirst();
                while (first.hasNext()) {
                    N next = first.next();
                    Objects.requireNonNull(next);
                    if (this.f34727b.add(next)) {
                        return next;
                    }
                }
                deque.removeFirst();
                return null;
            }
        }

        /* renamed from: com.google.common.graph.Traverser$f$b */
        /* loaded from: classes6.dex */
        public class b extends AbstractC6156f<N> {
            public b(SuccessorsFunction successorsFunction) {
                super(successorsFunction);
            }

            @Override // com.google.common.graph.Traverser.AbstractC6156f
            @CheckForNull
            /* renamed from: g */
            public N mo27090g(Deque<Iterator<? extends N>> deque) {
                Iterator<? extends N> first = deque.getFirst();
                if (first.hasNext()) {
                    return (N) Preconditions.checkNotNull(first.next());
                }
                deque.removeFirst();
                return null;
            }
        }

        /* renamed from: com.google.common.graph.Traverser$f$c */
        /* loaded from: classes6.dex */
        public class c extends AbstractIterator<N> {

            /* renamed from: g */
            public final /* synthetic */ Deque f34728g;

            /* renamed from: h */
            public final /* synthetic */ InsertionOrder f34729h;

            public c(Deque deque, InsertionOrder insertionOrder) {
                this.f34728g = deque;
                this.f34729h = insertionOrder;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            public N computeNext() {
                do {
                    N n = (N) AbstractC6156f.this.mo27090g(this.f34728g);
                    if (n != null) {
                        Iterator<? extends N> it2 = AbstractC6156f.this.f34726a.successors(n).iterator();
                        if (it2.hasNext()) {
                            this.f34729h.insertInto(this.f34728g, it2);
                        }
                        return n;
                    }
                } while (!this.f34728g.isEmpty());
                return endOfData();
            }
        }

        /* renamed from: com.google.common.graph.Traverser$f$d */
        /* loaded from: classes6.dex */
        public class d extends AbstractIterator<N> {

            /* renamed from: g */
            public final /* synthetic */ Deque f34731g;

            /* renamed from: h */
            public final /* synthetic */ Deque f34732h;

            public d(Deque deque, Deque deque2) {
                this.f34731g = deque;
                this.f34732h = deque2;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            public N computeNext() {
                while (true) {
                    N n = (N) AbstractC6156f.this.mo27090g(this.f34731g);
                    if (n == null) {
                        return !this.f34732h.isEmpty() ? (N) this.f34732h.pop() : endOfData();
                    }
                    Iterator<? extends N> it2 = AbstractC6156f.this.f34726a.successors(n).iterator();
                    if (!it2.hasNext()) {
                        return n;
                    }
                    this.f34731g.addFirst(it2);
                    this.f34732h.push(n);
                }
            }
        }

        public AbstractC6156f(SuccessorsFunction<N> successorsFunction) {
            this.f34726a = successorsFunction;
        }

        /* renamed from: b */
        public static <N> AbstractC6156f<N> m27084b(SuccessorsFunction<N> successorsFunction) {
            return new a(successorsFunction, new HashSet());
        }

        /* renamed from: c */
        public static <N> AbstractC6156f<N> m27085c(SuccessorsFunction<N> successorsFunction) {
            return new b(successorsFunction);
        }

        /* renamed from: a */
        public final Iterator<N> m27086a(Iterator<? extends N> it2) {
            return m27089f(it2, InsertionOrder.BACK);
        }

        /* renamed from: d */
        public final Iterator<N> m27087d(Iterator<? extends N> it2) {
            ArrayDeque arrayDeque = new ArrayDeque();
            ArrayDeque arrayDeque2 = new ArrayDeque();
            arrayDeque2.add(it2);
            return new d(arrayDeque2, arrayDeque);
        }

        /* renamed from: e */
        public final Iterator<N> m27088e(Iterator<? extends N> it2) {
            return m27089f(it2, InsertionOrder.FRONT);
        }

        /* renamed from: f */
        public final Iterator<N> m27089f(Iterator<? extends N> it2, InsertionOrder insertionOrder) {
            ArrayDeque arrayDeque = new ArrayDeque();
            arrayDeque.add(it2);
            return new c(arrayDeque, insertionOrder);
        }

        @CheckForNull
        /* renamed from: g */
        public abstract N mo27090g(Deque<Iterator<? extends N>> deque);
    }

    public /* synthetic */ Traverser(SuccessorsFunction successorsFunction, C6151a c6151a) {
        this(successorsFunction);
    }

    public static <N> Traverser<N> forGraph(SuccessorsFunction<N> successorsFunction) {
        return new C6151a(successorsFunction, successorsFunction);
    }

    public static <N> Traverser<N> forTree(SuccessorsFunction<N> successorsFunction) {
        if (successorsFunction instanceof InterfaceC14203on) {
            Preconditions.checkArgument(((InterfaceC14203on) successorsFunction).isDirected(), "Undirected graphs can never be trees.");
        }
        if (successorsFunction instanceof Network) {
            Preconditions.checkArgument(((Network) successorsFunction).isDirected(), "Undirected networks can never be trees.");
        }
        return new C6152b(successorsFunction, successorsFunction);
    }

    /* renamed from: a */
    public abstract AbstractC6156f<N> mo27082a();

    /* renamed from: b */
    public final ImmutableSet<N> m27083b(Iterable<? extends N> iterable) {
        ImmutableSet<N> copyOf = ImmutableSet.copyOf(iterable);
        UnmodifiableIterator<N> it2 = copyOf.iterator();
        while (it2.hasNext()) {
            this.f34717a.successors(it2.next());
        }
        return copyOf;
    }

    public final Iterable<N> breadthFirst(N n) {
        return breadthFirst((Iterable) ImmutableSet.m26235of(n));
    }

    public final Iterable<N> depthFirstPostOrder(N n) {
        return depthFirstPostOrder((Iterable) ImmutableSet.m26235of(n));
    }

    public final Iterable<N> depthFirstPreOrder(N n) {
        return depthFirstPreOrder((Iterable) ImmutableSet.m26235of(n));
    }

    public Traverser(SuccessorsFunction<N> successorsFunction) {
        this.f34717a = (SuccessorsFunction) Preconditions.checkNotNull(successorsFunction);
    }

    public final Iterable<N> breadthFirst(Iterable<? extends N> iterable) {
        return new C6153c(m27083b(iterable));
    }

    public final Iterable<N> depthFirstPostOrder(Iterable<? extends N> iterable) {
        return new C6155e(m27083b(iterable));
    }

    public final Iterable<N> depthFirstPreOrder(Iterable<? extends N> iterable) {
        return new C6154d(m27083b(iterable));
    }
}
