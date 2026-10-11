package com.onyx.android.sdk.cloudstorage.provider.onxy.request;

import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.model.AppendObjectRequest;
import com.alibaba.sdk.android.oss.model.AppendObjectResult;
import com.alibaba.sdk.android.oss.model.HeadObjectResult;
import com.alibaba.sdk.android.oss.model.ObjectMetadata;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudUtils;
import com.onyx.android.sdk.cloudstorage.provider.onxy.request.OnyxAppendFileRequest;
import com.onyx.android.sdk.data.common.oss.AppendObjectBean;
import com.onyx.android.sdk.data.common.oss.GetObjectBean;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\t\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxAppendFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;", "execute", "", "cloudPath", "", "position", "fileSize", "e", "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;", C6998g.f39679a, "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "a", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "rxOSSManager", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OnyxAppendFileRequest extends TransferCloudFileRequest<ObjectMetadata> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final RxOSSManager rxOSSManager;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean fileBean;

    public OnyxAppendFileRequest(@NotNull RxOSSManager rxOSSManager, @NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(rxOSSManager, "rxOSSManager");
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        this.rxOSSManager = rxOSSManager;
        this.fileBean = fileBean;
    }

    /* renamed from: f */
    public static final void m32806f(OnyxAppendFileRequest this$0, AtomicLong soFarBytes, AppendObjectRequest appendObjectRequest, long j, long j2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(soFarBytes, "$soFarBytes");
        this$0.getProgressInfo().setSoFarBytes(soFarBytes.get() + j);
        this$0.onProgress(this$0.getProgressInfo(), this$0.getProgressInfo().getSoFarBytes());
        Debug.INSTANCE.m32035d(OnyxAppendFileRequest.class, "append processInfo:" + this$0.getProgressInfo(), new Object[0]);
    }

    /* renamed from: e */
    public final ObjectMetadata m32807e(String cloudPath, long position, long fileSize) throws Exception {
        FileChannel fileChannel;
        Debug.INSTANCE.m32035d(OnyxAppendFileRequest.class, "start append file:" + cloudPath + ",lastModified:" + this.fileBean.getUpdatedAt(), new Object[0]);
        Benchmark benchmark = new Benchmark();
        getProgressInfo().setTotalBytes(fileSize - position);
        ObjectMetadata objectMetadata = new ObjectMetadata();
        FileExtensionUtils fileExtensionUtils = FileExtensionUtils.INSTANCE;
        String extension = FilenameUtils.getExtension(this.fileBean.getName());
        Intrinsics.checkNotNullExpressionValue(extension, "getExtension(...)");
        objectMetadata.setContentType(fileExtensionUtils.mimeType(extension));
        FileChannel fileChannel2 = null;
        try {
            FileChannel position2 = new FileInputStream(this.fileBean.getLocalFilePath()).getChannel().position(position);
            long j = position;
            while (true) {
                try {
                    final AtomicLong atomicLong = new AtomicLong(0L);
                    long min = Long.min(1048576L, fileSize - j);
                    ByteBuffer allocate = ByteBuffer.allocate((int) min);
                    position2.read(allocate);
                    Benchmark benchmark2 = benchmark;
                    fileChannel = position2;
                    try {
                        AppendObjectResult syncAppendObject = this.rxOSSManager.syncAppendObject(new AppendObjectBean(objectMetadata, cloudPath, allocate.array(), position, new OSSProgressCallback() { // from class: com.sunia.HTREnginev2.lgk
                            @Override // com.alibaba.sdk.android.oss.callback.OSSProgressCallback
                            public final void onProgress(Object obj, long j2, long j3) {
                                OnyxAppendFileRequest.m32806f(OnyxAppendFileRequest.this, atomicLong, (AppendObjectRequest) obj, j2, j3);
                            }
                        }));
                        atomicLong.addAndGet(min);
                        j = syncAppendObject.getNextPosition();
                        Debug debug = Debug.INSTANCE;
                        debug.m32035d(OnyxAppendFileRequest.class, "nextPosition:" + j, new Object[0]);
                        if (j >= fileSize) {
                            FileUtils.INSTANCE.closeQuietly(fileChannel);
                            ObjectMetadata metadata = m32808g(cloudPath).getMetadata();
                            benchmark2.report("javaClass onyx append done:" + this.fileBean.localFileString() + ",lastModified:" + metadata.getLastModified());
                            StringBuilder sb = new StringBuilder();
                            sb.append("onyx append objectMetadata:");
                            sb.append(metadata);
                            debug.m32035d(OnyxAppendFileRequest.class, sb.toString(), new Object[0]);
                            Intrinsics.checkNotNull(metadata);
                            return metadata;
                        }
                        position2 = fileChannel;
                        benchmark = benchmark2;
                    } catch (Throwable th) {
                        th = th;
                        fileChannel2 = fileChannel;
                        FileUtils.INSTANCE.closeQuietly(fileChannel2);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileChannel = position2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: g */
    public final HeadObjectResult m32808g(String cloudPath) throws ClientException, ServiceException {
        try {
            HeadObjectResult syncHeadObject = this.rxOSSManager.syncHeadObject(new GetObjectBean(cloudPath, null, 2, null));
            OnyxCloudUtils onyxCloudUtils = OnyxCloudUtils.INSTANCE;
            ObjectMetadata metadata = syncHeadObject.getMetadata();
            Intrinsics.checkNotNullExpressionValue(metadata, "getMetadata(...)");
            onyxCloudUtils.setCloudPath(metadata, cloudPath);
            return syncHeadObject;
        } catch (ServiceException e) {
            if (e.getStatusCode() == 404) {
                return new HeadObjectResult();
            }
            throw e;
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public ObjectMetadata execute() throws Exception {
        OnyxCloudUtils onyxCloudUtils = OnyxCloudUtils.INSTANCE;
        String completeCloudPrefix = onyxCloudUtils.getCompleteCloudPrefix(this.fileBean.getCloudFilePath());
        long fileSize = FileUtils.INSTANCE.getFileSize(this.fileBean.getLocalFilePath());
        HeadObjectResult syncHeadObject = this.rxOSSManager.syncHeadObject(new GetObjectBean(completeCloudPrefix, null, 2, null));
        ObjectMetadata metadata = syncHeadObject.getMetadata();
        Intrinsics.checkNotNullExpressionValue(metadata, "getMetadata(...)");
        long headerAppendPosition = onyxCloudUtils.getHeaderAppendPosition(metadata);
        Debug debug = Debug.INSTANCE;
        debug.m32035d(OnyxAppendFileRequest.class, completeCloudPrefix + " append position:" + headerAppendPosition + ",fileSize:" + fileSize, new Object[0]);
        if (headerAppendPosition >= fileSize) {
            debug.m32035d(OnyxAppendFileRequest.class, "append no changes to cloud file", new Object[0]);
            ObjectMetadata metadata2 = syncHeadObject.getMetadata();
            Intrinsics.checkNotNullExpressionValue(metadata2, "getMetadata(...)");
            return metadata2;
        }
        return m32807e(completeCloudPrefix, headerAppendPosition, fileSize);
    }
}
