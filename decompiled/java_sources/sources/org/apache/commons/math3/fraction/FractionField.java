package org.apache.commons.math3.fraction;

import java.io.Serializable;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;

/* loaded from: classes12.dex */
public class FractionField implements Field<Fraction>, Serializable {
    private static final long serialVersionUID = -1257768487499119313L;

    /* renamed from: org.apache.commons.math3.fraction.FractionField$b */
    /* loaded from: classes12.dex */
    public static class C19104b {

        /* renamed from: a */
        public static final FractionField f108196a = new FractionField();
    }

    public static FractionField getInstance() {
        return C19104b.f108196a;
    }

    private Object readResolve() {
        return C19104b.f108196a;
    }

    @Override // org.apache.commons.math3.Field
    public Class<? extends FieldElement<Fraction>> getRuntimeClass() {
        return Fraction.class;
    }

    private FractionField() {
    }

    @Override // org.apache.commons.math3.Field
    public Fraction getOne() {
        return Fraction.ONE;
    }

    @Override // org.apache.commons.math3.Field
    public Fraction getZero() {
        return Fraction.ZERO;
    }
}
