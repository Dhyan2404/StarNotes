package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u001e\u0010\u001fJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J'\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\t\u0010\u000e\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010\n\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;", "", "", "component1", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "component2", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "component3", "pageIndex", "virtualPage", "notePage", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "I", "getPageIndex", "()I", "b", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "getVirtualPage", "()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "c", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "getNotePage", "()Lcom/onyx/android/sdk/note/common/document/page/NotePage;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ILcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class PageCopiedEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public final int pageIndex;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final VirtualPage virtualPage;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final NotePage notePage;

    public PageCopiedEvent(int i, @NotNull VirtualPage virtualPage, @NotNull NotePage notePage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        Intrinsics.checkNotNullParameter(notePage, "notePage");
        this.pageIndex = i;
        this.virtualPage = virtualPage;
        this.notePage = notePage;
    }

    public static /* synthetic */ PageCopiedEvent copy$default(PageCopiedEvent pageCopiedEvent, int i, VirtualPage virtualPage, NotePage notePage, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = pageCopiedEvent.pageIndex;
        }
        if ((i2 & 2) != 0) {
            virtualPage = pageCopiedEvent.virtualPage;
        }
        if ((i2 & 4) != 0) {
            notePage = pageCopiedEvent.notePage;
        }
        return pageCopiedEvent.copy(i, virtualPage, notePage);
    }

    /* renamed from: component1, reason: from getter */
    public final int getPageIndex() {
        return this.pageIndex;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final VirtualPage getVirtualPage() {
        return this.virtualPage;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final NotePage getNotePage() {
        return this.notePage;
    }

    @NotNull
    public final PageCopiedEvent copy(int pageIndex, @NotNull VirtualPage virtualPage, @NotNull NotePage notePage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        Intrinsics.checkNotNullParameter(notePage, "notePage");
        return new PageCopiedEvent(pageIndex, virtualPage, notePage);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PageCopiedEvent)) {
            return false;
        }
        PageCopiedEvent pageCopiedEvent = (PageCopiedEvent) other;
        return this.pageIndex == pageCopiedEvent.pageIndex && Intrinsics.areEqual(this.virtualPage, pageCopiedEvent.virtualPage) && Intrinsics.areEqual(this.notePage, pageCopiedEvent.notePage);
    }

    @NotNull
    public final NotePage getNotePage() {
        return this.notePage;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    @NotNull
    public final VirtualPage getVirtualPage() {
        return this.virtualPage;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.pageIndex) * 31) + this.virtualPage.hashCode()) * 31) + this.notePage.hashCode();
    }

    @NotNull
    public String toString() {
        return "PageCopiedEvent(pageIndex=" + this.pageIndex + ", virtualPage=" + this.virtualPage + ", notePage=" + this.notePage + ')';
    }
}
