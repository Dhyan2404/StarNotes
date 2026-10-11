package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.universal.editor.data.CopyPageArgs;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003J\u0019\u0010\u0006\u001a\u00020\u00002\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003R(\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/CopyPageBeginEvent;", "", "", "Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;", "component1", "copyArgsList", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Ljava/util/List;", "getCopyArgsList", "()Ljava/util/List;", "setCopyArgsList", "(Ljava/util/List;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class CopyPageBeginEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public List<CopyPageArgs> copyArgsList;

    public CopyPageBeginEvent(@NotNull List<CopyPageArgs> copyArgsList) {
        Intrinsics.checkNotNullParameter(copyArgsList, "copyArgsList");
        this.copyArgsList = copyArgsList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CopyPageBeginEvent copy$default(CopyPageBeginEvent copyPageBeginEvent, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = copyPageBeginEvent.copyArgsList;
        }
        return copyPageBeginEvent.copy(list);
    }

    @NotNull
    public final List<CopyPageArgs> component1() {
        return this.copyArgsList;
    }

    @NotNull
    public final CopyPageBeginEvent copy(@NotNull List<CopyPageArgs> copyArgsList) {
        Intrinsics.checkNotNullParameter(copyArgsList, "copyArgsList");
        return new CopyPageBeginEvent(copyArgsList);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof CopyPageBeginEvent) && Intrinsics.areEqual(this.copyArgsList, ((CopyPageBeginEvent) other).copyArgsList);
    }

    @NotNull
    public final List<CopyPageArgs> getCopyArgsList() {
        return this.copyArgsList;
    }

    public int hashCode() {
        return this.copyArgsList.hashCode();
    }

    public final void setCopyArgsList(@NotNull List<CopyPageArgs> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.copyArgsList = list;
    }

    @NotNull
    public String toString() {
        return "CopyPageBeginEvent(copyArgsList=" + this.copyArgsList + ')';
    }
}
