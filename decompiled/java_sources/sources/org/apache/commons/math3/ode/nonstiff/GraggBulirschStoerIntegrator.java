package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.analysis.solvers.UnivariateSolver;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.ode.events.EventHandler;
import org.apache.commons.math3.ode.sampling.StepHandler;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class GraggBulirschStoerIntegrator extends AdaptiveStepsizeIntegrator {

    /* renamed from: A */
    public static final String f108971A = "Gragg-Bulirsch-Stoer";

    /* renamed from: i */
    public int f108972i;

    /* renamed from: j */
    public int[] f108973j;

    /* renamed from: k */
    public int[] f108974k;

    /* renamed from: l */
    public double[] f108975l;

    /* renamed from: m */
    public double[] f108976m;

    /* renamed from: n */
    public double[][] f108977n;

    /* renamed from: o */
    public boolean f108978o;

    /* renamed from: p */
    public int f108979p;

    /* renamed from: q */
    public int f108980q;

    /* renamed from: r */
    public double f108981r;

    /* renamed from: s */
    public double f108982s;

    /* renamed from: t */
    public double f108983t;

    /* renamed from: u */
    public double f108984u;

    /* renamed from: v */
    public double f108985v;

    /* renamed from: w */
    public double f108986w;

    /* renamed from: x */
    public double f108987x;

    /* renamed from: y */
    public boolean f108988y;

    /* renamed from: z */
    public int f108989z;

    public GraggBulirschStoerIntegrator(double d, double d2, double d3, double d4) {
        super(f108971A, d, d2, d3, d4);
        setStabilityCheck(true, -1, -1, -1.0d);
        setControlFactors(-1.0d, -1.0d, -1.0d, -1.0d);
        setOrderControl(-1, -1.0d, -1.0d);
        setInterpolationControl(true, -1);
    }

    /* renamed from: a */
    public final void m67892a(int i, int i2, double[][] dArr, double[] dArr2) {
        int i3 = 1;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            for (int i4 = 0; i4 < dArr2.length; i4++) {
                int i5 = i2 - i3;
                double[] dArr3 = dArr[i5 - 1];
                double d = dArr[i5][i4];
                dArr3[i4] = d + (this.f108977n[i2 + i][i3 - 1] * (d - dArr3[i4]));
            }
            i3++;
        }
        for (int i6 = 0; i6 < dArr2.length; i6++) {
            double d2 = dArr[0][i6];
            dArr2[i6] = d2 + (this.f108977n[i2 + i][i2 - 1] * (d2 - dArr2[i6]));
        }
    }

    @Override // org.apache.commons.math3.ode.AbstractIntegrator, org.apache.commons.math3.ode.ODEIntegrator
    public void addEventHandler(EventHandler eventHandler, double d, double d2, int i, UnivariateSolver univariateSolver) {
        super.addEventHandler(eventHandler, d, d2, i, univariateSolver);
        m67893b();
    }

    @Override // org.apache.commons.math3.ode.AbstractIntegrator, org.apache.commons.math3.ode.ODEIntegrator
    public void addStepHandler(StepHandler stepHandler) {
        super.addStepHandler(stepHandler);
        m67893b();
    }

    /* renamed from: b */
    public final void m67893b() {
        int i = this.f108972i / 2;
        int[] iArr = this.f108973j;
        if (iArr == null || iArr.length != i) {
            this.f108973j = new int[i];
            this.f108974k = new int[i];
            this.f108977n = new double[i];
            this.f108975l = new double[i];
            this.f108976m = new double[i];
        }
        for (int i2 = 0; i2 < i; i2++) {
            this.f108973j[i2] = (i2 * 4) + 2;
        }
        this.f108974k[0] = this.f108973j[0] + 1;
        for (int i3 = 1; i3 < i; i3++) {
            int[] iArr2 = this.f108974k;
            iArr2[i3] = iArr2[i3 - 1] + this.f108973j[i3];
        }
        int i4 = 0;
        while (i4 < i) {
            this.f108977n[i4] = i4 > 0 ? new double[i4] : null;
            for (int i5 = 0; i5 < i4; i5++) {
                int[] iArr3 = this.f108973j;
                double d = iArr3[i4] / iArr3[(i4 - i5) - 1];
                this.f108977n[i4][i5] = 1.0d / ((d * d) - 1.0d);
            }
            i4++;
        }
    }

    /* renamed from: c */
    public final void m67894c(double[] dArr, double[] dArr2, double[] dArr3) {
        int i = 0;
        if (this.vecAbsoluteTolerance == null) {
            while (i < dArr3.length) {
                dArr3[i] = this.scalAbsoluteTolerance + (this.scalRelativeTolerance * FastMath.max(FastMath.abs(dArr[i]), FastMath.abs(dArr2[i])));
                i++;
            }
            return;
        }
        while (i < dArr3.length) {
            dArr3[i] = this.vecAbsoluteTolerance[i] + (this.vecRelativeTolerance[i] * FastMath.max(FastMath.abs(dArr[i]), FastMath.abs(dArr2[i])));
            i++;
        }
    }

    /* renamed from: d */
    public final boolean m67895d(double d, double[] dArr, double d2, int i, double[] dArr2, double[][] dArr3, double[] dArr4, double[] dArr5, double[] dArr6) throws MaxCountExceededException, DimensionMismatchException {
        double d3;
        GraggBulirschStoerIntegrator graggBulirschStoerIntegrator = this;
        int i2 = i;
        double[] dArr7 = dArr2;
        int i3 = graggBulirschStoerIntegrator.f108973j[i2];
        double d4 = d2 / i3;
        double d5 = 2.0d * d4;
        double d6 = d + d4;
        int i4 = 0;
        for (int i5 = 0; i5 < dArr.length; i5++) {
            dArr6[i5] = dArr[i5];
            dArr5[i5] = dArr[i5] + (dArr3[0][i5] * d4);
        }
        graggBulirschStoerIntegrator.computeDerivatives(d6, dArr5, dArr3[1]);
        int i6 = 1;
        while (i6 < i3) {
            if (i6 * 2 == i3) {
                System.arraycopy(dArr5, i4, dArr4, i4, dArr.length);
            }
            d6 += d4;
            for (int i7 = i4; i7 < dArr.length; i7++) {
                double d7 = dArr5[i7];
                dArr5[i7] = dArr6[i7] + (dArr3[i6][i7] * d5);
                dArr6[i7] = d7;
            }
            int i8 = i6 + 1;
            graggBulirschStoerIntegrator.computeDerivatives(d6, dArr5, dArr3[i8]);
            if (!graggBulirschStoerIntegrator.f108978o || i6 > graggBulirschStoerIntegrator.f108979p || i2 >= graggBulirschStoerIntegrator.f108980q) {
                d3 = d5;
            } else {
                d3 = d5;
                double d8 = 0.0d;
                for (int i9 = 0; i9 < dArr7.length; i9++) {
                    double d9 = dArr3[0][i9] / dArr7[i9];
                    d8 += d9 * d9;
                }
                double d10 = 0.0d;
                for (int i10 = 0; i10 < dArr7.length; i10++) {
                    double d11 = (dArr3[i8][i10] - dArr3[0][i10]) / dArr7[i10];
                    d10 += d11 * d11;
                }
                if (d10 > FastMath.max(1.0E-15d, d8) * 4.0d) {
                    return false;
                }
            }
            i2 = i;
            dArr7 = dArr2;
            i6 = i8;
            d5 = d3;
            i4 = 0;
            graggBulirschStoerIntegrator = this;
        }
        while (i4 < dArr.length) {
            dArr5[i4] = (dArr6[i4] + dArr5[i4] + (dArr3[i3][i4] * d4)) * 0.5d;
            i4++;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x02ad, code lost:
    
        if (r49.isLastStep == false) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x02b3, code lost:
    
        if (r0 > 1.0d) goto L125;
     */
    /* JADX WARN: Removed duplicated region for block: B:185:0x04d8  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0585  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x060f  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0612  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x062b A[LOOP:3: B:25:0x0138->B:201:0x062b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x061d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0617  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x059d  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x057a  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x05f9  */
    @Override // org.apache.commons.math3.ode.nonstiff.AdaptiveStepsizeIntegrator, org.apache.commons.math3.ode.AbstractIntegrator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void integrate(org.apache.commons.math3.ode.ExpandableStatefulODE r50, double r51) throws org.apache.commons.math3.exception.NumberIsTooSmallException, org.apache.commons.math3.exception.DimensionMismatchException, org.apache.commons.math3.exception.MaxCountExceededException, org.apache.commons.math3.exception.NoBracketingException {
        /*
            Method dump skipped, instructions count: 1602
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.ode.nonstiff.GraggBulirschStoerIntegrator.integrate(org.apache.commons.math3.ode.ExpandableStatefulODE, double):void");
    }

    public void setControlFactors(double d, double d2, double d3, double d4) {
        if (d < 1.0E-4d || d > 0.9999d) {
            this.f108982s = 0.65d;
        } else {
            this.f108982s = d;
        }
        if (d2 < 1.0E-4d || d2 > 0.9999d) {
            this.f108983t = 0.94d;
        } else {
            this.f108983t = d2;
        }
        if (d3 < 1.0E-4d || d3 > 0.9999d) {
            this.f108984u = 0.02d;
        } else {
            this.f108984u = d3;
        }
        if (d4 < 1.0001d || d4 > 999.9d) {
            this.f108985v = 4.0d;
        } else {
            this.f108985v = d4;
        }
    }

    public void setInterpolationControl(boolean z, int i) {
        this.f108988y = z;
        if (i <= 0 || i >= 7) {
            this.f108989z = 4;
        } else {
            this.f108989z = i;
        }
    }

    public void setOrderControl(int i, double d, double d2) {
        if (i <= 6 || i % 2 != 0) {
            this.f108972i = 18;
        }
        if (d < 1.0E-4d || d > 0.9999d) {
            this.f108986w = 0.8d;
        } else {
            this.f108986w = d;
        }
        if (d2 < 1.0E-4d || d2 > 0.9999d) {
            this.f108987x = 0.9d;
        } else {
            this.f108987x = d2;
        }
        m67893b();
    }

    public void setStabilityCheck(boolean z, int i, int i2, double d) {
        this.f108978o = z;
        if (i <= 0) {
            i = 2;
        }
        this.f108980q = i;
        if (i2 <= 0) {
            i2 = 1;
        }
        this.f108979p = i2;
        if (d < 1.0E-4d || d > 0.9999d) {
            this.f108981r = 0.5d;
        } else {
            this.f108981r = d;
        }
    }

    public GraggBulirschStoerIntegrator(double d, double d2, double[] dArr, double[] dArr2) {
        super(f108971A, d, d2, dArr, dArr2);
        setStabilityCheck(true, -1, -1, -1.0d);
        setControlFactors(-1.0d, -1.0d, -1.0d, -1.0d);
        setOrderControl(-1, -1.0d, -1.0d);
        setInterpolationControl(true, -1);
    }
}
