package com.sunia.HTREnginev2;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;

/* loaded from: classes12.dex */
public class jud<T extends RealFieldElement<T>> extends hvl<T> {
    public jud(Field<T> field, boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        super(field, z, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator
    public FieldODEStateAndDerivative<T> computeInterpolatedStateAndDerivatives(FieldEquationsMapper<T> fieldEquationsMapper, T t, T t2, T t3, T t4) {
        RealFieldElement[] m54636d;
        RealFieldElement[] m54637e;
        RealFieldElement realFieldElement = (RealFieldElement) t.getField().getOne();
        RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElement.subtract(t2);
        RealFieldElement realFieldElement3 = (RealFieldElement) realFieldElement.subtract((RealFieldElement) t2.multiply(2));
        RealFieldElement realFieldElement4 = (RealFieldElement) realFieldElement2.multiply(realFieldElement3);
        RealFieldElement realFieldElement5 = (RealFieldElement) ((RealFieldElement) t2.multiply(realFieldElement2)).multiply(2);
        RealFieldElement realFieldElement6 = (RealFieldElement) ((RealFieldElement) t2.multiply(realFieldElement3)).negate();
        if (getGlobalPreviousState() == null || t2.getReal() > 0.5d) {
            RealFieldElement realFieldElement7 = (RealFieldElement) t2.multiply(4);
            RealFieldElement realFieldElement8 = (RealFieldElement) t4.divide(6.0d);
            RealFieldElement realFieldElement9 = (RealFieldElement) realFieldElement8.multiply((RealFieldElement) ((RealFieldElement) t2.multiply(((RealFieldElement) realFieldElement7.negate()).add(5.0d))).subtract(1.0d));
            RealFieldElement realFieldElement10 = (RealFieldElement) realFieldElement8.multiply((RealFieldElement) ((RealFieldElement) t2.multiply(realFieldElement7.subtract(2.0d))).subtract(2.0d));
            m54636d = m54636d(realFieldElement9, realFieldElement10, realFieldElement10, (RealFieldElement) realFieldElement8.multiply((RealFieldElement) ((RealFieldElement) t2.multiply(((RealFieldElement) realFieldElement7.negate()).subtract(1.0d))).subtract(1.0d)));
            m54637e = m54637e(realFieldElement4, realFieldElement5, realFieldElement5, realFieldElement6);
        } else {
            RealFieldElement realFieldElement11 = (RealFieldElement) ((RealFieldElement) t2.multiply(t2)).multiply(4);
            RealFieldElement realFieldElement12 = (RealFieldElement) t3.divide(6.0d);
            RealFieldElement realFieldElement13 = (RealFieldElement) realFieldElement12.multiply((RealFieldElement) ((RealFieldElement) realFieldElement11.subtract((RealFieldElement) t2.multiply(9))).add(6.0d));
            RealFieldElement realFieldElement14 = (RealFieldElement) realFieldElement12.multiply((RealFieldElement) ((RealFieldElement) t2.multiply(6)).subtract(realFieldElement11));
            m54636d = m54638f(realFieldElement13, realFieldElement14, realFieldElement14, (RealFieldElement) realFieldElement12.multiply((RealFieldElement) realFieldElement11.subtract((RealFieldElement) t2.multiply(3))));
            m54637e = m54637e(realFieldElement4, realFieldElement5, realFieldElement5, realFieldElement6);
        }
        return new FieldODEStateAndDerivative<>(t, m54636d, m54637e);
    }

    @Override // com.sunia.HTREnginev2.hvl
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public jud<T> mo53934b(Field<T> field, boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        return new jud<>(field, z, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
    }
}
