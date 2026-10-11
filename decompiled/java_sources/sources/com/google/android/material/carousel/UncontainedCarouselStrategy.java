package com.google.android.material.carousel;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.carousel.C5201b;
import com.sunia.HTREnginev2.tnd;

/* loaded from: classes6.dex */
public final class UncontainedCarouselStrategy extends CarouselStrategy {

    /* renamed from: c */
    public static final float f30667c = 0.85f;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public UncontainedCarouselStrategy() {
    }

    @Override // com.google.android.material.carousel.CarouselStrategy
    /* renamed from: d */
    public boolean mo23347d() {
        return false;
    }

    @Override // com.google.android.material.carousel.CarouselStrategy
    @NonNull
    /* renamed from: e */
    public C5201b mo23348e(@NonNull tnd tndVar, @NonNull View view) {
        float f;
        float containerWidth = tndVar.isHorizontal() ? tndVar.getContainerWidth() : tndVar.getContainerHeight();
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        float f2 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        float measuredHeight = view.getMeasuredHeight();
        if (tndVar.isHorizontal()) {
            float f3 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            measuredHeight = view.getMeasuredWidth();
            f = f3;
        } else {
            f = f2;
        }
        float f4 = measuredHeight + f;
        float m23365f = C5200a.m23365f(view.getContext()) + f;
        float m23365f2 = C5200a.m23365f(view.getContext()) + f;
        int max = Math.max(1, (int) Math.floor(containerWidth / f4));
        float f5 = containerWidth - (max * f4);
        if (tndVar.getCarouselAlignment() == 1) {
            float f6 = f5 / 2.0f;
            return m23358h(containerWidth, f, f4, max, Math.max(Math.min(3.0f * f6, f4), getSmallItemSizeMin() + f), m23365f2, f6);
        }
        return m23359i(view.getContext(), f, containerWidth, f4, max, m23357g(m23365f, f4, f5), f5 > 0.0f ? 1 : 0, m23365f2);
    }

    /* renamed from: g */
    public final float m23357g(float f, float f2, float f3) {
        float max = Math.max(1.5f * f3, f);
        float f4 = 0.85f * f2;
        if (max > f4) {
            max = Math.max(f4, f3 * 1.2f);
        }
        return Math.min(f2, max);
    }

    /* renamed from: h */
    public final C5201b m23358h(float f, float f2, float f3, int i, float f4, float f5, float f6) {
        float min = Math.min(f5, f3);
        float m23345b = CarouselStrategy.m23345b(min, f3, f2);
        float m23345b2 = CarouselStrategy.m23345b(f4, f3, f2);
        float f7 = f4 / 2.0f;
        float f8 = (f6 + 0.0f) - f7;
        float f9 = f8 + f7;
        float f10 = min / 2.0f;
        float f11 = (i * f3) + f9;
        C5201b.b m23392h = new C5201b.b(f3, f).m23385a((f8 - f7) - f10, m23345b, min).m23387c(f8, m23345b2, f4, false).m23392h((f3 / 2.0f) + f9, 0.0f, f3, i, true);
        m23392h.m23387c(f7 + f11, m23345b2, f4, false);
        m23392h.m23385a(f11 + f4 + f10, m23345b, min);
        return m23392h.m23393i();
    }

    /* renamed from: i */
    public final C5201b m23359i(Context context, float f, float f2, float f3, int i, float f4, int i2, float f5) {
        float min = Math.min(f5, f3);
        float max = Math.max(min, 0.5f * f4);
        float m23345b = CarouselStrategy.m23345b(max, f3, f);
        float m23345b2 = CarouselStrategy.m23345b(min, f3, f);
        float m23345b3 = CarouselStrategy.m23345b(f4, f3, f);
        float f6 = (i * f3) + 0.0f;
        C5201b.b m23392h = new C5201b.b(f3, f2).m23385a(0.0f - (max / 2.0f), m23345b, max).m23392h(f3 / 2.0f, 0.0f, f3, i, true);
        if (i2 > 0) {
            float f7 = (f4 / 2.0f) + f6;
            f6 += f4;
            m23392h.m23387c(f7, m23345b3, f4, false);
        }
        m23392h.m23385a(f6 + (C5200a.m23365f(context) / 2.0f), m23345b2, min);
        return m23392h.m23393i();
    }
}
