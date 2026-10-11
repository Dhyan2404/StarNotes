package com.onyx.android.sdk.filepicker;

import android.net.Uri;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b \n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001BO\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\f¢\u0006\u0004\bC\u0010DJ\u0006\u0010\u0003\u001a\u00020\u0002J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0002HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\t\u0010\t\u001a\u00020\u0002HÆ\u0003J\t\u0010\n\u001a\u00020\u0002HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\fHÆ\u0003JQ\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u00072\b\b\u0002\u0010\u0011\u001a\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u00022\b\b\u0002\u0010\u0013\u001a\u00020\u00022\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\fHÆ\u0001J\t\u0010\u0016\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0017HÖ\u0001J\u0013\u0010\u001b\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u000e\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010\u0010\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010!\u001a\u0004\b-\u0010#\"\u0004\b.\u0010%R\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u0010!\u001a\u0004\b0\u0010#\"\u0004\b1\u0010%R\"\u0010\u0013\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u0010!\u001a\u0004\b3\u0010#\"\u0004\b4\u0010%R$\u0010\u0014\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R$\u0010B\u001a\u0004\u0018\u00010;8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010A¨\u0006E"}, m61528d2 = {"Lcom/onyx/android/sdk/filepicker/DocumentBean;", "", "", "getExtension", "", "component1", "component2", "Landroid/net/Uri;", "component3", "component4", "component5", "component6", "Lcom/onyx/android/sdk/filepicker/DocumentType;", "component7", "id", "name", "path", HuaweiYunQueryArgs.QUERY_PARENT_MIMETYPE, "time", "size", "documentType", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "J", "getId", "()J", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "c", "Landroid/net/Uri;", "getPath", "()Landroid/net/Uri;", "setPath", "(Landroid/net/Uri;)V", "d", "getMimeType", "setMimeType", "e", "getTime", "setTime", C6997f.f39671c, "getSize", "setSize", C6998g.f39679a, "Lcom/onyx/android/sdk/filepicker/DocumentType;", "getDocumentType", "()Lcom/onyx/android/sdk/filepicker/DocumentType;", "setDocumentType", "(Lcom/onyx/android/sdk/filepicker/DocumentType;)V", "Ljava/io/File;", C6999h.f39688c, "Ljava/io/File;", "getFile", "()Ljava/io/File;", "setFile", "(Ljava/io/File;)V", "file", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/filepicker/DocumentType;)V", "sdk-imagepicker_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class DocumentBean {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public final long id;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public String name;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public Uri path;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @NotNull
    public String mimeType;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    @NotNull
    public String time;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    @NotNull
    public String size;

    /* renamed from: g, reason: from kotlin metadata and from toString */
    @Nullable
    public DocumentType documentType;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public File file;

    public DocumentBean() {
        this(0L, null, null, null, null, null, null, 127, null);
    }

    /* renamed from: component1, reason: from getter */
    public final long getId() {
        return this.id;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final Uri getPath() {
        return this.path;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final String getMimeType() {
        return this.mimeType;
    }

    @NotNull
    /* renamed from: component5, reason: from getter */
    public final String getTime() {
        return this.time;
    }

    @NotNull
    /* renamed from: component6, reason: from getter */
    public final String getSize() {
        return this.size;
    }

    @Nullable
    /* renamed from: component7, reason: from getter */
    public final DocumentType getDocumentType() {
        return this.documentType;
    }

    @NotNull
    public final DocumentBean copy(long id, @NotNull String name, @NotNull Uri path, @NotNull String mimeType, @NotNull String time, @NotNull String size, @Nullable DocumentType documentType) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        Intrinsics.checkNotNullParameter(time, "time");
        Intrinsics.checkNotNullParameter(size, "size");
        return new DocumentBean(id, name, path, mimeType, time, size, documentType);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DocumentBean)) {
            return false;
        }
        DocumentBean documentBean = (DocumentBean) other;
        return this.id == documentBean.id && Intrinsics.areEqual(this.name, documentBean.name) && Intrinsics.areEqual(this.path, documentBean.path) && Intrinsics.areEqual(this.mimeType, documentBean.mimeType) && Intrinsics.areEqual(this.time, documentBean.time) && Intrinsics.areEqual(this.size, documentBean.size) && Intrinsics.areEqual(this.documentType, documentBean.documentType);
    }

    @Nullable
    public final DocumentType getDocumentType() {
        return this.documentType;
    }

    @NotNull
    public final String getExtension() {
        String extension = FilenameUtils.getExtension(this.name);
        if (extension == null || extension.length() == 0) {
            String fileExtension = UriKt.getFileExtension(this.path, ResManager.INSTANCE.getAppContext());
            return fileExtension == null ? "" : fileExtension;
        }
        Intrinsics.checkNotNull(extension);
        return extension;
    }

    @Nullable
    public final File getFile() {
        return this.file;
    }

    public final long getId() {
        return this.id;
    }

    @NotNull
    public final String getMimeType() {
        return this.mimeType;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final Uri getPath() {
        return this.path;
    }

    @NotNull
    public final String getSize() {
        return this.size;
    }

    @NotNull
    public final String getTime() {
        return this.time;
    }

    public int hashCode() {
        int hashCode = ((((((((((Long.hashCode(this.id) * 31) + this.name.hashCode()) * 31) + this.path.hashCode()) * 31) + this.mimeType.hashCode()) * 31) + this.time.hashCode()) * 31) + this.size.hashCode()) * 31;
        DocumentType documentType = this.documentType;
        return hashCode + (documentType == null ? 0 : documentType.hashCode());
    }

    public final void setDocumentType(@Nullable DocumentType documentType) {
        this.documentType = documentType;
    }

    public final void setFile(@Nullable File file) {
        this.file = file;
    }

    public final void setMimeType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.mimeType = str;
    }

    public final void setName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final void setPath(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<set-?>");
        this.path = uri;
    }

    public final void setSize(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.size = str;
    }

    public final void setTime(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.time = str;
    }

    @NotNull
    public String toString() {
        return "DocumentBean(id=" + this.id + ", name=" + this.name + ", path=" + this.path + ", mimeType=" + this.mimeType + ", time=" + this.time + ", size=" + this.size + ", documentType=" + this.documentType + ')';
    }

    public DocumentBean(long j, @NotNull String name, @NotNull Uri path, @NotNull String mimeType, @NotNull String time, @NotNull String size, @Nullable DocumentType documentType) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        Intrinsics.checkNotNullParameter(time, "time");
        Intrinsics.checkNotNullParameter(size, "size");
        this.id = j;
        this.name = name;
        this.path = path;
        this.mimeType = mimeType;
        this.time = time;
        this.size = size;
        this.documentType = documentType;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ DocumentBean(long r9, java.lang.String r11, android.net.Uri r12, java.lang.String r13, java.lang.String r14, java.lang.String r15, com.onyx.android.sdk.filepicker.DocumentType r16, int r17, kotlin.jvm.internal.DefaultConstructorMarker r18) {
        /*
            r8 = this;
            r0 = r17 & 1
            if (r0 == 0) goto L7
            r0 = 0
            goto L8
        L7:
            r0 = r9
        L8:
            r2 = r17 & 2
            java.lang.String r3 = ""
            if (r2 == 0) goto L10
            r2 = r3
            goto L11
        L10:
            r2 = r11
        L11:
            r4 = r17 & 4
            if (r4 == 0) goto L1d
            android.net.Uri r4 = android.net.Uri.EMPTY
            java.lang.String r5 = "EMPTY"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)
            goto L1e
        L1d:
            r4 = r12
        L1e:
            r5 = r17 & 8
            if (r5 == 0) goto L24
            r5 = r3
            goto L25
        L24:
            r5 = r13
        L25:
            r6 = r17 & 16
            if (r6 == 0) goto L2b
            r6 = r3
            goto L2c
        L2b:
            r6 = r14
        L2c:
            r7 = r17 & 32
            if (r7 == 0) goto L31
            goto L32
        L31:
            r3 = r15
        L32:
            r7 = r17 & 64
            if (r7 == 0) goto L38
            r7 = 0
            goto L3a
        L38:
            r7 = r16
        L3a:
            r9 = r0
            r11 = r2
            r12 = r4
            r13 = r5
            r14 = r6
            r15 = r3
            r16 = r7
            r8.<init>(r9, r11, r12, r13, r14, r15, r16)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.filepicker.DocumentBean.<init>(long, java.lang.String, android.net.Uri, java.lang.String, java.lang.String, java.lang.String, com.onyx.android.sdk.filepicker.DocumentType, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
