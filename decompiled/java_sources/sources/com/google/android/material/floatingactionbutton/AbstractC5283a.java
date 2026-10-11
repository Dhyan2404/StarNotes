package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.Property;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.animation.MotionSpec;
import com.onegravity.colorpicker.OpacityBar;
import com.sunia.HTREnginev2.C13666eb;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.android.material.floatingactionbutton.a */
/* loaded from: classes6.dex */
public abstract class AbstractC5283a implements InterfaceC5285c {

    /* renamed from: a */
    public final Context f31344a;

    /* renamed from: b */
    @NonNull
    public final ExtendedFloatingActionButton f31345b;

    /* renamed from: c */
    public final ArrayList<Animator.AnimatorListener> f31346c = new ArrayList<>();

    /* renamed from: d */
    public final C13666eb f31347d;

    /* renamed from: e */
    @Nullable
    public MotionSpec f31348e;

    /* renamed from: f */
    @Nullable
    public MotionSpec f31349f;

    /* renamed from: com.google.android.material.floatingactionbutton.a$a */
    /* loaded from: classes6.dex */
    public class a extends Property<ExtendedFloatingActionButton, Float> {
        public a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(ExtendedFloatingActionButton extendedFloatingActionButton) {
            return Float.valueOf(AnimationUtils.lerp(0.0f, 1.0f, (Color.alpha(extendedFloatingActionButton.getCurrentTextColor()) / 255.0f) / Color.alpha(extendedFloatingActionButton.originalTextCsl.getColorForState(extendedFloatingActionButton.getDrawableState(), AbstractC5283a.this.f31345b.originalTextCsl.getDefaultColor()))));
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(ExtendedFloatingActionButton extendedFloatingActionButton, Float f) {
            int colorForState = extendedFloatingActionButton.originalTextCsl.getColorForState(extendedFloatingActionButton.getDrawableState(), AbstractC5283a.this.f31345b.originalTextCsl.getDefaultColor());
            ColorStateList valueOf = ColorStateList.valueOf(Color.argb((int) (AnimationUtils.lerp(0.0f, Color.alpha(colorForState) / 255.0f, f.floatValue()) * 255.0f), Color.red(colorForState), Color.green(colorForState), Color.blue(colorForState)));
            if (f.floatValue() == 1.0f) {
                extendedFloatingActionButton.silentlyUpdateTextColor(extendedFloatingActionButton.originalTextCsl);
            } else {
                extendedFloatingActionButton.silentlyUpdateTextColor(valueOf);
            }
        }
    }

    public AbstractC5283a(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton, C13666eb c13666eb) {
        this.f31345b = extendedFloatingActionButton;
        this.f31344a = extendedFloatingActionButton.getContext();
        this.f31347d = c13666eb;
    }

    @Override // com.google.android.material.floatingactionbutton.InterfaceC5285c
    /* renamed from: a */
    public final MotionSpec mo24101a() {
        MotionSpec motionSpec = this.f31349f;
        if (motionSpec != null) {
            return motionSpec;
        }
        if (this.f31348e == null) {
            this.f31348e = MotionSpec.createFromResource(this.f31344a, mo24077e());
        }
        return (MotionSpec) Preconditions.checkNotNull(this.f31348e);
    }

    @Override // com.google.android.material.floatingactionbutton.InterfaceC5285c
    @Nullable
    /* renamed from: b */
    public MotionSpec mo24102b() {
        return this.f31349f;
    }

    @Override // com.google.android.material.floatingactionbutton.InterfaceC5285c
    /* renamed from: d */
    public final void mo24103d(@NonNull Animator.AnimatorListener animatorListener) {
        this.f31346c.remove(animatorListener);
    }

    @Override // com.google.android.material.floatingactionbutton.InterfaceC5285c
    @CallSuper
    /* renamed from: g */
    public void mo24081g() {
        this.f31347d.m53946b();
    }

    @Override // com.google.android.material.floatingactionbutton.InterfaceC5285c
    @NonNull
    public final List<Animator.AnimatorListener> getListeners() {
        return this.f31346c;
    }

    @Override // com.google.android.material.floatingactionbutton.InterfaceC5285c
    /* renamed from: h */
    public AnimatorSet mo24079h() {
        return m24106m(mo24101a());
    }

    @Override // com.google.android.material.floatingactionbutton.InterfaceC5285c
    /* renamed from: j */
    public final void mo24104j(@NonNull Animator.AnimatorListener animatorListener) {
        this.f31346c.add(animatorListener);
    }

    @Override // com.google.android.material.floatingactionbutton.InterfaceC5285c
    /* renamed from: k */
    public final void mo24105k(@Nullable MotionSpec motionSpec) {
        this.f31349f = motionSpec;
    }

    @NonNull
    /* renamed from: m */
    public AnimatorSet m24106m(@NonNull MotionSpec motionSpec) {
        ArrayList arrayList = new ArrayList();
        if (motionSpec.hasPropertyValues(OpacityBar.f39917J)) {
            arrayList.add(motionSpec.getAnimator(OpacityBar.f39917J, this.f31345b, View.ALPHA));
        }
        if (motionSpec.hasPropertyValues("scale")) {
            arrayList.add(motionSpec.getAnimator("scale", this.f31345b, View.SCALE_Y));
            arrayList.add(motionSpec.getAnimator("scale", this.f31345b, View.SCALE_X));
        }
        if (motionSpec.hasPropertyValues("width")) {
            arrayList.add(motionSpec.getAnimator("width", this.f31345b, ExtendedFloatingActionButton.f31271O0));
        }
        if (motionSpec.hasPropertyValues("height")) {
            arrayList.add(motionSpec.getAnimator("height", this.f31345b, ExtendedFloatingActionButton.f31272P0));
        }
        if (motionSpec.hasPropertyValues("paddingStart")) {
            arrayList.add(motionSpec.getAnimator("paddingStart", this.f31345b, ExtendedFloatingActionButton.f31273Q0));
        }
        if (motionSpec.hasPropertyValues("paddingEnd")) {
            arrayList.add(motionSpec.getAnimator("paddingEnd", this.f31345b, ExtendedFloatingActionButton.f31274R0));
        }
        if (motionSpec.hasPropertyValues("labelOpacity")) {
            arrayList.add(motionSpec.getAnimator("labelOpacity", this.f31345b, new a(Float.class, "LABEL_OPACITY_PROPERTY")));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSetCompat.playTogether(animatorSet, arrayList);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.InterfaceC5285c
    @CallSuper
    public void onAnimationEnd() {
        this.f31347d.m53946b();
    }

    @Override // com.google.android.material.floatingactionbutton.InterfaceC5285c
    @CallSuper
    public void onAnimationStart(Animator animator) {
        this.f31347d.m53947c(animator);
    }
}
