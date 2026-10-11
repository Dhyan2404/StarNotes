package com.sunia.HTREnginev2;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.tabs.C5419a;
import com.google.android.material.tabs.TabLayout;

/* loaded from: classes6.dex */
public class qmf extends C5419a {
    /* renamed from: e */
    public static float m56725e(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        return (float) (1.0d - Math.cos((f * 3.141592653589793d) / 2.0d));
    }

    /* renamed from: f */
    public static float m56726f(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        return (float) Math.sin((f * 3.141592653589793d) / 2.0d);
    }

    @Override // com.google.android.material.tabs.C5419a
    /* renamed from: d */
    public void mo25171d(TabLayout tabLayout, View view, View view2, float f, @NonNull Drawable drawable) {
        float m56726f;
        float m56725e;
        RectF m25168a = C5419a.m25168a(tabLayout, view);
        RectF m25168a2 = C5419a.m25168a(tabLayout, view2);
        if (m25168a.left < m25168a2.left) {
            m56726f = m56725e(f);
            m56725e = m56726f(f);
        } else {
            m56726f = m56726f(f);
            m56725e = m56725e(f);
        }
        drawable.setBounds(AnimationUtils.lerp((int) m25168a.left, (int) m25168a2.left, m56726f), drawable.getBounds().top, AnimationUtils.lerp((int) m25168a.right, (int) m25168a2.right, m56725e), drawable.getBounds().bottom);
    }
}
