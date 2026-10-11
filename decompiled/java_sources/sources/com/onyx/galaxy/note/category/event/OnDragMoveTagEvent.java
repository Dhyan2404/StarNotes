package com.onyx.galaxy.note.category.event;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u001a\u0010\u001bJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J'\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001J\t\u0010\u000b\u001a\u00020\u0002HÖ\u0001J\t\u0010\f\u001a\u00020\u0005HÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0011\u001a\u0004\b\u0015\u0010\u0013R\u0017\u0010\t\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/event/OnDragMoveTagEvent;", "", "", "component1", "component2", "", "component3", "originTagId", "targetTagId", "dragState", "copy", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getOriginTagId", "()Ljava/lang/String;", "b", "getTargetTagId", "c", "I", "getDragState", "()I", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final /* data */ class OnDragMoveTagEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String originTagId;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final String targetTagId;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final int dragState;

    public OnDragMoveTagEvent(@NotNull String originTagId, @NotNull String targetTagId, int i) {
        Intrinsics.checkNotNullParameter(originTagId, "originTagId");
        Intrinsics.checkNotNullParameter(targetTagId, "targetTagId");
        this.originTagId = originTagId;
        this.targetTagId = targetTagId;
        this.dragState = i;
    }

    public static /* synthetic */ OnDragMoveTagEvent copy$default(OnDragMoveTagEvent onDragMoveTagEvent, String str, String str2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = onDragMoveTagEvent.originTagId;
        }
        if ((i2 & 2) != 0) {
            str2 = onDragMoveTagEvent.targetTagId;
        }
        if ((i2 & 4) != 0) {
            i = onDragMoveTagEvent.dragState;
        }
        return onDragMoveTagEvent.copy(str, str2, i);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getOriginTagId() {
        return this.originTagId;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getTargetTagId() {
        return this.targetTagId;
    }

    /* renamed from: component3, reason: from getter */
    public final int getDragState() {
        return this.dragState;
    }

    @NotNull
    public final OnDragMoveTagEvent copy(@NotNull String originTagId, @NotNull String targetTagId, int dragState) {
        Intrinsics.checkNotNullParameter(originTagId, "originTagId");
        Intrinsics.checkNotNullParameter(targetTagId, "targetTagId");
        return new OnDragMoveTagEvent(originTagId, targetTagId, dragState);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OnDragMoveTagEvent)) {
            return false;
        }
        OnDragMoveTagEvent onDragMoveTagEvent = (OnDragMoveTagEvent) other;
        return Intrinsics.areEqual(this.originTagId, onDragMoveTagEvent.originTagId) && Intrinsics.areEqual(this.targetTagId, onDragMoveTagEvent.targetTagId) && this.dragState == onDragMoveTagEvent.dragState;
    }

    public final int getDragState() {
        return this.dragState;
    }

    @NotNull
    public final String getOriginTagId() {
        return this.originTagId;
    }

    @NotNull
    public final String getTargetTagId() {
        return this.targetTagId;
    }

    public int hashCode() {
        return (((this.originTagId.hashCode() * 31) + this.targetTagId.hashCode()) * 31) + Integer.hashCode(this.dragState);
    }

    @NotNull
    public String toString() {
        return "OnDragMoveTagEvent(originTagId=" + this.originTagId + ", targetTagId=" + this.targetTagId + ", dragState=" + this.dragState + ')';
    }
}
