package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request;

import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunService;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0014J\u0016\u0010\r\u001a\u00020\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007H\u0014J\u0010\u0010\u000f\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0005H\u0002R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunDeleteFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest;", "", CouchFieldKey.KEY_PARENT_ID, "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fetchCloudFileList", "", "pathList", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "deleteByPathList", "dataList", "", "deleteCloudFileList", "fileInfo", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "huaweiYunProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHuaweiYunDeleteFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HuaweiYunDeleteFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunDeleteFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,70:1\n1855#2,2:71\n*S KotlinDebug\n*F\n+ 1 HuaweiYunDeleteFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunDeleteFileRequest\n*L\n50#1:71,2\n*E\n"})
/* loaded from: classes7.dex */
public final class HuaweiYunDeleteFileRequest extends DeleteCloudFileRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final HuaweiYunProvider huaweiYunProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HuaweiYunDeleteFileRequest(@NotNull HuaweiYunProvider huaweiYunProvider, @NotNull CloudFileOperation args) {
        super(huaweiYunProvider, args);
        Intrinsics.checkNotNullParameter(huaweiYunProvider, "huaweiYunProvider");
        Intrinsics.checkNotNullParameter(args, "args");
        this.huaweiYunProvider = huaweiYunProvider;
        setProvider(Provider.HUAWEI_YUN);
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
            m32714e((CloudFileBean) it2.next());
        }
        deleteByPathList.ensureList().addAll(dataList);
        processDeleteResponse(deleteByPathList);
    }

    /* renamed from: e */
    public final void m32714e(final CloudFileBean fileInfo) throws Exception {
        try {
            this.huaweiYunProvider.getDriveClient().executeCall(new Function1<HuaweiYunService, Call<Unit>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunDeleteFileRequest$delete$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Call<Unit> invoke(@NotNull HuaweiYunService service) {
                    Intrinsics.checkNotNullParameter(service, "service");
                    String uniqueId = CloudFileBean.this.getUniqueId();
                    Intrinsics.checkNotNull(uniqueId);
                    return service.deleteFile(uniqueId);
                }
            });
        } catch (CloudNoteException e) {
            if (e.getCode() != 400) {
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
        HuaweiYunFetchAllFileListRequest huaweiYunFetchAllFileListRequest = new HuaweiYunFetchAllFileListRequest(this.huaweiYunProvider, cloudFileQueryArgs);
        huaweiYunFetchAllFileListRequest.setRecursive(false);
        return this.huaweiYunProvider.toCloudFiles(huaweiYunFetchAllFileListRequest.execute());
    }
}
