package org.apache.commons.math3.util;

import java.io.Serializable;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;

/* loaded from: classes12.dex */
public class BigRealField implements Field<BigReal>, Serializable {
    private static final long serialVersionUID = 4756431066541037559L;

    /* renamed from: org.apache.commons.math3.util.BigRealField$b */
    /* loaded from: classes12.dex */
    public static class C19284b {

        /* renamed from: a */
        public static final BigRealField f109813a = new BigRealField();
    }

    public static BigRealField getInstance() {
        return C19284b.f109813a;
    }

    private Object readResolve() {
        return C19284b.f109813a;
    }

    @Override // org.apache.commons.math3.Field
    public Class<? extends FieldElement<BigReal>> getRuntimeClass() {
        return BigReal.class;
    }

    private BigRealField() {
    }

    @Override // org.apache.commons.math3.Field
    public BigReal getOne() {
        return BigReal.ONE;
    }

    @Override // org.apache.commons.math3.Field
    public BigReal getZero() {
        return BigReal.ZERO;
    }
}
