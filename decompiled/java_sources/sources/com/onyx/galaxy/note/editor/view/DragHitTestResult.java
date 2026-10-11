package com.onyx.galaxy.note.editor.view;

import android.graphics.Rect;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000b¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/DragHitTestResult;", "", "", "a", "I", "getPosition", "()I", "position", "b", "getViewIndex", "viewIndex", "Landroid/graphics/Rect;", "c", "Landroid/graphics/Rect;", "getHitRect", "()Landroid/graphics/Rect;", "hitRect", Constants.CONSTRUCTOR_NAME, "(IILandroid/graphics/Rect;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DragHitTestResult {

    /* renamed from: a, reason: from kotlin metadata */
    public final int position;

    /* renamed from: b, reason: from kotlin metadata */
    public final int viewIndex;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Rect hitRect;

    public DragHitTestResult() {
        this(0, 0, null, 7, null);
    }

    @NotNull
    public final Rect getHitRect() {
        return this.hitRect;
    }

    public final int getPosition() {
        return this.position;
    }

    public final int getViewIndex() {
        return this.viewIndex;
    }

    public DragHitTestResult(int i, int i2, @NotNull Rect hitRect) {
        Intrinsics.checkNotNullParameter(hitRect, "hitRect");
        this.position = i;
        this.viewIndex = i2;
        this.hitRect = hitRect;
    }

    public /* synthetic */ DragHitTestResult(int i, int i2, Rect rect, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? -1 : i, (i3 & 2) != 0 ? 0 : i2, (i3 & 4) != 0 ? new Rect() : rect);
    }
}
