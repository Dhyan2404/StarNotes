package com.onyx.android.sdk.cloudstorage.provider.googledriver.request;

import com.google.api.services.drive.model.File;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.data.UploadFileContent;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FileUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\u0002H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverUploadRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "Lcom/google/api/services/drive/model/File;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "fileBean", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "execute", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class GoogleDriverUploadRequest extends TransferCloudFileRequest<File> {

    @NotNull
    private final CloudFileBean fileBean;

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    public GoogleDriverUploadRequest(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        this.googleDriverProvider = googleDriverProvider;
        this.fileBean = fileBean;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public File execute() {
        ProgressInfo progressInfo = getProgressInfo();
        String localFilePath = this.fileBean.getLocalFilePath();
        Intrinsics.checkNotNull(localFilePath);
        progressInfo.setTotalBytes(FileUtils.sizeOf(new java.io.File(localFilePath)));
        Benchmark benchmark = new Benchmark();
        String accountId = this.googleDriverProvider.getAccountId();
        GoogleDriveManager.Companion companion = GoogleDriveManager.INSTANCE;
        String normalizeParentId = companion.getOurInstance().normalizeParentId(accountId, this.fileBean.getParentId());
        GoogleDriveManager ourInstance = companion.getOurInstance();
        String name = this.fileBean.getName();
        Intrinsics.checkNotNull(name);
        String localFilePath2 = this.fileBean.getLocalFilePath();
        Intrinsics.checkNotNull(localFilePath2);
        File saveFile = ourInstance.saveFile(accountId, normalizeParentId, name, localFilePath2, new UploadFileContent.ProgressListener() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.request.GoogleDriverUploadRequest$execute$file$1
            @Override // com.onyx.android.sdk.cloudstorage.provider.googledriver.data.UploadFileContent.ProgressListener
            public void notifyProgress(@NotNull ProgressInfo progressInfo2) {
                Intrinsics.checkNotNullParameter(progressInfo2, "progressInfo");
                GoogleDriverUploadRequest.this.onProgress(progressInfo2, progressInfo2.getSoFarBytes());
            }
        });
        benchmark.report("CloudStorage google driver upload: " + this.fileBean.localFileString());
        return saveFile;
    }
}
