package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u001a\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\b\u0012\b\b\u0002\u0010\u0010\u001a\u00020\n¢\u0006\u0004\b+\u0010,J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\t\u0010\t\u001a\u00020\bHÆ\u0003J\t\u0010\u000b\u001a\u00020\nHÆ\u0003J;\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u000e\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\b2\b\b\u0002\u0010\u0010\u001a\u00020\nHÆ\u0001J\t\u0010\u0012\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0013HÖ\u0001J\u0013\u0010\u0016\u001a\u00020\n2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\r\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010\u000e\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0017\u0010\u000f\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0017\u0010\u0010\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "component1", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "component2", "", "component3", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "component4", "", "component5", "virtualBoxInfo", "touchPoint", "contentPath", "selection", "selectAfterMove", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "b", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getTouchPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "c", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getContentPath", "()Ljava/lang/String;", "d", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "getSelection", "()Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "e", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getSelectAfterMove", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderSelection;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class StartTextSelectionArgs {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final TouchPoint touchPoint;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final String contentPath;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @NotNull
    public final ReaderSelection selection;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    public final boolean selectAfterMove;

    public StartTextSelectionArgs(@NotNull BoxInfo virtualBoxInfo, @NotNull TouchPoint touchPoint, @NotNull String contentPath, @NotNull ReaderSelection selection, boolean z) {
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        Intrinsics.checkNotNullParameter(contentPath, "contentPath");
        Intrinsics.checkNotNullParameter(selection, "selection");
        this.virtualBoxInfo = virtualBoxInfo;
        this.touchPoint = touchPoint;
        this.contentPath = contentPath;
        this.selection = selection;
        this.selectAfterMove = z;
    }

    public static /* synthetic */ StartTextSelectionArgs copy$default(StartTextSelectionArgs startTextSelectionArgs, BoxInfo boxInfo, TouchPoint touchPoint, String str, ReaderSelection readerSelection, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            boxInfo = startTextSelectionArgs.virtualBoxInfo;
        }
        if ((i & 2) != 0) {
            touchPoint = startTextSelectionArgs.touchPoint;
        }
        TouchPoint touchPoint2 = touchPoint;
        if ((i & 4) != 0) {
            str = startTextSelectionArgs.contentPath;
        }
        String str2 = str;
        if ((i & 8) != 0) {
            readerSelection = startTextSelectionArgs.selection;
        }
        ReaderSelection readerSelection2 = readerSelection;
        if ((i & 16) != 0) {
            z = startTextSelectionArgs.selectAfterMove;
        }
        return startTextSelectionArgs.copy(boxInfo, touchPoint2, str2, readerSelection2, z);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final TouchPoint getTouchPoint() {
        return this.touchPoint;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getContentPath() {
        return this.contentPath;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final ReaderSelection getSelection() {
        return this.selection;
    }

    /* renamed from: component5, reason: from getter */
    public final boolean getSelectAfterMove() {
        return this.selectAfterMove;
    }

    @NotNull
    public final StartTextSelectionArgs copy(@NotNull BoxInfo virtualBoxInfo, @NotNull TouchPoint touchPoint, @NotNull String contentPath, @NotNull ReaderSelection selection, boolean selectAfterMove) {
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        Intrinsics.checkNotNullParameter(contentPath, "contentPath");
        Intrinsics.checkNotNullParameter(selection, "selection");
        return new StartTextSelectionArgs(virtualBoxInfo, touchPoint, contentPath, selection, selectAfterMove);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StartTextSelectionArgs)) {
            return false;
        }
        StartTextSelectionArgs startTextSelectionArgs = (StartTextSelectionArgs) other;
        return Intrinsics.areEqual(this.virtualBoxInfo, startTextSelectionArgs.virtualBoxInfo) && Intrinsics.areEqual(this.touchPoint, startTextSelectionArgs.touchPoint) && Intrinsics.areEqual(this.contentPath, startTextSelectionArgs.contentPath) && Intrinsics.areEqual(this.selection, startTextSelectionArgs.selection) && this.selectAfterMove == startTextSelectionArgs.selectAfterMove;
    }

    @NotNull
    public final String getContentPath() {
        return this.contentPath;
    }

    public final boolean getSelectAfterMove() {
        return this.selectAfterMove;
    }

    @NotNull
    public final ReaderSelection getSelection() {
        return this.selection;
    }

    @NotNull
    public final TouchPoint getTouchPoint() {
        return this.touchPoint;
    }

    @NotNull
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((this.virtualBoxInfo.hashCode() * 31) + this.touchPoint.hashCode()) * 31) + this.contentPath.hashCode()) * 31) + this.selection.hashCode()) * 31;
        boolean z = this.selectAfterMove;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    @NotNull
    public String toString() {
        return "StartTextSelectionArgs(virtualBoxInfo=" + this.virtualBoxInfo + ", touchPoint=" + this.touchPoint + ", contentPath=" + this.contentPath + ", selection=" + this.selection + ", selectAfterMove=" + this.selectAfterMove + ')';
    }

    public /* synthetic */ StartTextSelectionArgs(BoxInfo boxInfo, TouchPoint touchPoint, String str, ReaderSelection readerSelection, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(boxInfo, touchPoint, str, readerSelection, (i & 16) != 0 ? false : z);
    }
}
