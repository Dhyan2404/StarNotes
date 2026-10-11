package com.google.common.math;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.math.Stats;
import com.google.common.math.StatsAccumulator;
import com.google.common.primitives.Doubles;
import com.sunia.HTREnginev2.iym;
import com.sunia.HTREnginev2.jym;
import com.sunia.HTREnginev2.kym;
import com.sunia.HTREnginev2.oym;
import com.sunia.HTREnginev2.pym;
import com.sunia.HTREnginev2.sff;
import com.sunia.HTREnginev2.znf;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.stream.Collector;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import javax.annotation.CheckForNull;

@Beta
@znf
@GwtIncompatible
/* loaded from: classes6.dex */
public final class Stats implements Serializable {
    static final int BYTES = 40;
    private static final long serialVersionUID = 0;
    private final long count;
    private final double max;
    private final double mean;
    private final double min;
    private final double sumOfSquaresOfDeltas;

    public Stats(long j, double d, double d2, double d3, double d4) {
        this.count = j;
        this.mean = d;
        this.sumOfSquaresOfDeltas = d2;
        this.min = d3;
        this.max = d4;
    }

    public static Stats fromByteArray(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        Preconditions.checkArgument(bArr.length == 40, "Expected Stats.BYTES = %s remaining , got %s", 40, bArr.length);
        return readFrom(ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$toStats$0(StatsAccumulator statsAccumulator, Number number) {
        statsAccumulator.add(number.doubleValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ StatsAccumulator lambda$toStats$1(StatsAccumulator statsAccumulator, StatsAccumulator statsAccumulator2) {
        statsAccumulator.addAll(statsAccumulator2);
        return statsAccumulator;
    }

    public static double meanOf(Iterable<? extends Number> iterable) {
        return meanOf(iterable.iterator());
    }

    /* renamed from: of */
    public static Stats m27297of(Iterable<? extends Number> iterable) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(iterable);
        return statsAccumulator.snapshot();
    }

    public static Stats readFrom(ByteBuffer byteBuffer) {
        Preconditions.checkNotNull(byteBuffer);
        Preconditions.checkArgument(byteBuffer.remaining() >= 40, "Expected at least Stats.BYTES = %s remaining , got %s", 40, byteBuffer.remaining());
        return new Stats(byteBuffer.getLong(), byteBuffer.getDouble(), byteBuffer.getDouble(), byteBuffer.getDouble(), byteBuffer.getDouble());
    }

    public static Collector<Number, StatsAccumulator, Stats> toStats() {
        return Collector.of(new iym(), new BiConsumer() { // from class: com.sunia.HTREnginev2.lym
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                Stats.lambda$toStats$0((StatsAccumulator) obj, (Number) obj2);
            }
        }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.mym
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                StatsAccumulator lambda$toStats$1;
                lambda$toStats$1 = Stats.lambda$toStats$1((StatsAccumulator) obj, (StatsAccumulator) obj2);
                return lambda$toStats$1;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.nym
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((StatsAccumulator) obj).snapshot();
            }
        }, Collector.Characteristics.UNORDERED);
    }

    public long count() {
        return this.count;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj == null || Stats.class != obj.getClass()) {
            return false;
        }
        Stats stats = (Stats) obj;
        return this.count == stats.count && Double.doubleToLongBits(this.mean) == Double.doubleToLongBits(stats.mean) && Double.doubleToLongBits(this.sumOfSquaresOfDeltas) == Double.doubleToLongBits(stats.sumOfSquaresOfDeltas) && Double.doubleToLongBits(this.min) == Double.doubleToLongBits(stats.min) && Double.doubleToLongBits(this.max) == Double.doubleToLongBits(stats.max);
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.count), Double.valueOf(this.mean), Double.valueOf(this.sumOfSquaresOfDeltas), Double.valueOf(this.min), Double.valueOf(this.max));
    }

    public double max() {
        Preconditions.checkState(this.count != 0);
        return this.max;
    }

    public double mean() {
        Preconditions.checkState(this.count != 0);
        return this.mean;
    }

    public double min() {
        Preconditions.checkState(this.count != 0);
        return this.min;
    }

    public double populationStandardDeviation() {
        return Math.sqrt(populationVariance());
    }

    public double populationVariance() {
        Preconditions.checkState(this.count > 0);
        if (Double.isNaN(this.sumOfSquaresOfDeltas)) {
            return Double.NaN;
        }
        if (this.count == 1) {
            return 0.0d;
        }
        return sff.m57156b(this.sumOfSquaresOfDeltas) / count();
    }

    public double sampleStandardDeviation() {
        return Math.sqrt(sampleVariance());
    }

    public double sampleVariance() {
        Preconditions.checkState(this.count > 1);
        if (Double.isNaN(this.sumOfSquaresOfDeltas)) {
            return Double.NaN;
        }
        return sff.m57156b(this.sumOfSquaresOfDeltas) / (this.count - 1);
    }

    public double sum() {
        return this.mean * this.count;
    }

    public double sumOfSquaresOfDeltas() {
        return this.sumOfSquaresOfDeltas;
    }

    public byte[] toByteArray() {
        ByteBuffer order = ByteBuffer.allocate(40).order(ByteOrder.LITTLE_ENDIAN);
        writeTo(order);
        return order.array();
    }

    public String toString() {
        return count() > 0 ? MoreObjects.toStringHelper(this).add("count", this.count).add("mean", this.mean).add("populationStandardDeviation", populationStandardDeviation()).add("min", this.min).add("max", this.max).toString() : MoreObjects.toStringHelper(this).add("count", this.count).toString();
    }

    public void writeTo(ByteBuffer byteBuffer) {
        Preconditions.checkNotNull(byteBuffer);
        Preconditions.checkArgument(byteBuffer.remaining() >= 40, "Expected at least Stats.BYTES = %s remaining , got %s", 40, byteBuffer.remaining());
        byteBuffer.putLong(this.count).putDouble(this.mean).putDouble(this.sumOfSquaresOfDeltas).putDouble(this.min).putDouble(this.max);
    }

    public static double meanOf(Iterator<? extends Number> it2) {
        Preconditions.checkArgument(it2.hasNext());
        double doubleValue = it2.next().doubleValue();
        long j = 1;
        while (it2.hasNext()) {
            double doubleValue2 = it2.next().doubleValue();
            j++;
            doubleValue = (Doubles.isFinite(doubleValue2) && Doubles.isFinite(doubleValue)) ? doubleValue + ((doubleValue2 - doubleValue) / j) : StatsAccumulator.m27305a(doubleValue, doubleValue2);
        }
        return doubleValue;
    }

    /* renamed from: of */
    public static Stats m27298of(Iterator<? extends Number> it2) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(it2);
        return statsAccumulator.snapshot();
    }

    /* renamed from: of */
    public static Stats m27302of(double... dArr) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(dArr);
        return statsAccumulator.snapshot();
    }

    public static double meanOf(double... dArr) {
        Preconditions.checkArgument(dArr.length > 0);
        double d = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            double d2 = dArr[i];
            d = (Doubles.isFinite(d2) && Doubles.isFinite(d)) ? d + ((d2 - d) / (i + 1)) : StatsAccumulator.m27305a(d, d2);
        }
        return d;
    }

    /* renamed from: of */
    public static Stats m27303of(int... iArr) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(iArr);
        return statsAccumulator.snapshot();
    }

    /* renamed from: of */
    public static Stats m27304of(long... jArr) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(jArr);
        return statsAccumulator.snapshot();
    }

    public static double meanOf(int... iArr) {
        Preconditions.checkArgument(iArr.length > 0);
        double d = iArr[0];
        for (int i = 1; i < iArr.length; i++) {
            double d2 = iArr[i];
            d = (Doubles.isFinite(d2) && Doubles.isFinite(d)) ? d + ((d2 - d) / (i + 1)) : StatsAccumulator.m27305a(d, d2);
        }
        return d;
    }

    /* renamed from: of */
    public static Stats m27299of(DoubleStream doubleStream) {
        return ((StatsAccumulator) doubleStream.collect(new iym(), new oym(), new kym())).snapshot();
    }

    /* renamed from: of */
    public static Stats m27300of(IntStream intStream) {
        return ((StatsAccumulator) intStream.collect(new iym(), new pym(), new kym())).snapshot();
    }

    public static double meanOf(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0);
        double d = jArr[0];
        for (int i = 1; i < jArr.length; i++) {
            double d2 = jArr[i];
            d = (Doubles.isFinite(d2) && Doubles.isFinite(d)) ? d + ((d2 - d) / (i + 1)) : StatsAccumulator.m27305a(d, d2);
        }
        return d;
    }

    /* renamed from: of */
    public static Stats m27301of(LongStream longStream) {
        return ((StatsAccumulator) longStream.collect(new iym(), new jym(), new kym())).snapshot();
    }
}
