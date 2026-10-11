package com.sunia.HTREnginev2;

import android.animation.Animator;
import androidx.annotation.Nullable;

/* renamed from: com.sunia.HTREnginev2.eb */
/* loaded from: classes6.dex */
public class C13666eb {

    /* renamed from: a */
    @Nullable
    public Animator f68755a;

    /* renamed from: a */
    public void m53945a() {
        Animator animator = this.f68755a;
        if (animator != null) {
            animator.cancel();
        }
    }

    /* renamed from: b */
    public void m53946b() {
        this.f68755a = null;
    }

    /* renamed from: c */
    public void m53947c(Animator animator) {
        m53945a();
        this.f68755a = animator;
    }
}
