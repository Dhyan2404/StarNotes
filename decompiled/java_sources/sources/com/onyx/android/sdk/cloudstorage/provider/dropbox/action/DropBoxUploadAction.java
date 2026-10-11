package com.onyx.android.sdk.cloudstorage.provider.dropbox.action;

import com.dropbox.core.p006v2.files.FileMetadata;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxProvider;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxUtils;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.request.DropBoxUploadRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\r\u001a\u00020\t\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0004H\u0014J\b\u0010\n\u001a\u00020\tH\u0016R\u0014\u0010\r\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxUploadAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction;", "Lcom/dropbox/core/v2/files/FileMetadata;", "r", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "toCloudFile", "cloudFile", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "createUploadRequest", "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;", "dropBoxProvider", "", "files", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Ljava/util/List;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class DropBoxUploadAction extends UploadFileAction<FileMetadata> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final DropBoxProvider dropBoxProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DropBoxUploadAction(@NotNull DropBoxProvider dropBoxProvider, @NotNull List<CloudFileBean> files) {
        super(files);
        Intrinsics.checkNotNullParameter(dropBoxProvider, "dropBoxProvider");
        Intrinsics.checkNotNullParameter(files, "files");
        this.dropBoxProvider = dropBoxProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction
    @NotNull
    public TransferCloudFileRequest<FileMetadata> createUploadRequest(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        return new DropBoxUploadRequest(this.dropBoxProvider.getDbxClient(), cloudFile);
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public DropBoxProvider getOnyxCloudProvider() {
        return this.dropBoxProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction
    @NotNull
    public CloudFileBean toCloudFile(@NotNull FileMetadata r) {
        Intrinsics.checkNotNullParameter(r, "r");
        return DropBoxUtils.INSTANCE.toCloudFile(this.dropBoxProvider.getCloudStorageRecordProvider(), r, this.dropBoxProvider.getAccountId());
    }
}
