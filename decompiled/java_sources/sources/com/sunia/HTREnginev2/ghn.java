package com.sunia.HTREnginev2;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;

/* loaded from: classes12.dex */
public class ghn<T extends RealFieldElement<T>> extends hvl<T> {
    public ghn(Field<T> field, boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        super(field, z, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator
    public FieldODEStateAndDerivative<T> computeInterpolatedStateAndDerivatives(FieldEquationsMapper<T> fieldEquationsMapper, T t, T t2, T t3, T t4) {
        RealFieldElement[] m54637e;
        RealFieldElement[] realFieldElementArr;
        RealFieldElement realFieldElement = (RealFieldElement) t2.multiply(0.75d);
        RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) realFieldElement.multiply((RealFieldElement) ((RealFieldElement) t2.multiply(4)).subtract(5.0d))).add(1.0d);
        RealFieldElement realFieldElement3 = (RealFieldElement) realFieldElement.multiply((RealFieldElement) ((RealFieldElement) t2.multiply(-6)).add(5.0d));
        RealFieldElement realFieldElement4 = (RealFieldElement) realFieldElement.multiply((RealFieldElement) ((RealFieldElement) t2.multiply(2)).subtract(1.0d));
        if (getGlobalPreviousState() == null || t2.getReal() > 0.5d) {
            RealFieldElement realFieldElement5 = (RealFieldElement) t4.divide(-8.0d);
            RealFieldElement realFieldElement6 = (RealFieldElement) ((RealFieldElement) t2.multiply(t2)).multiply(4);
            RealFieldElement realFieldElement7 = (RealFieldElement) t2.add(1.0d);
            RealFieldElement[] m54636d = m54636d((RealFieldElement) realFieldElement5.multiply((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement6.multiply(2)).subtract((RealFieldElement) t2.multiply(7))).add(1.0d)), (RealFieldElement) ((RealFieldElement) realFieldElement5.multiply((RealFieldElement) realFieldElement7.subtract(realFieldElement6))).multiply(3), (RealFieldElement) ((RealFieldElement) realFieldElement5.multiply(realFieldElement7)).multiply(3), (RealFieldElement) realFieldElement5.multiply((RealFieldElement) realFieldElement7.add(realFieldElement6)));
            m54637e = m54637e(realFieldElement2, realFieldElement3, realFieldElement, realFieldElement4);
            realFieldElementArr = m54636d;
        } else {
            RealFieldElement realFieldElement8 = (RealFieldElement) t3.divide(8.0d);
            RealFieldElement realFieldElement9 = (RealFieldElement) ((RealFieldElement) t2.multiply(t2)).multiply(4);
            realFieldElementArr = m54638f((RealFieldElement) realFieldElement8.multiply((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement9.multiply(2)).subtract((RealFieldElement) t2.multiply(15))).add(8.0d)), (RealFieldElement) ((RealFieldElement) realFieldElement8.multiply((RealFieldElement) ((RealFieldElement) t2.multiply(5)).subtract(realFieldElement9))).multiply(3), (RealFieldElement) ((RealFieldElement) realFieldElement8.multiply(t2)).multiply(3), (RealFieldElement) realFieldElement8.multiply((RealFieldElement) realFieldElement9.subtract((RealFieldElement) t2.multiply(3))));
            m54637e = m54637e(realFieldElement2, realFieldElement3, realFieldElement, realFieldElement4);
        }
        return new FieldODEStateAndDerivative<>(t, realFieldElementArr, m54637e);
    }

    @Override // com.sunia.HTREnginev2.hvl
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public ghn<T> mo53934b(Field<T> field, boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        return new ghn<>(field, z, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
    }
}
