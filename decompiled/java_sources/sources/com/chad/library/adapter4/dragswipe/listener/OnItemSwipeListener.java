package com.chad.library.adapter4.dragswipe.listener;

import android.graphics.Canvas;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes4.dex */
public interface OnItemSwipeListener {
    void onItemSwipeEnd(@NonNull RecyclerView.ViewHolder viewHolder, int i);

    void onItemSwipeMoving(@NonNull Canvas canvas, @NonNull RecyclerView.ViewHolder viewHolder, float f, float f2, boolean z);

    void onItemSwipeStart(@Nullable RecyclerView.ViewHolder viewHolder, int i);

    void onItemSwiped(@NonNull RecyclerView.ViewHolder viewHolder, int i, int i2);
}
