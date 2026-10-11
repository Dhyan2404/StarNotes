package com.onyx.android.sdk.cloudstorage.provider.googledriver.action;

import com.google.api.services.drive.model.File;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.request.GoogleDriverUploadRequest;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.utils.GoogleDriverUtils;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\u0010\bJ\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\f2\u0006\u0010\r\u001a\u00020\u0007H\u0014J\b\u0010\u000e\u001a\u00020\u0004H\u0016J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0002H\u0014R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverUploadAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction;", "Lcom/google/api/services/drive/model/File;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "files", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Ljava/util/List;)V", "fileMap", "", "createUploadRequest", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "cloudFile", "getProvider", "toCloudFile", "r", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriverUploadAction extends UploadFileAction<File> {

    @NotNull
    private final Map<File, CloudFileBean> fileMap;

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleDriverUploadAction(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull List<CloudFileBean> files) {
        super(files);
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(files, "files");
        this.googleDriverProvider = googleDriverProvider;
        this.fileMap = new LinkedHashMap();
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction
    @NotNull
    public TransferCloudFileRequest<File> createUploadRequest(@NotNull final CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        try {
            final GoogleDriverProvider googleDriverProvider = this.googleDriverProvider;
            return new GoogleDriverUploadRequest(this, googleDriverProvider) { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleDriverUploadAction$createUploadRequest$1
                final /* synthetic */ GoogleDriverUploadAction this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(googleDriverProvider, CloudFileBean.this);
                    this.this$0 = this;
                }

                @Override // com.onyx.android.sdk.cloudstorage.provider.googledriver.request.GoogleDriverUploadRequest, com.onyx.android.sdk.base.p018rx.RxBaseRequest
                @NotNull
                public File execute() {
                    Map map;
                    File execute = super.execute();
                    map = this.this$0.fileMap;
                    map.put(execute, CloudFileBean.this);
                    return execute;
                }
            };
        } catch (Exception e) {
            throw GoogleDriverUtils.INSTANCE.mapToStandardError(e);
        }
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public GoogleDriverProvider getOnyxCloudProvider() {
        return this.googleDriverProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction
    @NotNull
    public CloudFileBean toCloudFile(@NotNull File r) {
        List<CloudFileBean> listOf;
        Intrinsics.checkNotNullParameter(r, "r");
        GoogleDriveManager.Companion companion = GoogleDriveManager.INSTANCE;
        CloudFileBean cloudFile = companion.toCloudFile(this.googleDriverProvider.getCloudStorageRecordProvider(), r, this.googleDriverProvider.getAccountId());
        CloudStorageRecordProvider cloudStorageRecordProvider = this.googleDriverProvider.getCloudStorageRecordProvider();
        CloudFileBean cloudFileBean = this.fileMap.get(r);
        String parentId = cloudFileBean != null ? cloudFileBean.getParentId() : null;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(cloudFile);
        companion.setFileInfoPath(cloudStorageRecordProvider, parentId, listOf);
        return cloudFile;
    }
}
