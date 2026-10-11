package com.onyx.android.sdk.cloudstorage.provider.onxy.request;

import com.alibaba.sdk.android.oss.model.GetObjectResult;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudUtils;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.data.common.oss.GetObjectBean;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0017\u001a\u00020\r¢\u0006\u0004\b\u0018\u0010\u0019J\b\u0010\u0002\u001a\u00020\u0000H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0002J,\u0010\f\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00030\tH\u0002J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "execute", "", "download", "Ljava/io/InputStream;", "input", "Ljava/io/FileOutputStream;", Constants.ELEMNAME_OUTPUT_STRING, "Lkotlin/Function1;", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "copyStream", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFileBean", "Ljava/io/File;", "getTempFile", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "a", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "rxOSSManager", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nOnyxDownloadRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxDownloadRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,88:1\n1#2:89\n*E\n"})
/* loaded from: classes7.dex */
public final class OnyxDownloadRequest extends TransferCloudFileRequest<OnyxDownloadRequest> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final RxOSSManager rxOSSManager;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean fileBean;

    public OnyxDownloadRequest(@NotNull RxOSSManager rxOSSManager, @NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(rxOSSManager, "rxOSSManager");
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        this.rxOSSManager = rxOSSManager;
        this.fileBean = fileBean;
    }

    public final long copyStream(InputStream input, FileOutputStream output, Function1<? super Long, Unit> listener) {
        byte[] bArr = new byte[65536];
        long j = 0;
        while (true) {
            int read = input.read(bArr);
            if (read == -1) {
                return j;
            }
            output.write(bArr, 0, read);
            j += read;
            listener.invoke(Long.valueOf(j));
        }
    }

    public final void download() throws Exception {
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.deleteFile(this.fileBean.getLocalFilePath());
        File tempFile = getTempFile(this.fileBean);
        fileUtils.ensureFileExists(tempFile.getAbsolutePath());
        Benchmark benchmark = new Benchmark();
        getProgressInfo().setTotalBytes(Math.max(1L, this.fileBean.getSize()));
        onProgress(getProgressInfo(), 0L);
        GetObjectResult syncGetObject = this.rxOSSManager.syncGetObject(new GetObjectBean(OnyxCloudUtils.INSTANCE.getBaseListObjectBean(this.fileBean.getCloudFilePath()).getPrefix(), null, 2, null));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(tempFile);
            try {
                InputStream objectContent = syncGetObject.getObjectContent();
                Intrinsics.checkNotNullExpressionValue(objectContent, "getObjectContent(...)");
                copyStream(objectContent, fileOutputStream, new Function1<Long, Unit>() { // from class: com.onyx.android.sdk.cloudstorage.provider.onxy.request.OnyxDownloadRequest$download$1$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                        invoke(l.longValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(long j) {
                        ProgressInfo progressInfo;
                        OnyxDownloadRequest onyxDownloadRequest = OnyxDownloadRequest.this;
                        progressInfo = onyxDownloadRequest.getProgressInfo();
                        onyxDownloadRequest.onProgress(progressInfo, j);
                    }
                });
                if (tempFile.length() == this.fileBean.getSize()) {
                    File file = new File(tempFile.getAbsolutePath());
                    String localFilePath = this.fileBean.getLocalFilePath();
                    Intrinsics.checkNotNull(localFilePath);
                    onyx.org.apache.commons.io.FileUtils.moveFile(file, new File(localFilePath));
                    String localFilePath2 = this.fileBean.getLocalFilePath();
                    Intrinsics.checkNotNull(localFilePath2);
                    fileUtils.updateMtpDb(new File(localFilePath2));
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileOutputStream, null);
                onyx.org.apache.commons.io.FileUtils.deleteQuietly(tempFile);
                fileUtils.closeQuietly(syncGetObject.getObjectContent());
                benchmark.report("CloudStorage onyx download: " + this.fileBean.localFileString());
            } finally {
            }
        } catch (Throwable th) {
            onyx.org.apache.commons.io.FileUtils.deleteQuietly(tempFile);
            FileUtils.INSTANCE.closeQuietly(syncGetObject.getObjectContent());
            throw th;
        }
    }

    public final File getTempFile(CloudFileBean cloudFileBean) {
        return new File(cloudFileBean.getLocalFilePath() + ".1");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public OnyxDownloadRequest execute() {
        download();
        return this;
    }
}
