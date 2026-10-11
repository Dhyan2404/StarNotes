package com.onyx.android.sdk.reader.api;

import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0014\b\u0086\b\u0018\u0000 !2\u00020\u0001:\u0001!B%\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u001f\u0010 J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J'\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001J\t\u0010\u000b\u001a\u00020\u0002HÖ\u0001J\t\u0010\f\u001a\u00020\u0005HÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015R\"\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/PageId;", "", "", "component1", "component2", "", "component3", "pageUUID", "pageReferenceId", "pageIndex", "copy", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getPageUUID", "()Ljava/lang/String;", "setPageUUID", "(Ljava/lang/String;)V", "b", "getPageReferenceId", "setPageReferenceId", "c", "I", "getPageIndex", "()I", "setPageIndex", "(I)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;I)V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class PageId {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final boolean isEnabledUUID = false;

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public String pageUUID;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public String pageReferenceId;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public int pageIndex;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/PageId$Companion;", "", "()V", "isEnabledUUID", "", "equals", "firstPageIdStr", "", "secondPageIdStr", "generateUUID", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nPageId.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageId.kt\ncom/onyx/android/sdk/reader/api/PageId$Companion\n+ 2 JSONUtils.kt\ncom/onyx/android/sdk/data/utils/JSONUtils\n*L\n1#1,42:1\n46#2:43\n46#2:44\n*S KotlinDebug\n*F\n+ 1 PageId.kt\ncom/onyx/android/sdk/reader/api/PageId$Companion\n*L\n30#1:43\n31#1:44\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean equals(@NotNull String firstPageIdStr, @NotNull String secondPageIdStr) {
            Intrinsics.checkNotNullParameter(firstPageIdStr, "firstPageIdStr");
            Intrinsics.checkNotNullParameter(secondPageIdStr, "secondPageIdStr");
            if (Intrinsics.areEqual(firstPageIdStr, secondPageIdStr)) {
                return true;
            }
            JSONUtils jSONUtils = JSONUtils.INSTANCE;
            return Intrinsics.areEqual((PageId) jSONUtils.parseObject(firstPageIdStr, PageId.class), (PageId) jSONUtils.parseObject(secondPageIdStr, PageId.class));
        }

        @NotNull
        public final String generateUUID() {
            return "";
        }

        public Companion() {
        }
    }

    public PageId() {
        this(null, null, 0, 7, null);
    }

    public static /* synthetic */ PageId copy$default(PageId pageId, String str, String str2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = pageId.pageUUID;
        }
        if ((i2 & 2) != 0) {
            str2 = pageId.pageReferenceId;
        }
        if ((i2 & 4) != 0) {
            i = pageId.pageIndex;
        }
        return pageId.copy(str, str2, i);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getPageUUID() {
        return this.pageUUID;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getPageReferenceId() {
        return this.pageReferenceId;
    }

    /* renamed from: component3, reason: from getter */
    public final int getPageIndex() {
        return this.pageIndex;
    }

    @NotNull
    public final PageId copy(@NotNull String pageUUID, @NotNull String pageReferenceId, int pageIndex) {
        Intrinsics.checkNotNullParameter(pageUUID, "pageUUID");
        Intrinsics.checkNotNullParameter(pageReferenceId, "pageReferenceId");
        return new PageId(pageUUID, pageReferenceId, pageIndex);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PageId)) {
            return false;
        }
        PageId pageId = (PageId) other;
        return Intrinsics.areEqual(this.pageUUID, pageId.pageUUID) && Intrinsics.areEqual(this.pageReferenceId, pageId.pageReferenceId) && this.pageIndex == pageId.pageIndex;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    @NotNull
    public final String getPageReferenceId() {
        return this.pageReferenceId;
    }

    @NotNull
    public final String getPageUUID() {
        return this.pageUUID;
    }

    public int hashCode() {
        return (((this.pageUUID.hashCode() * 31) + this.pageReferenceId.hashCode()) * 31) + Integer.hashCode(this.pageIndex);
    }

    public final void setPageIndex(int i) {
        this.pageIndex = i;
    }

    public final void setPageReferenceId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageReferenceId = str;
    }

    public final void setPageUUID(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageUUID = str;
    }

    @NotNull
    public String toString() {
        return "PageId(pageUUID=" + this.pageUUID + ", pageReferenceId=" + this.pageReferenceId + ", pageIndex=" + this.pageIndex + ')';
    }

    public PageId(@NotNull String pageUUID, @NotNull String pageReferenceId, int i) {
        Intrinsics.checkNotNullParameter(pageUUID, "pageUUID");
        Intrinsics.checkNotNullParameter(pageReferenceId, "pageReferenceId");
        this.pageUUID = pageUUID;
        this.pageReferenceId = pageReferenceId;
        this.pageIndex = i;
    }

    public /* synthetic */ PageId(String str, String str2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? -1 : i);
    }
}
