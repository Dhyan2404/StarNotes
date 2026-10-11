package com.chad.library.adapter4.dragswipe.listener;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes4.dex */
public interface OnItemDragListener {
    void onItemDragEnd(@NonNull RecyclerView.ViewHolder viewHolder, int i);

    void onItemDragMoving(@NonNull RecyclerView.ViewHolder viewHolder, int i, @NonNull RecyclerView.ViewHolder viewHolder2, int i2);

    void onItemDragStart(@Nullable RecyclerView.ViewHolder viewHolder, int i);
}
