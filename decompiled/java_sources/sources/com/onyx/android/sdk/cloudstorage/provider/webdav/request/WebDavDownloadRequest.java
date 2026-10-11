package com.onyx.android.sdk.cloudstorage.provider.webdav.request;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavClient;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavUtils;
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

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u0015\u0010\u0016J\b\u0010\u0002\u001a\u00020\u0000H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0002J,\u0010\f\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00030\tH\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavDownloadRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "execute", "", "download", "Ljava/io/InputStream;", "input", "Ljava/io/FileOutputStream;", Constants.ELEMNAME_OUTPUT_STRING, "Lkotlin/Function1;", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "copyStream", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;", "webDavClient", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nWebDavDownloadRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebDavDownloadRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavDownloadRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,86:1\n1#2:87\n*E\n"})
/* loaded from: classes7.dex */
public final class WebDavDownloadRequest extends TransferCloudFileRequest<WebDavDownloadRequest> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final WebDavClient webDavClient;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean fileBean;

    public WebDavDownloadRequest(@NotNull WebDavClient webDavClient, @NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(webDavClient, "webDavClient");
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        this.webDavClient = webDavClient;
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
        File file = new File(this.fileBean.getLocalFilePath() + ".1");
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.mkdirs(file.getParent());
        Benchmark benchmark = new Benchmark();
        getProgressInfo().setTotalBytes(Math.max(1L, this.fileBean.getSize()));
        onProgress(getProgressInfo(), 0L);
        InputStream inputStream = null;
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                WebDavUtils webDavUtils = WebDavUtils.INSTANCE;
                String webDavURL = this.webDavClient.getWebDavURL();
                Intrinsics.checkNotNull(webDavURL);
                String cloudFilePath = this.fileBean.getCloudFilePath();
                Intrinsics.checkNotNull(cloudFilePath);
                InputStream inputStream2 = this.webDavClient.get(webDavUtils.combineUrl(webDavURL, cloudFilePath));
                try {
                    Intrinsics.checkNotNull(inputStream2);
                    copyStream(inputStream2, fileOutputStream, new Function1<Long, Unit>() { // from class: com.onyx.android.sdk.cloudstorage.provider.webdav.request.WebDavDownloadRequest$download$1$1
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
                            WebDavDownloadRequest webDavDownloadRequest = WebDavDownloadRequest.this;
                            progressInfo = webDavDownloadRequest.getProgressInfo();
                            webDavDownloadRequest.onProgress(progressInfo, j);
                        }
                    });
                    if (file.length() >= 0) {
                        File file2 = new File(file.getAbsolutePath());
                        String localFilePath = this.fileBean.getLocalFilePath();
                        Intrinsics.checkNotNull(localFilePath);
                        onyx.org.apache.commons.io.FileUtils.moveFile(file2, new File(localFilePath));
                        String localFilePath2 = this.fileBean.getLocalFilePath();
                        Intrinsics.checkNotNull(localFilePath2);
                        fileUtils.updateMtpDb(new File(localFilePath2));
                    }
                    Unit unit = Unit.INSTANCE;
                    try {
                        CloseableKt.closeFinally(fileOutputStream, null);
                        fileUtils.closeQuietly(inputStream2);
                        onyx.org.apache.commons.io.FileUtils.deleteQuietly(file);
                        benchmark.report(WebDavDownloadRequest.class.getSimpleName() + " webdav download: " + this.fileBean.localFileString());
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStream2;
                        FileUtils.INSTANCE.closeQuietly(inputStream);
                        onyx.org.apache.commons.io.FileUtils.deleteQuietly(file);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = inputStream2;
                    try {
                        throw th;
                    } finally {
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public WebDavDownloadRequest execute() {
        download();
        return this;
    }
}
