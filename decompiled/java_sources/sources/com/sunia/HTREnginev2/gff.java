package com.sunia.HTREnginev2;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;

/* loaded from: classes12.dex */
public class gff<T extends RealFieldElement<T>> extends hvl<T> {

    /* renamed from: i */
    public final T f70980i;

    /* renamed from: j */
    public final T f70981j;

    /* renamed from: k */
    public final T f70982k;

    /* renamed from: l */
    public final T f70983l;

    /* renamed from: m */
    public final T f70984m;

    /* renamed from: n */
    public final T f70985n;

    /* renamed from: o */
    public final T f70986o;

    /* renamed from: p */
    public final T f70987p;

    /* renamed from: q */
    public final T f70988q;

    /* renamed from: r */
    public final T f70989r;

    /* renamed from: s */
    public final T f70990s;

    public gff(Field<T> field, boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        super(field, z, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
        T one = field.getOne();
        this.f70980i = (T) ((RealFieldElement) one.multiply(35.0d)).divide(384.0d);
        this.f70981j = (T) ((RealFieldElement) one.multiply(500.0d)).divide(1113.0d);
        this.f70982k = (T) ((RealFieldElement) one.multiply(125.0d)).divide(192.0d);
        this.f70983l = (T) ((RealFieldElement) one.multiply(-2187.0d)).divide(6784.0d);
        this.f70984m = (T) ((RealFieldElement) one.multiply(11.0d)).divide(84.0d);
        this.f70985n = (T) ((RealFieldElement) one.multiply(-1.2715105075E10d)).divide(1.1282082432E10d);
        this.f70986o = (T) ((RealFieldElement) one.multiply(8.74874797E10d)).divide(3.2700410799E10d);
        this.f70987p = (T) ((RealFieldElement) one.multiply(-1.0690763975E10d)).divide(1.880347072E9d);
        this.f70988q = (T) ((RealFieldElement) one.multiply(7.01980252875E11d)).divide(1.99316789632E11d);
        this.f70989r = (T) ((RealFieldElement) one.multiply(-1.453857185E9d)).divide(8.22651844E8d);
        this.f70990s = (T) ((RealFieldElement) one.multiply(6.9997945E7d)).divide(2.9380423E7d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator
    public FieldODEStateAndDerivative<T> computeInterpolatedStateAndDerivatives(FieldEquationsMapper<T> fieldEquationsMapper, T t, T t2, T t3, T t4) {
        RealFieldElement[] m54636d;
        RealFieldElement[] m54637e;
        RealFieldElement realFieldElement = (RealFieldElement) t.getField().getOne();
        RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElement.subtract(t2);
        RealFieldElement realFieldElement3 = (RealFieldElement) t2.multiply(2);
        RealFieldElement realFieldElement4 = (RealFieldElement) realFieldElement.subtract(realFieldElement3);
        RealFieldElement realFieldElement5 = (RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(-3)).add(2.0d));
        RealFieldElement realFieldElement6 = (RealFieldElement) realFieldElement3.multiply((RealFieldElement) ((RealFieldElement) t2.multiply(realFieldElement3.subtract(3.0d))).add(1.0d));
        if (getGlobalPreviousState() == null || t2.getReal() > 0.5d) {
            RealFieldElement realFieldElement7 = (RealFieldElement) t4.negate();
            RealFieldElement realFieldElement8 = (RealFieldElement) t4.multiply(t2);
            RealFieldElement realFieldElement9 = (RealFieldElement) realFieldElement8.multiply(t2);
            RealFieldElement realFieldElement10 = (RealFieldElement) realFieldElement9.multiply(realFieldElement2);
            RealFieldElement realFieldElement11 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement7.multiply(this.f70980i)).subtract((RealFieldElement) realFieldElement8.multiply((RealFieldElement) this.f70980i.subtract(1.0d)))).add((RealFieldElement) realFieldElement9.multiply((RealFieldElement) ((RealFieldElement) this.f70980i.multiply(2)).subtract(1.0d)))).add((RealFieldElement) realFieldElement10.multiply(this.f70985n));
            RealFieldElement realFieldElement12 = (RealFieldElement) t.getField().getZero();
            RealFieldElement realFieldElement13 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement7.multiply(this.f70981j)).subtract((RealFieldElement) realFieldElement8.multiply(this.f70981j))).add((RealFieldElement) realFieldElement9.multiply((RealFieldElement) this.f70981j.multiply(2)))).add((RealFieldElement) realFieldElement10.multiply(this.f70986o));
            RealFieldElement realFieldElement14 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement7.multiply(this.f70982k)).subtract((RealFieldElement) realFieldElement8.multiply(this.f70982k))).add((RealFieldElement) realFieldElement9.multiply((RealFieldElement) this.f70982k.multiply(2)))).add((RealFieldElement) realFieldElement10.multiply(this.f70987p));
            RealFieldElement realFieldElement15 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement7.multiply(this.f70983l)).subtract((RealFieldElement) realFieldElement8.multiply(this.f70983l))).add((RealFieldElement) realFieldElement9.multiply((RealFieldElement) this.f70983l.multiply(2)))).add((RealFieldElement) realFieldElement10.multiply(this.f70988q));
            RealFieldElement realFieldElement16 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement7.multiply(this.f70984m)).subtract((RealFieldElement) realFieldElement8.multiply(this.f70984m))).add((RealFieldElement) realFieldElement9.multiply((RealFieldElement) this.f70984m.multiply(2)))).add((RealFieldElement) realFieldElement10.multiply(this.f70989r));
            RealFieldElement realFieldElement17 = (RealFieldElement) ((RealFieldElement) realFieldElement10.multiply(this.f70990s)).subtract(realFieldElement9);
            T t5 = this.f70980i;
            RealFieldElement realFieldElement18 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) t5.subtract(realFieldElement4.multiply((RealFieldElement) t5.subtract(1.0d)))).add((RealFieldElement) realFieldElement5.multiply((RealFieldElement) ((RealFieldElement) this.f70980i.multiply(2)).subtract(1.0d)))).add((RealFieldElement) realFieldElement6.multiply(this.f70985n));
            RealFieldElement realFieldElement19 = (RealFieldElement) t.getField().getZero();
            T t6 = this.f70981j;
            RealFieldElement realFieldElement20 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) t6.subtract(realFieldElement4.multiply(t6))).add((RealFieldElement) realFieldElement5.multiply((RealFieldElement) this.f70981j.multiply(2)))).add((RealFieldElement) realFieldElement6.multiply(this.f70986o));
            T t7 = this.f70982k;
            RealFieldElement realFieldElement21 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) t7.subtract(realFieldElement4.multiply(t7))).add((RealFieldElement) realFieldElement5.multiply((RealFieldElement) this.f70982k.multiply(2)))).add((RealFieldElement) realFieldElement6.multiply(this.f70987p));
            T t8 = this.f70983l;
            RealFieldElement realFieldElement22 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) t8.subtract(realFieldElement4.multiply(t8))).add((RealFieldElement) realFieldElement5.multiply((RealFieldElement) this.f70983l.multiply(2)))).add((RealFieldElement) realFieldElement6.multiply(this.f70988q));
            T t9 = this.f70984m;
            RealFieldElement realFieldElement23 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) t9.subtract(realFieldElement4.multiply(t9))).add((RealFieldElement) realFieldElement5.multiply((RealFieldElement) this.f70984m.multiply(2)))).add((RealFieldElement) realFieldElement6.multiply(this.f70989r));
            RealFieldElement realFieldElement24 = (RealFieldElement) ((RealFieldElement) realFieldElement6.multiply(this.f70990s)).subtract(realFieldElement5);
            m54636d = m54636d(realFieldElement11, realFieldElement12, realFieldElement13, realFieldElement14, realFieldElement15, realFieldElement16, realFieldElement17);
            m54637e = m54637e(realFieldElement18, realFieldElement19, realFieldElement20, realFieldElement21, realFieldElement22, realFieldElement23, realFieldElement24);
        } else {
            RealFieldElement realFieldElement25 = (RealFieldElement) t3.multiply(realFieldElement2);
            RealFieldElement realFieldElement26 = (RealFieldElement) realFieldElement25.multiply(t2);
            RealFieldElement realFieldElement27 = (RealFieldElement) realFieldElement26.multiply(realFieldElement2);
            RealFieldElement realFieldElement28 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t3.multiply(this.f70980i)).subtract((RealFieldElement) realFieldElement25.multiply((RealFieldElement) this.f70980i.subtract(1.0d)))).add((RealFieldElement) realFieldElement26.multiply((RealFieldElement) ((RealFieldElement) this.f70980i.multiply(2)).subtract(1.0d)))).add((RealFieldElement) realFieldElement27.multiply(this.f70985n));
            RealFieldElement realFieldElement29 = (RealFieldElement) t.getField().getZero();
            RealFieldElement realFieldElement30 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t3.multiply(this.f70981j)).subtract((RealFieldElement) realFieldElement25.multiply(this.f70981j))).add((RealFieldElement) realFieldElement26.multiply((RealFieldElement) this.f70981j.multiply(2)))).add((RealFieldElement) realFieldElement27.multiply(this.f70986o));
            RealFieldElement realFieldElement31 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t3.multiply(this.f70982k)).subtract((RealFieldElement) realFieldElement25.multiply(this.f70982k))).add((RealFieldElement) realFieldElement26.multiply((RealFieldElement) this.f70982k.multiply(2)))).add((RealFieldElement) realFieldElement27.multiply(this.f70987p));
            RealFieldElement realFieldElement32 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t3.multiply(this.f70983l)).subtract((RealFieldElement) realFieldElement25.multiply(this.f70983l))).add((RealFieldElement) realFieldElement26.multiply((RealFieldElement) this.f70983l.multiply(2)))).add((RealFieldElement) realFieldElement27.multiply(this.f70988q));
            RealFieldElement realFieldElement33 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t3.multiply(this.f70984m)).subtract((RealFieldElement) realFieldElement25.multiply(this.f70984m))).add((RealFieldElement) realFieldElement26.multiply((RealFieldElement) this.f70984m.multiply(2)))).add((RealFieldElement) realFieldElement27.multiply(this.f70989r));
            RealFieldElement realFieldElement34 = (RealFieldElement) ((RealFieldElement) realFieldElement27.multiply(this.f70990s)).subtract(realFieldElement26);
            T t10 = this.f70980i;
            RealFieldElement realFieldElement35 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) t10.subtract(realFieldElement4.multiply((RealFieldElement) t10.subtract(1.0d)))).add((RealFieldElement) realFieldElement5.multiply((RealFieldElement) ((RealFieldElement) this.f70980i.multiply(2)).subtract(1.0d)))).add((RealFieldElement) realFieldElement6.multiply(this.f70985n));
            RealFieldElement realFieldElement36 = (RealFieldElement) t.getField().getZero();
            T t11 = this.f70981j;
            RealFieldElement realFieldElement37 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) t11.subtract(realFieldElement4.multiply(t11))).add((RealFieldElement) realFieldElement5.multiply((RealFieldElement) this.f70981j.multiply(2)))).add((RealFieldElement) realFieldElement6.multiply(this.f70986o));
            T t12 = this.f70982k;
            RealFieldElement realFieldElement38 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) t12.subtract(realFieldElement4.multiply(t12))).add((RealFieldElement) realFieldElement5.multiply((RealFieldElement) this.f70982k.multiply(2)))).add((RealFieldElement) realFieldElement6.multiply(this.f70987p));
            T t13 = this.f70983l;
            RealFieldElement realFieldElement39 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) t13.subtract(realFieldElement4.multiply(t13))).add((RealFieldElement) realFieldElement5.multiply((RealFieldElement) this.f70983l.multiply(2)))).add((RealFieldElement) realFieldElement6.multiply(this.f70988q));
            T t14 = this.f70984m;
            RealFieldElement realFieldElement40 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) t14.subtract(realFieldElement4.multiply(t14))).add((RealFieldElement) realFieldElement5.multiply((RealFieldElement) this.f70984m.multiply(2)))).add((RealFieldElement) realFieldElement6.multiply(this.f70989r));
            RealFieldElement realFieldElement41 = (RealFieldElement) ((RealFieldElement) realFieldElement6.multiply(this.f70990s)).subtract(realFieldElement5);
            m54636d = m54638f(realFieldElement28, realFieldElement29, realFieldElement30, realFieldElement31, realFieldElement32, realFieldElement33, realFieldElement34);
            m54637e = m54637e(realFieldElement35, realFieldElement36, realFieldElement37, realFieldElement38, realFieldElement39, realFieldElement40, realFieldElement41);
        }
        return new FieldODEStateAndDerivative<>(t, m54636d, m54637e);
    }

    @Override // com.sunia.HTREnginev2.hvl
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public gff<T> mo53934b(Field<T> field, boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        return new gff<>(field, z, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
    }
}
