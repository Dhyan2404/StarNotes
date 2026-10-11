package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0014\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\f\u001a\u00020\u0006¢\u0006\u0004\b!\u0010\"J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\t\u0010\b\u001a\u00020\u0006HÆ\u0003J1\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\u0006HÆ\u0001J\t\u0010\u000e\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0010\u001a\u00020\u000fHÖ\u0001J\u0013\u0010\u0012\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0017\u0010\n\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010\f\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001f\u0010\u001c\u001a\u0004\b \u0010\u001e¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/ShowInitInputTextEvent;", "", "", "component1", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "component2", "", "component3", "component4", "textToInsert", "insertPoint", "createNew", "editForAll", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getTextToInsert", "()Ljava/lang/String;", "b", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getInsertPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "c", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getCreateNew", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "d", "getEditForAll", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TouchPoint;ZZ)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ShowInitInputTextEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String textToInsert;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final TouchPoint insertPoint;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final boolean createNew;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    public final boolean editForAll;

    public ShowInitInputTextEvent(@NotNull String textToInsert, @NotNull TouchPoint insertPoint, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(textToInsert, "textToInsert");
        Intrinsics.checkNotNullParameter(insertPoint, "insertPoint");
        this.textToInsert = textToInsert;
        this.insertPoint = insertPoint;
        this.createNew = z;
        this.editForAll = z2;
    }

    public static /* synthetic */ ShowInitInputTextEvent copy$default(ShowInitInputTextEvent showInitInputTextEvent, String str, TouchPoint touchPoint, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = showInitInputTextEvent.textToInsert;
        }
        if ((i & 2) != 0) {
            touchPoint = showInitInputTextEvent.insertPoint;
        }
        if ((i & 4) != 0) {
            z = showInitInputTextEvent.createNew;
        }
        if ((i & 8) != 0) {
            z2 = showInitInputTextEvent.editForAll;
        }
        return showInitInputTextEvent.copy(str, touchPoint, z, z2);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getTextToInsert() {
        return this.textToInsert;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final TouchPoint getInsertPoint() {
        return this.insertPoint;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getCreateNew() {
        return this.createNew;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getEditForAll() {
        return this.editForAll;
    }

    @NotNull
    public final ShowInitInputTextEvent copy(@NotNull String textToInsert, @NotNull TouchPoint insertPoint, boolean createNew, boolean editForAll) {
        Intrinsics.checkNotNullParameter(textToInsert, "textToInsert");
        Intrinsics.checkNotNullParameter(insertPoint, "insertPoint");
        return new ShowInitInputTextEvent(textToInsert, insertPoint, createNew, editForAll);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ShowInitInputTextEvent)) {
            return false;
        }
        ShowInitInputTextEvent showInitInputTextEvent = (ShowInitInputTextEvent) other;
        return Intrinsics.areEqual(this.textToInsert, showInitInputTextEvent.textToInsert) && Intrinsics.areEqual(this.insertPoint, showInitInputTextEvent.insertPoint) && this.createNew == showInitInputTextEvent.createNew && this.editForAll == showInitInputTextEvent.editForAll;
    }

    public final boolean getCreateNew() {
        return this.createNew;
    }

    public final boolean getEditForAll() {
        return this.editForAll;
    }

    @NotNull
    public final TouchPoint getInsertPoint() {
        return this.insertPoint;
    }

    @NotNull
    public final String getTextToInsert() {
        return this.textToInsert;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.textToInsert.hashCode() * 31) + this.insertPoint.hashCode()) * 31;
        boolean z = this.createNew;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.editForAll;
        return i2 + (z2 ? 1 : z2 ? 1 : 0);
    }

    @NotNull
    public String toString() {
        return "ShowInitInputTextEvent(textToInsert=" + this.textToInsert + ", insertPoint=" + this.insertPoint + ", createNew=" + this.createNew + ", editForAll=" + this.editForAll + ')';
    }

    public /* synthetic */ ShowInitInputTextEvent(String str, TouchPoint touchPoint, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, touchPoint, (i & 4) != 0 ? false : z, (i & 8) != 0 ? true : z2);
    }
}
