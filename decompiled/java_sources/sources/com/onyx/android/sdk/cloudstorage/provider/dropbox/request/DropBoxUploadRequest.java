package com.onyx.android.sdk.cloudstorage.provider.dropbox.request;

import com.dropbox.core.p006v2.DbxClientV2;
import com.dropbox.core.p006v2.files.FileMetadata;
import com.dropbox.core.p006v2.files.UploadUploader;
import com.dropbox.core.p006v2.files.WriteMode;
import com.dropbox.core.util.IOUtil;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxUtils;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.request.DropBoxUploadRequest;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.download.data.OnyxFileTransferStatus;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.ObservableEmitter;
import java.io.File;
import java.io.FileInputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0015\u0010\u0016J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\b\u0010\b\u001a\u00020\u0002H\u0002R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxUploadRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "Lcom/dropbox/core/v2/files/FileMetadata;", "execute", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "progressInfo", "", "onProgress", "e", "Lcom/dropbox/core/v2/DbxClientV2;", "a", "Lcom/dropbox/core/v2/DbxClientV2;", Constant.CLIENT, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", "Lcom/dropbox/core/v2/files/UploadUploader;", "c", "Lcom/dropbox/core/v2/files/UploadUploader;", "uploader", Constants.CONSTRUCTOR_NAME, "(Lcom/dropbox/core/v2/DbxClientV2;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class DropBoxUploadRequest extends TransferCloudFileRequest<FileMetadata> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final DbxClientV2 client;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean fileBean;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public UploadUploader uploader;

    public DropBoxUploadRequest(@NotNull DbxClientV2 client, @NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        this.client = client;
        this.fileBean = fileBean;
    }

    /* renamed from: f */
    public static final void m32656f(DropBoxUploadRequest this$0, long j) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onProgress(this$0.getProgressInfo(), j);
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [com.dropbox.core.DbxUploader, com.dropbox.core.v2.files.UploadUploader, java.lang.Object] */
    /* renamed from: e */
    public final FileMetadata m32657e() throws Exception {
        boolean startsWith$default;
        String localFilePath = this.fileBean.getLocalFilePath();
        Intrinsics.checkNotNull(localFilePath);
        File file = new File(localFilePath);
        FileInputStream fileInputStream = null;
        try {
            getProgressInfo().setTotalBytes(file.length());
            Benchmark benchmark = new Benchmark();
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                String safelyGetStr = StringKt.safelyGetStr(this.fileBean.getCloudFilePath());
                Debug.INSTANCE.m32035d(DropBoxUploadRequest.class, "upload cloudPath:" + safelyGetStr, new Object[0]);
                String separator = File.separator;
                Intrinsics.checkNotNullExpressionValue(separator, "separator");
                startsWith$default = StringsKt__StringsJVMKt.startsWith$default(safelyGetStr, separator, false, 2, null);
                if (!startsWith$default) {
                    safelyGetStr = separator + safelyGetStr;
                }
                ?? start = this.client.files().uploadBuilder(safelyGetStr).withMode(WriteMode.OVERWRITE).start();
                this.uploader = start;
                Intrinsics.checkNotNull(start);
                FileMetadata fileMetadata = (FileMetadata) start.uploadAndFinish(fileInputStream2, new IOUtil.ProgressListener() { // from class: com.sunia.HTREnginev2.ijf
                    @Override // com.dropbox.core.util.IOUtil.ProgressListener
                    public final void onProgress(long j) {
                        DropBoxUploadRequest.m32656f(DropBoxUploadRequest.this, j);
                    }
                });
                benchmark.report("CloudStorage dropbox upload: " + this.fileBean.localFileString());
                Intrinsics.checkNotNull(fileMetadata);
                Util.closeQuietly(fileInputStream2);
                return fileMetadata;
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    Util.closeQuietly(fileInputStream);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest
    public void onProgress(@NotNull ProgressInfo progressInfo) {
        Intrinsics.checkNotNullParameter(progressInfo, "progressInfo");
        if (!getAbort()) {
            ObservableEmitter<OnyxFileTransferStatus<CloudFileBean>> emitter = getEmitter();
            if (emitter != null) {
                emitter.onNext(getStatus().setProgressInfo(progressInfo));
                return;
            }
            return;
        }
        UploadUploader uploadUploader = this.uploader;
        if (uploadUploader != null) {
            Intrinsics.checkNotNull(uploadUploader);
            uploadUploader.close();
            this.uploader = null;
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public FileMetadata execute() {
        try {
            return m32657e();
        } catch (Exception e) {
            this.checkAbort();
            throw DropBoxUtils.INSTANCE.mapToStandardError(e);
        }
    }
}
