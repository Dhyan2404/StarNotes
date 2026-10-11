package com.onyx.android.sdk.data.common.oss;

import com.alibaba.sdk.android.oss.model.ObjectMetadata;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J-\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0005HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000f¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;", "", "metadata", "Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;", "uploadFilePath", "", "ossFileObjectKey", "(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;Ljava/lang/String;Ljava/lang/String;)V", "getMetadata", "()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;", "setMetadata", "(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V", "getOssFileObjectKey", "()Ljava/lang/String;", "setOssFileObjectKey", "(Ljava/lang/String;)V", "getUploadFilePath", "setUploadFilePath", "component1", "component2", "component3", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class PutObjectBean {

    @Nullable
    private ObjectMetadata metadata;

    @Nullable
    private String ossFileObjectKey;

    @Nullable
    private String uploadFilePath;

    public PutObjectBean() {
        this(null, null, null, 7, null);
    }

    public static /* synthetic */ PutObjectBean copy$default(PutObjectBean putObjectBean, ObjectMetadata objectMetadata, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            objectMetadata = putObjectBean.metadata;
        }
        if ((i & 2) != 0) {
            str = putObjectBean.uploadFilePath;
        }
        if ((i & 4) != 0) {
            str2 = putObjectBean.ossFileObjectKey;
        }
        return putObjectBean.copy(objectMetadata, str, str2);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final ObjectMetadata getMetadata() {
        return this.metadata;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getUploadFilePath() {
        return this.uploadFilePath;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final String getOssFileObjectKey() {
        return this.ossFileObjectKey;
    }

    @NotNull
    public final PutObjectBean copy(@Nullable ObjectMetadata metadata, @Nullable String uploadFilePath, @Nullable String ossFileObjectKey) {
        return new PutObjectBean(metadata, uploadFilePath, ossFileObjectKey);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PutObjectBean)) {
            return false;
        }
        PutObjectBean putObjectBean = (PutObjectBean) other;
        return Intrinsics.areEqual(this.metadata, putObjectBean.metadata) && Intrinsics.areEqual(this.uploadFilePath, putObjectBean.uploadFilePath) && Intrinsics.areEqual(this.ossFileObjectKey, putObjectBean.ossFileObjectKey);
    }

    @Nullable
    public final ObjectMetadata getMetadata() {
        return this.metadata;
    }

    @Nullable
    public final String getOssFileObjectKey() {
        return this.ossFileObjectKey;
    }

    @Nullable
    public final String getUploadFilePath() {
        return this.uploadFilePath;
    }

    public int hashCode() {
        ObjectMetadata objectMetadata = this.metadata;
        int hashCode = (objectMetadata == null ? 0 : objectMetadata.hashCode()) * 31;
        String str = this.uploadFilePath;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.ossFileObjectKey;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setMetadata(@Nullable ObjectMetadata objectMetadata) {
        this.metadata = objectMetadata;
    }

    public final void setOssFileObjectKey(@Nullable String str) {
        this.ossFileObjectKey = str;
    }

    public final void setUploadFilePath(@Nullable String str) {
        this.uploadFilePath = str;
    }

    @NotNull
    public String toString() {
        return "PutObjectBean(metadata=" + this.metadata + ", uploadFilePath=" + this.uploadFilePath + ", ossFileObjectKey=" + this.ossFileObjectKey + ')';
    }

    public PutObjectBean(@Nullable ObjectMetadata objectMetadata, @Nullable String str, @Nullable String str2) {
        this.metadata = objectMetadata;
        this.uploadFilePath = str;
        this.ossFileObjectKey = str2;
    }

    public /* synthetic */ PutObjectBean(ObjectMetadata objectMetadata, String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : objectMetadata, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2);
    }
}
