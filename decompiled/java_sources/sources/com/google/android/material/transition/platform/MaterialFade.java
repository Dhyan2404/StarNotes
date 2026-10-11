package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.sunia.HTREnginev2.lgj;

@RequiresApi(21)
/* loaded from: classes6.dex */
public final class MaterialFade extends lgj<FadeProvider> {

    /* renamed from: h */
    public static final float f33307h = 0.8f;

    /* renamed from: i */
    public static final float f33308i = 0.3f;

    /* renamed from: j */
    @AttrRes
    public static final int f33309j = C5139R.attr.motionDurationMedium4;

    /* renamed from: k */
    @AttrRes
    public static final int f33310k = C5139R.attr.motionDurationShort3;

    /* renamed from: l */
    @AttrRes
    public static final int f33311l = C5139R.attr.motionEasingEmphasizedDecelerateInterpolator;

    /* renamed from: m */
    @AttrRes
    public static final int f33312m = C5139R.attr.motionEasingEmphasizedAccelerateInterpolator;

    public MaterialFade() {
        super(m25631g(), m25632h());
    }

    /* renamed from: g */
    public static FadeProvider m25631g() {
        FadeProvider fadeProvider = new FadeProvider();
        fadeProvider.setIncomingEndThreshold(0.3f);
        return fadeProvider;
    }

    /* renamed from: h */
    public static VisibilityAnimatorProvider m25632h() {
        ScaleProvider scaleProvider = new ScaleProvider();
        scaleProvider.setScaleOnDisappear(false);
        scaleProvider.setIncomingStartScale(0.8f);
        return scaleProvider;
    }

    @Override // com.sunia.HTREnginev2.lgj
    public /* bridge */ /* synthetic */ void addAdditionalAnimatorProvider(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.addAdditionalAnimatorProvider(visibilityAnimatorProvider);
    }

    @Override // com.sunia.HTREnginev2.lgj
    @NonNull
    /* renamed from: c */
    public TimeInterpolator mo25633c(boolean z) {
        return AnimationUtils.LINEAR_INTERPOLATOR;
    }

    @Override // com.sunia.HTREnginev2.lgj
    public /* bridge */ /* synthetic */ void clearAdditionalAnimatorProvider() {
        super.clearAdditionalAnimatorProvider();
    }

    @Override // com.sunia.HTREnginev2.lgj
    @AttrRes
    /* renamed from: d */
    public int mo25634d(boolean z) {
        return z ? f33309j : f33310k;
    }

    @Override // com.sunia.HTREnginev2.lgj
    @AttrRes
    /* renamed from: e */
    public int mo25635e(boolean z) {
        return z ? f33311l : f33312m;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.material.transition.platform.VisibilityAnimatorProvider, com.google.android.material.transition.platform.FadeProvider] */
    @Override // com.sunia.HTREnginev2.lgj
    @NonNull
    public /* bridge */ /* synthetic */ FadeProvider getPrimaryAnimatorProvider() {
        return super.getPrimaryAnimatorProvider();
    }

    @Override // com.sunia.HTREnginev2.lgj
    @Nullable
    public /* bridge */ /* synthetic */ VisibilityAnimatorProvider getSecondaryAnimatorProvider() {
        return super.getSecondaryAnimatorProvider();
    }

    @Override // com.sunia.HTREnginev2.lgj, android.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onAppear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override // com.sunia.HTREnginev2.lgj, android.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onDisappear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override // com.sunia.HTREnginev2.lgj
    public /* bridge */ /* synthetic */ boolean removeAdditionalAnimatorProvider(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        return super.removeAdditionalAnimatorProvider(visibilityAnimatorProvider);
    }

    @Override // com.sunia.HTREnginev2.lgj
    public /* bridge */ /* synthetic */ void setSecondaryAnimatorProvider(@Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.setSecondaryAnimatorProvider(visibilityAnimatorProvider);
    }
}
