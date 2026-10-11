package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.utils.AliYunUtils;
import com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunService;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunCopyParam;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunUpdateParam;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.utils.HuaweiYunUtils;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0014J\u0012\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0014J\u0018\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0018\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunCopyFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "parent", "", "fetchCloudFileList", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "dataList", "", "copy", "targetFolder", "", "getTargetCloudPath", "fileId", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUpdateParam;", "updateParam", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;", "d", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunCopyParam;", "body", "c", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "huaweiYunProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHuaweiYunCopyFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HuaweiYunCopyFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunCopyFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,118:1\n1855#2,2:119\n*S KotlinDebug\n*F\n+ 1 HuaweiYunCopyFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunCopyFileRequest\n*L\n51#1:119,2\n*E\n"})
/* loaded from: classes7.dex */
public final class HuaweiYunCopyFileRequest extends CopyCloudFileRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final HuaweiYunProvider huaweiYunProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HuaweiYunCopyFileRequest(@NotNull HuaweiYunProvider huaweiYunProvider, @NotNull CloudFileOperation args) {
        super(huaweiYunProvider, args);
        Intrinsics.checkNotNullParameter(huaweiYunProvider, "huaweiYunProvider");
        Intrinsics.checkNotNullParameter(args, "args");
        this.huaweiYunProvider = huaweiYunProvider;
    }

    /* renamed from: c */
    public final HuaweiYunFileListResult.File m32712c(final String fileId, final HuaweiYunCopyParam body) throws Exception {
        Object body2 = this.huaweiYunProvider.getDriveClient().executeCall(new Function1<HuaweiYunService, Call<HuaweiYunFileListResult.File>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunCopyFileRequest$copy$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<HuaweiYunFileListResult.File> invoke(@NotNull HuaweiYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.copyFile(fileId, body);
            }
        }).body();
        Intrinsics.checkNotNullExpressionValue(body2, "body(...)");
        return (HuaweiYunFileListResult.File) body2;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    public void copy(@NotNull List<CloudFileOperation.OperationData> dataList) {
        String normalizeToCloudParentId;
        CloudFileBean queryFileInfoByLocalPath;
        Intrinsics.checkNotNullParameter(dataList, "dataList");
        Debug.INSTANCE.m32035d(HuaweiYunCopyFileRequest.class, "copy cloud file list:" + dataList.size(), new Object[0]);
        for (CloudFileOperation.OperationData operationData : dataList) {
            Debug.INSTANCE.m32035d(HuaweiYunCopyFileRequest.class, "operationData:" + JSONUtils.INSTANCE.toJson(operationData), new Object[0]);
            String dest = operationData.getDest();
            String str = null;
            if ((dest == null || dest.length() == 0) || StringUtils.equals(operationData.getDest(), File.separator)) {
                normalizeToCloudParentId = HuaweiYunUtils.INSTANCE.normalizeToCloudParentId(null);
            } else {
                CloudStorageRecordProvider cloudStorageRecordProvider = this.huaweiYunProvider.getCloudStorageRecordProvider();
                HuaweiYunUtils huaweiYunUtils = HuaweiYunUtils.INSTANCE;
                HuaweiYunProvider huaweiYunProvider = this.huaweiYunProvider;
                String dest2 = operationData.getDest();
                Intrinsics.checkNotNull(dest2);
                CloudFileBean queryFileInfoByLocalPath2 = cloudStorageRecordProvider.queryFileInfoByLocalPath(huaweiYunUtils.getCloudFileLocalPath(huaweiYunProvider, dest2));
                normalizeToCloudParentId = queryFileInfoByLocalPath2 != null ? queryFileInfoByLocalPath2.getUniqueId() : null;
            }
            String origin = operationData.getOrigin();
            if (origin == null) {
                String path = operationData.getPath();
                if (path != null && (queryFileInfoByLocalPath = this.huaweiYunProvider.getCloudStorageRecordProvider().queryFileInfoByLocalPath(HuaweiYunUtils.INSTANCE.getCloudFileLocalPath(this.huaweiYunProvider, path))) != null) {
                    str = queryFileInfoByLocalPath.getUniqueId();
                }
                origin = str;
            }
            CloudFileBean queryFileInfo = this.huaweiYunProvider.getCloudStorageRecordProvider().queryFileInfo(origin);
            Intrinsics.checkNotNull(queryFileInfo);
            String normalizeToCloudParentId2 = HuaweiYunUtils.INSTANCE.normalizeToCloudParentId(queryFileInfo.getParentId());
            if (getCut()) {
                HuaweiYunUpdateParam huaweiYunUpdateParam = new HuaweiYunUpdateParam(operationData.getNewName(), normalizeToCloudParentId, normalizeToCloudParentId2);
                Intrinsics.checkNotNull(origin);
                m32713d(origin, huaweiYunUpdateParam);
            } else {
                String newName = operationData.getNewName();
                Intrinsics.checkNotNull(newName);
                Intrinsics.checkNotNull(normalizeToCloudParentId);
                HuaweiYunCopyParam huaweiYunCopyParam = new HuaweiYunCopyParam(newName, new String[]{normalizeToCloudParentId});
                Intrinsics.checkNotNull(origin);
                m32712c(origin, huaweiYunCopyParam);
            }
        }
    }

    /* renamed from: d */
    public final HuaweiYunFileListResult.File m32713d(final String fileId, final HuaweiYunUpdateParam updateParam) {
        Object body = this.huaweiYunProvider.getDriveClient().executeCall(new Function1<HuaweiYunService, Call<HuaweiYunFileListResult.File>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunCopyFileRequest$move$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<HuaweiYunFileListResult.File> invoke(@NotNull HuaweiYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.updateFile(fileId, updateParam);
            }
        }).body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return (HuaweiYunFileListResult.File) body;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    @NotNull
    public List<CloudFileBean> fetchCloudFileList(@NotNull CloudFileBean parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        String uniqueId = parent.getUniqueId();
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setProvider(Provider.HUAWEI_YUN.getTitle());
        cloudFileQueryArgs.setParentId(AliYunUtils.INSTANCE.normalizeToCloudParentId(uniqueId));
        cloudFileQueryArgs.setLimit(100);
        HuaweiYunFetchAllFileListRequest huaweiYunFetchAllFileListRequest = new HuaweiYunFetchAllFileListRequest(this.huaweiYunProvider, cloudFileQueryArgs);
        huaweiYunFetchAllFileListRequest.setRecursive(false);
        return this.huaweiYunProvider.toCloudFiles(huaweiYunFetchAllFileListRequest.execute());
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    @Nullable
    public String getTargetCloudPath(@NotNull CloudFileOperation.OperationData targetFolder) {
        Intrinsics.checkNotNullParameter(targetFolder, "targetFolder");
        return this.huaweiYunProvider.getCloudStorageRecordProvider().getCloudFilePath(targetFolder.getOrigin(), "/");
    }
}
