package com.sunia.HTREnginev2;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.NonNull;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.tabs.C5419a;
import com.google.android.material.tabs.TabLayout;

/* loaded from: classes6.dex */
public class w8g extends C5419a {

    /* renamed from: b */
    public static final float f88332b = 0.5f;

    @Override // com.google.android.material.tabs.C5419a
    /* renamed from: d */
    public void mo25171d(TabLayout tabLayout, View view, View view2, float f, @NonNull Drawable drawable) {
        if (f >= 0.5f) {
            view = view2;
        }
        RectF m25168a = C5419a.m25168a(tabLayout, view);
        float lerp = f < 0.5f ? AnimationUtils.lerp(1.0f, 0.0f, 0.0f, 0.5f, f) : AnimationUtils.lerp(0.0f, 1.0f, 0.5f, 1.0f, f);
        drawable.setBounds((int) m25168a.left, drawable.getBounds().top, (int) m25168a.right, drawable.getBounds().bottom);
        drawable.setAlpha((int) (lerp * 255.0f));
    }
}
