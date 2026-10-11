package org.apache.commons.math3.util;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;

/* loaded from: classes12.dex */
public class Decimal64Field implements Field<Decimal64> {

    /* renamed from: e */
    public static final Decimal64Field f109829e = new Decimal64Field();

    public static final Decimal64Field getInstance() {
        return f109829e;
    }

    @Override // org.apache.commons.math3.Field
    public Class<? extends FieldElement<Decimal64>> getRuntimeClass() {
        return Decimal64.class;
    }

    @Override // org.apache.commons.math3.Field
    public Decimal64 getOne() {
        return Decimal64.ONE;
    }

    @Override // org.apache.commons.math3.Field
    public Decimal64 getZero() {
        return Decimal64.ZERO;
    }
}
