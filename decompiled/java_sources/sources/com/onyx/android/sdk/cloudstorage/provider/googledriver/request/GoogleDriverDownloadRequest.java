package com.onyx.android.sdk.cloudstorage.provider.googledriver.request;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
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

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J,\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\b\u0010\u0010\u001a\u00020\u000fH\u0002J\b\u0010\u0011\u001a\u00020\u0000H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverDownloadRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "fileBean", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "copyStream", "", "input", "Ljava/io/InputStream;", Constants.ELEMNAME_OUTPUT_STRING, "Ljava/io/FileOutputStream;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lkotlin/Function1;", "", "download", "execute", "getTempFile", "Ljava/io/File;", "cloudFileBean", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGoogleDriverDownloadRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleDriverDownloadRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverDownloadRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,87:1\n1#2:88\n*E\n"})
/* loaded from: classes7.dex */
public final class GoogleDriverDownloadRequest extends TransferCloudFileRequest<GoogleDriverDownloadRequest> {

    @NotNull
    private final CloudFileBean fileBean;

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    public GoogleDriverDownloadRequest(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        this.googleDriverProvider = googleDriverProvider;
        this.fileBean = fileBean;
    }

    private final long copyStream(InputStream input, FileOutputStream output, Function1<? super Long, Unit> listener) {
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

    private final void download() throws Exception {
        File tempFile = getTempFile(this.fileBean);
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.ensureFileExists(tempFile.getAbsolutePath());
        Benchmark benchmark = new Benchmark();
        getProgressInfo().setTotalBytes(Math.max(1L, this.fileBean.getSize()));
        onProgress(getProgressInfo(), 0L);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(tempFile);
            try {
                InputStream executeMediaAsInputStream = GoogleDriveManager.INSTANCE.getOurInstance().getDrive(this.googleDriverProvider.getAccountId()).files().get(this.fileBean.getUniqueId()).executeMediaAsInputStream();
                Intrinsics.checkNotNull(executeMediaAsInputStream);
                copyStream(executeMediaAsInputStream, fileOutputStream, new Function1<Long, Unit>() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.request.GoogleDriverDownloadRequest$download$1$1
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
                        GoogleDriverDownloadRequest googleDriverDownloadRequest = GoogleDriverDownloadRequest.this;
                        progressInfo = googleDriverDownloadRequest.getProgressInfo();
                        googleDriverDownloadRequest.onProgress(progressInfo, j);
                    }
                });
                if (tempFile.length() >= 0) {
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
                benchmark.report("CloudStorage google driver download: " + this.fileBean.localFileString());
            } finally {
            }
        } catch (Throwable th) {
            onyx.org.apache.commons.io.FileUtils.deleteQuietly(tempFile);
            throw th;
        }
    }

    private final File getTempFile(CloudFileBean cloudFileBean) {
        return new File(cloudFileBean.getLocalFilePath() + ".1");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public GoogleDriverDownloadRequest execute() {
        download();
        return this;
    }
}
