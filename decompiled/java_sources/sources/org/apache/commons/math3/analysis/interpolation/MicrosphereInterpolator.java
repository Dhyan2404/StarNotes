package org.apache.commons.math3.analysis.interpolation;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.random.UnitSphereRandomVectorGenerator;

@Deprecated
/* loaded from: classes12.dex */
public class MicrosphereInterpolator implements MultivariateInterpolator {
    public static final int DEFAULT_BRIGHTNESS_EXPONENT = 2;
    public static final int DEFAULT_MICROSPHERE_ELEMENTS = 2000;

    /* renamed from: a */
    public final int f107890a;

    /* renamed from: b */
    public final int f107891b;

    public MicrosphereInterpolator() {
        this(2000, 2);
    }

    @Override // org.apache.commons.math3.analysis.interpolation.MultivariateInterpolator
    public MultivariateFunction interpolate(double[][] dArr, double[] dArr2) throws DimensionMismatchException, NoDataException, NullArgumentException {
        return new MicrosphereInterpolatingFunction(dArr, dArr2, this.f107891b, this.f107890a, new UnitSphereRandomVectorGenerator(dArr[0].length));
    }

    public MicrosphereInterpolator(int i, int i2) throws NotPositiveException, NotStrictlyPositiveException {
        if (i2 < 0) {
            throw new NotPositiveException(Integer.valueOf(i2));
        }
        if (i > 0) {
            this.f107890a = i;
            this.f107891b = i2;
            return;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i));
    }
}
