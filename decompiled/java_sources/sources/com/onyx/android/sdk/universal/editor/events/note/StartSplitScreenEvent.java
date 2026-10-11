package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\t\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;", "", "", "component1", "Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;", "component2", EditorConstants.ARGS_DOC_ID, "splitScreenType", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getDocId", "()Ljava/lang/String;", "b", "Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;", "getSplitScreenType", "()Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class StartSplitScreenEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String docId;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final SplitScreenType splitScreenType;

    public StartSplitScreenEvent(@NotNull String docId, @NotNull SplitScreenType splitScreenType) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(splitScreenType, "splitScreenType");
        this.docId = docId;
        this.splitScreenType = splitScreenType;
    }

    public static /* synthetic */ StartSplitScreenEvent copy$default(StartSplitScreenEvent startSplitScreenEvent, String str, SplitScreenType splitScreenType, int i, Object obj) {
        if ((i & 1) != 0) {
            str = startSplitScreenEvent.docId;
        }
        if ((i & 2) != 0) {
            splitScreenType = startSplitScreenEvent.splitScreenType;
        }
        return startSplitScreenEvent.copy(str, splitScreenType);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getDocId() {
        return this.docId;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final SplitScreenType getSplitScreenType() {
        return this.splitScreenType;
    }

    @NotNull
    public final StartSplitScreenEvent copy(@NotNull String docId, @NotNull SplitScreenType splitScreenType) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(splitScreenType, "splitScreenType");
        return new StartSplitScreenEvent(docId, splitScreenType);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StartSplitScreenEvent)) {
            return false;
        }
        StartSplitScreenEvent startSplitScreenEvent = (StartSplitScreenEvent) other;
        return Intrinsics.areEqual(this.docId, startSplitScreenEvent.docId) && this.splitScreenType == startSplitScreenEvent.splitScreenType;
    }

    @NotNull
    public final String getDocId() {
        return this.docId;
    }

    @NotNull
    public final SplitScreenType getSplitScreenType() {
        return this.splitScreenType;
    }

    public int hashCode() {
        return (this.docId.hashCode() * 31) + this.splitScreenType.hashCode();
    }

    @NotNull
    public String toString() {
        return "StartSplitScreenEvent(docId=" + this.docId + ", splitScreenType=" + this.splitScreenType + ')';
    }
}
