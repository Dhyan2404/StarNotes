package com.onyx.android.sdk.reader.api;

import androidx.core.app.NotificationCompat;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0017\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\b\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0002¢\u0006\u0004\b+\u0010,J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\t\u0010\u0006\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0002HÆ\u0003J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\bHÆ\u0003J\t\u0010\n\u001a\u00020\u0002HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0002HÆ\u0003JA\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u00022\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\b2\b\b\u0002\u0010\u000f\u001a\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0012\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0013HÖ\u0001J\u0013\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0019\u001a\u0004\b\u001f\u0010\u001b\"\u0004\b \u0010\u001dR\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\b8\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010\u0019\u001a\u0004\b&\u0010\u001b\"\u0004\b'\u0010\u001dR\"\u0010\u0010\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010\u0019\u001a\u0004\b)\u0010\u001b\"\u0004\b*\u0010\u001d¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;", "", "", NotificationCompat.CarExtender.f4973i, "", "addValidAuthor", "component1", "component2", "", "component3", "component4", "component5", "title", "description", "authors", "publisher", "options", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "b", "getDescription", "setDescription", "c", "Ljava/util/List;", "getAuthors", "()Ljava/util/List;", "d", "getPublisher", "setPublisher", "e", "getOptions", "setOptions", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ReaderDocumentMetadata {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public String title;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public String description;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<String> authors;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @NotNull
    public String publisher;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    @NotNull
    public String options;

    public ReaderDocumentMetadata() {
        this(null, null, null, null, null, 31, null);
    }

    public static /* synthetic */ ReaderDocumentMetadata copy$default(ReaderDocumentMetadata readerDocumentMetadata, String str, String str2, List list, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = readerDocumentMetadata.title;
        }
        if ((i & 2) != 0) {
            str2 = readerDocumentMetadata.description;
        }
        String str5 = str2;
        if ((i & 4) != 0) {
            list = readerDocumentMetadata.authors;
        }
        List list2 = list;
        if ((i & 8) != 0) {
            str3 = readerDocumentMetadata.publisher;
        }
        String str6 = str3;
        if ((i & 16) != 0) {
            str4 = readerDocumentMetadata.options;
        }
        return readerDocumentMetadata.copy(str, str5, list2, str6, str4);
    }

    public final void addValidAuthor(@NotNull String author) {
        boolean isBlank;
        Intrinsics.checkNotNullParameter(author, "author");
        isBlank = StringsKt__StringsJVMKt.isBlank(author);
        if (!isBlank) {
            this.authors.add(author);
        }
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    @NotNull
    public final List<String> component3() {
        return this.authors;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final String getPublisher() {
        return this.publisher;
    }

    @NotNull
    /* renamed from: component5, reason: from getter */
    public final String getOptions() {
        return this.options;
    }

    @NotNull
    public final ReaderDocumentMetadata copy(@NotNull String title, @NotNull String description, @NotNull List<String> authors, @NotNull String publisher, @NotNull String options) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(authors, "authors");
        Intrinsics.checkNotNullParameter(publisher, "publisher");
        Intrinsics.checkNotNullParameter(options, "options");
        return new ReaderDocumentMetadata(title, description, authors, publisher, options);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ReaderDocumentMetadata)) {
            return false;
        }
        ReaderDocumentMetadata readerDocumentMetadata = (ReaderDocumentMetadata) other;
        return Intrinsics.areEqual(this.title, readerDocumentMetadata.title) && Intrinsics.areEqual(this.description, readerDocumentMetadata.description) && Intrinsics.areEqual(this.authors, readerDocumentMetadata.authors) && Intrinsics.areEqual(this.publisher, readerDocumentMetadata.publisher) && Intrinsics.areEqual(this.options, readerDocumentMetadata.options);
    }

    @NotNull
    public final List<String> getAuthors() {
        return this.authors;
    }

    @NotNull
    public final String getDescription() {
        return this.description;
    }

    @NotNull
    public final String getOptions() {
        return this.options;
    }

    @NotNull
    public final String getPublisher() {
        return this.publisher;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return (((((((this.title.hashCode() * 31) + this.description.hashCode()) * 31) + this.authors.hashCode()) * 31) + this.publisher.hashCode()) * 31) + this.options.hashCode();
    }

    public final void setDescription(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.description = str;
    }

    public final void setOptions(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.options = str;
    }

    public final void setPublisher(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.publisher = str;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    @NotNull
    public String toString() {
        return "ReaderDocumentMetadata(title=" + this.title + ", description=" + this.description + ", authors=" + this.authors + ", publisher=" + this.publisher + ", options=" + this.options + ')';
    }

    public ReaderDocumentMetadata(@NotNull String title, @NotNull String description, @NotNull List<String> authors, @NotNull String publisher, @NotNull String options) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(authors, "authors");
        Intrinsics.checkNotNullParameter(publisher, "publisher");
        Intrinsics.checkNotNullParameter(options, "options");
        this.title = title;
        this.description = description;
        this.authors = authors;
        this.publisher = publisher;
        this.options = options;
    }

    public /* synthetic */ ReaderDocumentMetadata(String str, String str2, List list, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? new ArrayList() : list, (i & 8) != 0 ? "null" : str3, (i & 16) != 0 ? "" : str4);
    }
}
