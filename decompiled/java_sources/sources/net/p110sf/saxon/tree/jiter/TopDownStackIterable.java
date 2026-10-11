package net.p110sf.saxon.tree.jiter;

import java.util.Iterator;
import java.util.Stack;

/* loaded from: classes11.dex */
public class TopDownStackIterable<T> implements Iterable<T> {

    /* renamed from: e */
    public final Stack<T> f102485e;

    /* renamed from: net.sf.saxon.tree.jiter.TopDownStackIterable$a */
    /* loaded from: classes11.dex */
    public class C18539a implements Iterator<T> {

        /* renamed from: e */
        public int f102486e;

        public C18539a() {
            this.f102486e = TopDownStackIterable.this.f102485e.size() - 1;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f102486e >= 0;
        }

        @Override // java.util.Iterator
        public T next() {
            Stack stack = TopDownStackIterable.this.f102485e;
            int i = this.f102486e;
            this.f102486e = i - 1;
            return (T) stack.get(i);
        }
    }

    public TopDownStackIterable(Stack<T> stack) {
        this.f102485e = stack;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new C18539a();
    }
}
