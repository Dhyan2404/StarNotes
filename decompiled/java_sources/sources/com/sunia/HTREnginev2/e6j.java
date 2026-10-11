package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.onyx.galaxy.note.DataBinderMapperImpl;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;

/* loaded from: classes12.dex */
public class e6j<T extends RealFieldElement<T>> extends hvl<T> {

    /* renamed from: i */
    public final T f68634i;

    /* renamed from: j */
    public final T f68635j;

    /* renamed from: k */
    public final T f68636k;

    /* renamed from: l */
    public final T f68637l;

    /* renamed from: m */
    public final T f68638m;

    /* renamed from: n */
    public final T f68639n;

    /* renamed from: o */
    public final T f68640o;

    /* renamed from: p */
    public final T f68641p;

    /* renamed from: q */
    public final T f68642q;

    /* renamed from: r */
    public final T f68643r;

    /* renamed from: s */
    public final T f68644s;

    /* renamed from: t */
    public final T f68645t;

    /* renamed from: u */
    public final T f68646u;

    /* renamed from: v */
    public final T f68647v;

    public e6j(Field<T> field, boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        super(field, z, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) field.getZero().add(21.0d)).sqrt();
        this.f68634i = (T) ((RealFieldElement) realFieldElement.multiply(-49)).add(-49.0d);
        this.f68635j = (T) ((RealFieldElement) realFieldElement.multiply(287)).add(392.0d);
        this.f68636k = (T) ((RealFieldElement) realFieldElement.multiply(-357)).add(-637.0d);
        this.f68637l = (T) ((RealFieldElement) realFieldElement.multiply(DataBinderMapperImpl.f53019E5)).add(833.0d);
        this.f68638m = (T) ((RealFieldElement) realFieldElement.multiply(49)).add(-49.0d);
        this.f68639n = (T) ((RealFieldElement) realFieldElement.multiply(-287)).add(392.0d);
        this.f68640o = (T) ((RealFieldElement) realFieldElement.multiply(357)).add(-637.0d);
        this.f68641p = (T) ((RealFieldElement) realFieldElement.multiply(-343)).add(833.0d);
        this.f68642q = (T) ((RealFieldElement) realFieldElement.multiply(49)).add(49.0d);
        this.f68643r = (T) ((RealFieldElement) realFieldElement.multiply(-847)).add(-1372.0d);
        this.f68644s = (T) ((RealFieldElement) realFieldElement.multiply(AnalyticsListener.EVENT_AUDIO_CODEC_ERROR)).add(2254.0d);
        this.f68645t = (T) ((RealFieldElement) realFieldElement.multiply(-49)).add(49.0d);
        this.f68646u = (T) ((RealFieldElement) realFieldElement.multiply(847)).add(-1372.0d);
        this.f68647v = (T) ((RealFieldElement) realFieldElement.multiply(-1029)).add(2254.0d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator
    public FieldODEStateAndDerivative<T> computeInterpolatedStateAndDerivatives(FieldEquationsMapper<T> fieldEquationsMapper, T t, T t2, T t3, T t4) {
        RealFieldElement[] m54636d;
        RealFieldElement[] m54637e;
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(21)).add(-47.0d))).add(36.0d))).add(-10.8d))).add(1.0d);
        RealFieldElement realFieldElement2 = (RealFieldElement) t.getField().getZero();
        RealFieldElement realFieldElement3 = (RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(112)).add(-202.66666666666666d))).add(106.66666666666667d))).add(-13.866666666666667d));
        RealFieldElement realFieldElement4 = (RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(-113.4d)).add(194.4d))).add(-97.2d))).add(12.96d));
        RealFieldElement realFieldElement5 = (RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(this.f68634i.divide(5.0d))).add((RealFieldElement) this.f68635j.divide(15.0d)))).add((RealFieldElement) this.f68636k.divide(30.0d)))).add((RealFieldElement) this.f68637l.divide(150.0d)));
        RealFieldElement realFieldElement6 = (RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(this.f68638m.divide(5.0d))).add((RealFieldElement) this.f68639n.divide(15.0d)))).add((RealFieldElement) this.f68640o.divide(30.0d)))).add((RealFieldElement) this.f68641p.divide(150.0d)));
        RealFieldElement realFieldElement7 = (RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(3.0d)).add(-3.0d))).add(0.6d));
        if (getGlobalPreviousState() == null || t2.getReal() > 0.5d) {
            m54636d = m54636d((RealFieldElement) t4.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(-4.2d)).add(7.55d))).add(-4.45d))).add(0.95d))).add(-0.05d)), (RealFieldElement) t.getField().getZero(), (RealFieldElement) t4.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(-22.4d)).add(28.266666666666666d))).add(-7.288888888888889d))).add(-0.35555555555555557d))).add(-0.35555555555555557d)), (RealFieldElement) t4.multiply(t2.multiply(t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(22.68d)).add(-25.92d))).add(6.48d)))), (RealFieldElement) t4.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(this.f68642q.divide(25.0d))).add((RealFieldElement) this.f68643r.divide(300.0d)))).add((RealFieldElement) this.f68644s.divide(900.0d)))).add(-0.2722222222222222d))).add(-0.2722222222222222d)), (RealFieldElement) t4.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(this.f68645t.divide(25.0d))).add((RealFieldElement) this.f68646u.divide(300.0d)))).add((RealFieldElement) this.f68647v.divide(900.0d)))).add(-0.2722222222222222d))).add(-0.2722222222222222d)), (RealFieldElement) t4.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(-0.75d)).add(0.25d))).add(-0.05d))).add(-0.05d)));
            m54637e = m54637e(realFieldElement, realFieldElement2, realFieldElement3, realFieldElement4, realFieldElement5, realFieldElement6, realFieldElement7);
        } else {
            m54636d = m54638f((RealFieldElement) t3.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(4.2d)).add(-11.75d))).add(12.0d))).add(-5.4d))).add(1.0d)), (RealFieldElement) t.getField().getZero(), (RealFieldElement) t3.multiply(t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(22.4d)).add(-50.666666666666664d))).add(35.55555555555556d))).add(-6.933333333333334d))), (RealFieldElement) t3.multiply(t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(-22.68d)).add(48.6d))).add(-32.4d))).add(6.48d))), (RealFieldElement) t3.multiply(t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(this.f68634i.divide(25.0d))).add((RealFieldElement) this.f68635j.divide(60.0d)))).add((RealFieldElement) this.f68636k.divide(90.0d)))).add((RealFieldElement) this.f68637l.divide(300.0d)))), (RealFieldElement) t3.multiply(t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(this.f68638m.divide(25.0d))).add((RealFieldElement) this.f68639n.divide(60.0d)))).add((RealFieldElement) this.f68640o.divide(90.0d)))).add((RealFieldElement) this.f68641p.divide(300.0d)))), (RealFieldElement) t3.multiply(t2.multiply(((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(0.75d)).add(-1.0d))).add(0.3d))));
            m54637e = m54637e(realFieldElement, realFieldElement2, realFieldElement3, realFieldElement4, realFieldElement5, realFieldElement6, realFieldElement7);
        }
        return new FieldODEStateAndDerivative<>(t, m54636d, m54637e);
    }

    @Override // com.sunia.HTREnginev2.hvl
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public e6j<T> mo53934b(Field<T> field, boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        return new e6j<>(field, z, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
    }
}
