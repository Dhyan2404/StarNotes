package com.onyx.android.sdk.reader.api;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.PageInfoUtils;
import com.onyx.android.sdk.reader.extension.ReaderPositionImplKt;
import com.onyx.android.sdk.reader.impl.ReaderPositionImpl;
import com.onyx.android.sdk.reader.plugins.internal.PluginPositionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\bC\b\u0086\b\u0018\u0000 ]2\u00020\u0001:\u0001]Bq\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u0004\u0012\b\b\u0002\u0010 \u001a\u00020\u0007\u0012\b\b\u0002\u0010!\u001a\u00020\u0007\u0012\b\b\u0002\u0010\"\u001a\u00020\u0007\u0012\b\b\u0002\u0010#\u001a\u00020\u0018\u0012\b\b\u0002\u0010$\u001a\u00020\u0007\u0012\u000e\b\u0002\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00000\u001b¢\u0006\u0004\b[\u0010\\J\u0018\u0010\u0006\u001a\n \u0005*\u0004\u0018\u00010\u00040\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0007J\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\f\u001a\u00020\u0002J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0002J\u0006\u0010\u000f\u001a\u00020\u0002J\t\u0010\u0010\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0012HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0018HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÆ\u0003J\u000f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00000\u001bHÆ\u0003Js\u0010&\u001a\u00020\u00002\b\b\u0002\u0010\u001d\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u001e\u001a\u00020\u00122\b\b\u0002\u0010\u001f\u001a\u00020\u00042\b\b\u0002\u0010 \u001a\u00020\u00072\b\b\u0002\u0010!\u001a\u00020\u00072\b\b\u0002\u0010\"\u001a\u00020\u00072\b\b\u0002\u0010#\u001a\u00020\u00182\b\b\u0002\u0010$\u001a\u00020\u00072\u000e\b\u0002\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00000\u001bHÆ\u0001J\t\u0010'\u001a\u00020\u0004HÖ\u0001J\t\u0010(\u001a\u00020\u0002HÖ\u0001J\u0013\u0010*\u001a\u00020\u00072\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u001d\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\"\u0010\u001e\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\"\u0010\u001f\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u0010,\u001a\u0004\b>\u0010.\"\u0004\b?\u00100R\"\u0010 \u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b@\u0010A\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER\"\u0010!\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bF\u0010A\u001a\u0004\bG\u0010C\"\u0004\bH\u0010ER\"\u0010\"\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bI\u0010A\u001a\u0004\bJ\u0010C\"\u0004\bK\u0010ER\"\u0010#\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bL\u0010M\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR\"\u0010$\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bR\u0010A\u001a\u0004\bS\u0010C\"\u0004\bT\u0010ER(\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00000\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bU\u0010V\u001a\u0004\bW\u0010X\"\u0004\bY\u0010Z¨\u0006^"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;", "", "", "limitLength", "", "kotlin.jvm.PlatformType", "getShowTitle", "", "desc", "copyAndSort", "isPageIndexValid", "isValidPosition", "getPositionInt", "pageIndex", "setPageNumber", "getSortId", "component1", "component2", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "component3", "component4", "component5", "component6", "component7", "", "component8", "component9", "", "component10", "title", "position", "id", "canRead", "chapterReady", "expanded", "tocEntryPtr", "sortByPageIndex", Constants.ELEMNAME_CHILDREN_STRING, "copy", "toString", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "b", "I", "getPageIndex", "()I", "setPageIndex", "(I)V", "c", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "getPosition", "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "setPosition", "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V", "d", "getId", "setId", "e", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getCanRead", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setCanRead", "(Z)V", C6997f.f39671c, "getChapterReady", "setChapterReady", C6998g.f39679a, "getExpanded", "setExpanded", C6999h.f39688c, "J", "getTocEntryPtr", "()J", "setTocEntryPtr", "(J)V", "i", "getSortByPageIndex", "setSortByPageIndex", "j", "Ljava/util/List;", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.GET_CHILDREN, "()Ljava/util/List;", "setChildren", "(Ljava/util/List;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;ILcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/lang/String;ZZZJZLjava/util/List;)V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nReaderDocumentTableOfContentEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderDocumentTableOfContentEntry.kt\ncom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,117:1\n1855#2,2:118\n*S KotlinDebug\n*F\n+ 1 ReaderDocumentTableOfContentEntry.kt\ncom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry\n*L\n37#1:118,2\n*E\n"})
/* loaded from: classes8.dex */
public final /* data */ class ReaderDocumentTableOfContentEntry {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int DEFAULT_TITLE_LIMIT_LENGTH = 150;

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public String title;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public int pageIndex;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public ReaderPosition position;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @NotNull
    public String id;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    public boolean canRead;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    public boolean chapterReady;

    /* renamed from: g, reason: from kotlin metadata and from toString */
    public boolean expanded;

    /* renamed from: h, reason: from kotlin metadata and from toString */
    public long tocEntryPtr;

    /* renamed from: i, reason: from kotlin metadata and from toString */
    public boolean sortByPageIndex;

    /* renamed from: j, reason: from kotlin metadata and from toString */
    @NotNull
    public List<ReaderDocumentTableOfContentEntry> children;

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006J\u001e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004J\u0016\u0010\f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry$Companion;", "", "()V", "DEFAULT_TITLE_LIMIT_LENGTH", "", "addEntry", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;", "parent", "child", "title", "", "pageIndex", "createEntry", "position", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ReaderDocumentTableOfContentEntry addEntry(@NotNull ReaderDocumentTableOfContentEntry parent, @NotNull String title, int pageIndex) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(title, "title");
            return addEntry(parent, new ReaderDocumentTableOfContentEntry(title, pageIndex, null, null, false, false, false, 0L, false, null, 1020, null));
        }

        @NotNull
        public final ReaderDocumentTableOfContentEntry createEntry(@NotNull String title, int pageIndex) {
            Intrinsics.checkNotNullParameter(title, "title");
            return new ReaderDocumentTableOfContentEntry(title, pageIndex, new ReaderPositionImpl().fromPageIndex(pageIndex), null, false, false, false, 0L, false, null, 1016, null);
        }

        public Companion() {
        }

        @NotNull
        public final ReaderDocumentTableOfContentEntry addEntry(@NotNull ReaderDocumentTableOfContentEntry parent, @NotNull ReaderDocumentTableOfContentEntry child) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(child, "child");
            parent.getChildren().add(child);
            return child;
        }

        @NotNull
        public final ReaderDocumentTableOfContentEntry createEntry(@NotNull String title, @NotNull ReaderPosition position) {
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(position, "position");
            return new ReaderDocumentTableOfContentEntry(title, position.getPageIndex(), position, null, false, false, false, 0L, false, null, 1016, null);
        }
    }

    public ReaderDocumentTableOfContentEntry() {
        this(null, 0, null, null, false, false, false, 0L, false, null, 1023, null);
    }

    public static /* synthetic */ ReaderDocumentTableOfContentEntry copy$default(ReaderDocumentTableOfContentEntry readerDocumentTableOfContentEntry, String str, int i, ReaderPosition readerPosition, String str2, boolean z, boolean z2, boolean z3, long j, boolean z4, List list, int i2, Object obj) {
        return readerDocumentTableOfContentEntry.copy((i2 & 1) != 0 ? readerDocumentTableOfContentEntry.title : str, (i2 & 2) != 0 ? readerDocumentTableOfContentEntry.pageIndex : i, (i2 & 4) != 0 ? readerDocumentTableOfContentEntry.position : readerPosition, (i2 & 8) != 0 ? readerDocumentTableOfContentEntry.id : str2, (i2 & 16) != 0 ? readerDocumentTableOfContentEntry.canRead : z, (i2 & 32) != 0 ? readerDocumentTableOfContentEntry.chapterReady : z2, (i2 & 64) != 0 ? readerDocumentTableOfContentEntry.expanded : z3, (i2 & 128) != 0 ? readerDocumentTableOfContentEntry.tocEntryPtr : j, (i2 & 256) != 0 ? readerDocumentTableOfContentEntry.sortByPageIndex : z4, (i2 & 512) != 0 ? readerDocumentTableOfContentEntry.children : list);
    }

    public static /* synthetic */ String getShowTitle$default(ReaderDocumentTableOfContentEntry readerDocumentTableOfContentEntry, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 150;
        }
        return readerDocumentTableOfContentEntry.getShowTitle(i);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final List<ReaderDocumentTableOfContentEntry> component10() {
        return this.children;
    }

    /* renamed from: component2, reason: from getter */
    public final int getPageIndex() {
        return this.pageIndex;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final ReaderPosition getPosition() {
        return this.position;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* renamed from: component5, reason: from getter */
    public final boolean getCanRead() {
        return this.canRead;
    }

    /* renamed from: component6, reason: from getter */
    public final boolean getChapterReady() {
        return this.chapterReady;
    }

    /* renamed from: component7, reason: from getter */
    public final boolean getExpanded() {
        return this.expanded;
    }

    /* renamed from: component8, reason: from getter */
    public final long getTocEntryPtr() {
        return this.tocEntryPtr;
    }

    /* renamed from: component9, reason: from getter */
    public final boolean getSortByPageIndex() {
        return this.sortByPageIndex;
    }

    @NotNull
    public final ReaderDocumentTableOfContentEntry copy(@NotNull String title, int pageIndex, @NotNull ReaderPosition position, @NotNull String id, boolean canRead, boolean chapterReady, boolean expanded, long tocEntryPtr, boolean sortByPageIndex, @NotNull List<ReaderDocumentTableOfContentEntry> children) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(children, "children");
        return new ReaderDocumentTableOfContentEntry(title, pageIndex, position, id, canRead, chapterReady, expanded, tocEntryPtr, sortByPageIndex, children);
    }

    @NotNull
    public final ReaderDocumentTableOfContentEntry copyAndSort(boolean desc) {
        ReaderDocumentTableOfContentEntry copy$default = copy$default(this, null, 0, null, null, false, false, false, 0L, false, new ArrayList(), 511, null);
        List<ReaderDocumentTableOfContentEntry> list = this.children;
        if (list == null || list.isEmpty()) {
            return copy$default;
        }
        for (ReaderDocumentTableOfContentEntry readerDocumentTableOfContentEntry : this.children) {
            if (desc) {
                copy$default.children.add(0, readerDocumentTableOfContentEntry.copyAndSort(true));
            } else {
                copy$default.children.add(readerDocumentTableOfContentEntry.copyAndSort(false));
            }
        }
        return copy$default;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ReaderDocumentTableOfContentEntry)) {
            return false;
        }
        ReaderDocumentTableOfContentEntry readerDocumentTableOfContentEntry = (ReaderDocumentTableOfContentEntry) other;
        return Intrinsics.areEqual(this.title, readerDocumentTableOfContentEntry.title) && this.pageIndex == readerDocumentTableOfContentEntry.pageIndex && Intrinsics.areEqual(this.position, readerDocumentTableOfContentEntry.position) && Intrinsics.areEqual(this.id, readerDocumentTableOfContentEntry.id) && this.canRead == readerDocumentTableOfContentEntry.canRead && this.chapterReady == readerDocumentTableOfContentEntry.chapterReady && this.expanded == readerDocumentTableOfContentEntry.expanded && this.tocEntryPtr == readerDocumentTableOfContentEntry.tocEntryPtr && this.sortByPageIndex == readerDocumentTableOfContentEntry.sortByPageIndex && Intrinsics.areEqual(this.children, readerDocumentTableOfContentEntry.children);
    }

    public final boolean getCanRead() {
        return this.canRead;
    }

    public final boolean getChapterReady() {
        return this.chapterReady;
    }

    @NotNull
    public final List<ReaderDocumentTableOfContentEntry> getChildren() {
        return this.children;
    }

    public final boolean getExpanded() {
        return this.expanded;
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    @NotNull
    public final ReaderPosition getPosition() {
        return this.position;
    }

    public final int getPositionInt() {
        return this.position.getIntPosition();
    }

    public final String getShowTitle(int limitLength) {
        return StringUtils.substring(this.title, limitLength);
    }

    public final boolean getSortByPageIndex() {
        return this.sortByPageIndex;
    }

    public final int getSortId() {
        return this.sortByPageIndex ? this.pageIndex : this.position.getIntPosition();
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final long getTocEntryPtr() {
        return this.tocEntryPtr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((this.title.hashCode() * 31) + Integer.hashCode(this.pageIndex)) * 31) + this.position.hashCode()) * 31) + this.id.hashCode()) * 31;
        boolean z = this.canRead;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.chapterReady;
        int i3 = z2;
        if (z2 != 0) {
            i3 = 1;
        }
        int i4 = (i2 + i3) * 31;
        boolean z3 = this.expanded;
        int i5 = z3;
        if (z3 != 0) {
            i5 = 1;
        }
        int hashCode2 = (((i4 + i5) * 31) + Long.hashCode(this.tocEntryPtr)) * 31;
        boolean z4 = this.sortByPageIndex;
        return ((hashCode2 + (z4 ? 1 : z4 ? 1 : 0)) * 31) + this.children.hashCode();
    }

    public final boolean isPageIndexValid() {
        return PageInfoUtils.INSTANCE.isValidPage(this.pageIndex);
    }

    public final boolean isValidPosition() {
        return ReaderPositionImplKt.isValid(this.position);
    }

    public final void setCanRead(boolean z) {
        this.canRead = z;
    }

    public final void setChapterReady(boolean z) {
        this.chapterReady = z;
    }

    public final void setChildren(@NotNull List<ReaderDocumentTableOfContentEntry> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.children = list;
    }

    public final void setExpanded(boolean z) {
        this.expanded = z;
    }

    public final void setId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    public final void setPageIndex(int i) {
        this.pageIndex = i;
    }

    @NotNull
    public final ReaderDocumentTableOfContentEntry setPageNumber(int pageIndex) {
        this.pageIndex = pageIndex;
        if (ReaderPositionImplKt.isValid(this.position)) {
            this.position.fromPageIndex(pageIndex);
        } else {
            this.position = PluginPositionUtils.INSTANCE.getPositionByPageIndex(pageIndex);
        }
        return this;
    }

    public final void setPosition(@NotNull ReaderPosition readerPosition) {
        Intrinsics.checkNotNullParameter(readerPosition, "<set-?>");
        this.position = readerPosition;
    }

    public final void setSortByPageIndex(boolean z) {
        this.sortByPageIndex = z;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final void setTocEntryPtr(long j) {
        this.tocEntryPtr = j;
    }

    @NotNull
    public String toString() {
        return "ReaderDocumentTableOfContentEntry(title=" + this.title + ", pageIndex=" + this.pageIndex + ", position=" + this.position + ", id=" + this.id + ", canRead=" + this.canRead + ", chapterReady=" + this.chapterReady + ", expanded=" + this.expanded + ", tocEntryPtr=" + this.tocEntryPtr + ", sortByPageIndex=" + this.sortByPageIndex + ", children=" + this.children + ')';
    }

    public ReaderDocumentTableOfContentEntry(@NotNull String title, int i, @NotNull ReaderPosition position, @NotNull String id, boolean z, boolean z2, boolean z3, long j, boolean z4, @NotNull List<ReaderDocumentTableOfContentEntry> children) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(children, "children");
        this.title = title;
        this.pageIndex = i;
        this.position = position;
        this.id = id;
        this.canRead = z;
        this.chapterReady = z2;
        this.expanded = z3;
        this.tocEntryPtr = j;
        this.sortByPageIndex = z4;
        this.children = children;
    }

    public /* synthetic */ ReaderDocumentTableOfContentEntry(String str, int i, ReaderPosition readerPosition, String str2, boolean z, boolean z2, boolean z3, long j, boolean z4, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? ReaderPositionImpl.INSTANCE.getDummy() : readerPosition, (i2 & 8) != 0 ? "" : str2, (i2 & 16) != 0 ? true : z, (i2 & 32) != 0 ? true : z2, (i2 & 64) != 0 ? false : z3, (i2 & 128) != 0 ? 0L : j, (i2 & 256) != 0 ? false : z4, (i2 & 512) != 0 ? new ArrayList() : list);
    }
}
