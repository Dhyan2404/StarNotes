package com.onyx.galaxy.note.editor.event;

import android.graphics.Rect;
import com.onyx.galaxy.note.editor.data.SlideBarType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\u0006\u0010\u0012\u001a\u00020\r¢\u0006\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/event/SideBarAreaEvent;", "", "", "a", Constants.HASIDCALL_INDEX_SIG, "isShow", Constants.BOOLEAN_VALUE_SIG, "Landroid/graphics/Rect;", "b", "Landroid/graphics/Rect;", "getAreaRect", "()Landroid/graphics/Rect;", "areaRect", "Lcom/onyx/galaxy/note/editor/data/SlideBarType;", "c", "Lcom/onyx/galaxy/note/editor/data/SlideBarType;", "getType", "()Lcom/onyx/galaxy/note/editor/data/SlideBarType;", "type", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ZLandroid/graphics/Rect;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SideBarAreaEvent {

    /* renamed from: a, reason: from kotlin metadata */
    public final boolean isShow;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Rect areaRect;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final SlideBarType type;

    public SideBarAreaEvent(boolean z, @NotNull Rect areaRect, @NotNull SlideBarType type) {
        Intrinsics.checkNotNullParameter(areaRect, "areaRect");
        Intrinsics.checkNotNullParameter(type, "type");
        this.isShow = z;
        this.areaRect = areaRect;
        this.type = type;
    }

    @NotNull
    public final Rect getAreaRect() {
        return this.areaRect;
    }

    @NotNull
    public final SlideBarType getType() {
        return this.type;
    }

    /* renamed from: isShow, reason: from getter */
    public final boolean getIsShow() {
        return this.isShow;
    }
}
