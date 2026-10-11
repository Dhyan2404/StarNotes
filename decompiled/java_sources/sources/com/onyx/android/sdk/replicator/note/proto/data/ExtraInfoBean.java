package com.onyx.android.sdk.replicator.note.proto.data;

import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u001a\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b(\u0010)J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0005HÆ\u0003J5\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\t\u0010\r\u001a\u00020\u0005HÖ\u0001J\t\u0010\u000e\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0013\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017R$\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u001c\u001a\u0004\b\"\u0010\u001e\"\u0004\b#\u0010 R$\u0010'\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u001c\u001a\u0004\b%\u0010\u001e\"\u0004\b&\u0010 ¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;", "", "", "component1", "component2", "", "component3", "component4", "docVersion", "appVersionCode", Constant.TAG_USER_ID, "documentId", "copy", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "I", "getDocVersion", "()I", "setDocVersion", "(I)V", "b", "getAppVersionCode", "setAppVersionCode", "c", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getUserId", "()Ljava/lang/String;", "setUserId", "(Ljava/lang/String;)V", "d", "getDocumentId", "setDocumentId", "e", "getExportPdfPagesResult", "setExportPdfPagesResult", "exportPdfPagesResult", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(IILjava/lang/String;Ljava/lang/String;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ExtraInfoBean {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public int docVersion;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public int appVersionCode;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @Nullable
    public String userId;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @Nullable
    public String documentId;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public String exportPdfPagesResult;

    public ExtraInfoBean() {
        this(0, 0, null, null, 15, null);
    }

    public static /* synthetic */ ExtraInfoBean copy$default(ExtraInfoBean extraInfoBean, int i, int i2, String str, String str2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = extraInfoBean.docVersion;
        }
        if ((i3 & 2) != 0) {
            i2 = extraInfoBean.appVersionCode;
        }
        if ((i3 & 4) != 0) {
            str = extraInfoBean.userId;
        }
        if ((i3 & 8) != 0) {
            str2 = extraInfoBean.documentId;
        }
        return extraInfoBean.copy(i, i2, str, str2);
    }

    /* renamed from: component1, reason: from getter */
    public final int getDocVersion() {
        return this.docVersion;
    }

    /* renamed from: component2, reason: from getter */
    public final int getAppVersionCode() {
        return this.appVersionCode;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final String getUserId() {
        return this.userId;
    }

    @Nullable
    /* renamed from: component4, reason: from getter */
    public final String getDocumentId() {
        return this.documentId;
    }

    @NotNull
    public final ExtraInfoBean copy(int docVersion, int appVersionCode, @Nullable String userId, @Nullable String documentId) {
        return new ExtraInfoBean(docVersion, appVersionCode, userId, documentId);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ExtraInfoBean)) {
            return false;
        }
        ExtraInfoBean extraInfoBean = (ExtraInfoBean) other;
        return this.docVersion == extraInfoBean.docVersion && this.appVersionCode == extraInfoBean.appVersionCode && Intrinsics.areEqual(this.userId, extraInfoBean.userId) && Intrinsics.areEqual(this.documentId, extraInfoBean.documentId);
    }

    public final int getAppVersionCode() {
        return this.appVersionCode;
    }

    public final int getDocVersion() {
        return this.docVersion;
    }

    @Nullable
    public final String getDocumentId() {
        return this.documentId;
    }

    @Nullable
    public final String getExportPdfPagesResult() {
        return this.exportPdfPagesResult;
    }

    @Nullable
    public final String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int hashCode = ((Integer.hashCode(this.docVersion) * 31) + Integer.hashCode(this.appVersionCode)) * 31;
        String str = this.userId;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.documentId;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setAppVersionCode(int i) {
        this.appVersionCode = i;
    }

    public final void setDocVersion(int i) {
        this.docVersion = i;
    }

    public final void setDocumentId(@Nullable String str) {
        this.documentId = str;
    }

    public final void setExportPdfPagesResult(@Nullable String str) {
        this.exportPdfPagesResult = str;
    }

    public final void setUserId(@Nullable String str) {
        this.userId = str;
    }

    @NotNull
    public String toString() {
        return "ExtraInfoBean(docVersion=" + this.docVersion + ", appVersionCode=" + this.appVersionCode + ", userId=" + this.userId + ", documentId=" + this.documentId + ')';
    }

    public ExtraInfoBean(int i, int i2, @Nullable String str, @Nullable String str2) {
        this.docVersion = i;
        this.appVersionCode = i2;
        this.userId = str;
        this.documentId = str2;
    }

    public /* synthetic */ ExtraInfoBean(int i, int i2, String str, String str2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 1 : i, (i3 & 2) != 0 ? 0 : i2, (i3 & 4) != 0 ? null : str, (i3 & 8) != 0 ? null : str2);
    }
}
