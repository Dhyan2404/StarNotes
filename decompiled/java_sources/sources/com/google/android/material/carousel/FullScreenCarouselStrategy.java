package com.google.android.material.carousel;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.sunia.HTREnginev2.C14756ze;
import com.sunia.HTREnginev2.tnd;

/* loaded from: classes6.dex */
public class FullScreenCarouselStrategy extends CarouselStrategy {
    @Override // com.google.android.material.carousel.CarouselStrategy
    @NonNull
    /* renamed from: e */
    public C5201b mo23348e(@NonNull tnd tndVar, @NonNull View view) {
        float containerHeight;
        int i;
        int i2;
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (tndVar.isHorizontal()) {
            containerHeight = tndVar.getContainerWidth();
            i = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            i2 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        } else {
            containerHeight = tndVar.getContainerHeight();
            i = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            i2 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        float f = i + i2;
        return C5200a.m23364e(view.getContext(), f, containerHeight, new C14756ze(0, 0.0f, 0.0f, 0.0f, 0, 0.0f, 0, Math.min(containerHeight + f, containerHeight), 1, containerHeight));
    }
}
