package org.apache.commons.math3.fraction;

import java.io.Serializable;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;

/* loaded from: classes12.dex */
public class BigFractionField implements Field<BigFraction>, Serializable {
    private static final long serialVersionUID = -1699294557189741703L;

    /* renamed from: org.apache.commons.math3.fraction.BigFractionField$b */
    /* loaded from: classes12.dex */
    public static class C19102b {

        /* renamed from: a */
        public static final BigFractionField f108195a = new BigFractionField();
    }

    public static BigFractionField getInstance() {
        return C19102b.f108195a;
    }

    private Object readResolve() {
        return C19102b.f108195a;
    }

    @Override // org.apache.commons.math3.Field
    public Class<? extends FieldElement<BigFraction>> getRuntimeClass() {
        return BigFraction.class;
    }

    private BigFractionField() {
    }

    @Override // org.apache.commons.math3.Field
    public BigFraction getOne() {
        return BigFraction.ONE;
    }

    @Override // org.apache.commons.math3.Field
    public BigFraction getZero() {
        return BigFraction.ZERO;
    }
}
