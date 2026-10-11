package com.google.android.material.carousel;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.sunia.HTREnginev2.C14756ze;
import com.sunia.HTREnginev2.tnd;

/* loaded from: classes6.dex */
public final class MultiBrowseCarouselStrategy extends CarouselStrategy {

    /* renamed from: d */
    public static final int[] f30664d = {1};

    /* renamed from: e */
    public static final int[] f30665e = {1, 0};

    /* renamed from: c */
    public int f30666c = 0;

    @Override // com.google.android.material.carousel.CarouselStrategy
    @NonNull
    /* renamed from: e */
    public C5201b mo23348e(@NonNull tnd tndVar, @NonNull View view) {
        float containerHeight = tndVar.getContainerHeight();
        if (tndVar.isHorizontal()) {
            containerHeight = tndVar.getContainerWidth();
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        float f = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        float measuredHeight = view.getMeasuredHeight();
        if (tndVar.isHorizontal()) {
            f = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            measuredHeight = view.getMeasuredWidth();
        }
        float f2 = f;
        float smallItemSizeMin = getSmallItemSizeMin() + f2;
        float max = Math.max(getSmallItemSizeMax() + f2, smallItemSizeMin);
        float min = Math.min(measuredHeight + f2, containerHeight);
        float clamp = MathUtils.clamp((measuredHeight / 3.0f) + f2, smallItemSizeMin + f2, max + f2);
        float f3 = (min + clamp) / 2.0f;
        int[] iArr = f30664d;
        if (containerHeight < 2.0f * smallItemSizeMin) {
            iArr = new int[]{0};
        }
        int[] iArr2 = f30665e;
        if (tndVar.getCarouselAlignment() == 1) {
            iArr = CarouselStrategy.m23344a(iArr);
            iArr2 = CarouselStrategy.m23344a(iArr2);
        }
        int[] iArr3 = iArr;
        int[] iArr4 = iArr2;
        int max2 = (int) Math.max(1.0d, Math.floor(((containerHeight - (C5200a.m23368i(iArr4) * f3)) - (C5200a.m23368i(iArr3) * max)) / min));
        int ceil = (int) Math.ceil(containerHeight / min);
        int i = (ceil - max2) + 1;
        int[] iArr5 = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr5[i2] = ceil - i2;
        }
        C14756ze m58660c = C14756ze.m58660c(containerHeight, clamp, smallItemSizeMin, max, iArr3, f3, iArr4, min, iArr5);
        this.f30666c = m58660c.m58664e();
        if (m23356g(m58660c, tndVar.getItemCount())) {
            m58660c = C14756ze.m58660c(containerHeight, clamp, smallItemSizeMin, max, new int[]{m58660c.f91647c}, f3, new int[]{m58660c.f91648d}, min, new int[]{m58660c.f91651g});
        }
        return C5200a.m23363d(view.getContext(), f2, containerHeight, m58660c, tndVar.getCarouselAlignment());
    }

    @Override // com.google.android.material.carousel.CarouselStrategy
    /* renamed from: f */
    public boolean mo23349f(tnd tndVar, int i) {
        return (i < this.f30666c && tndVar.getItemCount() >= this.f30666c) || (i >= this.f30666c && tndVar.getItemCount() < this.f30666c);
    }

    /* renamed from: g */
    public boolean m23356g(C14756ze c14756ze, int i) {
        int m58664e = c14756ze.m58664e() - i;
        boolean z = m58664e > 0 && (c14756ze.f91647c > 0 || c14756ze.f91648d > 1);
        while (m58664e > 0) {
            int i2 = c14756ze.f91647c;
            if (i2 > 0) {
                c14756ze.f91647c = i2 - 1;
            } else {
                int i3 = c14756ze.f91648d;
                if (i3 > 1) {
                    c14756ze.f91648d = i3 - 1;
                }
            }
            m58664e--;
        }
        return z;
    }
}
