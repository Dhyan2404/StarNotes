package com.onyx.galaxy.note.editor.event;

import android.graphics.Rect;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0016\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b)\u0010*J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\t\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0012\u0010\f\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0004\b\f\u0010\rJL\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000bHÆ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\t\u0010\u0016\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\u0013\u0010\u0019\u001a\u00020\u00022\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u0004R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010\u0007R\u0019\u0010\u0010\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0019\u0010\u0011\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b$\u0010!\u001a\u0004\b%\u0010#R\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u000b8\u0006¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010\r¨\u0006+"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;", "", "", "component1", "()Ljava/lang/Boolean;", "", "component2", "()Ljava/lang/Integer;", "Landroid/graphics/Rect;", "component3", "component4", "", "component5", "()Ljava/lang/Float;", "showForAWhile", "toolBarWidth", "rightSideBarRect", "leftSideBarRect", "containerTranslationX", "copy", "(Ljava/lang/Boolean;Ljava/lang/Integer;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Float;)Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "Ljava/lang/Boolean;", "getShowForAWhile", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.INTEGER_SIG, "getToolBarWidth", "c", "Landroid/graphics/Rect;", "getRightSideBarRect", "()Landroid/graphics/Rect;", "d", "getLeftSideBarRect", "e", "Ljava/lang/Float;", "getContainerTranslationX", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/Boolean;Ljava/lang/Integer;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Float;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final /* data */ class ChangeScrollerConfigEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @Nullable
    public final Boolean showForAWhile;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public final Integer toolBarWidth;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @Nullable
    public final Rect rightSideBarRect;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @Nullable
    public final Rect leftSideBarRect;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    @Nullable
    public final Float containerTranslationX;

    public ChangeScrollerConfigEvent() {
        this(null, null, null, null, null, 31, null);
    }

    public static /* synthetic */ ChangeScrollerConfigEvent copy$default(ChangeScrollerConfigEvent changeScrollerConfigEvent, Boolean bool, Integer num, Rect rect, Rect rect2, Float f, int i, Object obj) {
        if ((i & 1) != 0) {
            bool = changeScrollerConfigEvent.showForAWhile;
        }
        if ((i & 2) != 0) {
            num = changeScrollerConfigEvent.toolBarWidth;
        }
        Integer num2 = num;
        if ((i & 4) != 0) {
            rect = changeScrollerConfigEvent.rightSideBarRect;
        }
        Rect rect3 = rect;
        if ((i & 8) != 0) {
            rect2 = changeScrollerConfigEvent.leftSideBarRect;
        }
        Rect rect4 = rect2;
        if ((i & 16) != 0) {
            f = changeScrollerConfigEvent.containerTranslationX;
        }
        return changeScrollerConfigEvent.copy(bool, num2, rect3, rect4, f);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final Boolean getShowForAWhile() {
        return this.showForAWhile;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final Integer getToolBarWidth() {
        return this.toolBarWidth;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final Rect getRightSideBarRect() {
        return this.rightSideBarRect;
    }

    @Nullable
    /* renamed from: component4, reason: from getter */
    public final Rect getLeftSideBarRect() {
        return this.leftSideBarRect;
    }

    @Nullable
    /* renamed from: component5, reason: from getter */
    public final Float getContainerTranslationX() {
        return this.containerTranslationX;
    }

    @NotNull
    public final ChangeScrollerConfigEvent copy(@Nullable Boolean showForAWhile, @Nullable Integer toolBarWidth, @Nullable Rect rightSideBarRect, @Nullable Rect leftSideBarRect, @Nullable Float containerTranslationX) {
        return new ChangeScrollerConfigEvent(showForAWhile, toolBarWidth, rightSideBarRect, leftSideBarRect, containerTranslationX);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ChangeScrollerConfigEvent)) {
            return false;
        }
        ChangeScrollerConfigEvent changeScrollerConfigEvent = (ChangeScrollerConfigEvent) other;
        return Intrinsics.areEqual(this.showForAWhile, changeScrollerConfigEvent.showForAWhile) && Intrinsics.areEqual(this.toolBarWidth, changeScrollerConfigEvent.toolBarWidth) && Intrinsics.areEqual(this.rightSideBarRect, changeScrollerConfigEvent.rightSideBarRect) && Intrinsics.areEqual(this.leftSideBarRect, changeScrollerConfigEvent.leftSideBarRect) && Intrinsics.areEqual((Object) this.containerTranslationX, (Object) changeScrollerConfigEvent.containerTranslationX);
    }

    @Nullable
    public final Float getContainerTranslationX() {
        return this.containerTranslationX;
    }

    @Nullable
    public final Rect getLeftSideBarRect() {
        return this.leftSideBarRect;
    }

    @Nullable
    public final Rect getRightSideBarRect() {
        return this.rightSideBarRect;
    }

    @Nullable
    public final Boolean getShowForAWhile() {
        return this.showForAWhile;
    }

    @Nullable
    public final Integer getToolBarWidth() {
        return this.toolBarWidth;
    }

    public int hashCode() {
        Boolean bool = this.showForAWhile;
        int hashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Integer num = this.toolBarWidth;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        Rect rect = this.rightSideBarRect;
        int hashCode3 = (hashCode2 + (rect == null ? 0 : rect.hashCode())) * 31;
        Rect rect2 = this.leftSideBarRect;
        int hashCode4 = (hashCode3 + (rect2 == null ? 0 : rect2.hashCode())) * 31;
        Float f = this.containerTranslationX;
        return hashCode4 + (f != null ? f.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "ChangeScrollerConfigEvent(showForAWhile=" + this.showForAWhile + ", toolBarWidth=" + this.toolBarWidth + ", rightSideBarRect=" + this.rightSideBarRect + ", leftSideBarRect=" + this.leftSideBarRect + ", containerTranslationX=" + this.containerTranslationX + ')';
    }

    public ChangeScrollerConfigEvent(@Nullable Boolean bool, @Nullable Integer num, @Nullable Rect rect, @Nullable Rect rect2, @Nullable Float f) {
        this.showForAWhile = bool;
        this.toolBarWidth = num;
        this.rightSideBarRect = rect;
        this.leftSideBarRect = rect2;
        this.containerTranslationX = f;
    }

    public /* synthetic */ ChangeScrollerConfigEvent(Boolean bool, Integer num, Rect rect, Rect rect2, Float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : bool, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : rect, (i & 8) != 0 ? null : rect2, (i & 16) != 0 ? null : f);
    }
}
