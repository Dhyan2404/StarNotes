package com.google.android.material.transition;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.GravityCompat;
import androidx.transition.TransitionValues;
import com.google.android.material.C5139R;
import com.sunia.HTREnginev2.mgj;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes6.dex */
public final class MaterialSharedAxis extends mgj<VisibilityAnimatorProvider> {

    /* renamed from: X */
    public static final int f33157X = 0;

    /* renamed from: Y */
    public static final int f33158Y = 1;

    /* renamed from: Z */
    public static final int f33159Z = 2;

    /* renamed from: a1 */
    @AttrRes
    public static final int f33160a1 = C5139R.attr.motionDurationLong1;

    /* renamed from: b1 */
    @AttrRes
    public static final int f33161b1 = C5139R.attr.motionEasingEmphasizedInterpolator;

    /* renamed from: Y0 */
    public final int f33162Y0;

    /* renamed from: Z0 */
    public final boolean f33163Z0;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface Axis {
    }

    public MaterialSharedAxis(int i, boolean z) {
        super(m25570T(i, z), m25571U());
        this.f33162Y0 = i;
        this.f33163Z0 = z;
    }

    /* renamed from: T */
    public static VisibilityAnimatorProvider m25570T(int i, boolean z) {
        if (i == 0) {
            return new SlideDistanceProvider(z ? 8388613 : GravityCompat.START);
        }
        if (i == 1) {
            return new SlideDistanceProvider(z ? 80 : 48);
        }
        if (i == 2) {
            return new ScaleProvider(z);
        }
        throw new IllegalArgumentException("Invalid axis: " + i);
    }

    /* renamed from: U */
    public static VisibilityAnimatorProvider m25571U() {
        return new FadeThroughProvider();
    }

    @Override // com.sunia.HTREnginev2.mgj
    @AttrRes
    /* renamed from: Q */
    public int mo25566Q(boolean z) {
        return f33160a1;
    }

    @Override // com.sunia.HTREnginev2.mgj
    @AttrRes
    /* renamed from: R */
    public int mo25567R(boolean z) {
        return f33161b1;
    }

    @Override // com.sunia.HTREnginev2.mgj
    public /* bridge */ /* synthetic */ void addAdditionalAnimatorProvider(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.addAdditionalAnimatorProvider(visibilityAnimatorProvider);
    }

    @Override // com.sunia.HTREnginev2.mgj
    public /* bridge */ /* synthetic */ void clearAdditionalAnimatorProvider() {
        super.clearAdditionalAnimatorProvider();
    }

    public int getAxis() {
        return this.f33162Y0;
    }

    @Override // com.sunia.HTREnginev2.mgj
    @NonNull
    public /* bridge */ /* synthetic */ VisibilityAnimatorProvider getPrimaryAnimatorProvider() {
        return super.getPrimaryAnimatorProvider();
    }

    @Override // com.sunia.HTREnginev2.mgj
    @Nullable
    public /* bridge */ /* synthetic */ VisibilityAnimatorProvider getSecondaryAnimatorProvider() {
        return super.getSecondaryAnimatorProvider();
    }

    public boolean isForward() {
        return this.f33163Z0;
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
