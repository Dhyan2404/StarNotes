package io.reactivex.rxjava3.internal.queue;

import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.operators.SimplePlainQueue;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class MpscLinkedQueue<T> implements SimplePlainQueue<T> {

    /* renamed from: e */
    public final AtomicReference<LinkedQueueNode<T>> f97299e = new AtomicReference<>();

    /* renamed from: f */
    public final AtomicReference<LinkedQueueNode<T>> f97300f = new AtomicReference<>();

    /* loaded from: classes10.dex */
    public static final class LinkedQueueNode<E> extends AtomicReference<LinkedQueueNode<E>> {
        private static final long serialVersionUID = 2404266111789071508L;
        private E value;

        public LinkedQueueNode() {
        }

        public E getAndNullValue() {
            E lpValue = lpValue();
            spValue(null);
            return lpValue;
        }

        public E lpValue() {
            return this.value;
        }

        public LinkedQueueNode<E> lvNext() {
            return get();
        }

        public void soNext(LinkedQueueNode<E> n) {
            lazySet(n);
        }

        public void spValue(E newValue) {
            this.value = newValue;
        }

        public LinkedQueueNode(E val) {
            spValue(val);
        }
    }

    public MpscLinkedQueue() {
        LinkedQueueNode<T> linkedQueueNode = new LinkedQueueNode<>();
        m61268d(linkedQueueNode);
        m61269e(linkedQueueNode);
    }

    /* renamed from: a */
    public LinkedQueueNode<T> m61265a() {
        return this.f97300f.get();
    }

    /* renamed from: b */
    public LinkedQueueNode<T> m61266b() {
        return this.f97300f.get();
    }

    /* renamed from: c */
    public LinkedQueueNode<T> m61267c() {
        return this.f97299e.get();
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public void clear() {
        while (poll() != null && !isEmpty()) {
        }
    }

    /* renamed from: d */
    public void m61268d(LinkedQueueNode<T> node) {
        this.f97300f.lazySet(node);
    }

    /* renamed from: e */
    public LinkedQueueNode<T> m61269e(LinkedQueueNode<T> node) {
        return this.f97299e.getAndSet(node);
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public boolean isEmpty() {
        return m61266b() == m61267c();
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public boolean offer(final T e) {
        if (e != null) {
            LinkedQueueNode<T> linkedQueueNode = new LinkedQueueNode<>(e);
            m61269e(linkedQueueNode).soNext(linkedQueueNode);
            return true;
        }
        throw new NullPointerException("Null is not a valid element");
    }

    @Override // io.reactivex.rxjava3.operators.SimplePlainQueue, io.reactivex.rxjava3.operators.SimpleQueue
    @Nullable
    public T poll() {
        LinkedQueueNode<T> lvNext;
        LinkedQueueNode<T> m61265a = m61265a();
        LinkedQueueNode<T> lvNext2 = m61265a.lvNext();
        if (lvNext2 != null) {
            T andNullValue = lvNext2.getAndNullValue();
            m61268d(lvNext2);
            return andNullValue;
        }
        if (m61265a == m61267c()) {
            return null;
        }
        do {
            lvNext = m61265a.lvNext();
        } while (lvNext == null);
        T andNullValue2 = lvNext.getAndNullValue();
        m61268d(lvNext);
        return andNullValue2;
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public boolean offer(T v1, T v2) {
        offer(v1);
        offer(v2);
        return true;
    }
}
