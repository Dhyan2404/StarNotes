package org.apache.commons.math3.complex;

import java.io.Serializable;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;

/* loaded from: classes12.dex */
public class ComplexField implements Field<Complex>, Serializable {
    private static final long serialVersionUID = -6130362688700788798L;

    /* renamed from: org.apache.commons.math3.complex.ComplexField$b */
    /* loaded from: classes12.dex */
    public static class C19073b {

        /* renamed from: a */
        public static final ComplexField f107992a = new ComplexField();
    }

    public static ComplexField getInstance() {
        return C19073b.f107992a;
    }

    private Object readResolve() {
        return C19073b.f107992a;
    }

    @Override // org.apache.commons.math3.Field
    public Class<? extends FieldElement<Complex>> getRuntimeClass() {
        return Complex.class;
    }

    private ComplexField() {
    }

    @Override // org.apache.commons.math3.Field
    public Complex getOne() {
        return Complex.ONE;
    }

    @Override // org.apache.commons.math3.Field
    public Complex getZero() {
        return Complex.ZERO;
    }
}
