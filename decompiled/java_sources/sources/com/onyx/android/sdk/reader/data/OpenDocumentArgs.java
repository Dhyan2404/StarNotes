package com.onyx.android.sdk.reader.data;

import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.reader.config.ReaderConfig;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0019\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0006\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b*\u0010+J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0002HÆ\u0003J=\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00062\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002HÆ\u0001J\t\u0010\u000f\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0010HÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0016\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001aR\"\u0010\u000b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0016\u001a\u0004\b\u001f\u0010\u0018\"\u0004\b \u0010\u001aR\"\u0010\f\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010\u0016\u001a\u0004\b(\u0010\u0018\"\u0004\b)\u0010\u001a¨\u0006,"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;", "", "", "component1", "component2", "component3", "Lcom/onyx/android/sdk/base/data/Size;", "component4", "component5", "documentId", "path", "password", "size", "extraOptions", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getDocumentId", "()Ljava/lang/String;", "setDocumentId", "(Ljava/lang/String;)V", "b", "getPath", "setPath", "c", "getPassword", "setPassword", "d", "Lcom/onyx/android/sdk/base/data/Size;", "getSize", "()Lcom/onyx/android/sdk/base/data/Size;", "setSize", "(Lcom/onyx/android/sdk/base/data/Size;)V", "e", "getExtraOptions", "setExtraOptions", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;Ljava/lang/String;)V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class OpenDocumentArgs {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public String documentId;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public String path;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public String password;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @NotNull
    public Size size;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    @Nullable
    public String extraOptions;

    public OpenDocumentArgs() {
        this(null, null, null, null, null, 31, null);
    }

    public static /* synthetic */ OpenDocumentArgs copy$default(OpenDocumentArgs openDocumentArgs, String str, String str2, String str3, Size size, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = openDocumentArgs.documentId;
        }
        if ((i & 2) != 0) {
            str2 = openDocumentArgs.path;
        }
        String str5 = str2;
        if ((i & 4) != 0) {
            str3 = openDocumentArgs.password;
        }
        String str6 = str3;
        if ((i & 8) != 0) {
            size = openDocumentArgs.size;
        }
        Size size2 = size;
        if ((i & 16) != 0) {
            str4 = openDocumentArgs.extraOptions;
        }
        return openDocumentArgs.copy(str, str5, str6, size2, str4);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getDocumentId() {
        return this.documentId;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getPath() {
        return this.path;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getPassword() {
        return this.password;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final Size getSize() {
        return this.size;
    }

    @Nullable
    /* renamed from: component5, reason: from getter */
    public final String getExtraOptions() {
        return this.extraOptions;
    }

    @NotNull
    public final OpenDocumentArgs copy(@NotNull String documentId, @NotNull String path, @NotNull String password, @NotNull Size size, @Nullable String extraOptions) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(size, "size");
        return new OpenDocumentArgs(documentId, path, password, size, extraOptions);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OpenDocumentArgs)) {
            return false;
        }
        OpenDocumentArgs openDocumentArgs = (OpenDocumentArgs) other;
        return Intrinsics.areEqual(this.documentId, openDocumentArgs.documentId) && Intrinsics.areEqual(this.path, openDocumentArgs.path) && Intrinsics.areEqual(this.password, openDocumentArgs.password) && Intrinsics.areEqual(this.size, openDocumentArgs.size) && Intrinsics.areEqual(this.extraOptions, openDocumentArgs.extraOptions);
    }

    @NotNull
    public final String getDocumentId() {
        return this.documentId;
    }

    @Nullable
    public final String getExtraOptions() {
        return this.extraOptions;
    }

    @NotNull
    public final String getPassword() {
        return this.password;
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    @NotNull
    public final Size getSize() {
        return this.size;
    }

    public int hashCode() {
        int hashCode = ((((((this.documentId.hashCode() * 31) + this.path.hashCode()) * 31) + this.password.hashCode()) * 31) + this.size.hashCode()) * 31;
        String str = this.extraOptions;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public final void setDocumentId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentId = str;
    }

    public final void setExtraOptions(@Nullable String str) {
        this.extraOptions = str;
    }

    public final void setPassword(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.password = str;
    }

    public final void setPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.path = str;
    }

    public final void setSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "<set-?>");
        this.size = size;
    }

    @NotNull
    public String toString() {
        return "OpenDocumentArgs(documentId=" + this.documentId + ", path=" + this.path + ", password=" + this.password + ", size=" + this.size + ", extraOptions=" + this.extraOptions + ')';
    }

    public OpenDocumentArgs(@NotNull String documentId, @NotNull String path, @NotNull String password, @NotNull Size size, @Nullable String str) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(size, "size");
        this.documentId = documentId;
        this.path = path;
        this.password = password;
        this.size = size;
        this.extraOptions = str;
    }

    public /* synthetic */ OpenDocumentArgs(String str, String str2, String str3, Size size, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? ReaderConfig.INSTANCE.getDEFAULT_SIZE() : size, (i & 16) != 0 ? null : str4);
    }
}
