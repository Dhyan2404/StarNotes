package net.p110sf.saxon.tree.jiter;

import java.util.Iterator;
import java.util.function.Supplier;
import net.p110sf.saxon.tree.jiter.ConcatenatingIterable;

/* loaded from: classes11.dex */
public class ConcatenatingIterable<E> implements Iterable<E> {

    /* renamed from: e */
    public Iterable<? extends E> f102472e;

    /* renamed from: f */
    public Iterable<? extends E> f102473f;

    public ConcatenatingIterable(Iterable<? extends E> iterable, Iterable<? extends E> iterable2) {
        this.f102472e = iterable;
        this.f102473f = iterable2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ Iterator m64512b() {
        return this.f102473f.iterator();
    }

    @Override // java.lang.Iterable
    public Iterator<E> iterator() {
        return new ConcatenatingIterator(this.f102472e.iterator(), new Supplier() { // from class: com.sunia.HTREnginev2.y7e
            @Override // java.util.function.Supplier
            public final Object get() {
                Iterator m64512b;
                m64512b = ConcatenatingIterable.this.m64512b();
                return m64512b;
            }
        });
    }
}
