package com.onyx.android.sdk.cloudstorage.provider.dropbox.request;

import com.dropbox.core.DbxDownloader;
import com.dropbox.core.p006v2.DbxClientV2;
import com.dropbox.core.p006v2.files.FileMetadata;
import com.dropbox.core.util.IOUtil;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.request.DropBoxDownloadRequest;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.io.FileOutputStream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\u000f\u001a\u00020\u0005¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0002\u001a\u00020\u0000H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u000f\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "execute", "", "download", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFileBean", "Ljava/io/File;", "getTempFile", "Lcom/dropbox/core/v2/DbxClientV2;", "a", "Lcom/dropbox/core/v2/DbxClientV2;", Constant.CLIENT, "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", Constants.CONSTRUCTOR_NAME, "(Lcom/dropbox/core/v2/DbxClientV2;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class DropBoxDownloadRequest extends TransferCloudFileRequest<DropBoxDownloadRequest> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final DbxClientV2 client;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean fileBean;

    public DropBoxDownloadRequest(@NotNull DbxClientV2 client, @NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        this.client = client;
        this.fileBean = fileBean;
    }

    /* renamed from: e */
    public static final void m32654e(DropBoxDownloadRequest this$0, long j) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onProgress(this$0.getProgressInfo(), j);
    }

    public final void download() throws Exception {
        File tempFile = getTempFile(this.fileBean);
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.ensureFileExists(tempFile.getAbsolutePath());
        Benchmark benchmark = new Benchmark();
        getProgressInfo().setTotalBytes(Math.max(1L, this.fileBean.getSize()));
        onProgress(getProgressInfo(), 0L);
        DbxDownloader<FileMetadata> download = this.client.files().download(this.fileBean.getCloudFilePath());
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(tempFile);
            try {
                download.download(fileOutputStream, new IOUtil.ProgressListener() { // from class: com.sunia.HTREnginev2.gjf
                    @Override // com.dropbox.core.util.IOUtil.ProgressListener
                    public final void onProgress(long j) {
                        DropBoxDownloadRequest.m32654e(DropBoxDownloadRequest.this, j);
                    }
                });
                if (tempFile.length() >= 0) {
                    tempFile.renameTo(new File(this.fileBean.getLocalFilePath()));
                    String localFilePath = this.fileBean.getLocalFilePath();
                    Intrinsics.checkNotNull(localFilePath);
                    fileUtils.updateMtpDb(new File(localFilePath));
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileOutputStream, null);
                onyx.org.apache.commons.io.FileUtils.deleteQuietly(tempFile);
                benchmark.report("CloudStorage dropbox download: " + this.fileBean.localFileString());
            } finally {
            }
        } catch (Throwable th) {
            onyx.org.apache.commons.io.FileUtils.deleteQuietly(tempFile);
            throw th;
        }
    }

    public final File getTempFile(CloudFileBean cloudFileBean) {
        return new File(cloudFileBean.getLocalFilePath() + ".1");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public DropBoxDownloadRequest execute() {
        download();
        return this;
    }
}
