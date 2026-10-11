package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.j2objc.annotations.ReflectionSupport;
import com.sunia.HTREnginev2.C13826hg;
import com.sunia.HTREnginev2.pnf;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleUnaryOperator;

@ReflectionSupport(ReflectionSupport.Level.FULL)
@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public class AtomicDouble extends Number implements Serializable {
    private static final long serialVersionUID = 0;
    private static final AtomicLongFieldUpdater<AtomicDouble> updater = AtomicLongFieldUpdater.newUpdater(AtomicDouble.class, "value");
    private volatile transient long value;

    public AtomicDouble(double d) {
        this.value = Double.doubleToRawLongBits(d);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        set(objectInputStream.readDouble());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeDouble(get());
    }

    @CanIgnoreReturnValue
    public final double accumulateAndGet(final double d, final DoubleBinaryOperator doubleBinaryOperator) {
        Preconditions.checkNotNull(doubleBinaryOperator);
        return updateAndGet(new DoubleUnaryOperator() { // from class: com.sunia.HTREnginev2.fg
            @Override // java.util.function.DoubleUnaryOperator
            public final double applyAsDouble(double d2) {
                double applyAsDouble;
                applyAsDouble = doubleBinaryOperator.applyAsDouble(d2, d);
                return applyAsDouble;
            }
        });
    }

    @CanIgnoreReturnValue
    public final double addAndGet(double d) {
        return accumulateAndGet(d, new C13826hg());
    }

    public final boolean compareAndSet(double d, double d2) {
        return updater.compareAndSet(this, Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2));
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return get();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) get();
    }

    public final double get() {
        return Double.longBitsToDouble(this.value);
    }

    @CanIgnoreReturnValue
    public final double getAndAccumulate(final double d, final DoubleBinaryOperator doubleBinaryOperator) {
        Preconditions.checkNotNull(doubleBinaryOperator);
        return getAndUpdate(new DoubleUnaryOperator() { // from class: com.sunia.HTREnginev2.gg
            @Override // java.util.function.DoubleUnaryOperator
            public final double applyAsDouble(double d2) {
                double applyAsDouble;
                applyAsDouble = doubleBinaryOperator.applyAsDouble(d2, d);
                return applyAsDouble;
            }
        });
    }

    @CanIgnoreReturnValue
    public final double getAndAdd(double d) {
        return getAndAccumulate(d, new C13826hg());
    }

    public final double getAndSet(double d) {
        return Double.longBitsToDouble(updater.getAndSet(this, Double.doubleToRawLongBits(d)));
    }

    @CanIgnoreReturnValue
    public final double getAndUpdate(DoubleUnaryOperator doubleUnaryOperator) {
        long j;
        double longBitsToDouble;
        do {
            j = this.value;
            longBitsToDouble = Double.longBitsToDouble(j);
        } while (!updater.compareAndSet(this, j, Double.doubleToRawLongBits(doubleUnaryOperator.applyAsDouble(longBitsToDouble))));
        return longBitsToDouble;
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) get();
    }

    public final void lazySet(double d) {
        updater.lazySet(this, Double.doubleToRawLongBits(d));
    }

    @Override // java.lang.Number
    public long longValue() {
        return (long) get();
    }

    public final void set(double d) {
        this.value = Double.doubleToRawLongBits(d);
    }

    public String toString() {
        return Double.toString(get());
    }

    @CanIgnoreReturnValue
    public final double updateAndGet(DoubleUnaryOperator doubleUnaryOperator) {
        long j;
        double applyAsDouble;
        do {
            j = this.value;
            applyAsDouble = doubleUnaryOperator.applyAsDouble(Double.longBitsToDouble(j));
        } while (!updater.compareAndSet(this, j, Double.doubleToRawLongBits(applyAsDouble)));
        return applyAsDouble;
    }

    public final boolean weakCompareAndSet(double d, double d2) {
        return updater.weakCompareAndSet(this, Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2));
    }

    public AtomicDouble() {
    }
}
