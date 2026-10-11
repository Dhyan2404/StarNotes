package net.p110sf.saxon.trans;

import io.opencensus.contrib.http.util.HttpMeasureConstants;
import java.math.BigDecimal;
import net.p110sf.saxon.functions.AccessorFn;
import net.p110sf.saxon.value.DayTimeDurationValue;
import net.p110sf.saxon.value.NumericValue;

/* loaded from: classes11.dex */
public class Timer {

    /* renamed from: c */
    public static final DayTimeDurationValue f102358c = new DayTimeDurationValue(1, 0, 0, 0, 0, 1000);

    /* renamed from: a */
    public final long f102359a;

    /* renamed from: b */
    public long f102360b;

    public Timer() {
        long nanoTime = System.nanoTime();
        this.f102359a = nanoTime;
        this.f102360b = nanoTime;
    }

    public static String showExecutionTimeNano(long j) {
        double d = j;
        if (d < 1.0E9d) {
            return (d / 1000000.0d) + HttpMeasureConstants.f94668b;
        }
        double d2 = d / 1000000.0d;
        try {
            DayTimeDurationValue multiply = f102358c.multiply(d2);
            long longValue = ((NumericValue) multiply.getComponent(AccessorFn.Component.DAY)).longValue();
            long longValue2 = ((NumericValue) multiply.getComponent(AccessorFn.Component.HOURS)).longValue();
            long longValue3 = ((NumericValue) multiply.getComponent(AccessorFn.Component.MINUTES)).longValue();
            BigDecimal decimalValue = ((NumericValue) multiply.getComponent(AccessorFn.Component.SECONDS)).getDecimalValue();
            StringBuilder sb = new StringBuilder(256);
            if (longValue > 0) {
                sb.append(longValue + "days ");
            }
            if (longValue2 > 0) {
                sb.append(longValue2 + "h ");
            }
            if (longValue3 > 0) {
                sb.append(longValue3 + "m ");
            }
            sb.append(decimalValue + "s");
            return sb.toString() + " (" + d2 + "ms)";
        } catch (XPathException unused) {
            return d2 + HttpMeasureConstants.f94668b;
        }
    }

    public static String showMemoryUsed() {
        return "Memory used: " + ((Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory()) / 1000000) + "Mb";
    }

    public void report(String str) {
        long nanoTime = System.nanoTime();
        System.err.println(str + " " + ((nanoTime - this.f102360b) / 1000000.0d) + HttpMeasureConstants.f94668b);
        this.f102360b = nanoTime;
    }

    public void reportCumulative(String str) {
        long nanoTime = System.nanoTime();
        System.err.println(str + " " + ((nanoTime - this.f102359a) / 1000000.0d) + HttpMeasureConstants.f94668b);
        this.f102360b = nanoTime;
    }
}
