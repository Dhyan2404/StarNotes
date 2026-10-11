package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.material.C5139R;
import com.sunia.HTREnginev2.lgj;

@RequiresApi(21)
/* loaded from: classes6.dex */
public final class MaterialFadeThrough extends lgj<FadeThroughProvider> {

    /* renamed from: h */
    public static final float f33313h = 0.92f;

    /* renamed from: i */
    @AttrRes
    public static final int f33314i = C5139R.attr.motionDurationLong1;

    /* renamed from: j */
    @AttrRes
    public static final int f33315j = C5139R.attr.motionEasingEmphasizedInterpolator;

    public MaterialFadeThrough() {
        super(m25636g(), m25637h());
    }

    /* renamed from: g */
    public static FadeThroughProvider m25636g() {
        return new FadeThroughProvider();
    }

    /* renamed from: h */
    public static VisibilityAnimatorProvider m25637h() {
        ScaleProvider scaleProvider = new ScaleProvider();
        scaleProvider.setScaleOnDisappear(false);
        scaleProvider.setIncomingStartScale(0.92f);
        return scaleProvider;
    }

    @Override // com.sunia.HTREnginev2.lgj
    public /* bridge */ /* synthetic */ void addAdditionalAnimatorProvider(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.addAdditionalAnimatorProvider(visibilityAnimatorProvider);
    }

    @Override // com.sunia.HTREnginev2.lgj
    public /* bridge */ /* synthetic */ void clearAdditionalAnimatorProvider() {
        super.clearAdditionalAnimatorProvider();
    }

    @Override // com.sunia.HTREnginev2.lgj
    @AttrRes
    /* renamed from: d */
    public int mo25634d(boolean z) {
        return f33314i;
    }

    @Override // com.sunia.HTREnginev2.lgj
    @AttrRes
    /* renamed from: e */
    public int mo25635e(boolean z) {
        return f33315j;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.material.transition.platform.VisibilityAnimatorProvider, com.google.android.material.transition.platform.FadeThroughProvider] */
    @Override // com.sunia.HTREnginev2.lgj
    @NonNull
    public /* bridge */ /* synthetic */ FadeThroughProvider getPrimaryAnimatorProvider() {
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
