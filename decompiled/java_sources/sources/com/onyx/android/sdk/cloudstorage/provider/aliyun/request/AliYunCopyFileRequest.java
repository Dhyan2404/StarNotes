package com.onyx.android.sdk.cloudstorage.provider.aliyun.request;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunService;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileCopy;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.utils.AliYunUtils;
import com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0014J\u0012\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0014J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "parent", "", "fetchCloudFileList", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "dataList", "", "copy", "targetFolder", "", "getTargetCloudPath", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCopy;", "body", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;", "d", "c", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "aliYunProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAliYunCopyFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AliYunCopyFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,106:1\n1855#2,2:107\n*S KotlinDebug\n*F\n+ 1 AliYunCopyFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest\n*L\n50#1:107,2\n*E\n"})
/* loaded from: classes7.dex */
public final class AliYunCopyFileRequest extends CopyCloudFileRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final AliYunProvider aliYunProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AliYunCopyFileRequest(@NotNull AliYunProvider aliYunProvider, @NotNull CloudFileOperation args) {
        super(aliYunProvider, args);
        Intrinsics.checkNotNullParameter(aliYunProvider, "aliYunProvider");
        Intrinsics.checkNotNullParameter(args, "args");
        this.aliYunProvider = aliYunProvider;
    }

    /* renamed from: c */
    public final AliYunFileInfo m32338c(final AliYunFileCopy body) throws Exception {
        Object body2 = this.aliYunProvider.getDriveClient().executeCall(new Function1<AliYunService, Call<AliYunFileInfo>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunCopyFileRequest$copy$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<AliYunFileInfo> invoke(@NotNull AliYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.copyFile(AliYunFileCopy.this);
            }
        }).body();
        Intrinsics.checkNotNullExpressionValue(body2, "body(...)");
        return (AliYunFileInfo) body2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [T, java.lang.String] */
    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    public void copy(@NotNull List<CloudFileOperation.OperationData> dataList) {
        String normalizeToCloudParentId;
        CloudFileBean queryFileInfoByLocalPath;
        Intrinsics.checkNotNullParameter(dataList, "dataList");
        Debug.INSTANCE.m32035d(AliYunCopyFileRequest.class, "copy cloud file list:" + dataList.size(), new Object[0]);
        for (CloudFileOperation.OperationData operationData : dataList) {
            Debug.INSTANCE.m32035d(AliYunCopyFileRequest.class, "operationData:" + JSONUtils.INSTANCE.toJson(operationData), new Object[0]);
            String dest = operationData.getDest();
            T t = 0;
            t = 0;
            if ((dest == null || dest.length() == 0) || StringUtils.equals(operationData.getDest(), File.separator)) {
                normalizeToCloudParentId = AliYunUtils.INSTANCE.normalizeToCloudParentId(null);
            } else {
                CloudStorageRecordProvider cloudStorageRecordProvider = this.aliYunProvider.getCloudStorageRecordProvider();
                AliYunUtils aliYunUtils = AliYunUtils.INSTANCE;
                AliYunProvider aliYunProvider = this.aliYunProvider;
                String dest2 = operationData.getDest();
                Intrinsics.checkNotNull(dest2);
                CloudFileBean queryFileInfoByLocalPath2 = cloudStorageRecordProvider.queryFileInfoByLocalPath(aliYunUtils.getCloudFileLocalPath(aliYunProvider, dest2));
                normalizeToCloudParentId = queryFileInfoByLocalPath2 != null ? queryFileInfoByLocalPath2.getUniqueId() : null;
            }
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            ?? origin = operationData.getOrigin();
            objectRef.element = origin;
            if (origin == 0) {
                String path = operationData.getPath();
                if (path != null && (queryFileInfoByLocalPath = this.aliYunProvider.getCloudStorageRecordProvider().queryFileInfoByLocalPath(AliYunUtils.INSTANCE.getCloudFileLocalPath(this.aliYunProvider, path))) != null) {
                    t = queryFileInfoByLocalPath.getUniqueId();
                }
                objectRef.element = t;
            }
            AliYunFileCopy aliYunFileCopy = new AliYunFileCopy();
            aliYunFileCopy.setDriveId(this.aliYunProvider.getDefaultDriveId());
            aliYunFileCopy.setFileId((String) objectRef.element);
            aliYunFileCopy.setToParentFileId(normalizeToCloudParentId);
            aliYunFileCopy.setNewName(operationData.getNewName());
            if (getCut()) {
                m32339d(aliYunFileCopy);
            } else {
                m32338c(aliYunFileCopy);
            }
        }
    }

    /* renamed from: d */
    public final AliYunFileInfo m32339d(final AliYunFileCopy body) throws Exception {
        Object body2 = this.aliYunProvider.getDriveClient().executeCall(new Function1<AliYunService, Call<AliYunFileInfo>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunCopyFileRequest$move$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<AliYunFileInfo> invoke(@NotNull AliYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.moveFile(AliYunFileCopy.this);
            }
        }).body();
        Intrinsics.checkNotNullExpressionValue(body2, "body(...)");
        return (AliYunFileInfo) body2;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    @NotNull
    public List<CloudFileBean> fetchCloudFileList(@NotNull CloudFileBean parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        String uniqueId = parent.getUniqueId();
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setProvider(Provider.ALI_YUN.getTitle());
        cloudFileQueryArgs.setParentId(AliYunUtils.INSTANCE.normalizeToCloudParentId(uniqueId));
        cloudFileQueryArgs.setLimit(100);
        AliYunFetchAllFileListRequest aliYunFetchAllFileListRequest = new AliYunFetchAllFileListRequest(this.aliYunProvider, AliYunQueryArgs.INSTANCE.from(this.aliYunProvider.getDefaultDriveId(), cloudFileQueryArgs));
        aliYunFetchAllFileListRequest.setRecursive(false);
        return this.aliYunProvider.toCloudFiles(aliYunFetchAllFileListRequest.execute());
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    @Nullable
    public String getTargetCloudPath(@NotNull CloudFileOperation.OperationData targetFolder) {
        Intrinsics.checkNotNullParameter(targetFolder, "targetFolder");
        return this.aliYunProvider.getCloudStorageRecordProvider().getCloudFilePath(targetFolder.getOrigin(), "/");
    }
}
