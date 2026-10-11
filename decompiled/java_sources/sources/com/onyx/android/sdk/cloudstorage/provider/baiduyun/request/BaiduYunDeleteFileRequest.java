package com.onyx.android.sdk.cloudstorage.provider.baiduyun.request;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunService;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileResponseBody;
import com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0014R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunDeleteFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest;", "", CouchFieldKey.KEY_PARENT_ID, "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fetchCloudFileList", "", "pathList", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "deleteByPathList", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "baiduYunProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BaiduYunDeleteFileRequest extends DeleteCloudFileRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BaiduYunProvider baiduYunProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaiduYunDeleteFileRequest(@NotNull BaiduYunProvider baiduYunProvider, @NotNull CloudFileOperation args) {
        super(baiduYunProvider, args);
        Intrinsics.checkNotNullParameter(baiduYunProvider, "baiduYunProvider");
        Intrinsics.checkNotNullParameter(args, "args");
        this.baiduYunProvider = baiduYunProvider;
        setProvider(Provider.BAIDU_YUN);
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest
    @NotNull
    public QueryListResult<CloudFileBean> deleteByPathList(@NotNull final List<String> pathList) {
        Intrinsics.checkNotNullParameter(pathList, "pathList");
        Response executeCall = this.baiduYunProvider.getBaiduYunClient().executeCall(new Function1<BaiduYunService, Call<BaiduYunFileResponseBody>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunDeleteFileRequest$deleteByPathList$response$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<BaiduYunFileResponseBody> invoke(@NotNull BaiduYunService service) {
                CloudFileOperation args;
                Intrinsics.checkNotNullParameter(service, "service");
                String json = JSONUtils.INSTANCE.toJson(pathList);
                args = this.getArgs();
                return service.operateFile(BaiduYunConstant.FILE_MANAGER, "delete", 0, json, args.getStrategy().getTitle());
            }
        });
        if (!executeCall.isSuccessful()) {
            throw new Exception(executeCall.raw().message());
        }
        QueryListResult<CloudFileBean> queryListResult = new QueryListResult<>();
        queryListResult.setCode(((BaiduYunFileResponseBody) executeCall.body()).getErrno());
        if (executeCall.isSuccessful()) {
            List<BaiduYunFileResponseBody> info = ((BaiduYunFileResponseBody) executeCall.body()).getInfo();
            Intrinsics.checkNotNull(info);
            Iterator<BaiduYunFileResponseBody> it2 = info.iterator();
            while (it2.hasNext()) {
                CollectionKt.safeAdd(queryListResult.ensureList(), BaiduYunFileInfo.INSTANCE.toCloudFile(it2.next(), getCloudStorageProvider().getAccountId()));
            }
            queryListResult.setCount(queryListResult.ensureList().size());
        }
        return queryListResult;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest
    @NotNull
    public List<CloudFileBean> fetchCloudFileList(@Nullable String parentId) {
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setProvider(getProvider().getTitle());
        cloudFileQueryArgs.setParentId(parentId);
        cloudFileQueryArgs.setLimit(1000);
        return BaiduYunFileInfo.INSTANCE.toCloudFiles(new BaiduYunFetchFileListRequest(this.baiduYunProvider, cloudFileQueryArgs).execute().ensureList(), this.baiduYunProvider.getAccountId());
    }
}
