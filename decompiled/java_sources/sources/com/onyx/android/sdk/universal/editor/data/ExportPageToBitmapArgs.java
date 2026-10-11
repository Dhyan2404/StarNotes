package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0017\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007¢\u0006\u0002\u0010\nJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0018J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0007HÆ\u0003J\t\u0010!\u001a\u00020\u0007HÆ\u0003J\t\u0010\"\u001a\u00020\u0007HÆ\u0003JD\u0010#\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u0007HÆ\u0001¢\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020\u00072\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020\u0003HÖ\u0001J\t\u0010(\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u00060\fj\u0002`\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\t\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001b¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;", "", "pageIndex", "", CouchFieldKey.KEY_TOC_PAGE_ID, "", "renderTemplate", "", "renderTape", "renderExcerptIndicator", "(Ljava/lang/Integer;Ljava/lang/String;ZZZ)V", "exportSize", "Lcom/onyx/android/sdk/base/data/Size;", "getExportSize", "()Lcom/onyx/android/sdk/base/data/Size;", "setExportSize", "(Lcom/onyx/android/sdk/base/data/Size;)V", "limitSize", "Lcom/onyx/android/sdk/base/data/DataSize;", "getLimitSize", "setLimitSize", "getPageId", "()Ljava/lang/String;", "getPageIndex", "()Ljava/lang/Integer;", Constants.INTEGER_SIG, "getRenderExcerptIndicator", Constants.BOOLEAN_VALUE_SIG, "getRenderTape", "getRenderTemplate", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/Integer;Ljava/lang/String;ZZZ)Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "toString", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class ExportPageToBitmapArgs {

    @NotNull
    private Size exportSize;

    @NotNull
    private Size limitSize;

    @Nullable
    private final String pageId;

    @Nullable
    private final Integer pageIndex;
    private final boolean renderExcerptIndicator;
    private final boolean renderTape;
    private final boolean renderTemplate;

    public ExportPageToBitmapArgs() {
        this(null, null, false, false, false, 31, null);
    }

    public static /* synthetic */ ExportPageToBitmapArgs copy$default(ExportPageToBitmapArgs exportPageToBitmapArgs, Integer num, String str, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 1) != 0) {
            num = exportPageToBitmapArgs.pageIndex;
        }
        if ((i & 2) != 0) {
            str = exportPageToBitmapArgs.pageId;
        }
        String str2 = str;
        if ((i & 4) != 0) {
            z = exportPageToBitmapArgs.renderTemplate;
        }
        boolean z4 = z;
        if ((i & 8) != 0) {
            z2 = exportPageToBitmapArgs.renderTape;
        }
        boolean z5 = z2;
        if ((i & 16) != 0) {
            z3 = exportPageToBitmapArgs.renderExcerptIndicator;
        }
        return exportPageToBitmapArgs.copy(num, str2, z4, z5, z3);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final Integer getPageIndex() {
        return this.pageIndex;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getPageId() {
        return this.pageId;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getRenderTemplate() {
        return this.renderTemplate;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getRenderTape() {
        return this.renderTape;
    }

    /* renamed from: component5, reason: from getter */
    public final boolean getRenderExcerptIndicator() {
        return this.renderExcerptIndicator;
    }

    @NotNull
    public final ExportPageToBitmapArgs copy(@Nullable Integer pageIndex, @Nullable String pageId, boolean renderTemplate, boolean renderTape, boolean renderExcerptIndicator) {
        return new ExportPageToBitmapArgs(pageIndex, pageId, renderTemplate, renderTape, renderExcerptIndicator);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ExportPageToBitmapArgs)) {
            return false;
        }
        ExportPageToBitmapArgs exportPageToBitmapArgs = (ExportPageToBitmapArgs) other;
        return Intrinsics.areEqual(this.pageIndex, exportPageToBitmapArgs.pageIndex) && Intrinsics.areEqual(this.pageId, exportPageToBitmapArgs.pageId) && this.renderTemplate == exportPageToBitmapArgs.renderTemplate && this.renderTape == exportPageToBitmapArgs.renderTape && this.renderExcerptIndicator == exportPageToBitmapArgs.renderExcerptIndicator;
    }

    @NotNull
    public final Size getExportSize() {
        return this.exportSize;
    }

    @NotNull
    public final Size getLimitSize() {
        return this.limitSize;
    }

    @Nullable
    public final String getPageId() {
        return this.pageId;
    }

    @Nullable
    public final Integer getPageIndex() {
        return this.pageIndex;
    }

    public final boolean getRenderExcerptIndicator() {
        return this.renderExcerptIndicator;
    }

    public final boolean getRenderTape() {
        return this.renderTape;
    }

    public final boolean getRenderTemplate() {
        return this.renderTemplate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        Integer num = this.pageIndex;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.pageId;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        boolean z = this.renderTemplate;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode2 + i) * 31;
        boolean z2 = this.renderTape;
        int i3 = z2;
        if (z2 != 0) {
            i3 = 1;
        }
        int i4 = (i2 + i3) * 31;
        boolean z3 = this.renderExcerptIndicator;
        return i4 + (z3 ? 1 : z3 ? 1 : 0);
    }

    public final void setExportSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "<set-?>");
        this.exportSize = size;
    }

    public final void setLimitSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "<set-?>");
        this.limitSize = size;
    }

    @NotNull
    public String toString() {
        return "ExportPageToBitmapArgs(pageIndex=" + this.pageIndex + ", pageId=" + this.pageId + ", renderTemplate=" + this.renderTemplate + ", renderTape=" + this.renderTape + ", renderExcerptIndicator=" + this.renderExcerptIndicator + ')';
    }

    public ExportPageToBitmapArgs(@Nullable Integer num, @Nullable String str, boolean z, boolean z2, boolean z3) {
        this.pageIndex = num;
        this.pageId = str;
        this.renderTemplate = z;
        this.renderTape = z2;
        this.renderExcerptIndicator = z3;
        Size.Companion companion = Size.INSTANCE;
        this.exportSize = companion.getEmpty();
        this.limitSize = companion.toDataSize(SizeFormat.INSTANCE.getMaxSize());
    }

    public /* synthetic */ ExportPageToBitmapArgs(Integer num, String str, boolean z, boolean z2, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : str, (i & 4) != 0 ? true : z, (i & 8) != 0 ? true : z2, (i & 16) != 0 ? true : z3);
    }
}
