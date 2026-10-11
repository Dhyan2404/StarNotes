package org.apache.commons.math3.analysis.integration.gauss;

import java.lang.Number;
import java.util.Map;
import java.util.TreeMap;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.Pair;

/* loaded from: classes12.dex */
public abstract class BaseRuleFactory<T extends Number> {

    /* renamed from: a */
    public final Map<Integer, Pair<T[], T[]>> f107836a = new TreeMap();

    /* renamed from: b */
    public final Map<Integer, Pair<double[], double[]>> f107837b = new TreeMap();

    /* renamed from: a */
    public static <T extends Number> Pair<double[], double[]> m67489a(Pair<T[], T[]> pair) {
        T[] first = pair.getFirst();
        T[] second = pair.getSecond();
        int length = first.length;
        double[] dArr = new double[length];
        double[] dArr2 = new double[length];
        for (int i = 0; i < length; i++) {
            dArr[i] = first[i].doubleValue();
            dArr2[i] = second[i].doubleValue();
        }
        return new Pair<>(dArr, dArr2);
    }

    public void addRule(Pair<T[], T[]> pair) throws DimensionMismatchException {
        if (pair.getFirst().length != pair.getSecond().length) {
            throw new DimensionMismatchException(pair.getFirst().length, pair.getSecond().length);
        }
        this.f107836a.put(Integer.valueOf(pair.getFirst().length), pair);
    }

    public abstract Pair<T[], T[]> computeRule(int i) throws DimensionMismatchException;

    public Pair<double[], double[]> getRule(int i) throws NotStrictlyPositiveException, DimensionMismatchException {
        if (i <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.NUMBER_OF_POINTS, Integer.valueOf(i));
        }
        Pair<double[], double[]> pair = this.f107837b.get(Integer.valueOf(i));
        if (pair == null) {
            pair = m67489a(getRuleInternal(i));
            this.f107837b.put(Integer.valueOf(i), pair);
        }
        return new Pair<>(pair.getFirst().clone(), pair.getSecond().clone());
    }

    public synchronized Pair<T[], T[]> getRuleInternal(int i) throws DimensionMismatchException {
        Pair<T[], T[]> pair = this.f107836a.get(Integer.valueOf(i));
        if (pair != null) {
            return pair;
        }
        addRule(computeRule(i));
        return getRuleInternal(i);
    }
}
