package com.onyx.android.sdk.matisse.internal.p030ui.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes7.dex */
public class MediaGridInset extends RecyclerView.ItemDecoration {

    /* renamed from: a */
    public int f42824a;

    /* renamed from: b */
    public int f42825b;

    /* renamed from: c */
    public boolean f42826c;

    public MediaGridInset(int i, int i2, boolean z) {
        this.f42824a = i;
        this.f42825b = i2;
        this.f42826c = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        int i = this.f42824a;
        int i2 = childAdapterPosition % i;
        if (this.f42826c) {
            int i3 = this.f42825b;
            rect.left = i3 - ((i2 * i3) / i);
            rect.right = ((i2 + 1) * i3) / i;
            if (childAdapterPosition < i) {
                rect.top = i3;
            }
            rect.bottom = i3;
            return;
        }
        int i4 = this.f42825b;
        rect.left = (i2 * i4) / i;
        rect.right = i4 - (((i2 + 1) * i4) / i);
        if (childAdapterPosition >= i) {
            rect.top = i4;
        }
    }
}
