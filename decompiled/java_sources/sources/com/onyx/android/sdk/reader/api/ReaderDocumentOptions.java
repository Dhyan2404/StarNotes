package com.onyx.android.sdk.reader.api;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\bD\b\u0086\b\u0018\u00002\u00020\u0001Bw\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0017\u001a\u00020\n\u0012\b\b\u0002\u0010\u0018\u001a\u00020\f\u0012\b\b\u0002\u0010\u0019\u001a\u00020\f\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0007\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\bN\u0010OJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0002HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\t\u0010\t\u001a\u00020\u0002HÆ\u0003J\t\u0010\u000b\u001a\u00020\nHÆ\u0003J\t\u0010\r\u001a\u00020\fHÆ\u0003J\t\u0010\u000e\u001a\u00020\fHÆ\u0003J\t\u0010\u000f\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0002HÆ\u0003Jy\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0011\u001a\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u00022\b\b\u0002\u0010\u0013\u001a\u00020\u00022\b\b\u0002\u0010\u0014\u001a\u00020\u00022\b\b\u0002\u0010\u0015\u001a\u00020\u00072\b\b\u0002\u0010\u0016\u001a\u00020\u00022\b\b\u0002\u0010\u0017\u001a\u00020\n2\b\b\u0002\u0010\u0018\u001a\u00020\f2\b\b\u0002\u0010\u0019\u001a\u00020\f2\b\b\u0002\u0010\u001a\u001a\u00020\u00072\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0002HÆ\u0001J\t\u0010\u001d\u001a\u00020\u0002HÖ\u0001J\t\u0010\u001e\u001a\u00020\u0007HÖ\u0001J\u0013\u0010 \u001a\u00020\f2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010\"\u001a\u0004\b(\u0010$\"\u0004\b)\u0010&R\"\u0010\u0013\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\"\u001a\u0004\b+\u0010$\"\u0004\b,\u0010&R\"\u0010\u0014\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010\"\u001a\u0004\b.\u0010$\"\u0004\b/\u0010&R\"\u0010\u0015\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\"\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u0010\"\u001a\u0004\b7\u0010$\"\u0004\b8\u0010&R\"\u0010\u0017\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\"\u0010\u0018\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\"\u0010\u0019\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bE\u0010@\u001a\u0004\bF\u0010B\"\u0004\bG\u0010DR\"\u0010\u001a\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u00101\u001a\u0004\bI\u00103\"\u0004\bJ\u00105R$\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bK\u0010\"\u001a\u0004\bL\u0010$\"\u0004\bM\u0010&¨\u0006P"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;", "", "", "component1", "component2", "component3", "component4", "", "component5", "component6", "Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;", "component7", "", "component8", "component9", "component10", "component11", "documentPath", "documentPassword", "archivePassword", "charsetName", "codePageFallback", "language", "chineseConvertType", "customFormEnabled", "scanDocument", "documentBuilderVersion", "extraOptions", "copy", "toString", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getDocumentPath", "()Ljava/lang/String;", "setDocumentPath", "(Ljava/lang/String;)V", "b", "getDocumentPassword", "setDocumentPassword", "c", "getArchivePassword", "setArchivePassword", "d", "getCharsetName", "setCharsetName", "e", "I", "getCodePageFallback", "()I", "setCodePageFallback", "(I)V", C6997f.f39671c, "getLanguage", "setLanguage", C6998g.f39679a, "Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;", "getChineseConvertType", "()Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;", "setChineseConvertType", "(Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;)V", C6999h.f39688c, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getCustomFormEnabled", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setCustomFormEnabled", "(Z)V", "i", "getScanDocument", "setScanDocument", "j", "getDocumentBuilderVersion", "setDocumentBuilderVersion", C4921e.f26537n, "getExtraOptions", "setExtraOptions", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;ZZILjava/lang/String;)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ReaderDocumentOptions {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public String documentPath;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public String documentPassword;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public String archivePassword;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @NotNull
    public String charsetName;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    public int codePageFallback;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    @NotNull
    public String language;

    /* renamed from: g, reason: from kotlin metadata and from toString */
    @NotNull
    public ReaderChineseConvertType chineseConvertType;

    /* renamed from: h, reason: from kotlin metadata and from toString */
    public boolean customFormEnabled;

    /* renamed from: i, reason: from kotlin metadata and from toString */
    public boolean scanDocument;

    /* renamed from: j, reason: from kotlin metadata and from toString */
    public int documentBuilderVersion;

    /* renamed from: k, reason: from kotlin metadata and from toString */
    @Nullable
    public String extraOptions;

    public ReaderDocumentOptions() {
        this(null, null, null, null, 0, null, null, false, false, 0, null, 2047, null);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getDocumentPath() {
        return this.documentPath;
    }

    /* renamed from: component10, reason: from getter */
    public final int getDocumentBuilderVersion() {
        return this.documentBuilderVersion;
    }

    @Nullable
    /* renamed from: component11, reason: from getter */
    public final String getExtraOptions() {
        return this.extraOptions;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getDocumentPassword() {
        return this.documentPassword;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getArchivePassword() {
        return this.archivePassword;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final String getCharsetName() {
        return this.charsetName;
    }

    /* renamed from: component5, reason: from getter */
    public final int getCodePageFallback() {
        return this.codePageFallback;
    }

    @NotNull
    /* renamed from: component6, reason: from getter */
    public final String getLanguage() {
        return this.language;
    }

    @NotNull
    /* renamed from: component7, reason: from getter */
    public final ReaderChineseConvertType getChineseConvertType() {
        return this.chineseConvertType;
    }

    /* renamed from: component8, reason: from getter */
    public final boolean getCustomFormEnabled() {
        return this.customFormEnabled;
    }

    /* renamed from: component9, reason: from getter */
    public final boolean getScanDocument() {
        return this.scanDocument;
    }

    @NotNull
    public final ReaderDocumentOptions copy(@NotNull String documentPath, @NotNull String documentPassword, @NotNull String archivePassword, @NotNull String charsetName, int codePageFallback, @NotNull String language, @NotNull ReaderChineseConvertType chineseConvertType, boolean customFormEnabled, boolean scanDocument, int documentBuilderVersion, @Nullable String extraOptions) {
        Intrinsics.checkNotNullParameter(documentPath, "documentPath");
        Intrinsics.checkNotNullParameter(documentPassword, "documentPassword");
        Intrinsics.checkNotNullParameter(archivePassword, "archivePassword");
        Intrinsics.checkNotNullParameter(charsetName, "charsetName");
        Intrinsics.checkNotNullParameter(language, "language");
        Intrinsics.checkNotNullParameter(chineseConvertType, "chineseConvertType");
        return new ReaderDocumentOptions(documentPath, documentPassword, archivePassword, charsetName, codePageFallback, language, chineseConvertType, customFormEnabled, scanDocument, documentBuilderVersion, extraOptions);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ReaderDocumentOptions)) {
            return false;
        }
        ReaderDocumentOptions readerDocumentOptions = (ReaderDocumentOptions) other;
        return Intrinsics.areEqual(this.documentPath, readerDocumentOptions.documentPath) && Intrinsics.areEqual(this.documentPassword, readerDocumentOptions.documentPassword) && Intrinsics.areEqual(this.archivePassword, readerDocumentOptions.archivePassword) && Intrinsics.areEqual(this.charsetName, readerDocumentOptions.charsetName) && this.codePageFallback == readerDocumentOptions.codePageFallback && Intrinsics.areEqual(this.language, readerDocumentOptions.language) && this.chineseConvertType == readerDocumentOptions.chineseConvertType && this.customFormEnabled == readerDocumentOptions.customFormEnabled && this.scanDocument == readerDocumentOptions.scanDocument && this.documentBuilderVersion == readerDocumentOptions.documentBuilderVersion && Intrinsics.areEqual(this.extraOptions, readerDocumentOptions.extraOptions);
    }

    @NotNull
    public final String getArchivePassword() {
        return this.archivePassword;
    }

    @NotNull
    public final String getCharsetName() {
        return this.charsetName;
    }

    @NotNull
    public final ReaderChineseConvertType getChineseConvertType() {
        return this.chineseConvertType;
    }

    public final int getCodePageFallback() {
        return this.codePageFallback;
    }

    public final boolean getCustomFormEnabled() {
        return this.customFormEnabled;
    }

    public final int getDocumentBuilderVersion() {
        return this.documentBuilderVersion;
    }

    @NotNull
    public final String getDocumentPassword() {
        return this.documentPassword;
    }

    @NotNull
    public final String getDocumentPath() {
        return this.documentPath;
    }

    @Nullable
    public final String getExtraOptions() {
        return this.extraOptions;
    }

    @NotNull
    public final String getLanguage() {
        return this.language;
    }

    public final boolean getScanDocument() {
        return this.scanDocument;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((((((this.documentPath.hashCode() * 31) + this.documentPassword.hashCode()) * 31) + this.archivePassword.hashCode()) * 31) + this.charsetName.hashCode()) * 31) + Integer.hashCode(this.codePageFallback)) * 31) + this.language.hashCode()) * 31) + this.chineseConvertType.hashCode()) * 31;
        boolean z = this.customFormEnabled;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.scanDocument;
        int hashCode2 = (((i2 + (z2 ? 1 : z2 ? 1 : 0)) * 31) + Integer.hashCode(this.documentBuilderVersion)) * 31;
        String str = this.extraOptions;
        return hashCode2 + (str == null ? 0 : str.hashCode());
    }

    public final void setArchivePassword(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.archivePassword = str;
    }

    public final void setCharsetName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.charsetName = str;
    }

    public final void setChineseConvertType(@NotNull ReaderChineseConvertType readerChineseConvertType) {
        Intrinsics.checkNotNullParameter(readerChineseConvertType, "<set-?>");
        this.chineseConvertType = readerChineseConvertType;
    }

    public final void setCodePageFallback(int i) {
        this.codePageFallback = i;
    }

    public final void setCustomFormEnabled(boolean z) {
        this.customFormEnabled = z;
    }

    public final void setDocumentBuilderVersion(int i) {
        this.documentBuilderVersion = i;
    }

    public final void setDocumentPassword(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentPassword = str;
    }

    public final void setDocumentPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentPath = str;
    }

    public final void setExtraOptions(@Nullable String str) {
        this.extraOptions = str;
    }

    public final void setLanguage(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.language = str;
    }

    public final void setScanDocument(boolean z) {
        this.scanDocument = z;
    }

    @NotNull
    public String toString() {
        return "ReaderDocumentOptions(documentPath=" + this.documentPath + ", documentPassword=" + this.documentPassword + ", archivePassword=" + this.archivePassword + ", charsetName=" + this.charsetName + ", codePageFallback=" + this.codePageFallback + ", language=" + this.language + ", chineseConvertType=" + this.chineseConvertType + ", customFormEnabled=" + this.customFormEnabled + ", scanDocument=" + this.scanDocument + ", documentBuilderVersion=" + this.documentBuilderVersion + ", extraOptions=" + this.extraOptions + ')';
    }

    public ReaderDocumentOptions(@NotNull String documentPath, @NotNull String documentPassword, @NotNull String archivePassword, @NotNull String charsetName, int i, @NotNull String language, @NotNull ReaderChineseConvertType chineseConvertType, boolean z, boolean z2, int i2, @Nullable String str) {
        Intrinsics.checkNotNullParameter(documentPath, "documentPath");
        Intrinsics.checkNotNullParameter(documentPassword, "documentPassword");
        Intrinsics.checkNotNullParameter(archivePassword, "archivePassword");
        Intrinsics.checkNotNullParameter(charsetName, "charsetName");
        Intrinsics.checkNotNullParameter(language, "language");
        Intrinsics.checkNotNullParameter(chineseConvertType, "chineseConvertType");
        this.documentPath = documentPath;
        this.documentPassword = documentPassword;
        this.archivePassword = archivePassword;
        this.charsetName = charsetName;
        this.codePageFallback = i;
        this.language = language;
        this.chineseConvertType = chineseConvertType;
        this.customFormEnabled = z;
        this.scanDocument = z2;
        this.documentBuilderVersion = i2;
        this.extraOptions = str;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ ReaderDocumentOptions(java.lang.String r3, java.lang.String r4, java.lang.String r5, java.lang.String r6, int r7, java.lang.String r8, com.onyx.android.sdk.reader.api.ReaderChineseConvertType r9, boolean r10, boolean r11, int r12, java.lang.String r13, int r14, kotlin.jvm.internal.DefaultConstructorMarker r15) {
        /*
            r2 = this;
            r15 = r14 & 1
            java.lang.String r0 = ""
            if (r15 == 0) goto L7
            r3 = r0
        L7:
            r15 = r14 & 2
            if (r15 == 0) goto Lc
            r4 = r0
        Lc:
            r15 = r14 & 4
            if (r15 == 0) goto L11
            r5 = r0
        L11:
            r15 = r14 & 8
            if (r15 == 0) goto L20
            java.nio.charset.Charset r6 = java.nio.charset.StandardCharsets.UTF_8
            java.lang.String r6 = r6.name()
            java.lang.String r15 = "name(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r15)
        L20:
            r15 = r14 & 16
            r1 = 0
            if (r15 == 0) goto L26
            r7 = r1
        L26:
            r15 = r14 & 32
            if (r15 == 0) goto L2b
            r8 = r0
        L2b:
            r15 = r14 & 64
            if (r15 == 0) goto L31
            com.onyx.android.sdk.reader.api.ReaderChineseConvertType r9 = com.onyx.android.sdk.reader.api.ReaderChineseConvertType.NONE
        L31:
            r15 = r14 & 128(0x80, float:1.794E-43)
            if (r15 == 0) goto L36
            r10 = r1
        L36:
            r15 = r14 & 256(0x100, float:3.59E-43)
            if (r15 == 0) goto L3b
            r11 = 1
        L3b:
            r15 = r14 & 512(0x200, float:7.175E-43)
            if (r15 == 0) goto L40
            r12 = r1
        L40:
            r14 = r14 & 1024(0x400, float:1.435E-42)
            if (r14 == 0) goto L45
            r13 = 0
        L45:
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.reader.api.ReaderDocumentOptions.<init>(java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, java.lang.String, com.onyx.android.sdk.reader.api.ReaderChineseConvertType, boolean, boolean, int, java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
