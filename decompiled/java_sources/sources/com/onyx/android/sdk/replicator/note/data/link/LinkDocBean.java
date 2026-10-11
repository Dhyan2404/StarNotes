package com.onyx.android.sdk.replicator.note.data.link;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.utils.ShapeLinkUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\tJ\u0006\u0010\u001e\u001a\u00020\u001fJ\u0006\u0010 \u001a\u00020\u001fJ\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0006HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003JC\u0010&\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010*\u001a\u00020\u0006HÖ\u0001J\b\u0010+\u001a\u00020(H\u0007J\b\u0010,\u001a\u0004\u0018\u00010\u0003J\t\u0010-\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0015\u0010\rR\"\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u000b\"\u0004\b\u001d\u0010\r¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;", "", "documentId", "", CouchFieldKey.KEY_TOC_PAGE_ID, "pageIndex", "", "title", "path", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getDocumentId", "()Ljava/lang/String;", "setDocumentId", "(Ljava/lang/String;)V", "getPageId", "setPageId", "getPageIndex", "()I", "setPageIndex", "(I)V", "getPath", "setPath", "shapeIdList", "", "getShapeIdList", "()Ljava/util/List;", "setShapeIdList", "(Ljava/util/List;)V", "getTitle", "setTitle", "clearPage", "", "clearPageSelection", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "isLinkPageValid", "loadDisplayTitle", "toString", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class LinkDocBean {

    @Nullable
    private String documentId;

    @Nullable
    private String pageId;
    private int pageIndex;

    @Nullable
    private String path;

    @Nullable
    private List<String> shapeIdList;

    @Nullable
    private String title;

    public LinkDocBean() {
        this(null, null, 0, null, null, 31, null);
    }

    public static /* synthetic */ LinkDocBean copy$default(LinkDocBean linkDocBean, String str, String str2, int i, String str3, String str4, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = linkDocBean.documentId;
        }
        if ((i2 & 2) != 0) {
            str2 = linkDocBean.pageId;
        }
        String str5 = str2;
        if ((i2 & 4) != 0) {
            i = linkDocBean.pageIndex;
        }
        int i3 = i;
        if ((i2 & 8) != 0) {
            str3 = linkDocBean.title;
        }
        String str6 = str3;
        if ((i2 & 16) != 0) {
            str4 = linkDocBean.path;
        }
        return linkDocBean.copy(str, str5, i3, str6, str4);
    }

    public final void clearPage() {
        this.pageId = null;
        this.pageIndex = -1;
    }

    public final void clearPageSelection() {
        clearPage();
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final String getDocumentId() {
        return this.documentId;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getPageId() {
        return this.pageId;
    }

    /* renamed from: component3, reason: from getter */
    public final int getPageIndex() {
        return this.pageIndex;
    }

    @Nullable
    /* renamed from: component4, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    /* renamed from: component5, reason: from getter */
    public final String getPath() {
        return this.path;
    }

    @NotNull
    public final LinkDocBean copy(@Nullable String documentId, @Nullable String pageId, int pageIndex, @Nullable String title, @Nullable String path) {
        return new LinkDocBean(documentId, pageId, pageIndex, title, path);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LinkDocBean)) {
            return false;
        }
        LinkDocBean linkDocBean = (LinkDocBean) other;
        return Intrinsics.areEqual(this.documentId, linkDocBean.documentId) && Intrinsics.areEqual(this.pageId, linkDocBean.pageId) && this.pageIndex == linkDocBean.pageIndex && Intrinsics.areEqual(this.title, linkDocBean.title) && Intrinsics.areEqual(this.path, linkDocBean.path);
    }

    @Nullable
    public final String getDocumentId() {
        return this.documentId;
    }

    @Nullable
    public final String getPageId() {
        return this.pageId;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    @Nullable
    public final String getPath() {
        return this.path;
    }

    @Nullable
    public final List<String> getShapeIdList() {
        return this.shapeIdList;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.documentId;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.pageId;
        int hashCode2 = (((hashCode + (str2 == null ? 0 : str2.hashCode())) * 31) + Integer.hashCode(this.pageIndex)) * 31;
        String str3 = this.title;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.path;
        return hashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isLinkPageValid() {
        return StringUtils.isNotBlank(this.pageId) && this.pageIndex >= 0;
    }

    @Nullable
    public final String loadDisplayTitle() {
        return ShapeLinkUtils.INSTANCE.getLinkNoteDisplayTitle(this.title, this.pageIndex);
    }

    public final void setDocumentId(@Nullable String str) {
        this.documentId = str;
    }

    public final void setPageId(@Nullable String str) {
        this.pageId = str;
    }

    public final void setPageIndex(int i) {
        this.pageIndex = i;
    }

    public final void setPath(@Nullable String str) {
        this.path = str;
    }

    public final void setShapeIdList(@Nullable List<String> list) {
        this.shapeIdList = list;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }

    @NotNull
    public String toString() {
        return "LinkDocBean(documentId=" + this.documentId + ", pageId=" + this.pageId + ", pageIndex=" + this.pageIndex + ", title=" + this.title + ", path=" + this.path + ')';
    }

    public LinkDocBean(@Nullable String str, @Nullable String str2, int i, @Nullable String str3, @Nullable String str4) {
        this.documentId = str;
        this.pageId = str2;
        this.pageIndex = i;
        this.title = str3;
        this.path = str4;
    }

    public /* synthetic */ LinkDocBean(String str, String str2, int i, String str3, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? -1 : i, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : str4);
    }
}
