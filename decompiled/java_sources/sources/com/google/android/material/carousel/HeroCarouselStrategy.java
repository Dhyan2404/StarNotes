package com.google.android.material.carousel;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.sunia.HTREnginev2.C14756ze;
import com.sunia.HTREnginev2.tnd;

/* loaded from: classes6.dex */
public class HeroCarouselStrategy extends CarouselStrategy {

    /* renamed from: d */
    public static final int[] f30654d = {1};

    /* renamed from: e */
    public static final int[] f30655e = {0, 1};

    /* renamed from: c */
    public int f30656c = 0;

    @Override // com.google.android.material.carousel.CarouselStrategy
    @NonNull
    /* renamed from: e */
    public C5201b mo23348e(@NonNull tnd tndVar, @NonNull View view) {
        int i;
        int containerHeight = tndVar.getContainerHeight();
        if (tndVar.isHorizontal()) {
            containerHeight = tndVar.getContainerWidth();
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        float f = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        float measuredWidth = view.getMeasuredWidth() * 2;
        if (tndVar.isHorizontal()) {
            f = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            measuredWidth = view.getMeasuredHeight() * 2;
        }
        float smallItemSizeMin = getSmallItemSizeMin() + f;
        float max = Math.max(getSmallItemSizeMax() + f, smallItemSizeMin);
        float f2 = containerHeight;
        float min = Math.min(measuredWidth + f, f2);
        float clamp = MathUtils.clamp((measuredWidth / 3.0f) + f, smallItemSizeMin + f, max + f);
        float f3 = (min + clamp) / 2.0f;
        int[] iArr = f2 < 2.0f * smallItemSizeMin ? new int[]{0} : f30654d;
        int max2 = (int) Math.max(1.0d, Math.floor((f2 - (C5200a.m23368i(r4) * max)) / min));
        int ceil = (((int) Math.ceil(f2 / min)) - max2) + 1;
        int[] iArr2 = new int[ceil];
        for (int i2 = 0; i2 < ceil; i2++) {
            iArr2[i2] = max2 + i2;
        }
        int i3 = tndVar.getCarouselAlignment() == 1 ? 1 : 0;
        C14756ze m58660c = C14756ze.m58660c(f2, clamp, smallItemSizeMin, max, i3 != 0 ? CarouselStrategy.m23344a(iArr) : iArr, f3, i3 != 0 ? CarouselStrategy.m23344a(f30655e) : f30655e, min, iArr2);
        this.f30656c = m58660c.m58664e();
        if (m58660c.m58664e() > tndVar.getItemCount()) {
            m58660c = C14756ze.m58660c(f2, clamp, smallItemSizeMin, max, iArr, f3, f30655e, min, iArr2);
            i = 0;
        } else {
            i = i3;
        }
        return C5200a.m23363d(view.getContext(), f, f2, m58660c, i);
    }

    @Override // com.google.android.material.carousel.CarouselStrategy
    /* renamed from: f */
    public boolean mo23349f(@NonNull tnd tndVar, int i) {
        if (tndVar.getCarouselAlignment() == 1) {
            if (i < this.f30656c && tndVar.getItemCount() >= this.f30656c) {
                return true;
            }
            if (i >= this.f30656c && tndVar.getItemCount() < this.f30656c) {
                return true;
            }
        }
        return false;
    }
}
