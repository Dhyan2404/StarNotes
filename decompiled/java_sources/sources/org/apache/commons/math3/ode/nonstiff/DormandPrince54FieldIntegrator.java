package org.apache.commons.math3.ode.nonstiff;

import com.sunia.HTREnginev2.gff;
import net.p110sf.saxon.om.StandardNames;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public class DormandPrince54FieldIntegrator<T extends RealFieldElement<T>> extends EmbeddedRungeKuttaFieldIntegrator<T> {

    /* renamed from: E */
    public static final String f108882E = "Dormand-Prince 5(4)";

    /* renamed from: A */
    public final T f108883A;

    /* renamed from: B */
    public final T f108884B;

    /* renamed from: C */
    public final T f108885C;

    /* renamed from: D */
    public final T f108886D;

    /* renamed from: y */
    public final T f108887y;

    /* renamed from: z */
    public final T f108888z;

    public DormandPrince54FieldIntegrator(Field<T> field, double d, double d2, double d3, double d4) {
        super(field, "Dormand-Prince 5(4)", 6, d, d2, d3, d4);
        this.f108887y = fraction(71, 57600);
        this.f108888z = fraction(-71, 16695);
        this.f108883A = fraction(71, 1920);
        this.f108884B = fraction(-17253, 339200);
        this.f108885C = fraction(22, StandardNames.XS_G_DAY);
        this.f108886D = fraction(-1, 40);
    }

    @Override // org.apache.commons.math3.ode.nonstiff.EmbeddedRungeKuttaFieldIntegrator
    public T estimateError(T[][] tArr, T[] tArr2, T[] tArr3, T t) {
        RealFieldElement realFieldElement;
        double d;
        T zero = getField().getZero();
        int i = 0;
        while (true) {
            int i2 = this.mainSetDimension;
            if (i >= i2) {
                return (T) ((RealFieldElement) zero.divide(i2)).sqrt();
            }
            RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr[0][i].multiply(this.f108887y)).add((RealFieldElement) tArr[2][i].multiply(this.f108888z))).add((RealFieldElement) tArr[3][i].multiply(this.f108883A))).add((RealFieldElement) tArr[4][i].multiply(this.f108884B))).add((RealFieldElement) tArr[5][i].multiply(this.f108885C))).add((RealFieldElement) tArr[6][i].multiply(this.f108886D));
            RealFieldElement max = MathUtils.max((RealFieldElement) tArr2[i].abs(), (RealFieldElement) tArr3[i].abs());
            if (this.vecAbsoluteTolerance == null) {
                realFieldElement = (RealFieldElement) max.multiply(this.scalRelativeTolerance);
                d = this.scalAbsoluteTolerance;
            } else {
                realFieldElement = (RealFieldElement) max.multiply(this.vecRelativeTolerance[i]);
                d = this.vecAbsoluteTolerance[i];
            }
            RealFieldElement realFieldElement3 = (RealFieldElement) ((RealFieldElement) t.multiply(realFieldElement2)).divide((RealFieldElement) realFieldElement.add(d));
            zero = (T) zero.add(realFieldElement3.multiply(realFieldElement3));
            i++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.math3.ode.nonstiff.FieldButcherArrayProvider
    public T[][] getA() {
        T[][] tArr = (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(getField(), 6, -1));
        int i = 0;
        while (i < tArr.length) {
            int i2 = i + 1;
            tArr[i] = (RealFieldElement[]) MathArrays.buildArray(getField(), i2);
            i = i2;
        }
        tArr[0][0] = fraction(1, 5);
        tArr[1][0] = fraction(3, 40);
        tArr[1][1] = fraction(9, 40);
        tArr[2][0] = fraction(44, 45);
        tArr[2][1] = fraction(-56, 15);
        tArr[2][2] = fraction(32, 9);
        tArr[3][0] = fraction(19372, 6561);
        tArr[3][1] = fraction(-25360, 2187);
        tArr[3][2] = fraction(64448, 6561);
        tArr[3][3] = fraction(-212, 729);
        tArr[4][0] = fraction(9017, 3168);
        tArr[4][1] = fraction(-355, 33);
        tArr[4][2] = fraction(46732, 5247);
        tArr[4][3] = fraction(49, 176);
        tArr[4][4] = fraction(-5103, 18656);
        tArr[5][0] = fraction(35, 384);
        tArr[5][1] = getField().getZero();
        tArr[5][2] = fraction(500, 1113);
        tArr[5][3] = fraction(125, 192);
        tArr[5][4] = fraction(-2187, 6784);
        tArr[5][5] = fraction(11, 84);
        return tArr;
    }

    @Override // org.apache.commons.math3.ode.nonstiff.FieldButcherArrayProvider
    public T[] getB() {
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(getField(), 7));
        tArr[0] = fraction(35, 384);
        tArr[1] = getField().getZero();
        tArr[2] = fraction(500, 1113);
        tArr[3] = fraction(125, 192);
        tArr[4] = fraction(-2187, 6784);
        tArr[5] = fraction(11, 84);
        tArr[6] = getField().getZero();
        return tArr;
    }

    @Override // org.apache.commons.math3.ode.nonstiff.FieldButcherArrayProvider
    public T[] getC() {
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(getField(), 6));
        tArr[0] = fraction(1, 5);
        tArr[1] = fraction(3, 10);
        tArr[2] = fraction(4, 5);
        tArr[3] = fraction(8, 9);
        tArr[4] = getField().getOne();
        tArr[5] = getField().getOne();
        return tArr;
    }

    @Override // org.apache.commons.math3.ode.nonstiff.EmbeddedRungeKuttaFieldIntegrator
    public int getOrder() {
        return 5;
    }

    @Override // org.apache.commons.math3.ode.nonstiff.EmbeddedRungeKuttaFieldIntegrator
    public gff<T> createInterpolator(boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldEquationsMapper<T> fieldEquationsMapper) {
        return new gff<>(getField(), z, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldEquationsMapper);
    }

    public DormandPrince54FieldIntegrator(Field<T> field, double d, double d2, double[] dArr, double[] dArr2) {
        super(field, "Dormand-Prince 5(4)", 6, d, d2, dArr, dArr2);
        this.f108887y = fraction(71, 57600);
        this.f108888z = fraction(-71, 16695);
        this.f108883A = fraction(71, 1920);
        this.f108884B = fraction(-17253, 339200);
        this.f108885C = fraction(22, StandardNames.XS_G_DAY);
        this.f108886D = fraction(-1, 40);
    }
}
