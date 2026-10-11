package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.universal.editor.data.InsertPageArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0018\u0010\u0019J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/PageInsertedEvent;", "", "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", "component1", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "component2", "insertPageArgs", "virtualPage", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", "getInsertPageArgs", "()Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", "b", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "getVirtualPage", "()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class PageInsertedEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final InsertPageArgs insertPageArgs;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final VirtualPage virtualPage;

    public PageInsertedEvent(@NotNull InsertPageArgs insertPageArgs, @NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(insertPageArgs, "insertPageArgs");
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        this.insertPageArgs = insertPageArgs;
        this.virtualPage = virtualPage;
    }

    public static /* synthetic */ PageInsertedEvent copy$default(PageInsertedEvent pageInsertedEvent, InsertPageArgs insertPageArgs, VirtualPage virtualPage, int i, Object obj) {
        if ((i & 1) != 0) {
            insertPageArgs = pageInsertedEvent.insertPageArgs;
        }
        if ((i & 2) != 0) {
            virtualPage = pageInsertedEvent.virtualPage;
        }
        return pageInsertedEvent.copy(insertPageArgs, virtualPage);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final InsertPageArgs getInsertPageArgs() {
        return this.insertPageArgs;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final VirtualPage getVirtualPage() {
        return this.virtualPage;
    }

    @NotNull
    public final PageInsertedEvent copy(@NotNull InsertPageArgs insertPageArgs, @NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(insertPageArgs, "insertPageArgs");
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        return new PageInsertedEvent(insertPageArgs, virtualPage);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PageInsertedEvent)) {
            return false;
        }
        PageInsertedEvent pageInsertedEvent = (PageInsertedEvent) other;
        return Intrinsics.areEqual(this.insertPageArgs, pageInsertedEvent.insertPageArgs) && Intrinsics.areEqual(this.virtualPage, pageInsertedEvent.virtualPage);
    }

    @NotNull
    public final InsertPageArgs getInsertPageArgs() {
        return this.insertPageArgs;
    }

    @NotNull
    public final VirtualPage getVirtualPage() {
        return this.virtualPage;
    }

    public int hashCode() {
        return (this.insertPageArgs.hashCode() * 31) + this.virtualPage.hashCode();
    }

    @NotNull
    public String toString() {
        return "PageInsertedEvent(insertPageArgs=" + this.insertPageArgs + ", virtualPage=" + this.virtualPage + ')';
    }
}
