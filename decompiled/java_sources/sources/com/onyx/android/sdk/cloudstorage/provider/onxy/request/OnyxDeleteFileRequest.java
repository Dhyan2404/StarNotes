package com.onyx.android.sdk.cloudstorage.provider.onxy.request;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudProvider;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudUtils;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0016\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007H\u0014J\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0014R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDeleteFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest;", "", CouchFieldKey.KEY_PARENT_ID, "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fetchCloudFileList", "", "dataList", "", "deleteCloudFileList", "pathList", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "deleteByPathList", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "onyxCloudProvider", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "b", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "rxOSSManager", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nOnyxDeleteFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxDeleteFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDeleteFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,77:1\n1549#2:78\n1620#2,3:79\n1549#2:82\n1620#2,3:83\n*S KotlinDebug\n*F\n+ 1 OnyxDeleteFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDeleteFileRequest\n*L\n52#1:78\n52#1:79,3\n64#1:82\n64#1:83,3\n*E\n"})
/* loaded from: classes7.dex */
public final class OnyxDeleteFileRequest extends DeleteCloudFileRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final OnyxCloudProvider onyxCloudProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final RxOSSManager rxOSSManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnyxDeleteFileRequest(@NotNull OnyxCloudProvider onyxCloudProvider, @NotNull RxOSSManager rxOSSManager, @NotNull CloudFileOperation args) {
        super(onyxCloudProvider, args);
        Intrinsics.checkNotNullParameter(onyxCloudProvider, "onyxCloudProvider");
        Intrinsics.checkNotNullParameter(rxOSSManager, "rxOSSManager");
        Intrinsics.checkNotNullParameter(args, "args");
        this.onyxCloudProvider = onyxCloudProvider;
        this.rxOSSManager = rxOSSManager;
        setProvider(Provider.ONYX_NOTE);
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest
    @NotNull
    public QueryListResult<CloudFileBean> deleteByPathList(@NotNull List<String> pathList) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(pathList, "pathList");
        List<String> list = pathList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(OnyxCloudUtils.INSTANCE.getCompleteCloudPrefix((String) it2.next()));
        }
        Iterator it3 = CollectionKt.split(arrayList, 1000).iterator();
        while (it3.hasNext()) {
            this.rxOSSManager.syncDeleteMultipleObjects((List) it3.next());
        }
        CloudFileListResult cloudFileListResult = new CloudFileListResult();
        cloudFileListResult.setCount(arrayList.size());
        return cloudFileListResult;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest
    public void deleteCloudFileList(@NotNull List<CloudFileBean> dataList) {
        int collectionSizeOrDefault;
        String cloudFilePath;
        Intrinsics.checkNotNullParameter(dataList, "dataList");
        List<CloudFileBean> list = dataList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (CloudFileBean cloudFileBean : list) {
            if (cloudFileBean.getDir()) {
                cloudFilePath = FilenameUtils.concat(cloudFileBean.getCloudFilePath(), "");
            } else {
                cloudFilePath = cloudFileBean.getCloudFilePath();
                Intrinsics.checkNotNull(cloudFilePath);
            }
            arrayList.add(cloudFilePath);
        }
        processDeleteResponse(deleteByPathList(arrayList));
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest
    @NotNull
    public List<CloudFileBean> fetchCloudFileList(@Nullable String parentId) {
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setProvider(getProvider().getTitle());
        cloudFileQueryArgs.setParentId(parentId);
        return OnyxCloudUtils.INSTANCE.toCloudFiles(this.onyxCloudProvider.getCloudStorageRecordProvider(), new OnyxFetchFileListRequest(this.onyxCloudProvider, this.rxOSSManager, cloudFileQueryArgs).execute().ensureList());
    }
}
