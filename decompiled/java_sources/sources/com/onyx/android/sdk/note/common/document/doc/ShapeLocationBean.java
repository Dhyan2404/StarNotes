package com.onyx.android.sdk.note.common.document.doc;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0015\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b!\u0010\"J\u0006\u0010\u0003\u001a\u00020\u0002J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J'\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u0007HÆ\u0001J\t\u0010\r\u001a\u00020\u0004HÖ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\t\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\n\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0013\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017R\"\u0010\u000b\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/document/doc/ShapeLocationBean;", "", "", "isEnabledQueryNextShape", "", "component1", "component2", "Ljava/util/Date;", "component3", "shapeId", CouchFieldKey.KEY_TOC_PAGE_ID, CouchFieldKey.KEY_CREATE_AT, "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getShapeId", "()Ljava/lang/String;", "setShapeId", "(Ljava/lang/String;)V", "b", "getPageId", "setPageId", "c", "Ljava/util/Date;", "getCreatedAt", "()Ljava/util/Date;", "setCreatedAt", "(Ljava/util/Date;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ShapeLocationBean {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public String shapeId;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public String pageId;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public Date createdAt;

    public ShapeLocationBean() {
        this(null, null, null, 7, null);
    }

    public static /* synthetic */ ShapeLocationBean copy$default(ShapeLocationBean shapeLocationBean, String str, String str2, Date date, int i, Object obj) {
        if ((i & 1) != 0) {
            str = shapeLocationBean.shapeId;
        }
        if ((i & 2) != 0) {
            str2 = shapeLocationBean.pageId;
        }
        if ((i & 4) != 0) {
            date = shapeLocationBean.createdAt;
        }
        return shapeLocationBean.copy(str, str2, date);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getShapeId() {
        return this.shapeId;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getPageId() {
        return this.pageId;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final Date getCreatedAt() {
        return this.createdAt;
    }

    @NotNull
    public final ShapeLocationBean copy(@NotNull String shapeId, @NotNull String pageId, @NotNull Date createdAt) {
        Intrinsics.checkNotNullParameter(shapeId, "shapeId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        return new ShapeLocationBean(shapeId, pageId, createdAt);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ShapeLocationBean)) {
            return false;
        }
        ShapeLocationBean shapeLocationBean = (ShapeLocationBean) other;
        return Intrinsics.areEqual(this.shapeId, shapeLocationBean.shapeId) && Intrinsics.areEqual(this.pageId, shapeLocationBean.pageId) && Intrinsics.areEqual(this.createdAt, shapeLocationBean.createdAt);
    }

    @NotNull
    public final Date getCreatedAt() {
        return this.createdAt;
    }

    @NotNull
    public final String getPageId() {
        return this.pageId;
    }

    @NotNull
    public final String getShapeId() {
        return this.shapeId;
    }

    public int hashCode() {
        return (((this.shapeId.hashCode() * 31) + this.pageId.hashCode()) * 31) + this.createdAt.hashCode();
    }

    public final boolean isEnabledQueryNextShape() {
        return this.shapeId.length() > 0;
    }

    public final void setCreatedAt(@NotNull Date date) {
        Intrinsics.checkNotNullParameter(date, "<set-?>");
        this.createdAt = date;
    }

    public final void setPageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageId = str;
    }

    public final void setShapeId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.shapeId = str;
    }

    @NotNull
    public String toString() {
        return "ShapeLocationBean(shapeId=" + this.shapeId + ", pageId=" + this.pageId + ", createdAt=" + this.createdAt + ')';
    }

    public ShapeLocationBean(@NotNull String shapeId, @NotNull String pageId, @NotNull Date createdAt) {
        Intrinsics.checkNotNullParameter(shapeId, "shapeId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        this.shapeId = shapeId;
        this.pageId = pageId;
        this.createdAt = createdAt;
    }

    public /* synthetic */ ShapeLocationBean(String str, String str2, Date date, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? new Date() : date);
    }
}
