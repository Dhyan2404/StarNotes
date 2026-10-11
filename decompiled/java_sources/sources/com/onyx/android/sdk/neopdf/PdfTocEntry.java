package com.onyx.android.sdk.neopdf;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0086\b\u0018\u0000 &2\u00020\u0001:\u0001&B3\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\t¢\u0006\u0002\u0010\nJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0007HÆ\u0003J\u000f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00000\tHÆ\u0003J7\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\tHÆ\u0001J\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#HÖ\u0003J\t\u0010$\u001a\u00020\u0007HÖ\u0001J\t\u0010%\u001a\u00020\u0005HÖ\u0001R \u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfTocEntry;", "Ljava/io/Serializable;", "entryPtr", "", "title", "", "page", "", Constants.ELEMNAME_CHILDREN_STRING, "", "(JLjava/lang/String;ILjava/util/List;)V", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.GET_CHILDREN, "()Ljava/util/List;", "setChildren", "(Ljava/util/List;)V", "getEntryPtr", "()J", "setEntryPtr", "(J)V", "getPage", "()I", "setPage", "(I)V", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "component1", "component2", "component3", "component4", "copy", "equals", "", Constants.ATTRVAL_OTHER, "", "hashCode", "toString", "Companion", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class PdfTocEntry implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int INVALID_PAGE = -1;

    @NotNull
    private List<PdfTocEntry> children;
    private long entryPtr;
    private int page;

    @NotNull
    private String title;

    @Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0007J \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0013H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfTocEntry$Companion;", "", "()V", "INVALID_PAGE", "", "addChild", "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;", "parent", "entryPtr", "", "title", "", "page", "updateTocEntryDestPage", "", "pdf", "Lcom/onyx/android/sdk/neopdf/NeoPdf;", "entry", "recursive", "", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nPdfTocEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfTocEntry.kt\ncom/onyx/android/sdk/neopdf/PdfTocEntry$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,57:1\n1855#2,2:58\n*S KotlinDebug\n*F\n+ 1 PdfTocEntry.kt\ncom/onyx/android/sdk/neopdf/PdfTocEntry$Companion\n*L\n51#1:58,2\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final PdfTocEntry addChild(@NotNull PdfTocEntry parent, long entryPtr, @Nullable String title, int page) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            PdfTocEntry pdfTocEntry = new PdfTocEntry(entryPtr, StringKt.safelyGetStr(title), page, null, 8, null);
            parent.getChildren().add(pdfTocEntry);
            return pdfTocEntry;
        }

        @JvmStatic
        public final void updateTocEntryDestPage(@NotNull NeoPdf pdf, @NotNull PdfTocEntry entry, boolean recursive) {
            Intrinsics.checkNotNullParameter(pdf, "pdf");
            Intrinsics.checkNotNullParameter(entry, "entry");
            if (entry.getPage() == -1 && entry.getEntryPtr() != 0) {
                entry.setPage(pdf.getTocEntryDestPage(entry));
            }
            if (recursive && CollectionKt.isNonBlank(entry.getChildren())) {
                Iterator<T> it2 = entry.getChildren().iterator();
                while (it2.hasNext()) {
                    PdfTocEntry.INSTANCE.updateTocEntryDestPage(pdf, (PdfTocEntry) it2.next(), true);
                }
            }
        }

        public Companion() {
        }
    }

    public PdfTocEntry() {
        this(0L, null, 0, null, 15, null);
    }

    @JvmStatic
    @NotNull
    public static final PdfTocEntry addChild(@NotNull PdfTocEntry pdfTocEntry, long j, @Nullable String str, int i) {
        return INSTANCE.addChild(pdfTocEntry, j, str, i);
    }

    public static /* synthetic */ PdfTocEntry copy$default(PdfTocEntry pdfTocEntry, long j, String str, int i, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j = pdfTocEntry.entryPtr;
        }
        long j2 = j;
        if ((i2 & 2) != 0) {
            str = pdfTocEntry.title;
        }
        String str2 = str;
        if ((i2 & 4) != 0) {
            i = pdfTocEntry.page;
        }
        int i3 = i;
        if ((i2 & 8) != 0) {
            list = pdfTocEntry.children;
        }
        return pdfTocEntry.copy(j2, str2, i3, list);
    }

    @JvmStatic
    public static final void updateTocEntryDestPage(@NotNull NeoPdf neoPdf, @NotNull PdfTocEntry pdfTocEntry, boolean z) {
        INSTANCE.updateTocEntryDestPage(neoPdf, pdfTocEntry, z);
    }

    /* renamed from: component1, reason: from getter */
    public final long getEntryPtr() {
        return this.entryPtr;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* renamed from: component3, reason: from getter */
    public final int getPage() {
        return this.page;
    }

    @NotNull
    public final List<PdfTocEntry> component4() {
        return this.children;
    }

    @NotNull
    public final PdfTocEntry copy(long entryPtr, @NotNull String title, int page, @NotNull List<PdfTocEntry> children) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(children, "children");
        return new PdfTocEntry(entryPtr, title, page, children);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PdfTocEntry)) {
            return false;
        }
        PdfTocEntry pdfTocEntry = (PdfTocEntry) other;
        return this.entryPtr == pdfTocEntry.entryPtr && Intrinsics.areEqual(this.title, pdfTocEntry.title) && this.page == pdfTocEntry.page && Intrinsics.areEqual(this.children, pdfTocEntry.children);
    }

    @NotNull
    public final List<PdfTocEntry> getChildren() {
        return this.children;
    }

    public final long getEntryPtr() {
        return this.entryPtr;
    }

    public final int getPage() {
        return this.page;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return (((((Long.hashCode(this.entryPtr) * 31) + this.title.hashCode()) * 31) + Integer.hashCode(this.page)) * 31) + this.children.hashCode();
    }

    public final void setChildren(@NotNull List<PdfTocEntry> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.children = list;
    }

    public final void setEntryPtr(long j) {
        this.entryPtr = j;
    }

    public final void setPage(int i) {
        this.page = i;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    @NotNull
    public String toString() {
        return "PdfTocEntry(entryPtr=" + this.entryPtr + ", title=" + this.title + ", page=" + this.page + ", children=" + this.children + ')';
    }

    public PdfTocEntry(long j, @NotNull String title, int i, @NotNull List<PdfTocEntry> children) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(children, "children");
        this.entryPtr = j;
        this.title = title;
        this.page = i;
        this.children = children;
    }

    public /* synthetic */ PdfTocEntry(long j, String str, int i, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0L : j, (i2 & 2) != 0 ? "" : str, (i2 & 4) != 0 ? -1 : i, (i2 & 8) != 0 ? new ArrayList() : list);
    }
}
