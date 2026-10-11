package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.sunia.HTREnginev2.snf;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.Queue;
import java.util.function.Consumer;
import javax.annotation.CheckForNull;

@Beta
@GwtCompatible
@Deprecated
@snf
/* loaded from: classes6.dex */
public abstract class TreeTraverser<T> {

    /* renamed from: com.google.common.collect.TreeTraverser$a */
    /* loaded from: classes6.dex */
    public class C6093a extends TreeTraverser<T> {

        /* renamed from: a */
        public final /* synthetic */ Function f34559a;

        public C6093a(Function function) {
            this.f34559a = function;
        }

        @Override // com.google.common.collect.TreeTraverser
        public Iterable<T> children(T t) {
            return (Iterable) this.f34559a.apply(t);
        }
    }

    /* renamed from: com.google.common.collect.TreeTraverser$b */
    /* loaded from: classes6.dex */
    public class C6094b extends FluentIterable<T> {

        /* renamed from: f */
        public final /* synthetic */ Object f34560f;

        /* renamed from: com.google.common.collect.TreeTraverser$b$a */
        /* loaded from: classes6.dex */
        public class a implements Consumer<T> {

            /* renamed from: e */
            public final /* synthetic */ Consumer f34562e;

            public a(Consumer consumer) {
                this.f34562e = consumer;
            }

            @Override // java.util.function.Consumer
            public void accept(T t) {
                this.f34562e.accept(t);
                TreeTraverser.this.children(t).forEach(this);
            }
        }

        public C6094b(Object obj) {
            this.f34560f = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Iterable
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public UnmodifiableIterator<T> iterator() {
            return TreeTraverser.this.m26878b(this.f34560f);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Iterable
        public void forEach(Consumer<? super T> consumer) {
            Preconditions.checkNotNull(consumer);
            new a(consumer).accept(this.f34560f);
        }
    }

    /* renamed from: com.google.common.collect.TreeTraverser$c */
    /* loaded from: classes6.dex */
    public class C6095c extends FluentIterable<T> {

        /* renamed from: f */
        public final /* synthetic */ Object f34564f;

        /* renamed from: com.google.common.collect.TreeTraverser$c$a */
        /* loaded from: classes6.dex */
        public class a implements Consumer<T> {

            /* renamed from: e */
            public final /* synthetic */ Consumer f34566e;

            public a(Consumer consumer) {
                this.f34566e = consumer;
            }

            @Override // java.util.function.Consumer
            public void accept(T t) {
                TreeTraverser.this.children(t).forEach(this);
                this.f34566e.accept(t);
            }
        }

        public C6095c(Object obj) {
            this.f34564f = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Iterable
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public UnmodifiableIterator<T> iterator() {
            return TreeTraverser.this.m26877a(this.f34564f);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Iterable
        public void forEach(Consumer<? super T> consumer) {
            Preconditions.checkNotNull(consumer);
            new a(consumer).accept(this.f34564f);
        }
    }

    /* renamed from: com.google.common.collect.TreeTraverser$d */
    /* loaded from: classes6.dex */
    public class C6096d extends FluentIterable<T> {

        /* renamed from: f */
        public final /* synthetic */ Object f34568f;

        public C6096d(Object obj) {
            this.f34568f = obj;
        }

        @Override // java.lang.Iterable
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public UnmodifiableIterator<T> iterator() {
            return new C6097e(this.f34568f);
        }
    }

    /* renamed from: com.google.common.collect.TreeTraverser$e */
    /* loaded from: classes6.dex */
    public final class C6097e extends UnmodifiableIterator<T> implements PeekingIterator<T> {

        /* renamed from: e */
        public final Queue<T> f34570e;

        public C6097e(T t) {
            ArrayDeque arrayDeque = new ArrayDeque();
            this.f34570e = arrayDeque;
            arrayDeque.add(t);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f34570e.isEmpty();
        }

        @Override // java.util.Iterator, com.google.common.collect.PeekingIterator
        public T next() {
            T remove = this.f34570e.remove();
            Iterables.addAll(this.f34570e, TreeTraverser.this.children(remove));
            return remove;
        }

        @Override // com.google.common.collect.PeekingIterator
        public T peek() {
            return this.f34570e.element();
        }
    }

    /* renamed from: com.google.common.collect.TreeTraverser$f */
    /* loaded from: classes6.dex */
    public final class C6098f extends AbstractIterator<T> {

        /* renamed from: g */
        public final ArrayDeque<C6099g<T>> f34572g;

        public C6098f(T t) {
            ArrayDeque<C6099g<T>> arrayDeque = new ArrayDeque<>();
            this.f34572g = arrayDeque;
            arrayDeque.addLast(m26882b(t));
        }

        /* renamed from: b */
        public final C6099g<T> m26882b(T t) {
            return new C6099g<>(t, TreeTraverser.this.children(t).iterator());
        }

        @Override // com.google.common.collect.AbstractIterator
        @CheckForNull
        public T computeNext() {
            while (!this.f34572g.isEmpty()) {
                C6099g<T> last = this.f34572g.getLast();
                if (!last.f34575b.hasNext()) {
                    this.f34572g.removeLast();
                    return last.f34574a;
                }
                this.f34572g.addLast(m26882b(last.f34575b.next()));
            }
            return endOfData();
        }
    }

    /* renamed from: com.google.common.collect.TreeTraverser$g */
    /* loaded from: classes6.dex */
    public static final class C6099g<T> {

        /* renamed from: a */
        public final T f34574a;

        /* renamed from: b */
        public final Iterator<T> f34575b;

        public C6099g(T t, Iterator<T> it2) {
            this.f34574a = (T) Preconditions.checkNotNull(t);
            this.f34575b = (Iterator) Preconditions.checkNotNull(it2);
        }
    }

    /* renamed from: com.google.common.collect.TreeTraverser$h */
    /* loaded from: classes6.dex */
    public final class C6100h extends UnmodifiableIterator<T> {

        /* renamed from: e */
        public final Deque<Iterator<T>> f34576e;

        public C6100h(T t) {
            ArrayDeque arrayDeque = new ArrayDeque();
            this.f34576e = arrayDeque;
            arrayDeque.addLast(Iterators.singletonIterator(Preconditions.checkNotNull(t)));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f34576e.isEmpty();
        }

        @Override // java.util.Iterator
        public T next() {
            Iterator<T> last = this.f34576e.getLast();
            T t = (T) Preconditions.checkNotNull(last.next());
            if (!last.hasNext()) {
                this.f34576e.removeLast();
            }
            Iterator<T> it2 = TreeTraverser.this.children(t).iterator();
            if (it2.hasNext()) {
                this.f34576e.addLast(it2);
            }
            return t;
        }
    }

    @Deprecated
    public static <T> TreeTraverser<T> using(Function<T, ? extends Iterable<T>> function) {
        Preconditions.checkNotNull(function);
        return new C6093a(function);
    }

    /* renamed from: a */
    public UnmodifiableIterator<T> m26877a(T t) {
        return new C6098f(t);
    }

    /* renamed from: b */
    public UnmodifiableIterator<T> m26878b(T t) {
        return new C6100h(t);
    }

    @Deprecated
    public final FluentIterable<T> breadthFirstTraversal(T t) {
        Preconditions.checkNotNull(t);
        return new C6096d(t);
    }

    public abstract Iterable<T> children(T t);

    @Deprecated
    public final FluentIterable<T> postOrderTraversal(T t) {
        Preconditions.checkNotNull(t);
        return new C6095c(t);
    }

    @Deprecated
    public final FluentIterable<T> preOrderTraversal(T t) {
        Preconditions.checkNotNull(t);
        return new C6094b(t);
    }
}
