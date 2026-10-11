package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.GravityCompat;
import com.google.android.material.C5139R;
import com.sunia.HTREnginev2.lgj;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@RequiresApi(21)
/* loaded from: classes6.dex */
public final class MaterialSharedAxis extends lgj<VisibilityAnimatorProvider> {

    /* renamed from: X */
    public static final int f33316X = 0;

    /* renamed from: Y */
    public static final int f33317Y = 1;

    /* renamed from: Z */
    public static final int f33318Z = 2;

    /* renamed from: j */
    @AttrRes
    public static final int f33319j = C5139R.attr.motionDurationLong1;

    /* renamed from: k */
    @AttrRes
    public static final int f33320k = C5139R.attr.motionEasingEmphasizedInterpolator;

    /* renamed from: h */
    public final int f33321h;

    /* renamed from: i */
    public final boolean f33322i;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface Axis {
    }

    public MaterialSharedAxis(int i, boolean z) {
        super(m25638g(i, z), m25639h());
        this.f33321h = i;
        this.f33322i = z;
    }

    /* renamed from: g */
    public static VisibilityAnimatorProvider m25638g(int i, boolean z) {
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

    /* renamed from: h */
    public static VisibilityAnimatorProvider m25639h() {
        return new FadeThroughProvider();
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
        return f33319j;
    }

    @Override // com.sunia.HTREnginev2.lgj
    @AttrRes
    /* renamed from: e */
    public int mo25635e(boolean z) {
        return f33320k;
    }

    public int getAxis() {
        return this.f33321h;
    }

    @Override // com.sunia.HTREnginev2.lgj
    @NonNull
    public /* bridge */ /* synthetic */ VisibilityAnimatorProvider getPrimaryAnimatorProvider() {
        return super.getPrimaryAnimatorProvider();
    }

    @Override // com.sunia.HTREnginev2.lgj
    @Nullable
    public /* bridge */ /* synthetic */ VisibilityAnimatorProvider getSecondaryAnimatorProvider() {
        return super.getSecondaryAnimatorProvider();
    }

    public boolean isForward() {
        return this.f33322i;
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
