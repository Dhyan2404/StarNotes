package org.apache.commons.math3.ode;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.TreeSet;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver;
import org.apache.commons.math3.analysis.solvers.FieldBracketingNthOrderBrentSolver;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.ode.events.FieldEventHandler;
import org.apache.commons.math3.ode.events.FieldEventState;
import org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator;
import org.apache.commons.math3.ode.sampling.FieldStepHandler;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.IntegerSequence;

/* loaded from: classes12.dex */
public abstract class AbstractFieldIntegrator<T extends RealFieldElement<T>> implements FirstOrderFieldIntegrator<T> {

    /* renamed from: l */
    public static final double f108716l = 1.0E-14d;

    /* renamed from: m */
    public static final double f108717m = 1.0E-15d;

    /* renamed from: d */
    public boolean f108721d;

    /* renamed from: e */
    public boolean f108722e;

    /* renamed from: f */
    public final Field<T> f108723f;

    /* renamed from: i */
    public final String f108726i;

    /* renamed from: k */
    public transient FieldExpandableODE<T> f108728k;

    /* renamed from: a */
    public Collection<FieldStepHandler<T>> f108718a = new ArrayList();

    /* renamed from: b */
    public FieldODEStateAndDerivative<T> f108719b = null;

    /* renamed from: c */
    public T f108720c = null;

    /* renamed from: g */
    public Collection<FieldEventState<T>> f108724g = new ArrayList();

    /* renamed from: h */
    public boolean f108725h = false;

    /* renamed from: j */
    public IntegerSequence.Incrementor f108727j = IntegerSequence.Incrementor.create().withMaximalCount(Integer.MAX_VALUE);

    /* renamed from: org.apache.commons.math3.ode.AbstractFieldIntegrator$a */
    /* loaded from: classes12.dex */
    public class C19188a implements Comparator<FieldEventState<T>> {

        /* renamed from: e */
        public final /* synthetic */ int f108729e;

        public C19188a(int i) {
            this.f108729e = i;
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(FieldEventState<T> fieldEventState, FieldEventState<T> fieldEventState2) {
            return this.f108729e * Double.compare(fieldEventState.getEventTime().getReal(), fieldEventState2.getEventTime().getReal());
        }
    }

    public AbstractFieldIntegrator(Field<T> field, String str) {
        this.f108723f = field;
        this.f108726i = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [org.apache.commons.math3.ode.sampling.FieldStepHandler] */
    /* JADX WARN: Type inference failed for: r10v0, types: [org.apache.commons.math3.ode.AbstractFieldIntegrator<T extends org.apache.commons.math3.RealFieldElement<T>>, org.apache.commons.math3.ode.AbstractFieldIntegrator] */
    /* JADX WARN: Type inference failed for: r10v2, types: [org.apache.commons.math3.ode.FieldEquationsMapper] */
    /* JADX WARN: Type inference failed for: r11v0, types: [org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator<T extends org.apache.commons.math3.RealFieldElement<T>>, org.apache.commons.math3.ode.sampling.FieldStepInterpolator, org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator] */
    /* JADX WARN: Type inference failed for: r11v1, types: [org.apache.commons.math3.ode.sampling.FieldStepInterpolator, org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator] */
    /* JADX WARN: Type inference failed for: r11v3, types: [org.apache.commons.math3.ode.sampling.FieldStepInterpolator, org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator] */
    /* JADX WARN: Type inference failed for: r6v2, types: [org.apache.commons.math3.ode.events.FieldEventState, java.lang.Object] */
    public FieldODEStateAndDerivative<T> acceptStep(AbstractFieldStepInterpolator<T> abstractFieldStepInterpolator, T t) throws MaxCountExceededException, DimensionMismatchException, NoBracketingException {
        FieldODEStateAndDerivative<T> globalPreviousState = abstractFieldStepInterpolator.getGlobalPreviousState();
        FieldODEStateAndDerivative<T> globalCurrentState = abstractFieldStepInterpolator.getGlobalCurrentState();
        boolean z = true;
        if (!this.f108725h) {
            Iterator<FieldEventState<T>> it2 = this.f108724g.iterator();
            while (it2.hasNext()) {
                it2.next().reinitializeBegin(abstractFieldStepInterpolator);
            }
            this.f108725h = true;
        }
        TreeSet treeSet = new TreeSet(new C19188a(abstractFieldStepInterpolator.isForward() ? 1 : -1));
        for (FieldEventState<T> fieldEventState : this.f108724g) {
            if (fieldEventState.evaluateStep(abstractFieldStepInterpolator)) {
                treeSet.add(fieldEventState);
            }
        }
        while (!treeSet.isEmpty()) {
            Iterator it3 = treeSet.iterator();
            ?? r6 = (FieldEventState) it3.next();
            it3.remove();
            FieldODEStateAndDerivative<T> interpolatedState = abstractFieldStepInterpolator.getInterpolatedState(r6.getEventTime());
            AbstractFieldStepInterpolator restrictStep = abstractFieldStepInterpolator.restrictStep(globalPreviousState, interpolatedState);
            for (FieldEventState<T> fieldEventState2 : this.f108724g) {
                fieldEventState2.stepAccepted(interpolatedState);
                this.f108721d = this.f108721d || fieldEventState2.stop();
            }
            Iterator<FieldStepHandler<T>> it4 = this.f108718a.iterator();
            while (it4.hasNext()) {
                it4.next().handleStep(restrictStep, this.f108721d);
            }
            if (this.f108721d) {
                return interpolatedState;
            }
            this.f108722e = false;
            Iterator<FieldEventState<T>> it5 = this.f108724g.iterator();
            while (it5.hasNext()) {
                FieldODEState<T> reset = it5.next().reset(interpolatedState);
                if (reset != null) {
                    T[] mapState = this.f108728k.getMapper().mapState(reset);
                    RealFieldElement[] computeDerivatives = computeDerivatives(reset.getTime(), mapState);
                    this.f108722e = true;
                    return this.f108728k.getMapper().mapStateAndDerivative(reset.getTime(), mapState, computeDerivatives);
                }
            }
            abstractFieldStepInterpolator = restrictStep.restrictStep(interpolatedState, globalCurrentState);
            if (r6.evaluateStep(abstractFieldStepInterpolator)) {
                treeSet.add(r6);
            }
            globalPreviousState = interpolatedState;
        }
        for (FieldEventState<T> fieldEventState3 : this.f108724g) {
            fieldEventState3.stepAccepted(globalCurrentState);
            this.f108721d = this.f108721d || fieldEventState3.stop();
        }
        if (!this.f108721d && ((RealFieldElement) ((RealFieldElement) globalCurrentState.getTime().subtract(t)).abs()).getReal() > FastMath.ulp(t.getReal())) {
            z = false;
        }
        this.f108721d = z;
        Iterator<FieldStepHandler<T>> it6 = this.f108718a.iterator();
        while (it6.hasNext()) {
            it6.next().handleStep(abstractFieldStepInterpolator, this.f108721d);
        }
        return globalCurrentState;
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public void addEventHandler(FieldEventHandler<T> fieldEventHandler, double d, double d2, int i) {
        addEventHandler(fieldEventHandler, d, d2, i, new FieldBracketingNthOrderBrentSolver((RealFieldElement) this.f108723f.getZero().add(1.0E-14d), (RealFieldElement) this.f108723f.getZero().add(d2), (RealFieldElement) this.f108723f.getZero().add(1.0E-15d), 5));
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public void addStepHandler(FieldStepHandler<T> fieldStepHandler) {
        this.f108718a.add(fieldStepHandler);
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public void clearEventHandlers() {
        this.f108724g.clear();
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public void clearStepHandlers() {
        this.f108718a.clear();
    }

    public T[] computeDerivatives(T t, T[] tArr) throws DimensionMismatchException, MaxCountExceededException, NullPointerException {
        this.f108727j.increment();
        return this.f108728k.computeDerivatives(t, tArr);
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public T getCurrentSignedStepsize() {
        return this.f108720c;
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public FieldODEStateAndDerivative<T> getCurrentStepStart() {
        return this.f108719b;
    }

    public FieldExpandableODE<T> getEquations() {
        return this.f108728k;
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public int getEvaluations() {
        return this.f108727j.getCount();
    }

    public IntegerSequence.Incrementor getEvaluationsCounter() {
        return this.f108727j;
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public Collection<FieldEventHandler<T>> getEventHandlers() {
        ArrayList arrayList = new ArrayList(this.f108724g.size());
        Iterator<FieldEventState<T>> it2 = this.f108724g.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getEventHandler());
        }
        return Collections.unmodifiableCollection(arrayList);
    }

    public Field<T> getField() {
        return this.f108723f;
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public int getMaxEvaluations() {
        return this.f108727j.getMaximalCount();
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public String getName() {
        return this.f108726i;
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public Collection<FieldStepHandler<T>> getStepHandlers() {
        return Collections.unmodifiableCollection(this.f108718a);
    }

    public T getStepSize() {
        return this.f108720c;
    }

    public FieldODEStateAndDerivative<T> getStepStart() {
        return this.f108719b;
    }

    public FieldODEStateAndDerivative<T> initIntegration(FieldExpandableODE<T> fieldExpandableODE, T t, T[] tArr, T t2) {
        this.f108728k = fieldExpandableODE;
        this.f108727j = this.f108727j.withStart(0);
        fieldExpandableODE.init(t, tArr, t2);
        FieldODEStateAndDerivative<T> fieldODEStateAndDerivative = new FieldODEStateAndDerivative<>(t, tArr, computeDerivatives(t, tArr));
        Iterator<FieldEventState<T>> it2 = this.f108724g.iterator();
        while (it2.hasNext()) {
            it2.next().getEventHandler().init(fieldODEStateAndDerivative, t2);
        }
        Iterator<FieldStepHandler<T>> it3 = this.f108718a.iterator();
        while (it3.hasNext()) {
            it3.next().init(fieldODEStateAndDerivative, t2);
        }
        setStateInitialized(false);
        return fieldODEStateAndDerivative;
    }

    public boolean isLastStep() {
        return this.f108721d;
    }

    public boolean resetOccurred() {
        return this.f108722e;
    }

    public void sanityChecks(FieldODEState<T> fieldODEState, T t) throws NumberIsTooSmallException, DimensionMismatchException {
        double ulp = FastMath.ulp(FastMath.max(FastMath.abs(fieldODEState.getTime().getReal()), FastMath.abs(t.getReal()))) * 1000.0d;
        double real = ((RealFieldElement) ((RealFieldElement) fieldODEState.getTime().subtract(t)).abs()).getReal();
        if (real <= ulp) {
            throw new NumberIsTooSmallException(LocalizedFormats.TOO_SMALL_INTEGRATION_INTERVAL, Double.valueOf(real), Double.valueOf(ulp), false);
        }
    }

    public void setIsLastStep(boolean z) {
        this.f108721d = z;
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public void setMaxEvaluations(int i) {
        IntegerSequence.Incrementor incrementor = this.f108727j;
        if (i < 0) {
            i = Integer.MAX_VALUE;
        }
        this.f108727j = incrementor.withMaximalCount(i);
    }

    public void setStateInitialized(boolean z) {
        this.f108725h = z;
    }

    public void setStepSize(T t) {
        this.f108720c = t;
    }

    public void setStepStart(FieldODEStateAndDerivative<T> fieldODEStateAndDerivative) {
        this.f108719b = fieldODEStateAndDerivative;
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public void addEventHandler(FieldEventHandler<T> fieldEventHandler, double d, double d2, int i, BracketedRealFieldUnivariateSolver<T> bracketedRealFieldUnivariateSolver) {
        this.f108724g.add(new FieldEventState<>(fieldEventHandler, d, (RealFieldElement) this.f108723f.getZero().add(d2), i, bracketedRealFieldUnivariateSolver));
    }
}
