package com.sunia.HTREnginev2;

import java.util.Iterator;
import java.util.Spliterator;
import java.util.stream.BaseStream;
import onyx.org.apache.commons.io.function.IOBaseStream;
import onyx.org.apache.commons.io.function.IOFunction;
import onyx.org.apache.commons.io.function.IORunnable;
import onyx.org.apache.commons.io.function.Uncheck;

/* loaded from: classes11.dex */
public final class xrn<T, S extends IOBaseStream<T, S, B>, B extends BaseStream<T, B>> implements BaseStream<T, B> {

    /* renamed from: e */
    public final S f90001e;

    public xrn(S s) {
        this.f90001e = s;
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public void close() {
        this.f90001e.close();
    }

    @Override // java.util.stream.BaseStream
    public boolean isParallel() {
        return this.f90001e.isParallel();
    }

    @Override // java.util.stream.BaseStream
    public Iterator<T> iterator() {
        return this.f90001e.iterator().asIterator();
    }

    @Override // java.util.stream.BaseStream
    public B onClose(final Runnable runnable) {
        final S s = this.f90001e;
        s.getClass();
        return (B) ((IOBaseStream) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.vrn
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                return IOBaseStream.this.onClose((IORunnable) obj);
            }
        }, new IORunnable() { // from class: com.sunia.HTREnginev2.wrn
            @Override // onyx.org.apache.commons.io.function.IORunnable
            public final void run() {
                runnable.run();
            }
        })).unwrap();
    }

    @Override // java.util.stream.BaseStream
    public B parallel() {
        return (B) this.f90001e.parallel().unwrap();
    }

    @Override // java.util.stream.BaseStream
    public B sequential() {
        return (B) this.f90001e.sequential().unwrap();
    }

    @Override // java.util.stream.BaseStream
    public Spliterator<T> spliterator() {
        return this.f90001e.spliterator().unwrap();
    }

    @Override // java.util.stream.BaseStream
    public B unordered() {
        return (B) this.f90001e.unordered().unwrap();
    }
}
