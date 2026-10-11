package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import androidx.annotation.AnimatorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import java.util.List;

/* renamed from: com.google.android.material.floatingactionbutton.c */
/* loaded from: classes6.dex */
public interface InterfaceC5285c {
    /* renamed from: a */
    MotionSpec mo24101a();

    @Nullable
    /* renamed from: b */
    MotionSpec mo24102b();

    /* renamed from: c */
    boolean mo24076c();

    /* renamed from: d */
    void mo24103d(@NonNull Animator.AnimatorListener animatorListener);

    @AnimatorRes
    /* renamed from: e */
    int mo24077e();

    /* renamed from: f */
    void mo24078f(@Nullable ExtendedFloatingActionButton.OnChangedCallback onChangedCallback);

    /* renamed from: g */
    void mo24081g();

    List<Animator.AnimatorListener> getListeners();

    /* renamed from: h */
    AnimatorSet mo24079h();

    /* renamed from: i */
    void mo24080i();

    /* renamed from: j */
    void mo24104j(@NonNull Animator.AnimatorListener animatorListener);

    /* renamed from: k */
    void mo24105k(@Nullable MotionSpec motionSpec);

    void onAnimationEnd();

    void onAnimationStart(Animator animator);
}
