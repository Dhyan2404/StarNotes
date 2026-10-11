package com.onyx.galaxy.note.common.view;

import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\bf\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\"\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\rH&¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/IDragListener;", "", "onClearView", "", "fromHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "releaseTarget", "onDragStart", "onMove", "targetHolder", "onSwipe", "viewHolder", "direction", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public interface IDragListener {
    void onClearView(@NotNull RecyclerView.ViewHolder fromHolder, @Nullable RecyclerView.ViewHolder releaseTarget);

    void onDragStart(@NotNull RecyclerView.ViewHolder fromHolder);

    void onMove(@NotNull RecyclerView.ViewHolder fromHolder, @NotNull RecyclerView.ViewHolder targetHolder, @Nullable RecyclerView.ViewHolder releaseTarget);

    void onSwipe(@NotNull RecyclerView.ViewHolder viewHolder, int direction);
}
