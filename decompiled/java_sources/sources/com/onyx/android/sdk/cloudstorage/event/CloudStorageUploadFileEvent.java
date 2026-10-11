package com.onyx.android.sdk.cloudstorage.event;

import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.data.common.download.data.OnyxFileTransferStatus;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\t\u0010\nR\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageUploadFileEvent;", "", "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "a", "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;", "getCloudFileStatus", "()Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;", "cloudFileStatus", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class CloudStorageUploadFileEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final OnyxFileTransferStatus<CloudFileBean> cloudFileStatus;

    public CloudStorageUploadFileEvent(@NotNull OnyxFileTransferStatus<CloudFileBean> cloudFileStatus) {
        Intrinsics.checkNotNullParameter(cloudFileStatus, "cloudFileStatus");
        this.cloudFileStatus = cloudFileStatus;
    }

    @NotNull
    public final OnyxFileTransferStatus<CloudFileBean> getCloudFileStatus() {
        return this.cloudFileStatus;
    }
}
