package org.apache.commons.math3.ode.events;

/* loaded from: classes12.dex */
public interface EventHandler {

    /* loaded from: classes12.dex */
    public enum Action {
        STOP,
        RESET_STATE,
        RESET_DERIVATIVES,
        CONTINUE
    }

    Action eventOccurred(double d, double[] dArr, boolean z);

    /* renamed from: g */
    double mo67880g(double d, double[] dArr);

    void init(double d, double[] dArr, double d2);

    void resetState(double d, double[] dArr);
}
