package com.onyx.android.sdk.cloudstorage.provider.aliyun.request;

import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunService;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileBase;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0014J\u0016\u0010\r\u001a\u00020\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007H\u0014J\u0010\u0010\u000f\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0005H\u0002R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunDeleteFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest;", "", CouchFieldKey.KEY_PARENT_ID, "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fetchCloudFileList", "", "pathList", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "deleteByPathList", "dataList", "", "deleteCloudFileList", "fileInfo", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "aliYunProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAliYunDeleteFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AliYunDeleteFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunDeleteFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n1855#2,2:77\n*S KotlinDebug\n*F\n+ 1 AliYunDeleteFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunDeleteFileRequest\n*L\n53#1:77,2\n*E\n"})
/* loaded from: classes7.dex */
public final class AliYunDeleteFileRequest extends DeleteCloudFileRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final AliYunProvider aliYunProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AliYunDeleteFileRequest(@NotNull AliYunProvider aliYunProvider, @NotNull CloudFileOperation args) {
        super(aliYunProvider, args);
        Intrinsics.checkNotNullParameter(aliYunProvider, "aliYunProvider");
        Intrinsics.checkNotNullParameter(args, "args");
        this.aliYunProvider = aliYunProvider;
        setProvider(Provider.ALI_YUN);
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest
    @NotNull
    public QueryListResult<CloudFileBean> deleteByPathList(@NotNull List<String> pathList) {
        Intrinsics.checkNotNullParameter(pathList, "pathList");
        return new QueryListResult<>();
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest
    public void deleteCloudFileList(@NotNull List<CloudFileBean> dataList) throws Exception {
        List<String> emptyList;
        Intrinsics.checkNotNullParameter(dataList, "dataList");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        QueryListResult<CloudFileBean> deleteByPathList = deleteByPathList(emptyList);
        Iterator<T> it2 = dataList.iterator();
        while (it2.hasNext()) {
            m32341e((CloudFileBean) it2.next());
        }
        deleteByPathList.ensureList().addAll(dataList);
        processDeleteResponse(deleteByPathList);
    }

    /* renamed from: e */
    public final void m32341e(CloudFileBean fileInfo) throws Exception {
        final AliYunFileInfo aliYunFileInfo = new AliYunFileInfo();
        aliYunFileInfo.setDriveId(this.aliYunProvider.getDefaultDriveId());
        aliYunFileInfo.setFileId(fileInfo.getUniqueId());
        try {
            this.aliYunProvider.getDriveClient().executeCall(new Function1<AliYunService, Call<AliYunFileBase>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunDeleteFileRequest$delete$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Call<AliYunFileBase> invoke(@NotNull AliYunService service) {
                    Intrinsics.checkNotNullParameter(service, "service");
                    return service.softDeleteFile(AliYunFileBase.this);
                }
            });
        } catch (CloudNoteException e) {
            if (e.getCode() != 404) {
                throw e;
            }
        }
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest
    @NotNull
    public List<CloudFileBean> fetchCloudFileList(@Nullable String parentId) {
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setProvider(getProvider().getTitle());
        cloudFileQueryArgs.setParentId(parentId);
        cloudFileQueryArgs.setLimit(100);
        AliYunFetchAllFileListRequest aliYunFetchAllFileListRequest = new AliYunFetchAllFileListRequest(this.aliYunProvider, AliYunQueryArgs.INSTANCE.from(this.aliYunProvider.getDefaultDriveId(), cloudFileQueryArgs));
        aliYunFetchAllFileListRequest.setRecursive(false);
        return this.aliYunProvider.toCloudFiles(aliYunFetchAllFileListRequest.execute());
    }
}
