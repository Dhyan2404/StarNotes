package com.google.android.material.transition;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.TransitionValues;
import com.sunia.HTREnginev2.mgj;

/* loaded from: classes6.dex */
public final class MaterialElevationScale extends mgj<ScaleProvider> {

    /* renamed from: Z0 */
    public static final float f33146Z0 = 0.85f;

    /* renamed from: Y0 */
    public final boolean f33147Y0;

    public MaterialElevationScale(boolean z) {
        super(m25561T(z), m25562U());
        this.f33147Y0 = z;
    }

    /* renamed from: T */
    public static ScaleProvider m25561T(boolean z) {
        ScaleProvider scaleProvider = new ScaleProvider(z);
        scaleProvider.setOutgoingEndScale(0.85f);
        scaleProvider.setIncomingStartScale(0.85f);
        return scaleProvider;
    }

    /* renamed from: U */
    public static VisibilityAnimatorProvider m25562U() {
        return new FadeProvider();
    }

    @Override // com.sunia.HTREnginev2.mgj
    public /* bridge */ /* synthetic */ void addAdditionalAnimatorProvider(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.addAdditionalAnimatorProvider(visibilityAnimatorProvider);
    }

    @Override // com.sunia.HTREnginev2.mgj
    public /* bridge */ /* synthetic */ void clearAdditionalAnimatorProvider() {
        super.clearAdditionalAnimatorProvider();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.material.transition.ScaleProvider, com.google.android.material.transition.VisibilityAnimatorProvider] */
    @Override // com.sunia.HTREnginev2.mgj
    @NonNull
    public /* bridge */ /* synthetic */ ScaleProvider getPrimaryAnimatorProvider() {
        return super.getPrimaryAnimatorProvider();
    }

    @Override // com.sunia.HTREnginev2.mgj
    @Nullable
    public /* bridge */ /* synthetic */ VisibilityAnimatorProvider getSecondaryAnimatorProvider() {
        return super.getSecondaryAnimatorProvider();
    }

    public boolean isGrowing() {
        return this.f33147Y0;
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
