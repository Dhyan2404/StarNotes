package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.TransitionValues;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.sunia.HTREnginev2.mgj;

/* loaded from: classes6.dex */
public final class MaterialFade extends mgj<FadeProvider> {

    /* renamed from: Y0 */
    public static final float f33148Y0 = 0.8f;

    /* renamed from: Z0 */
    public static final float f33149Z0 = 0.3f;

    /* renamed from: a1 */
    @AttrRes
    public static final int f33150a1 = C5139R.attr.motionDurationMedium4;

    /* renamed from: b1 */
    @AttrRes
    public static final int f33151b1 = C5139R.attr.motionDurationShort3;

    /* renamed from: c1 */
    @AttrRes
    public static final int f33152c1 = C5139R.attr.motionEasingEmphasizedDecelerateInterpolator;

    /* renamed from: d1 */
    @AttrRes
    public static final int f33153d1 = C5139R.attr.motionEasingEmphasizedAccelerateInterpolator;

    public MaterialFade() {
        super(m25563T(), m25564U());
    }

    /* renamed from: T */
    public static FadeProvider m25563T() {
        FadeProvider fadeProvider = new FadeProvider();
        fadeProvider.setIncomingEndThreshold(0.3f);
        return fadeProvider;
    }

    /* renamed from: U */
    public static VisibilityAnimatorProvider m25564U() {
        ScaleProvider scaleProvider = new ScaleProvider();
        scaleProvider.setScaleOnDisappear(false);
        scaleProvider.setIncomingStartScale(0.8f);
        return scaleProvider;
    }

    @Override // com.sunia.HTREnginev2.mgj
    @NonNull
    /* renamed from: P */
    public TimeInterpolator mo25565P(boolean z) {
        return AnimationUtils.LINEAR_INTERPOLATOR;
    }

    @Override // com.sunia.HTREnginev2.mgj
    @AttrRes
    /* renamed from: Q */
    public int mo25566Q(boolean z) {
        return z ? f33150a1 : f33151b1;
    }

    @Override // com.sunia.HTREnginev2.mgj
    @AttrRes
    /* renamed from: R */
    public int mo25567R(boolean z) {
        return z ? f33152c1 : f33153d1;
    }

    @Override // com.sunia.HTREnginev2.mgj
    public /* bridge */ /* synthetic */ void addAdditionalAnimatorProvider(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.addAdditionalAnimatorProvider(visibilityAnimatorProvider);
    }

    @Override // com.sunia.HTREnginev2.mgj
    public /* bridge */ /* synthetic */ void clearAdditionalAnimatorProvider() {
        super.clearAdditionalAnimatorProvider();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.material.transition.VisibilityAnimatorProvider, com.google.android.material.transition.FadeProvider] */
    @Override // com.sunia.HTREnginev2.mgj
    @NonNull
    public /* bridge */ /* synthetic */ FadeProvider getPrimaryAnimatorProvider() {
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
