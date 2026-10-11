package com.sunia.HTREnginev2;

import java.util.Comparator;
import java.util.Objects;
import java.util.Spliterator;
import java.util.function.Consumer;
import onyx.org.apache.commons.io.function.IOConsumer;
import onyx.org.apache.commons.io.function.IOFunction;
import onyx.org.apache.commons.io.function.IOSpliterator;
import onyx.org.apache.commons.io.function.IOSupplier;
import onyx.org.apache.commons.io.function.Uncheck;

/* loaded from: classes11.dex */
public final class hsn<T> implements Spliterator<T> {

    /* renamed from: e */
    public final IOSpliterator<T> f72525e;

    public hsn(IOSpliterator<T> iOSpliterator) {
        Objects.requireNonNull(iOSpliterator, "delegate");
        this.f72525e = iOSpliterator;
    }

    @Override // java.util.Spliterator
    public int characteristics() {
        return this.f72525e.characteristics();
    }

    @Override // java.util.Spliterator
    public long estimateSize() {
        return this.f72525e.estimateSize();
    }

    @Override // java.util.Spliterator
    public void forEachRemaining(Consumer<? super T> consumer) {
        final IOSpliterator<T> iOSpliterator = this.f72525e;
        iOSpliterator.getClass();
        IOConsumer iOConsumer = new IOConsumer() { // from class: com.sunia.HTREnginev2.dsn
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                IOSpliterator.this.forEachRemaining((IOConsumer) obj);
            }
        };
        consumer.getClass();
        Uncheck.accept(iOConsumer, new esn(consumer));
    }

    @Override // java.util.Spliterator
    public Comparator<? super T> getComparator() {
        return this.f72525e.getComparator().asComparator();
    }

    @Override // java.util.Spliterator
    public long getExactSizeIfKnown() {
        return this.f72525e.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public boolean hasCharacteristics(int i) {
        return this.f72525e.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator
    public boolean tryAdvance(Consumer<? super T> consumer) {
        final IOSpliterator<T> iOSpliterator = this.f72525e;
        iOSpliterator.getClass();
        IOFunction iOFunction = new IOFunction() { // from class: com.sunia.HTREnginev2.fsn
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                return Boolean.valueOf(IOSpliterator.this.tryAdvance((IOConsumer) obj));
            }
        };
        consumer.getClass();
        return ((Boolean) Uncheck.apply(iOFunction, new esn(consumer))).booleanValue();
    }

    @Override // java.util.Spliterator
    public Spliterator<T> trySplit() {
        final IOSpliterator<T> iOSpliterator = this.f72525e;
        iOSpliterator.getClass();
        return ((IOSpliterator) Uncheck.get(new IOSupplier() { // from class: com.sunia.HTREnginev2.gsn
            @Override // onyx.org.apache.commons.io.function.IOSupplier
            public final Object get() {
                return IOSpliterator.this.trySplit();
            }
        })).unwrap();
    }
}
