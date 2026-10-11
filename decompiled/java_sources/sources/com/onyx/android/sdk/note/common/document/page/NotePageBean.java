package com.onyx.android.sdk.note.common.document.page;

import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0013\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b!\u0010\"J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0003J3\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002HÆ\u0001J\t\u0010\f\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000e\u001a\u00020\rHÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0013\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0013\u001a\u0004\b\u001c\u0010\u0015\"\u0004\b\u001d\u0010\u0017R$\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0013\u001a\u0004\b\u001f\u0010\u0015\"\u0004\b \u0010\u0017¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/document/page/NotePageBean;", "", "", "component1", "component2", "component3", "component4", Constant.TAG_USER_ID, CouchFieldKey.KEY_DOCUMENT_ID, CouchFieldKey.KEY_PAGE_ID, CouchFieldKey.KEY_SUB_PAGE_NAME, "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getUserId", "()Ljava/lang/String;", "setUserId", "(Ljava/lang/String;)V", "b", "getDocumentUniqueId", "setDocumentUniqueId", "c", "getPageUniqueId", "setPageUniqueId", "d", "getSubPageName", "setSubPageName", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class NotePageBean {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public String userId;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public String documentUniqueId;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public String pageUniqueId;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @Nullable
    public String subPageName;

    public NotePageBean(@NotNull String userId, @NotNull String documentUniqueId, @NotNull String pageUniqueId, @Nullable String str) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(documentUniqueId, "documentUniqueId");
        Intrinsics.checkNotNullParameter(pageUniqueId, "pageUniqueId");
        this.userId = userId;
        this.documentUniqueId = documentUniqueId;
        this.pageUniqueId = pageUniqueId;
        this.subPageName = str;
    }

    public static /* synthetic */ NotePageBean copy$default(NotePageBean notePageBean, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = notePageBean.userId;
        }
        if ((i & 2) != 0) {
            str2 = notePageBean.documentUniqueId;
        }
        if ((i & 4) != 0) {
            str3 = notePageBean.pageUniqueId;
        }
        if ((i & 8) != 0) {
            str4 = notePageBean.subPageName;
        }
        return notePageBean.copy(str, str2, str3, str4);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getUserId() {
        return this.userId;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getDocumentUniqueId() {
        return this.documentUniqueId;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getPageUniqueId() {
        return this.pageUniqueId;
    }

    @Nullable
    /* renamed from: component4, reason: from getter */
    public final String getSubPageName() {
        return this.subPageName;
    }

    @NotNull
    public final NotePageBean copy(@NotNull String userId, @NotNull String documentUniqueId, @NotNull String pageUniqueId, @Nullable String subPageName) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(documentUniqueId, "documentUniqueId");
        Intrinsics.checkNotNullParameter(pageUniqueId, "pageUniqueId");
        return new NotePageBean(userId, documentUniqueId, pageUniqueId, subPageName);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NotePageBean)) {
            return false;
        }
        NotePageBean notePageBean = (NotePageBean) other;
        return Intrinsics.areEqual(this.userId, notePageBean.userId) && Intrinsics.areEqual(this.documentUniqueId, notePageBean.documentUniqueId) && Intrinsics.areEqual(this.pageUniqueId, notePageBean.pageUniqueId) && Intrinsics.areEqual(this.subPageName, notePageBean.subPageName);
    }

    @NotNull
    public final String getDocumentUniqueId() {
        return this.documentUniqueId;
    }

    @NotNull
    public final String getPageUniqueId() {
        return this.pageUniqueId;
    }

    @Nullable
    public final String getSubPageName() {
        return this.subPageName;
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int hashCode = ((((this.userId.hashCode() * 31) + this.documentUniqueId.hashCode()) * 31) + this.pageUniqueId.hashCode()) * 31;
        String str = this.subPageName;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public final void setDocumentUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentUniqueId = str;
    }

    public final void setPageUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageUniqueId = str;
    }

    public final void setSubPageName(@Nullable String str) {
        this.subPageName = str;
    }

    public final void setUserId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userId = str;
    }

    @NotNull
    public String toString() {
        return "NotePageBean(userId=" + this.userId + ", documentUniqueId=" + this.documentUniqueId + ", pageUniqueId=" + this.pageUniqueId + ", subPageName=" + this.subPageName + ')';
    }

    public /* synthetic */ NotePageBean(String str, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i & 8) != 0 ? null : str4);
    }
}
