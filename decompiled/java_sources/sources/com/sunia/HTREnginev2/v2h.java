package com.sunia.HTREnginev2;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;

/* loaded from: classes12.dex */
public class v2h<T extends RealFieldElement<T>> extends hvl<T> {

    /* renamed from: i */
    public final T f87072i;

    /* renamed from: j */
    public final T f87073j;

    public v2h(Field<T> field, boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        super(field, z, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) field.getZero().add(0.5d)).sqrt();
        this.f87072i = (T) field.getOne().subtract(realFieldElement);
        this.f87073j = (T) field.getOne().add(realFieldElement);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator
    public FieldODEStateAndDerivative<T> computeInterpolatedStateAndDerivatives(FieldEquationsMapper<T> fieldEquationsMapper, T t, T t2, T t3, T t4) {
        RealFieldElement[] m54636d;
        RealFieldElement[] m54637e;
        RealFieldElement realFieldElement = (RealFieldElement) t.getField().getOne();
        RealFieldElement realFieldElement2 = (RealFieldElement) t2.multiply(2);
        RealFieldElement realFieldElement3 = (RealFieldElement) realFieldElement2.multiply(realFieldElement2);
        RealFieldElement realFieldElement4 = (RealFieldElement) ((RealFieldElement) t2.multiply(realFieldElement2.subtract(3.0d))).add(1.0d);
        RealFieldElement realFieldElement5 = (RealFieldElement) realFieldElement2.multiply((RealFieldElement) realFieldElement.subtract(t2));
        RealFieldElement realFieldElement6 = (RealFieldElement) realFieldElement5.multiply(this.f87072i);
        RealFieldElement realFieldElement7 = (RealFieldElement) realFieldElement5.multiply(this.f87073j);
        RealFieldElement realFieldElement8 = (RealFieldElement) t2.multiply(realFieldElement2.subtract(1.0d));
        if (getGlobalPreviousState() == null || t2.getReal() > 0.5d) {
            RealFieldElement realFieldElement9 = (RealFieldElement) t4.divide(-6.0d);
            RealFieldElement realFieldElement10 = (RealFieldElement) realFieldElement9.multiply((RealFieldElement) ((RealFieldElement) realFieldElement2.add(2.0d)).subtract(realFieldElement3));
            m54636d = m54636d((RealFieldElement) realFieldElement9.multiply((RealFieldElement) ((RealFieldElement) realFieldElement3.subtract((RealFieldElement) t2.multiply(5))).add(1.0d)), (RealFieldElement) realFieldElement10.multiply(this.f87072i), (RealFieldElement) realFieldElement10.multiply(this.f87073j), (RealFieldElement) realFieldElement9.multiply((RealFieldElement) ((RealFieldElement) realFieldElement3.add(t2)).add(1.0d)));
            m54637e = m54637e(realFieldElement4, realFieldElement6, realFieldElement7, realFieldElement8);
        } else {
            RealFieldElement realFieldElement11 = (RealFieldElement) t3.divide(6.0d);
            RealFieldElement realFieldElement12 = (RealFieldElement) realFieldElement11.multiply((RealFieldElement) ((RealFieldElement) t2.multiply(6)).subtract(realFieldElement3));
            m54636d = m54638f((RealFieldElement) realFieldElement11.multiply((RealFieldElement) ((RealFieldElement) realFieldElement3.subtract((RealFieldElement) t2.multiply(9))).add(6.0d)), (RealFieldElement) realFieldElement12.multiply(this.f87072i), (RealFieldElement) realFieldElement12.multiply(this.f87073j), (RealFieldElement) realFieldElement11.multiply((RealFieldElement) realFieldElement3.subtract((RealFieldElement) t2.multiply(3))));
            m54637e = m54637e(realFieldElement4, realFieldElement6, realFieldElement7, realFieldElement8);
        }
        return new FieldODEStateAndDerivative<>(t, m54636d, m54637e);
    }

    @Override // com.sunia.HTREnginev2.hvl
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public v2h<T> mo53934b(Field<T> field, boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        return new v2h<>(field, z, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
    }
}
