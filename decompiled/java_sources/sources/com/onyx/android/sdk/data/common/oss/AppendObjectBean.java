package com.onyx.android.sdk.data.common.oss;

import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.model.AppendObjectRequest;
import com.alibaba.sdk.android.oss.model.ObjectMetadata;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BE\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b¢\u0006\u0002\u0010\rJ\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010%\u001a\u00020\tHÆ\u0003J\u0011\u0010&\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bHÆ\u0003JI\u0010'\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bHÆ\u0001J\u0013\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010+\u001a\u00020,H\u0016J\t\u0010-\u001a\u00020\u0005HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/oss/AppendObjectBean;", "", "metadata", "Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;", "ossFileObjectKey", "", "uploadData", "", "position", "", "progressCallback", "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;", "Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;", "(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;Ljava/lang/String;[BJLcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V", "getMetadata", "()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;", "setMetadata", "(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V", "getOssFileObjectKey", "()Ljava/lang/String;", "setOssFileObjectKey", "(Ljava/lang/String;)V", "getPosition", "()J", "setPosition", "(J)V", "getProgressCallback", "()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;", "setProgressCallback", "(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V", "getUploadData", "()[B", "setUploadData", "([B)V", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class AppendObjectBean {

    @Nullable
    private ObjectMetadata metadata;

    @Nullable
    private String ossFileObjectKey;
    private long position;

    @Nullable
    private OSSProgressCallback<AppendObjectRequest> progressCallback;

    @Nullable
    private byte[] uploadData;

    public AppendObjectBean() {
        this(null, null, null, 0L, null, 31, null);
    }

    public static /* synthetic */ AppendObjectBean copy$default(AppendObjectBean appendObjectBean, ObjectMetadata objectMetadata, String str, byte[] bArr, long j, OSSProgressCallback oSSProgressCallback, int i, Object obj) {
        if ((i & 1) != 0) {
            objectMetadata = appendObjectBean.metadata;
        }
        if ((i & 2) != 0) {
            str = appendObjectBean.ossFileObjectKey;
        }
        String str2 = str;
        if ((i & 4) != 0) {
            bArr = appendObjectBean.uploadData;
        }
        byte[] bArr2 = bArr;
        if ((i & 8) != 0) {
            j = appendObjectBean.position;
        }
        long j2 = j;
        if ((i & 16) != 0) {
            oSSProgressCallback = appendObjectBean.progressCallback;
        }
        return appendObjectBean.copy(objectMetadata, str2, bArr2, j2, oSSProgressCallback);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final ObjectMetadata getMetadata() {
        return this.metadata;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getOssFileObjectKey() {
        return this.ossFileObjectKey;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final byte[] getUploadData() {
        return this.uploadData;
    }

    /* renamed from: component4, reason: from getter */
    public final long getPosition() {
        return this.position;
    }

    @Nullable
    public final OSSProgressCallback<AppendObjectRequest> component5() {
        return this.progressCallback;
    }

    @NotNull
    public final AppendObjectBean copy(@Nullable ObjectMetadata metadata, @Nullable String ossFileObjectKey, @Nullable byte[] uploadData, long position, @Nullable OSSProgressCallback<AppendObjectRequest> progressCallback) {
        return new AppendObjectBean(metadata, ossFileObjectKey, uploadData, position, progressCallback);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.areEqual(AppendObjectBean.class, other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(other, "null cannot be cast to non-null type com.onyx.android.sdk.data.common.oss.AppendObjectBean");
        AppendObjectBean appendObjectBean = (AppendObjectBean) other;
        if (!Intrinsics.areEqual(this.metadata, appendObjectBean.metadata) || !Intrinsics.areEqual(this.ossFileObjectKey, appendObjectBean.ossFileObjectKey)) {
            return false;
        }
        byte[] bArr = this.uploadData;
        if (bArr != null) {
            byte[] bArr2 = appendObjectBean.uploadData;
            if (bArr2 == null || !Arrays.equals(bArr, bArr2)) {
                return false;
            }
        } else if (appendObjectBean.uploadData != null) {
            return false;
        }
        return this.position == appendObjectBean.position && Intrinsics.areEqual(this.progressCallback, appendObjectBean.progressCallback);
    }

    @Nullable
    public final ObjectMetadata getMetadata() {
        return this.metadata;
    }

    @Nullable
    public final String getOssFileObjectKey() {
        return this.ossFileObjectKey;
    }

    public final long getPosition() {
        return this.position;
    }

    @Nullable
    public final OSSProgressCallback<AppendObjectRequest> getProgressCallback() {
        return this.progressCallback;
    }

    @Nullable
    public final byte[] getUploadData() {
        return this.uploadData;
    }

    public int hashCode() {
        ObjectMetadata objectMetadata = this.metadata;
        int hashCode = (objectMetadata != null ? objectMetadata.hashCode() : 0) * 31;
        String str = this.ossFileObjectKey;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        byte[] bArr = this.uploadData;
        int hashCode3 = (((hashCode2 + (bArr != null ? Arrays.hashCode(bArr) : 0)) * 31) + Long.hashCode(this.position)) * 31;
        OSSProgressCallback<AppendObjectRequest> oSSProgressCallback = this.progressCallback;
        return hashCode3 + (oSSProgressCallback != null ? oSSProgressCallback.hashCode() : 0);
    }

    public final void setMetadata(@Nullable ObjectMetadata objectMetadata) {
        this.metadata = objectMetadata;
    }

    public final void setOssFileObjectKey(@Nullable String str) {
        this.ossFileObjectKey = str;
    }

    public final void setPosition(long j) {
        this.position = j;
    }

    public final void setProgressCallback(@Nullable OSSProgressCallback<AppendObjectRequest> oSSProgressCallback) {
        this.progressCallback = oSSProgressCallback;
    }

    public final void setUploadData(@Nullable byte[] bArr) {
        this.uploadData = bArr;
    }

    @NotNull
    public String toString() {
        return "AppendObjectBean(metadata=" + this.metadata + ", ossFileObjectKey=" + this.ossFileObjectKey + ", uploadData=" + Arrays.toString(this.uploadData) + ", position=" + this.position + ", progressCallback=" + this.progressCallback + ')';
    }

    public AppendObjectBean(@Nullable ObjectMetadata objectMetadata, @Nullable String str, @Nullable byte[] bArr, long j, @Nullable OSSProgressCallback<AppendObjectRequest> oSSProgressCallback) {
        this.metadata = objectMetadata;
        this.ossFileObjectKey = str;
        this.uploadData = bArr;
        this.position = j;
        this.progressCallback = oSSProgressCallback;
    }

    public /* synthetic */ AppendObjectBean(ObjectMetadata objectMetadata, String str, byte[] bArr, long j, OSSProgressCallback oSSProgressCallback, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : objectMetadata, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : bArr, (i & 8) != 0 ? 0L : j, (i & 16) != 0 ? null : oSSProgressCallback);
    }
}
