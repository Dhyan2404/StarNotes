package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import com.google.android.material.C5139R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes6.dex */
public class CircularProgressIndicator extends BaseProgressIndicator<CircularProgressIndicatorSpec> {
    public static final int DEF_STYLE_RES = C5139R.style.Widget_MaterialComponents_CircularProgressIndicator;
    public static final int INDICATOR_DIRECTION_CLOCKWISE = 0;
    public static final int INDICATOR_DIRECTION_COUNTERCLOCKWISE = 1;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface IndicatorDirection {
    }

    public CircularProgressIndicator(@NonNull Context context) {
        this(context, null);
    }

    public int getIndicatorDirection() {
        return ((CircularProgressIndicatorSpec) this.f31901e).indicatorDirection;
    }

    @Px
    public int getIndicatorInset() {
        return ((CircularProgressIndicatorSpec) this.f31901e).indicatorInset;
    }

    @Px
    public int getIndicatorSize() {
        return ((CircularProgressIndicatorSpec) this.f31901e).indicatorSize;
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public CircularProgressIndicatorSpec mo24431h(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        return new CircularProgressIndicatorSpec(context, attributeSet);
    }

    /* renamed from: q */
    public final void m24443q() {
        C5350a c5350a = new C5350a((CircularProgressIndicatorSpec) this.f31901e);
        setIndeterminateDrawable(IndeterminateDrawable.m24464r(getContext(), (CircularProgressIndicatorSpec) this.f31901e, c5350a));
        setProgressDrawable(DeterminateDrawable.m24447t(getContext(), (CircularProgressIndicatorSpec) this.f31901e, c5350a));
    }

    public void setIndicatorDirection(int i) {
        ((CircularProgressIndicatorSpec) this.f31901e).indicatorDirection = i;
        invalidate();
    }

    public void setIndicatorInset(@Px int i) {
        S s = this.f31901e;
        if (((CircularProgressIndicatorSpec) s).indicatorInset != i) {
            ((CircularProgressIndicatorSpec) s).indicatorInset = i;
            invalidate();
        }
    }

    public void setIndicatorSize(@Px int i) {
        int max = Math.max(i, getTrackThickness() * 2);
        S s = this.f31901e;
        if (((CircularProgressIndicatorSpec) s).indicatorSize != max) {
            ((CircularProgressIndicatorSpec) s).indicatorSize = max;
            ((CircularProgressIndicatorSpec) s).mo24441c();
            requestLayout();
            invalidate();
        }
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackThickness(int i) {
        super.setTrackThickness(i);
        ((CircularProgressIndicatorSpec) this.f31901e).mo24441c();
    }

    public CircularProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C5139R.attr.circularProgressIndicatorStyle);
    }

    public CircularProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i, DEF_STYLE_RES);
        m24443q();
    }
}
