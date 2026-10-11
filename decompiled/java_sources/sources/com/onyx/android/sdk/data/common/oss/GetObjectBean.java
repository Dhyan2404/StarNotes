package com.onyx.android.sdk.data.common.oss;

import com.alibaba.sdk.android.oss.model.Range;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;", "", "ossFileObjectKey", "", SessionDescription.f26441q, "Lcom/alibaba/sdk/android/oss/model/Range;", "(Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/Range;)V", "getOssFileObjectKey", "()Ljava/lang/String;", "setOssFileObjectKey", "(Ljava/lang/String;)V", "getRange", "()Lcom/alibaba/sdk/android/oss/model/Range;", "setRange", "(Lcom/alibaba/sdk/android/oss/model/Range;)V", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class GetObjectBean {

    @Nullable
    private String ossFileObjectKey;

    @Nullable
    private Range range;

    /* JADX WARN: Multi-variable type inference failed */
    public GetObjectBean() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ GetObjectBean copy$default(GetObjectBean getObjectBean, String str, Range range, int i, Object obj) {
        if ((i & 1) != 0) {
            str = getObjectBean.ossFileObjectKey;
        }
        if ((i & 2) != 0) {
            range = getObjectBean.range;
        }
        return getObjectBean.copy(str, range);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final String getOssFileObjectKey() {
        return this.ossFileObjectKey;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final Range getRange() {
        return this.range;
    }

    @NotNull
    public final GetObjectBean copy(@Nullable String ossFileObjectKey, @Nullable Range range) {
        return new GetObjectBean(ossFileObjectKey, range);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GetObjectBean)) {
            return false;
        }
        GetObjectBean getObjectBean = (GetObjectBean) other;
        return Intrinsics.areEqual(this.ossFileObjectKey, getObjectBean.ossFileObjectKey) && Intrinsics.areEqual(this.range, getObjectBean.range);
    }

    @Nullable
    public final String getOssFileObjectKey() {
        return this.ossFileObjectKey;
    }

    @Nullable
    public final Range getRange() {
        return this.range;
    }

    public int hashCode() {
        String str = this.ossFileObjectKey;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        Range range = this.range;
        return hashCode + (range != null ? range.hashCode() : 0);
    }

    public final void setOssFileObjectKey(@Nullable String str) {
        this.ossFileObjectKey = str;
    }

    public final void setRange(@Nullable Range range) {
        this.range = range;
    }

    @NotNull
    public String toString() {
        return "GetObjectBean(ossFileObjectKey=" + this.ossFileObjectKey + ", range=" + this.range + ')';
    }

    public GetObjectBean(@Nullable String str, @Nullable Range range) {
        this.ossFileObjectKey = str;
        this.range = range;
    }

    public /* synthetic */ GetObjectBean(String str, Range range, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : range);
    }
}
