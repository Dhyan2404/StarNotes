package org.apache.commons.math3.optim;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;

/* loaded from: classes12.dex */
public class MaxEval implements OptimizationData {

    /* renamed from: e */
    public final int f109061e;

    public MaxEval(int i) {
        if (i <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i));
        }
        this.f109061e = i;
    }

    public static MaxEval unlimited() {
        return new MaxEval(Integer.MAX_VALUE);
    }

    public int getMaxEval() {
        return this.f109061e;
    }
}
