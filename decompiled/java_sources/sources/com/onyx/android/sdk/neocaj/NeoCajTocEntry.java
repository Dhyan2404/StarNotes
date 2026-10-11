package com.onyx.android.sdk.neocaj;

import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.neopdf.PdfTocEntry;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;", "Ljava/io/Serializable;", "()V", "level", "", "getLevel", "()I", "setLevel", "(I)V", "page", "getPage", "setPage", "title", "", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "Companion", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class NeoCajTocEntry implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private int level;
    private int page;

    @NotNull
    private String title = "";

    @Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u0014J0\u0010\u000b\u001a\u00020\n2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0007J\u001e\u0010\u000f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u000eH\u0007J&\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\f2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u000e2\u0006\u0010\u0011\u001a\u00020\u0007H\u0003¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry$Companion;", "", "", "Lcom/onyx/android/sdk/neocaj/NeoCajTocEntry;", "entries", "", "title", "", "page", "level", "", "addEntry", "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;", "root", "", "buildTocTree", "parent", "currentIndex", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        /* renamed from: a */
        public final int m33538a(PdfTocEntry parent, List<NeoCajTocEntry> entries, int currentIndex) {
            NeoCajTocEntry neoCajTocEntry = entries.get(currentIndex);
            PdfTocEntry pdfTocEntry = new PdfTocEntry(0L, neoCajTocEntry.getTitle(), neoCajTocEntry.getPage(), null, 9, null);
            parent.getChildren().add(pdfTocEntry);
            int i = currentIndex + 1;
            while (i < entries.size()) {
                NeoCajTocEntry neoCajTocEntry2 = entries.get(i);
                if (neoCajTocEntry2.getLevel() < neoCajTocEntry.getLevel()) {
                    return i;
                }
                i = neoCajTocEntry2.getLevel() == neoCajTocEntry.getLevel() ? m33538a(parent, entries, i) : m33538a(pdfTocEntry, entries, i);
            }
            return i;
        }

        @JvmStatic
        public final void addEntry(@NotNull List<NeoCajTocEntry> entries, @Nullable String title, int page, int level) {
            Intrinsics.checkNotNullParameter(entries, "entries");
            NeoCajTocEntry neoCajTocEntry = new NeoCajTocEntry();
            neoCajTocEntry.setTitle(StringKt.safelyGetStr(title));
            neoCajTocEntry.setPage(page);
            neoCajTocEntry.setLevel(level);
            entries.add(neoCajTocEntry);
        }

        @JvmStatic
        public final void buildTocTree(@NotNull PdfTocEntry root, @NotNull List<NeoCajTocEntry> entries) {
            Intrinsics.checkNotNullParameter(root, "root");
            Intrinsics.checkNotNullParameter(entries, "entries");
            int i = 0;
            while (i < entries.size()) {
                i = m33538a(root, entries, i);
            }
        }

        public Companion() {
        }
    }

    @JvmStatic
    public static final void addEntry(@NotNull List<NeoCajTocEntry> list, @Nullable String str, int i, int i2) {
        INSTANCE.addEntry(list, str, i, i2);
    }

    @JvmStatic
    private static final int buildTocTree(PdfTocEntry pdfTocEntry, List<NeoCajTocEntry> list, int i) {
        return INSTANCE.m33538a(pdfTocEntry, list, i);
    }

    public final int getLevel() {
        return this.level;
    }

    public final int getPage() {
        return this.page;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final void setLevel(int i) {
        this.level = i;
    }

    public final void setPage(int i) {
        this.page = i;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    @JvmStatic
    public static final void buildTocTree(@NotNull PdfTocEntry pdfTocEntry, @NotNull List<NeoCajTocEntry> list) {
        INSTANCE.buildTocTree(pdfTocEntry, list);
    }
}
