package org.apache.commons.math3.ode.nonstiff;

import java.util.Arrays;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.linear.FieldMatrixPreservingVisitor;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public class AdamsMoultonFieldIntegrator<T extends RealFieldElement<T>> extends AdamsFieldIntegrator<T> {

    /* renamed from: x */
    public static final String f108854x = "Adams-Moulton";

    /* renamed from: org.apache.commons.math3.ode.nonstiff.AdamsMoultonFieldIntegrator$a */
    /* loaded from: classes12.dex */
    public class C19208a implements FieldMatrixPreservingVisitor<T> {

        /* renamed from: a */
        public final T[] f108855a;

        /* renamed from: b */
        public final T[] f108856b;

        /* renamed from: c */
        public final T[] f108857c;

        /* renamed from: d */
        public final T[] f108858d;

        public C19208a(T[] tArr, T[] tArr2, T[] tArr3) {
            this.f108855a = tArr;
            this.f108856b = tArr2;
            this.f108858d = tArr3;
            this.f108857c = (T[]) ((RealFieldElement[]) tArr3.clone());
        }

        @Override // org.apache.commons.math3.linear.FieldMatrixPreservingVisitor
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public T end() {
            RealFieldElement realFieldElement;
            double d;
            RealFieldElement realFieldElement2 = (RealFieldElement) AdamsMoultonFieldIntegrator.this.getField().getZero();
            int i = 0;
            while (true) {
                FieldElement[] fieldElementArr = this.f108858d;
                if (i >= fieldElementArr.length) {
                    return (T) ((RealFieldElement) realFieldElement2.divide(AdamsMoultonFieldIntegrator.this.mainSetDimension)).sqrt();
                }
                fieldElementArr[i] = (RealFieldElement) fieldElementArr[i].add(this.f108855a[i].add(this.f108856b[i]));
                if (i < AdamsMoultonFieldIntegrator.this.mainSetDimension) {
                    RealFieldElement max = MathUtils.max((RealFieldElement) this.f108855a[i].abs(), (RealFieldElement) this.f108858d[i].abs());
                    AdamsMoultonFieldIntegrator adamsMoultonFieldIntegrator = AdamsMoultonFieldIntegrator.this;
                    if (adamsMoultonFieldIntegrator.vecAbsoluteTolerance == null) {
                        realFieldElement = (RealFieldElement) max.multiply(adamsMoultonFieldIntegrator.scalRelativeTolerance);
                        d = AdamsMoultonFieldIntegrator.this.scalAbsoluteTolerance;
                    } else {
                        realFieldElement = (RealFieldElement) max.multiply(adamsMoultonFieldIntegrator.vecRelativeTolerance[i]);
                        d = AdamsMoultonFieldIntegrator.this.vecAbsoluteTolerance[i];
                    }
                    RealFieldElement realFieldElement3 = (RealFieldElement) ((RealFieldElement) this.f108858d[i].subtract(this.f108857c[i])).divide((RealFieldElement) realFieldElement.add(d));
                    realFieldElement2 = (RealFieldElement) realFieldElement2.add((RealFieldElement) realFieldElement3.multiply(realFieldElement3));
                }
                i++;
            }
        }

        @Override // org.apache.commons.math3.linear.FieldMatrixPreservingVisitor
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void visit(int i, int i2, T t) {
            if ((i & 1) == 0) {
                FieldElement[] fieldElementArr = this.f108858d;
                fieldElementArr[i2] = (RealFieldElement) fieldElementArr[i2].subtract(t);
            } else {
                FieldElement[] fieldElementArr2 = this.f108858d;
                fieldElementArr2[i2] = (RealFieldElement) fieldElementArr2[i2].add(t);
            }
        }

        @Override // org.apache.commons.math3.linear.FieldMatrixPreservingVisitor
        public void start(int i, int i2, int i3, int i4, int i5, int i6) {
            Arrays.fill(this.f108858d, AdamsMoultonFieldIntegrator.this.getField().getZero());
        }
    }

    public AdamsMoultonFieldIntegrator(Field<T> field, int i, double d, double d2, double d3, double d4) throws NumberIsTooSmallException {
        super(field, "Adams-Moulton", i, i + 1, d, d2, d3, d4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x01f9, code lost:
    
        if (((org.apache.commons.math3.RealFieldElement) r7.subtract(r25)).getReal() >= 0.0d) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x020e, code lost:
    
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x020c, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x020a, code lost:
    
        if (((org.apache.commons.math3.RealFieldElement) r7.subtract(r25)).getReal() <= 0.0d) goto L44;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7, types: [int] */
    /* JADX WARN: Type inference failed for: r13v4, types: [org.apache.commons.math3.RealFieldElement[]] */
    /* JADX WARN: Type inference failed for: r22v0, types: [org.apache.commons.math3.ode.nonstiff.AdamsMoultonFieldIntegrator<T extends org.apache.commons.math3.RealFieldElement<T>>, org.apache.commons.math3.ode.MultistepFieldIntegrator, org.apache.commons.math3.ode.nonstiff.AdamsFieldIntegrator, org.apache.commons.math3.ode.nonstiff.AdamsMoultonFieldIntegrator, org.apache.commons.math3.ode.nonstiff.AdaptiveStepsizeFieldIntegrator, org.apache.commons.math3.ode.AbstractFieldIntegrator] */
    /* JADX WARN: Type inference failed for: r5v12, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r5v5, types: [T extends org.apache.commons.math3.RealFieldElement<T>[], org.apache.commons.math3.RealFieldElement[]] */
    /* JADX WARN: Type inference failed for: r7v11, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r7v21, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r7v31, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r7v5, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [int] */
    @Override // org.apache.commons.math3.ode.nonstiff.AdamsFieldIntegrator, org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.commons.math3.ode.FieldODEStateAndDerivative<T> integrate(org.apache.commons.math3.ode.FieldExpandableODE<T> r23, org.apache.commons.math3.ode.FieldODEState<T> r24, T r25) throws org.apache.commons.math3.exception.NumberIsTooSmallException, org.apache.commons.math3.exception.DimensionMismatchException, org.apache.commons.math3.exception.MaxCountExceededException, org.apache.commons.math3.exception.NoBracketingException {
        /*
            Method dump skipped, instructions count: 615
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.ode.nonstiff.AdamsMoultonFieldIntegrator.integrate(org.apache.commons.math3.ode.FieldExpandableODE, org.apache.commons.math3.ode.FieldODEState, org.apache.commons.math3.RealFieldElement):org.apache.commons.math3.ode.FieldODEStateAndDerivative");
    }

    public AdamsMoultonFieldIntegrator(Field<T> field, int i, double d, double d2, double[] dArr, double[] dArr2) throws IllegalArgumentException {
        super(field, "Adams-Moulton", i, i + 1, d, d2, dArr, dArr2);
    }
}
