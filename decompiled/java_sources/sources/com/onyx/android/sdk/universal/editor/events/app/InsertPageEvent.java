package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.universal.editor.data.InsertPageArgs;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/InsertPageEvent;", "", "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", "component1", "insertPageArgs", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", "getInsertPageArgs", "()Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", "setInsertPageArgs", "(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class InsertPageEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public InsertPageArgs insertPageArgs;

    /* JADX WARN: Multi-variable type inference failed */
    public InsertPageEvent() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ InsertPageEvent copy$default(InsertPageEvent insertPageEvent, InsertPageArgs insertPageArgs, int i, Object obj) {
        if ((i & 1) != 0) {
            insertPageArgs = insertPageEvent.insertPageArgs;
        }
        return insertPageEvent.copy(insertPageArgs);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final InsertPageArgs getInsertPageArgs() {
        return this.insertPageArgs;
    }

    @NotNull
    public final InsertPageEvent copy(@NotNull InsertPageArgs insertPageArgs) {
        Intrinsics.checkNotNullParameter(insertPageArgs, "insertPageArgs");
        return new InsertPageEvent(insertPageArgs);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof InsertPageEvent) && Intrinsics.areEqual(this.insertPageArgs, ((InsertPageEvent) other).insertPageArgs);
    }

    @NotNull
    public final InsertPageArgs getInsertPageArgs() {
        return this.insertPageArgs;
    }

    public int hashCode() {
        return this.insertPageArgs.hashCode();
    }

    public final void setInsertPageArgs(@NotNull InsertPageArgs insertPageArgs) {
        Intrinsics.checkNotNullParameter(insertPageArgs, "<set-?>");
        this.insertPageArgs = insertPageArgs;
    }

    @NotNull
    public String toString() {
        return "InsertPageEvent(insertPageArgs=" + this.insertPageArgs + ')';
    }

    public InsertPageEvent(@NotNull InsertPageArgs insertPageArgs) {
        Intrinsics.checkNotNullParameter(insertPageArgs, "insertPageArgs");
        this.insertPageArgs = insertPageArgs;
    }

    public /* synthetic */ InsertPageEvent(InsertPageArgs insertPageArgs, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new InsertPageArgs() : insertPageArgs);
    }
}
