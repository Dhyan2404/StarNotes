package net.p110sf.saxon.ma.trie;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public abstract class ImmutableList<T> implements Iterable<T> {

    /* renamed from: e */
    public static final C18417b f100734e = new C18417b(null);

    /* renamed from: net.sf.saxon.ma.trie.ImmutableList$a */
    /* loaded from: classes11.dex */
    public class C18416a implements Iterator<T> {

        /* renamed from: e */
        public ImmutableList<T> f100735e;

        public C18416a() {
            this.f100735e = ImmutableList.this;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f100735e.isEmpty();
        }

        @Override // java.util.Iterator
        public T next() {
            T head = this.f100735e.head();
            this.f100735e = this.f100735e.tail();
            return head;
        }
    }

    /* renamed from: net.sf.saxon.ma.trie.ImmutableList$b */
    /* loaded from: classes11.dex */
    public static class C18417b extends ImmutableList {
        public C18417b() {
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableList
        public Object head() {
            throw new NoSuchElementException("head() called on empty list");
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableList
        public boolean isEmpty() {
            return true;
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableList
        public ImmutableList tail() {
            throw new NoSuchElementException("head() called on empty list");
        }

        public /* synthetic */ C18417b(C18416a c18416a) {
            this();
        }
    }

    /* renamed from: net.sf.saxon.ma.trie.ImmutableList$c */
    /* loaded from: classes11.dex */
    public static class C18418c<T> extends ImmutableList<T> {

        /* renamed from: f */
        public final T f100737f;

        /* renamed from: g */
        public final ImmutableList<T> f100738g;

        public /* synthetic */ C18418c(Object obj, ImmutableList immutableList, C18416a c18416a) {
            this(obj, immutableList);
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableList
        public T head() {
            return this.f100737f;
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableList
        public boolean isEmpty() {
            return false;
        }

        @Override // net.p110sf.saxon.ma.trie.ImmutableList
        public ImmutableList<T> tail() {
            return this.f100738g;
        }

        public C18418c(T t, ImmutableList<T> immutableList) {
            this.f100737f = t;
            this.f100738g = immutableList;
        }
    }

    public static <T> ImmutableList<T> empty() {
        return f100734e;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ImmutableList)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        Iterator<T> it2 = iterator();
        Iterator<T> it3 = ((ImmutableList) obj).iterator();
        while (it2.hasNext() && it3.hasNext()) {
            if (!it2.next().equals(it3.next())) {
                return false;
            }
        }
        return it2.hasNext() == it3.hasNext();
    }

    public abstract T head();

    public abstract boolean isEmpty();

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new C18416a();
    }

    public ImmutableList<T> prepend(T t) {
        return new C18418c(t, this, null);
    }

    public ImmutableList<T> reverse() {
        ImmutableList<T> empty = empty();
        Iterator<T> it2 = iterator();
        while (it2.hasNext()) {
            empty = empty.prepend(it2.next());
        }
        return empty;
    }

    public final int size() {
        int i = 0;
        while (!this.isEmpty()) {
            i++;
            this = this.tail();
        }
        return i;
    }

    public abstract ImmutableList<T> tail();

    public String toString() {
        StringBuilder sb = new StringBuilder(IteratorUtils.f104923a);
        Iterator<T> it2 = iterator();
        boolean z = true;
        while (it2.hasNext()) {
            T next = it2.next();
            if (!z) {
                sb.append(", ");
            }
            sb.append(next);
            z = false;
        }
        sb.append(']');
        return sb.toString();
    }
}
