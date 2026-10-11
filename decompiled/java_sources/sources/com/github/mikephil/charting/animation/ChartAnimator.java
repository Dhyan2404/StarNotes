package com.github.mikephil.charting.animation;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import com.github.mikephil.charting.animation.Easing;

/* loaded from: classes4.dex */
public class ChartAnimator {

    /* renamed from: a */
    public ValueAnimator.AnimatorUpdateListener f21437a;
    protected float mPhaseY = 1.0f;
    protected float mPhaseX = 1.0f;

    public ChartAnimator() {
    }

    public void animateX(int i, EasingFunction easingFunction) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "phaseX", 0.0f, 1.0f);
        ofFloat.setInterpolator(easingFunction);
        ofFloat.setDuration(i);
        ofFloat.addUpdateListener(this.f21437a);
        ofFloat.start();
    }

    public void animateXY(int i, int i2, EasingFunction easingFunction, EasingFunction easingFunction2) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "phaseY", 0.0f, 1.0f);
        ofFloat.setInterpolator(easingFunction2);
        ofFloat.setDuration(i2);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, "phaseX", 0.0f, 1.0f);
        ofFloat2.setInterpolator(easingFunction);
        ofFloat2.setDuration(i);
        if (i > i2) {
            ofFloat2.addUpdateListener(this.f21437a);
        } else {
            ofFloat.addUpdateListener(this.f21437a);
        }
        ofFloat2.start();
        ofFloat.start();
    }

    public void animateY(int i, EasingFunction easingFunction) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "phaseY", 0.0f, 1.0f);
        ofFloat.setInterpolator(easingFunction);
        ofFloat.setDuration(i);
        ofFloat.addUpdateListener(this.f21437a);
        ofFloat.start();
    }

    public float getPhaseX() {
        return this.mPhaseX;
    }

    public float getPhaseY() {
        return this.mPhaseY;
    }

    public void setPhaseX(float f) {
        this.mPhaseX = f;
    }

    public void setPhaseY(float f) {
        this.mPhaseY = f;
    }

    public ChartAnimator(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f21437a = animatorUpdateListener;
    }

    public void animateX(int i, Easing.EasingOption easingOption) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "phaseX", 0.0f, 1.0f);
        ofFloat.setInterpolator(Easing.getEasingFunctionFromOption(easingOption));
        ofFloat.setDuration(i);
        ofFloat.addUpdateListener(this.f21437a);
        ofFloat.start();
    }

    public void animateY(int i, Easing.EasingOption easingOption) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "phaseY", 0.0f, 1.0f);
        ofFloat.setInterpolator(Easing.getEasingFunctionFromOption(easingOption));
        ofFloat.setDuration(i);
        ofFloat.addUpdateListener(this.f21437a);
        ofFloat.start();
    }

    public void animateX(int i) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "phaseX", 0.0f, 1.0f);
        ofFloat.setDuration(i);
        ofFloat.addUpdateListener(this.f21437a);
        ofFloat.start();
    }

    public void animateXY(int i, int i2, Easing.EasingOption easingOption, Easing.EasingOption easingOption2) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "phaseY", 0.0f, 1.0f);
        ofFloat.setInterpolator(Easing.getEasingFunctionFromOption(easingOption2));
        ofFloat.setDuration(i2);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, "phaseX", 0.0f, 1.0f);
        ofFloat2.setInterpolator(Easing.getEasingFunctionFromOption(easingOption));
        ofFloat2.setDuration(i);
        if (i > i2) {
            ofFloat2.addUpdateListener(this.f21437a);
        } else {
            ofFloat.addUpdateListener(this.f21437a);
        }
        ofFloat2.start();
        ofFloat.start();
    }

    public void animateY(int i) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "phaseY", 0.0f, 1.0f);
        ofFloat.setDuration(i);
        ofFloat.addUpdateListener(this.f21437a);
        ofFloat.start();
    }

    public void animateXY(int i, int i2) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "phaseY", 0.0f, 1.0f);
        ofFloat.setDuration(i2);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, "phaseX", 0.0f, 1.0f);
        ofFloat2.setDuration(i);
        if (i > i2) {
            ofFloat2.addUpdateListener(this.f21437a);
        } else {
            ofFloat.addUpdateListener(this.f21437a);
        }
        ofFloat2.start();
        ofFloat.start();
    }
}
