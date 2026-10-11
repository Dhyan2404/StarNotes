package com.onyx.android.sdk.cloudstorage.provider.onxy.request;

import com.alibaba.sdk.android.oss.model.ObjectMetadata;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudUtils;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.data.common.oss.GetObjectBean;
import com.onyx.android.sdk.data.common.oss.PutObjectBean;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0002R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;", "execute", "d", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "a", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "rxOSSManager", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OnyxUploadRequest extends TransferCloudFileRequest<ObjectMetadata> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final RxOSSManager rxOSSManager;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean fileBean;

    public OnyxUploadRequest(@NotNull RxOSSManager rxOSSManager, @NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(rxOSSManager, "rxOSSManager");
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        this.rxOSSManager = rxOSSManager;
        this.fileBean = fileBean;
    }

    /* renamed from: d */
    public final ObjectMetadata m32810d() throws Exception {
        String localFilePath = this.fileBean.getLocalFilePath();
        Intrinsics.checkNotNull(localFilePath);
        File file = new File(localFilePath);
        getProgressInfo().setTotalBytes(file.length());
        Benchmark benchmark = new Benchmark();
        OnyxCloudUtils onyxCloudUtils = OnyxCloudUtils.INSTANCE;
        String completeCloudPrefix = onyxCloudUtils.getCompleteCloudPrefix(this.fileBean.getCloudFilePath());
        GetObjectBean getObjectBean = new GetObjectBean(completeCloudPrefix, null, 2, null);
        ObjectMetadata objectMetadata = new ObjectMetadata();
        objectMetadata.setContentMD5(FileUtils.INSTANCE.computeMD5(this.fileBean.getLocalFilePath()));
        PutObjectBean putObjectBean = new PutObjectBean(objectMetadata, file.getAbsolutePath(), completeCloudPrefix);
        Debug.INSTANCE.m32035d(OnyxUploadRequest.class, "start upload cloudPath:" + completeCloudPrefix + ",lastModified:" + this.fileBean.getUpdatedAt(), new Object[0]);
        this.rxOSSManager.syncPutObject(putObjectBean, new Function2<Long, Long, Unit>() { // from class: com.onyx.android.sdk.cloudstorage.provider.onxy.request.OnyxUploadRequest$uploadFile$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Long l, Long l2) {
                invoke(l.longValue(), l2.longValue());
                return Unit.INSTANCE;
            }

            public final void invoke(long j, long j2) {
                ProgressInfo progressInfo;
                OnyxUploadRequest onyxUploadRequest = OnyxUploadRequest.this;
                progressInfo = onyxUploadRequest.getProgressInfo();
                onyxUploadRequest.onProgress(progressInfo, j);
            }
        });
        ObjectMetadata metadata = this.rxOSSManager.syncHeadObject(getObjectBean).getMetadata();
        Intrinsics.checkNotNull(metadata);
        onyxCloudUtils.setCloudPath(metadata, completeCloudPrefix);
        benchmark.report("javaClass onyx upload done:" + this.fileBean.localFileString() + ",lastModified:" + metadata.getLastModified());
        return metadata;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public ObjectMetadata execute() {
        return m32810d();
    }
}
