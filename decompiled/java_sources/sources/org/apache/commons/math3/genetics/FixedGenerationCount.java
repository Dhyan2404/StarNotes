package org.apache.commons.math3.genetics;

import org.apache.commons.math3.exception.NumberIsTooSmallException;

/* loaded from: classes12.dex */
public class FixedGenerationCount implements StoppingCondition {

    /* renamed from: a */
    public int f108206a = 0;

    /* renamed from: b */
    public final int f108207b;

    public FixedGenerationCount(int i) throws NumberIsTooSmallException {
        if (i <= 0) {
            throw new NumberIsTooSmallException(Integer.valueOf(i), 1, true);
        }
        this.f108207b = i;
    }

    public int getNumGenerations() {
        return this.f108206a;
    }

    @Override // org.apache.commons.math3.genetics.StoppingCondition
    public boolean isSatisfied(Population population) {
        int i = this.f108206a;
        if (i >= this.f108207b) {
            return true;
        }
        this.f108206a = i + 1;
        return false;
    }
}
