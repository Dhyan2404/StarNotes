package com.sunia.HTREnginev2;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.animation.AnimationUtils;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes6.dex */
public class jmi extends WindowInsetsAnimationCompat.Callback {

    /* renamed from: c */
    public final View f74474c;

    /* renamed from: d */
    public int f74475d;

    /* renamed from: e */
    public int f74476e;

    /* renamed from: f */
    public final int[] f74477f;

    public jmi(View view) {
        super(0);
        this.f74477f = new int[2];
        this.f74474c = view;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public void onEnd(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.f74474c.setTranslationY(0.0f);
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public void onPrepare(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.f74474c.getLocationOnScreen(this.f74477f);
        this.f74475d = this.f74477f[1];
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    @NonNull
    public WindowInsetsCompat onProgress(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull List<WindowInsetsAnimationCompat> list) {
        Iterator<WindowInsetsAnimationCompat> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            if ((it2.next().getTypeMask() & WindowInsetsCompat.Type.ime()) != 0) {
                this.f74474c.setTranslationY(AnimationUtils.lerp(this.f74476e, 0, r0.getInterpolatedFraction()));
                break;
            }
        }
        return windowInsetsCompat;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    @NonNull
    public WindowInsetsAnimationCompat.BoundsCompat onStart(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat, @NonNull WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
        this.f74474c.getLocationOnScreen(this.f74477f);
        int i = this.f74475d - this.f74477f[1];
        this.f74476e = i;
        this.f74474c.setTranslationY(i);
        return boundsCompat;
    }
}
