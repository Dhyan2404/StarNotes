package org.apache.commons.math3.optim;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;

/* loaded from: classes12.dex */
public class MaxIter implements OptimizationData {

    /* renamed from: e */
    public final int f109062e;

    public MaxIter(int i) {
        if (i <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i));
        }
        this.f109062e = i;
    }

    public static MaxIter unlimited() {
        return new MaxIter(Integer.MAX_VALUE);
    }

    public int getMaxIter() {
        return this.f109062e;
    }
}
