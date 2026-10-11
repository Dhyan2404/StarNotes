package com.onyx.android.sdk.neopdf.export;

import androidx.core.app.NotificationCompat;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J'\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u0002HÆ\u0001J\t\u0010\n\u001a\u00020\u0002HÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015R\"\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u0011\u001a\u0004\b\u001a\u0010\u0013\"\u0004\b\u001b\u0010\u0015¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/export/PdfCreateArgs;", "", "", "component1", "component2", "component3", NotificationCompat.CarExtender.f4973i, "title", "creator", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getAuthor", "()Ljava/lang/String;", "setAuthor", "(Ljava/lang/String;)V", "b", "getTitle", "setTitle", "c", "getCreator", "setCreator", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class PdfCreateArgs {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public String author;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public String title;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public String creator;

    public PdfCreateArgs() {
        this(null, null, null, 7, null);
    }

    public static /* synthetic */ PdfCreateArgs copy$default(PdfCreateArgs pdfCreateArgs, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = pdfCreateArgs.author;
        }
        if ((i & 2) != 0) {
            str2 = pdfCreateArgs.title;
        }
        if ((i & 4) != 0) {
            str3 = pdfCreateArgs.creator;
        }
        return pdfCreateArgs.copy(str, str2, str3);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getAuthor() {
        return this.author;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getCreator() {
        return this.creator;
    }

    @NotNull
    public final PdfCreateArgs copy(@NotNull String author, @NotNull String title, @NotNull String creator) {
        Intrinsics.checkNotNullParameter(author, "author");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(creator, "creator");
        return new PdfCreateArgs(author, title, creator);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PdfCreateArgs)) {
            return false;
        }
        PdfCreateArgs pdfCreateArgs = (PdfCreateArgs) other;
        return Intrinsics.areEqual(this.author, pdfCreateArgs.author) && Intrinsics.areEqual(this.title, pdfCreateArgs.title) && Intrinsics.areEqual(this.creator, pdfCreateArgs.creator);
    }

    @NotNull
    public final String getAuthor() {
        return this.author;
    }

    @NotNull
    public final String getCreator() {
        return this.creator;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return (((this.author.hashCode() * 31) + this.title.hashCode()) * 31) + this.creator.hashCode();
    }

    public final void setAuthor(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.author = str;
    }

    public final void setCreator(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.creator = str;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    @NotNull
    public String toString() {
        return "PdfCreateArgs(author=" + this.author + ", title=" + this.title + ", creator=" + this.creator + ')';
    }

    public PdfCreateArgs(@NotNull String author, @NotNull String title, @NotNull String creator) {
        Intrinsics.checkNotNullParameter(author, "author");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(creator, "creator");
        this.author = author;
        this.title = title;
        this.creator = creator;
    }

    public /* synthetic */ PdfCreateArgs(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3);
    }
}
