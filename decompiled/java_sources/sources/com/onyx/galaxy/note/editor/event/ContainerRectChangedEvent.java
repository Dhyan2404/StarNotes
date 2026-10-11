package com.onyx.galaxy.note.editor.event;

import android.graphics.Rect;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/event/ContainerRectChangedEvent;", "", "Landroid/graphics/Rect;", "a", "Landroid/graphics/Rect;", "getContainerRect", "()Landroid/graphics/Rect;", "containerRect", Constants.CONSTRUCTOR_NAME, "(Landroid/graphics/Rect;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ContainerRectChangedEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Rect containerRect;

    public ContainerRectChangedEvent(@NotNull Rect containerRect) {
        Intrinsics.checkNotNullParameter(containerRect, "containerRect");
        this.containerRect = containerRect;
    }

    @NotNull
    public final Rect getContainerRect() {
        return this.containerRect;
    }
}
