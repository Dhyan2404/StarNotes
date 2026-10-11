package com.google.android.material.transition;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.TransitionValues;
import com.google.android.material.C5139R;
import com.sunia.HTREnginev2.mgj;

/* loaded from: classes6.dex */
public final class MaterialFadeThrough extends mgj<FadeThroughProvider> {

    /* renamed from: Y0 */
    public static final float f33154Y0 = 0.92f;

    /* renamed from: Z0 */
    @AttrRes
    public static final int f33155Z0 = C5139R.attr.motionDurationLong1;

    /* renamed from: a1 */
    @AttrRes
    public static final int f33156a1 = C5139R.attr.motionEasingEmphasizedInterpolator;

    public MaterialFadeThrough() {
        super(m25568T(), m25569U());
    }

    /* renamed from: T */
    public static FadeThroughProvider m25568T() {
        return new FadeThroughProvider();
    }

    /* renamed from: U */
    public static VisibilityAnimatorProvider m25569U() {
        ScaleProvider scaleProvider = new ScaleProvider();
        scaleProvider.setScaleOnDisappear(false);
        scaleProvider.setIncomingStartScale(0.92f);
        return scaleProvider;
    }

    @Override // com.sunia.HTREnginev2.mgj
    @AttrRes
    /* renamed from: Q */
    public int mo25566Q(boolean z) {
        return f33155Z0;
    }

    @Override // com.sunia.HTREnginev2.mgj
    @AttrRes
    /* renamed from: R */
    public int mo25567R(boolean z) {
        return f33156a1;
    }

    @Override // com.sunia.HTREnginev2.mgj
    public /* bridge */ /* synthetic */ void addAdditionalAnimatorProvider(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.addAdditionalAnimatorProvider(visibilityAnimatorProvider);
    }

    @Override // com.sunia.HTREnginev2.mgj
    public /* bridge */ /* synthetic */ void clearAdditionalAnimatorProvider() {
        super.clearAdditionalAnimatorProvider();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.material.transition.FadeThroughProvider, com.google.android.material.transition.VisibilityAnimatorProvider] */
    @Override // com.sunia.HTREnginev2.mgj
    @NonNull
    public /* bridge */ /* synthetic */ FadeThroughProvider getPrimaryAnimatorProvider() {
        return super.getPrimaryAnimatorProvider();
    }

    @Override // com.sunia.HTREnginev2.mgj
    @Nullable
    public /* bridge */ /* synthetic */ VisibilityAnimatorProvider getSecondaryAnimatorProvider() {
        return super.getSecondaryAnimatorProvider();
    }

    @Override // com.sunia.HTREnginev2.mgj, androidx.transition.Transition
    public /* bridge */ /* synthetic */ boolean isSeekingSupported() {
        return super.isSeekingSupported();
    }

    @Override // com.sunia.HTREnginev2.mgj, androidx.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onAppear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override // com.sunia.HTREnginev2.mgj, androidx.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onDisappear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override // com.sunia.HTREnginev2.mgj
    public /* bridge */ /* synthetic */ boolean removeAdditionalAnimatorProvider(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        return super.removeAdditionalAnimatorProvider(visibilityAnimatorProvider);
    }

    @Override // com.sunia.HTREnginev2.mgj
    public /* bridge */ /* synthetic */ void setSecondaryAnimatorProvider(@Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.setSecondaryAnimatorProvider(visibilityAnimatorProvider);
    }
}
