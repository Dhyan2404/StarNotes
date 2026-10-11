package com.onyx.android.sdk.neopdf;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfBookmark;", "Ljava/io/Serializable;", "title", "", "(Ljava/lang/String;)V", "getTitle", "()Ljava/lang/String;", "setTitle", "component1", "copy", "equals", "", Constants.ATTRVAL_OTHER, "", "hashCode", "", "toString", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class PdfBookmark implements Serializable {

    @NotNull
    private String title;

    /* JADX WARN: Multi-variable type inference failed */
    public PdfBookmark() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ PdfBookmark copy$default(PdfBookmark pdfBookmark, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = pdfBookmark.title;
        }
        return pdfBookmark.copy(str);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final PdfBookmark copy(@NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new PdfBookmark(title);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof PdfBookmark) && Intrinsics.areEqual(this.title, ((PdfBookmark) other).title);
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return this.title.hashCode();
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    @NotNull
    public String toString() {
        return "PdfBookmark(title=" + this.title + ')';
    }

    public PdfBookmark(@NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.title = title;
    }

    public /* synthetic */ PdfBookmark(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str);
    }
}
