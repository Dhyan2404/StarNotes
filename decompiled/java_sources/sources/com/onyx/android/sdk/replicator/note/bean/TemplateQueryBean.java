package com.onyx.android.sdk.replicator.note.bean;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\b¢\u0006\u0002\u0010\tJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bHÆ\u0003JB\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\u0005HÖ\u0001J\t\u0010\"\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000b\"\u0004\b\u0016\u0010\u0017¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/TemplateQueryBean;", "", CouchFieldKey.KEY_CATEGORY_ID, "", "orientation", "", CouchFieldKey.KEY_SIZE_FORMAT, "excludeSizeFormat", "", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V", "getCategoryId", "()Ljava/lang/String;", "getExcludeSizeFormat", "()Ljava/util/List;", "setExcludeSizeFormat", "(Ljava/util/List;)V", "getOrientation", "()Ljava/lang/Integer;", "setOrientation", "(Ljava/lang/Integer;)V", Constants.INTEGER_SIG, "getSizeFormat", "setSizeFormat", "(Ljava/lang/String;)V", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/bean/TemplateQueryBean;", "equals", "", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "toString", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class TemplateQueryBean {

    @NotNull
    private final String categoryId;

    @Nullable
    private List<String> excludeSizeFormat;

    @Nullable
    private Integer orientation;

    @Nullable
    private String sizeFormat;

    public TemplateQueryBean(@NotNull String categoryId, @Nullable Integer num, @Nullable String str, @Nullable List<String> list) {
        Intrinsics.checkNotNullParameter(categoryId, "categoryId");
        this.categoryId = categoryId;
        this.orientation = num;
        this.sizeFormat = str;
        this.excludeSizeFormat = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TemplateQueryBean copy$default(TemplateQueryBean templateQueryBean, String str, Integer num, String str2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = templateQueryBean.categoryId;
        }
        if ((i & 2) != 0) {
            num = templateQueryBean.orientation;
        }
        if ((i & 4) != 0) {
            str2 = templateQueryBean.sizeFormat;
        }
        if ((i & 8) != 0) {
            list = templateQueryBean.excludeSizeFormat;
        }
        return templateQueryBean.copy(str, num, str2, list);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getCategoryId() {
        return this.categoryId;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final Integer getOrientation() {
        return this.orientation;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final String getSizeFormat() {
        return this.sizeFormat;
    }

    @Nullable
    public final List<String> component4() {
        return this.excludeSizeFormat;
    }

    @NotNull
    public final TemplateQueryBean copy(@NotNull String categoryId, @Nullable Integer orientation, @Nullable String sizeFormat, @Nullable List<String> excludeSizeFormat) {
        Intrinsics.checkNotNullParameter(categoryId, "categoryId");
        return new TemplateQueryBean(categoryId, orientation, sizeFormat, excludeSizeFormat);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TemplateQueryBean)) {
            return false;
        }
        TemplateQueryBean templateQueryBean = (TemplateQueryBean) other;
        return Intrinsics.areEqual(this.categoryId, templateQueryBean.categoryId) && Intrinsics.areEqual(this.orientation, templateQueryBean.orientation) && Intrinsics.areEqual(this.sizeFormat, templateQueryBean.sizeFormat) && Intrinsics.areEqual(this.excludeSizeFormat, templateQueryBean.excludeSizeFormat);
    }

    @NotNull
    public final String getCategoryId() {
        return this.categoryId;
    }

    @Nullable
    public final List<String> getExcludeSizeFormat() {
        return this.excludeSizeFormat;
    }

    @Nullable
    public final Integer getOrientation() {
        return this.orientation;
    }

    @Nullable
    public final String getSizeFormat() {
        return this.sizeFormat;
    }

    public int hashCode() {
        int hashCode = this.categoryId.hashCode() * 31;
        Integer num = this.orientation;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.sizeFormat;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        List<String> list = this.excludeSizeFormat;
        return hashCode3 + (list != null ? list.hashCode() : 0);
    }

    public final void setExcludeSizeFormat(@Nullable List<String> list) {
        this.excludeSizeFormat = list;
    }

    public final void setOrientation(@Nullable Integer num) {
        this.orientation = num;
    }

    public final void setSizeFormat(@Nullable String str) {
        this.sizeFormat = str;
    }

    @NotNull
    public String toString() {
        return "TemplateQueryBean(categoryId=" + this.categoryId + ", orientation=" + this.orientation + ", sizeFormat=" + this.sizeFormat + ", excludeSizeFormat=" + this.excludeSizeFormat + ')';
    }

    public /* synthetic */ TemplateQueryBean(String str, Integer num, String str2, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : list);
    }
}
