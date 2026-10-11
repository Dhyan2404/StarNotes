package com.onyx.galaxy.note.editor.event;

import android.graphics.RectF;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\b\u0012\b\b\u0002\u0010\u0010\u001a\u00020\b\u0012\b\b\u0002\u0010\u0013\u001a\u00020\b¢\u0006\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0010\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\n\u001a\u0004\b\u000f\u0010\fR\u0017\u0010\u0013\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0011\u0010\n\u001a\u0004\b\u0012\u0010\f¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/event/EditorSideBarInfo;", "", "", "a", "F", "getContainerTranslationX", "()F", "containerTranslationX", "Landroid/graphics/RectF;", "b", "Landroid/graphics/RectF;", "getContainerGlobalVisibleRect", "()Landroid/graphics/RectF;", "containerGlobalVisibleRect", "c", "getRightSideBarGlobalVisibleRect", "rightSideBarGlobalVisibleRect", "d", "getLeftSideBarGlobalVisibleRect", "leftSideBarGlobalVisibleRect", Constants.CONSTRUCTOR_NAME, "(FLandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class EditorSideBarInfo {

    /* renamed from: a, reason: from kotlin metadata */
    public final float containerTranslationX;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final RectF containerGlobalVisibleRect;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final RectF rightSideBarGlobalVisibleRect;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final RectF leftSideBarGlobalVisibleRect;

    public EditorSideBarInfo() {
        this(0.0f, null, null, null, 15, null);
    }

    @NotNull
    public final RectF getContainerGlobalVisibleRect() {
        return this.containerGlobalVisibleRect;
    }

    public final float getContainerTranslationX() {
        return this.containerTranslationX;
    }

    @NotNull
    public final RectF getLeftSideBarGlobalVisibleRect() {
        return this.leftSideBarGlobalVisibleRect;
    }

    @NotNull
    public final RectF getRightSideBarGlobalVisibleRect() {
        return this.rightSideBarGlobalVisibleRect;
    }

    public EditorSideBarInfo(float f, @NotNull RectF containerGlobalVisibleRect, @NotNull RectF rightSideBarGlobalVisibleRect, @NotNull RectF leftSideBarGlobalVisibleRect) {
        Intrinsics.checkNotNullParameter(containerGlobalVisibleRect, "containerGlobalVisibleRect");
        Intrinsics.checkNotNullParameter(rightSideBarGlobalVisibleRect, "rightSideBarGlobalVisibleRect");
        Intrinsics.checkNotNullParameter(leftSideBarGlobalVisibleRect, "leftSideBarGlobalVisibleRect");
        this.containerTranslationX = f;
        this.containerGlobalVisibleRect = containerGlobalVisibleRect;
        this.rightSideBarGlobalVisibleRect = rightSideBarGlobalVisibleRect;
        this.leftSideBarGlobalVisibleRect = leftSideBarGlobalVisibleRect;
    }

    public /* synthetic */ EditorSideBarInfo(float f, RectF rectF, RectF rectF2, RectF rectF3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0.0f : f, (i & 2) != 0 ? new RectF() : rectF, (i & 4) != 0 ? new RectF() : rectF2, (i & 8) != 0 ? new RectF() : rectF3);
    }
}
