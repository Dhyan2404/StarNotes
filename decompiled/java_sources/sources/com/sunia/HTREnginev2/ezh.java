package com.sunia.HTREnginev2;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;

/* loaded from: classes12.dex */
public class ezh<T extends RealFieldElement<T>> extends hvl<T> {
    public ezh(Field<T> field, boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        super(field, z, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator
    public FieldODEStateAndDerivative<T> computeInterpolatedStateAndDerivatives(FieldEquationsMapper<T> fieldEquationsMapper, T t, T t2, T t3, T t4) {
        RealFieldElement[] m54636d;
        RealFieldElement[] m54637e;
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(-10.0d)).add(16.0d))).add(-7.5d))).add(1.0d);
        RealFieldElement realFieldElement2 = (RealFieldElement) t.getField().getZero();
        RealFieldElement realFieldElement3 = (RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(67.5d)).add(-91.125d))).add(28.6875d));
        RealFieldElement realFieldElement4 = (RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(-120.0d)).add(152.0d))).add(-44.0d));
        RealFieldElement realFieldElement5 = (RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(62.5d)).add(-78.125d))).add(23.4375d));
        RealFieldElement realFieldElement6 = (RealFieldElement) ((RealFieldElement) t2.multiply(0.625d)).multiply((RealFieldElement) ((RealFieldElement) t2.multiply(2)).subtract(1.0d));
        if (getGlobalPreviousState() == null || t2.getReal() > 0.5d) {
            RealFieldElement realFieldElement7 = (RealFieldElement) t2.multiply(t2);
            RealFieldElement realFieldElement8 = (RealFieldElement) t3.divide(t2);
            m54636d = m54636d((RealFieldElement) realFieldElement8.multiply((RealFieldElement) ((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(-2.5d)).add(5.333333333333333d))).add(-3.75d))).add(1.0d))).add(-0.08333333333333333d)), (RealFieldElement) t.getField().getZero(), (RealFieldElement) realFieldElement8.multiply((RealFieldElement) ((RealFieldElement) realFieldElement7.multiply((RealFieldElement) ((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(16.875d)).add(-30.375d))).add(14.34375d))).add(-0.84375d)), (RealFieldElement) realFieldElement8.multiply((RealFieldElement) ((RealFieldElement) realFieldElement7.multiply((RealFieldElement) ((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(-30.0d)).add(50.666666666666664d))).add(-22.0d))).add(1.3333333333333333d)), (RealFieldElement) realFieldElement8.multiply((RealFieldElement) ((RealFieldElement) realFieldElement7.multiply((RealFieldElement) ((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(15.625d)).add(-26.041666666666668d))).add(11.71875d))).add(-1.3020833333333333d)), (RealFieldElement) realFieldElement8.multiply((RealFieldElement) ((RealFieldElement) realFieldElement7.multiply((RealFieldElement) ((RealFieldElement) t2.multiply(0.4166666666666667d)).add(-0.3125d))).add(-0.10416666666666667d)));
            m54637e = m54637e(realFieldElement, realFieldElement2, realFieldElement3, realFieldElement4, realFieldElement5, realFieldElement6);
        } else {
            m54636d = m54638f((RealFieldElement) t3.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(-2.5d)).add(5.333333333333333d))).add(-3.75d))).add(1.0d)), (RealFieldElement) t.getField().getZero(), (RealFieldElement) t3.multiply(t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(16.875d)).add(-30.375d))).add(14.34375d))), (RealFieldElement) t3.multiply(t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(-30.0d)).add(50.666666666666664d))).add(-22.0d))), (RealFieldElement) t3.multiply(t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(15.625d)).add(-26.041666666666668d))).add(11.71875d))), (RealFieldElement) t3.multiply(t2.multiply(((RealFieldElement) t2.multiply(0.4166666666666667d)).add(-0.3125d))));
            m54637e = m54637e(realFieldElement, realFieldElement2, realFieldElement3, realFieldElement4, realFieldElement5, realFieldElement6);
        }
        return new FieldODEStateAndDerivative<>(t, m54636d, m54637e);
    }

    @Override // com.sunia.HTREnginev2.hvl
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public ezh<T> mo53934b(Field<T> field, boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        return new ezh<>(field, z, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
    }
}
