package net.p110sf.saxon.tree.util;

import java.util.ArrayList;
import java.util.EmptyStackException;
import java.util.Iterator;

/* loaded from: classes11.dex */
public class IndexedStack<T> implements Iterable<T> {

    /* renamed from: e */
    public final ArrayList<T> f102670e;

    public IndexedStack() {
        this.f102670e = new ArrayList<>(20);
    }

    public boolean contains(T t) {
        return this.f102670e.contains(t);
    }

    public T get(int i) {
        return this.f102670e.get(i);
    }

    public int indexOf(T t) {
        return this.f102670e.indexOf(t);
    }

    public boolean isEmpty() {
        return this.f102670e.isEmpty();
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return this.f102670e.iterator();
    }

    public T peek() {
        if (this.f102670e.isEmpty()) {
            throw new EmptyStackException();
        }
        return this.f102670e.get(r1.size() - 1);
    }

    public T pop() {
        if (this.f102670e.isEmpty()) {
            throw new EmptyStackException();
        }
        return this.f102670e.remove(r1.size() - 1);
    }

    public void push(T t) {
        this.f102670e.add(t);
    }

    public void set(int i, T t) {
        this.f102670e.set(i, t);
    }

    public int size() {
        return this.f102670e.size();
    }

    public IndexedStack(int i) {
        this.f102670e = new ArrayList<>(i);
    }
}
