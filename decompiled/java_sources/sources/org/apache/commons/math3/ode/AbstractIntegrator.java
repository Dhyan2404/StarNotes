package org.apache.commons.math3.ode;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import org.apache.commons.math3.analysis.solvers.BracketingNthOrderBrentSolver;
import org.apache.commons.math3.analysis.solvers.UnivariateSolver;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.ode.events.EventHandler;
import org.apache.commons.math3.ode.events.EventState;
import org.apache.commons.math3.ode.sampling.StepHandler;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Incrementor;
import org.apache.commons.math3.util.IntegerSequence;

/* loaded from: classes12.dex */
public abstract class AbstractIntegrator implements FirstOrderIntegrator {

    /* renamed from: a */
    public Collection<EventState> f108731a;

    /* renamed from: b */
    public boolean f108732b;

    /* renamed from: c */
    public final String f108733c;

    /* renamed from: d */
    public IntegerSequence.Incrementor f108734d;

    /* renamed from: e */
    public transient ExpandableStatefulODE f108735e;
    protected boolean isLastStep;
    protected boolean resetOccurred;
    protected Collection<StepHandler> stepHandlers;
    protected double stepSize;
    protected double stepStart;

    /* renamed from: org.apache.commons.math3.ode.AbstractIntegrator$a */
    /* loaded from: classes12.dex */
    public class C19189a implements Comparator<EventState> {

        /* renamed from: e */
        public final /* synthetic */ int f108736e;

        public C19189a(int i) {
            this.f108736e = i;
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(EventState eventState, EventState eventState2) {
            return this.f108736e * Double.compare(eventState.getEventTime(), eventState2.getEventTime());
        }
    }

    public AbstractIntegrator(String str) {
        this.f108733c = str;
        this.stepHandlers = new ArrayList();
        this.stepStart = Double.NaN;
        this.stepSize = Double.NaN;
        this.f108731a = new ArrayList();
        this.f108732b = false;
        this.f108734d = IntegerSequence.Incrementor.create().withMaximalCount(Integer.MAX_VALUE);
    }

    /* JADX WARN: Removed duplicated region for block: B:90:0x018e A[LOOP:8: B:88:0x0188->B:90:0x018e, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double acceptStep(org.apache.commons.math3.ode.sampling.AbstractStepInterpolator r18, double[] r19, double[] r20, double r21) throws org.apache.commons.math3.exception.MaxCountExceededException, org.apache.commons.math3.exception.DimensionMismatchException, org.apache.commons.math3.exception.NoBracketingException {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.ode.AbstractIntegrator.acceptStep(org.apache.commons.math3.ode.sampling.AbstractStepInterpolator, double[], double[], double):double");
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public void addEventHandler(EventHandler eventHandler, double d, double d2, int i) {
        addEventHandler(eventHandler, d, d2, i, new BracketingNthOrderBrentSolver(d2, 5));
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public void addStepHandler(StepHandler stepHandler) {
        this.stepHandlers.add(stepHandler);
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public void clearEventHandlers() {
        this.f108731a.clear();
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public void clearStepHandlers() {
        this.stepHandlers.clear();
    }

    public void computeDerivatives(double d, double[] dArr, double[] dArr2) throws MaxCountExceededException, DimensionMismatchException, NullPointerException {
        this.f108734d.increment();
        this.f108735e.computeDerivatives(d, dArr, dArr2);
    }

    public IntegerSequence.Incrementor getCounter() {
        return this.f108734d;
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public double getCurrentSignedStepsize() {
        return this.stepSize;
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public double getCurrentStepStart() {
        return this.stepStart;
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public int getEvaluations() {
        return this.f108734d.getCount();
    }

    @Deprecated
    public Incrementor getEvaluationsCounter() {
        return Incrementor.wrap(this.f108734d);
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public Collection<EventHandler> getEventHandlers() {
        ArrayList arrayList = new ArrayList(this.f108731a.size());
        Iterator<EventState> it2 = this.f108731a.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getEventHandler());
        }
        return Collections.unmodifiableCollection(arrayList);
    }

    public ExpandableStatefulODE getExpandable() {
        return this.f108735e;
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public int getMaxEvaluations() {
        return this.f108734d.getMaximalCount();
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public String getName() {
        return this.f108733c;
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public Collection<StepHandler> getStepHandlers() {
        return Collections.unmodifiableCollection(this.stepHandlers);
    }

    public void initIntegration(double d, double[] dArr, double d2) {
        this.f108734d = this.f108734d.withStart(0);
        for (EventState eventState : this.f108731a) {
            eventState.setExpandable(this.f108735e);
            eventState.getEventHandler().init(d, dArr, d2);
        }
        Iterator<StepHandler> it2 = this.stepHandlers.iterator();
        while (it2.hasNext()) {
            it2.next().init(d, dArr, d2);
        }
        setStateInitialized(false);
    }

    @Override // org.apache.commons.math3.ode.FirstOrderIntegrator
    public double integrate(FirstOrderDifferentialEquations firstOrderDifferentialEquations, double d, double[] dArr, double d2, double[] dArr2) throws DimensionMismatchException, NumberIsTooSmallException, MaxCountExceededException, NoBracketingException {
        if (dArr.length == firstOrderDifferentialEquations.getDimension()) {
            if (dArr2.length == firstOrderDifferentialEquations.getDimension()) {
                ExpandableStatefulODE expandableStatefulODE = new ExpandableStatefulODE(firstOrderDifferentialEquations);
                expandableStatefulODE.setTime(d);
                expandableStatefulODE.setPrimaryState(dArr);
                integrate(expandableStatefulODE, d2);
                System.arraycopy(expandableStatefulODE.getPrimaryState(), 0, dArr2, 0, dArr2.length);
                return expandableStatefulODE.getTime();
            }
            throw new DimensionMismatchException(dArr2.length, firstOrderDifferentialEquations.getDimension());
        }
        throw new DimensionMismatchException(dArr.length, firstOrderDifferentialEquations.getDimension());
    }

    public abstract void integrate(ExpandableStatefulODE expandableStatefulODE, double d) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException;

    public void sanityChecks(ExpandableStatefulODE expandableStatefulODE, double d) throws NumberIsTooSmallException, DimensionMismatchException {
        double ulp = FastMath.ulp(FastMath.max(FastMath.abs(expandableStatefulODE.getTime()), FastMath.abs(d))) * 1000.0d;
        double abs = FastMath.abs(expandableStatefulODE.getTime() - d);
        if (abs <= ulp) {
            throw new NumberIsTooSmallException(LocalizedFormats.TOO_SMALL_INTEGRATION_INTERVAL, Double.valueOf(abs), Double.valueOf(ulp), false);
        }
    }

    public void setEquations(ExpandableStatefulODE expandableStatefulODE) {
        this.f108735e = expandableStatefulODE;
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public void setMaxEvaluations(int i) {
        IntegerSequence.Incrementor incrementor = this.f108734d;
        if (i < 0) {
            i = Integer.MAX_VALUE;
        }
        this.f108734d = incrementor.withMaximalCount(i);
    }

    public void setStateInitialized(boolean z) {
        this.f108732b = z;
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public void addEventHandler(EventHandler eventHandler, double d, double d2, int i, UnivariateSolver univariateSolver) {
        this.f108731a.add(new EventState(eventHandler, d, d2, i, univariateSolver));
    }

    public AbstractIntegrator() {
        this(null);
    }
}
