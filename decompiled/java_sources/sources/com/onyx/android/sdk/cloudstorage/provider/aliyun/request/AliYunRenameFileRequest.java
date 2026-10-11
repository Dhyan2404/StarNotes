package com.onyx.android.sdk.cloudstorage.provider.aliyun.request;

import com.alibaba.fastjson2.TypeReference;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunService;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileRename;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\t\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunRenameFileRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;", "execute", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "operationData", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class AliYunRenameFileRequest extends RxBaseRequest<AliYunFileInfo> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final AliYunProvider provider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileOperation args;

    public AliYunRenameFileRequest(@NotNull AliYunProvider provider, @NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(args, "args");
        this.provider = provider;
        this.args = args;
    }

    /* renamed from: a */
    public final AliYunFileInfo m32347a(CloudFileOperation.OperationData operationData) throws Exception {
        final AliYunFileRename aliYunFileRename = new AliYunFileRename();
        aliYunFileRename.setDriveId(this.provider.getDefaultDriveId());
        aliYunFileRename.setFileId(operationData.getOrigin());
        aliYunFileRename.setName(operationData.getNewName());
        Object body = this.provider.getDriveClient().executeCall(new Function1<AliYunService, Call<AliYunFileInfo>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunRenameFileRequest$rename$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<AliYunFileInfo> invoke(@NotNull AliYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.renameFile(AliYunFileRename.this);
            }
        }).body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return (AliYunFileInfo) body;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public AliYunFileInfo execute() {
        CloudFileOperation.OperationData operationData;
        Object first;
        List list = (List) JSONUtils.INSTANCE.parseObject(this.args.getDataJson(), new TypeReference<List<? extends CloudFileOperation.OperationData>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunRenameFileRequest$execute$operationData$1
        });
        if (list != null) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
            operationData = (CloudFileOperation.OperationData) first;
        } else {
            operationData = null;
        }
        Intrinsics.checkNotNull(operationData);
        return m32347a(operationData);
    }
}
