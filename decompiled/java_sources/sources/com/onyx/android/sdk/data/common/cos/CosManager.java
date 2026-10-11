package com.onyx.android.sdk.data.common.cos;

import android.content.Context;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cos.CosManager;
import com.onyx.android.sdk.data.serverconvert.convertor.OnFileTransferListener;
import com.tencent.cos.xml.CosXmlService;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.exception.CosXmlServiceException;
import com.tencent.cos.xml.listener.CosXmlProgressListener;
import com.tencent.cos.xml.listener.CosXmlResultListener;
import com.tencent.cos.xml.model.CosXmlRequest;
import com.tencent.cos.xml.model.CosXmlResult;
import com.tencent.cos.xml.transfer.COSXMLDownloadTask;
import com.tencent.cos.xml.transfer.COSXMLTask;
import com.tencent.cos.xml.transfer.COSXMLUploadTask;
import com.tencent.cos.xml.transfer.TransferConfig;
import com.tencent.cos.xml.transfer.TransferManager;
import java.util.concurrent.ConcurrentLinkedQueue;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J.\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0003J\u0006\u0010\u0018\u001a\u00020\u000eJ\u001e\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cos/CosManager;", "", "cosConfigInfo", "Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;", "(Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;)V", "cosXmlService", "Lcom/tencent/cos/xml/CosXmlService;", "runningTaskQueue", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "Lcom/tencent/cos/xml/transfer/COSXMLTask;", "transferManager", "Lcom/tencent/cos/xml/transfer/TransferManager;", "buildCosClient", "downLoadFile", "", "context", "Landroid/content/Context;", "downloadKey", "", "saveDirPath", "saveName", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;", "getCosConfig", "release", BaiduYunConstant.UPLOAD, "uploadKey", "srcPath", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CosManager {

    @NotNull
    private final CosConfigInfo cosConfigInfo;
    private CosXmlService cosXmlService;

    @NotNull
    private final ConcurrentLinkedQueue<COSXMLTask> runningTaskQueue;

    @NotNull
    private TransferManager transferManager;

    public CosManager(@NotNull CosConfigInfo cosConfigInfo) {
        Intrinsics.checkNotNullParameter(cosConfigInfo, "cosConfigInfo");
        this.cosConfigInfo = cosConfigInfo;
        this.transferManager = buildCosClient(cosConfigInfo);
        this.runningTaskQueue = new ConcurrentLinkedQueue<>();
    }

    private final TransferManager buildCosClient(CosConfigInfo cosConfigInfo) {
        this.cosXmlService = new CosXmlService(ResManager.INSTANCE.getAppContext(), new CosXmlServiceConfig.Builder().setRegion(cosConfigInfo.getRegion()).isHttps(true).builder(), new OnyxSessionCredentialProvider(cosConfigInfo));
        TransferConfig build = new TransferConfig.Builder().setForceSimpleUpload(true).build();
        CosXmlService cosXmlService = this.cosXmlService;
        if (cosXmlService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cosXmlService");
            cosXmlService = null;
        }
        return new TransferManager(cosXmlService, build);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void downLoadFile$lambda$1(OnFileTransferListener listener, long j, long j2) {
        Intrinsics.checkNotNullParameter(listener, "$listener");
        listener.onProgress(j, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void upload$lambda$0(OnFileTransferListener listener, long j, long j2) {
        Intrinsics.checkNotNullParameter(listener, "$listener");
        listener.onProgress(j, j2);
    }

    public final void downLoadFile(@NotNull Context context, @NotNull final String downloadKey, @NotNull final String saveDirPath, @NotNull final String saveName, @NotNull final OnFileTransferListener listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(downloadKey, "downloadKey");
        Intrinsics.checkNotNullParameter(saveDirPath, "saveDirPath");
        Intrinsics.checkNotNullParameter(saveName, "saveName");
        Intrinsics.checkNotNullParameter(listener, "listener");
        final COSXMLDownloadTask download = this.transferManager.download(context, this.cosConfigInfo.getBucket(), downloadKey, saveDirPath, saveName);
        download.setCosXmlProgressListener(new CosXmlProgressListener() { // from class: com.sunia.HTREnginev2.tce
            @Override // com.tencent.qcloud.core.common.QCloudProgressListener
            public final void onProgress(long j, long j2) {
                CosManager.downLoadFile$lambda$1(OnFileTransferListener.this, j, j2);
            }
        });
        download.setCosXmlResultListener(new CosXmlResultListener() { // from class: com.onyx.android.sdk.data.common.cos.CosManager$downLoadFile$2
            @Override // com.tencent.cos.xml.listener.CosXmlResultListener
            public void onFail(@Nullable CosXmlRequest request, @Nullable CosXmlClientException clientException, @Nullable CosXmlServiceException serviceException) {
                ConcurrentLinkedQueue concurrentLinkedQueue;
                OnFileTransferListener.DefaultImpls.onResult$default(listener, false, null, null, 6, null);
                concurrentLinkedQueue = this.runningTaskQueue;
                concurrentLinkedQueue.remove(download);
            }

            @Override // com.tencent.cos.xml.listener.CosXmlResultListener
            public void onSuccess(@Nullable CosXmlRequest request, @Nullable CosXmlResult result) {
                ConcurrentLinkedQueue concurrentLinkedQueue;
                Paths paths = Paths.INSTANCE;
                listener.onResult(true, downloadKey, paths.append(paths.toPath(saveDirPath), saveName).toFile().getAbsolutePath());
                concurrentLinkedQueue = this.runningTaskQueue;
                concurrentLinkedQueue.remove(download);
            }
        });
        this.runningTaskQueue.add(download);
    }

    @NotNull
    /* renamed from: getCosConfig, reason: from getter */
    public final CosConfigInfo getCosConfigInfo() {
        return this.cosConfigInfo;
    }

    public final void release() {
        COSXMLTask poll = this.runningTaskQueue.poll();
        while (poll != null) {
            poll.setCosXmlProgressListener(null);
            poll.cancel();
            poll = this.runningTaskQueue.poll();
        }
    }

    public final void upload(@NotNull final String uploadKey, @NotNull final String srcPath, @NotNull final OnFileTransferListener listener) {
        Intrinsics.checkNotNullParameter(uploadKey, "uploadKey");
        Intrinsics.checkNotNullParameter(srcPath, "srcPath");
        Intrinsics.checkNotNullParameter(listener, "listener");
        final COSXMLUploadTask upload = this.transferManager.upload(this.cosConfigInfo.getBucket(), uploadKey, srcPath, (String) null);
        upload.setCosXmlProgressListener(new CosXmlProgressListener() { // from class: com.sunia.HTREnginev2.sce
            @Override // com.tencent.qcloud.core.common.QCloudProgressListener
            public final void onProgress(long j, long j2) {
                CosManager.upload$lambda$0(OnFileTransferListener.this, j, j2);
            }
        });
        upload.setCosXmlResultListener(new CosXmlResultListener() { // from class: com.onyx.android.sdk.data.common.cos.CosManager$upload$2
            @Override // com.tencent.cos.xml.listener.CosXmlResultListener
            public void onFail(@Nullable CosXmlRequest request, @Nullable CosXmlClientException clientException, @Nullable CosXmlServiceException serviceException) {
                ConcurrentLinkedQueue concurrentLinkedQueue;
                Debug.INSTANCE.m32037d("cos doc upload failed!");
                OnFileTransferListener.DefaultImpls.onResult$default(OnFileTransferListener.this, false, null, null, 6, null);
                concurrentLinkedQueue = this.runningTaskQueue;
                concurrentLinkedQueue.remove(upload);
            }

            @Override // com.tencent.cos.xml.listener.CosXmlResultListener
            public void onSuccess(@Nullable CosXmlRequest request, @Nullable CosXmlResult result) {
                ConcurrentLinkedQueue concurrentLinkedQueue;
                Debug.INSTANCE.m32037d("cos doc upload success!");
                OnFileTransferListener.this.onResult(true, uploadKey, srcPath);
                concurrentLinkedQueue = this.runningTaskQueue;
                concurrentLinkedQueue.remove(upload);
            }
        });
        this.runningTaskQueue.add(upload);
    }
}
