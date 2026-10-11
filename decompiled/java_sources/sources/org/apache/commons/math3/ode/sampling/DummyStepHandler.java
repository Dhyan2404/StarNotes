package org.apache.commons.math3.ode.sampling;

/* loaded from: classes12.dex */
public class DummyStepHandler implements StepHandler {

    /* renamed from: org.apache.commons.math3.ode.sampling.DummyStepHandler$b */
    /* loaded from: classes12.dex */
    public static class C19211b {

        /* renamed from: a */
        public static final DummyStepHandler f109025a = new DummyStepHandler();
    }

    public static DummyStepHandler getInstance() {
        return C19211b.f109025a;
    }

    /* renamed from: a */
    public final Object m67896a() {
        return C19211b.f109025a;
    }

    @Override // org.apache.commons.math3.ode.sampling.StepHandler
    public void handleStep(StepInterpolator stepInterpolator, boolean z) {
    }

    @Override // org.apache.commons.math3.ode.sampling.StepHandler
    public void init(double d, double[] dArr, double d2) {
    }

    public DummyStepHandler() {
    }
}
