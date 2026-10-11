package org.apache.commons.math3.optim.linear;

import org.apache.commons.math3.optim.OptimizationData;

/* loaded from: classes12.dex */
public class NonNegativeConstraint implements OptimizationData {

    /* renamed from: e */
    public final boolean f109075e;

    public NonNegativeConstraint(boolean z) {
        this.f109075e = z;
    }

    public boolean isRestrictedToNonNegative() {
        return this.f109075e;
    }
}
