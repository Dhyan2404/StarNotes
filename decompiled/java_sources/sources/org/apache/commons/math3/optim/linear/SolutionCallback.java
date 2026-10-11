package org.apache.commons.math3.optim.linear;

import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointValuePair;

/* loaded from: classes12.dex */
public class SolutionCallback implements OptimizationData {

    /* renamed from: e */
    public SimplexTableau f109087e;

    /* renamed from: a */
    public void m67907a(SimplexTableau simplexTableau) {
        this.f109087e = simplexTableau;
    }

    public PointValuePair getSolution() {
        SimplexTableau simplexTableau = this.f109087e;
        if (simplexTableau != null) {
            return simplexTableau.getSolution();
        }
        return null;
    }

    public boolean isSolutionOptimal() {
        SimplexTableau simplexTableau = this.f109087e;
        if (simplexTableau != null) {
            return simplexTableau.isOptimal();
        }
        return false;
    }
}
