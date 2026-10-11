package com.onyx.android.sdk.cloudstorage.provider.baiduyun.action;

import com.alibaba.fastjson2.TypeReference;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunService;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileResponseBody;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunRenameFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RenameCloudFileAction;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.BooleanUtils;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0013\u001a\u00020\n\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0014J\b\u0010\u000b\u001a\u00020\nH\u0016J\u001e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002R\u0014\u0010\u0013\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunRenameFileAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/RenameCloudFileAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "createParentFolder", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "fileOperation", "rename", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "getProvider", "", "", "fsIds", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;", "t", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "baiduYunProvider", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BaiduYunRenameFileAction extends RenameCloudFileAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final BaiduYunProvider baiduYunProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaiduYunRenameFileAction(@NotNull BaiduYunProvider baiduYunProvider, @NotNull CloudFileOperation fileOperation) {
        super(fileOperation);
        Intrinsics.checkNotNullParameter(baiduYunProvider, "baiduYunProvider");
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        this.baiduYunProvider = baiduYunProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RenameCloudFileAction
    @NotNull
    public Observable<CloudFileListResult> createParentFolder(@NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        return new BaiduYunCreateFolderAction(this.baiduYunProvider, fileBean).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RenameCloudFileAction
    @NotNull
    public CloudFileListResult rename(@NotNull CloudFileOperation fileOperation) {
        Object first;
        CloudFileOperation.OperationData operationData;
        List<Long> listOf;
        Object first2;
        Object first3;
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        CloudFileListResult cloudFileListResult = new CloudFileListResult();
        List<BaiduYunFileResponseBody> info = new BaiduYunRenameFileRequest(this.baiduYunProvider, fileOperation).execute().getInfo();
        if (info != null) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) info);
            BaiduYunFileResponseBody baiduYunFileResponseBody = (BaiduYunFileResponseBody) first;
            if (baiduYunFileResponseBody != null) {
                cloudFileListResult.setCode(baiduYunFileResponseBody.mapToStandardError());
                if (cloudFileListResult.isSuccessful()) {
                    List<CloudFileOperation.OperationData> parseDataList = fileOperation.parseDataList();
                    BaiduYunFileInfo baiduYunFileInfo = null;
                    if (parseDataList != null) {
                        first3 = CollectionsKt___CollectionsKt.first((List<? extends Object>) parseDataList);
                        operationData = (CloudFileOperation.OperationData) first3;
                    } else {
                        operationData = null;
                    }
                    if (operationData != null) {
                        MathUtils mathUtils = MathUtils.INSTANCE;
                        String origin = operationData.getOrigin();
                        Intrinsics.checkNotNull(origin);
                        listOf = CollectionsKt__CollectionsJVMKt.listOf(Long.valueOf(mathUtils.parseLong(origin)));
                        List<BaiduYunFileInfo> m32382t = m32382t(listOf);
                        if (m32382t != null) {
                            first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) m32382t);
                            baiduYunFileInfo = (BaiduYunFileInfo) first2;
                        }
                        if (baiduYunFileInfo != null) {
                            CollectionKt.safeAdd(cloudFileListResult.ensureList(), BaiduYunFileInfo.INSTANCE.toCloudFile(baiduYunFileInfo, this.baiduYunProvider.getAccountId()));
                        }
                    }
                }
                return cloudFileListResult;
            }
        }
        throw new Exception("BaiduYunRenameFileAction rename fileInfoBody is null");
    }

    /* renamed from: t */
    public final List<BaiduYunFileInfo> m32382t(List<Long> fsIds) throws Exception {
        BaiduYunQueryArgs baiduYunQueryArgs = new BaiduYunQueryArgs();
        baiduYunQueryArgs.setMethod(BaiduYunConstant.FILE_METAS);
        baiduYunQueryArgs.setFsids(fsIds);
        baiduYunQueryArgs.setDlink(BooleanUtils.toInteger(true));
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        final Map map = (Map) jSONUtils.parseObject(jSONUtils.toJson(baiduYunQueryArgs), new TypeReference<Map<String, ? extends String>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.BaiduYunRenameFileAction$queryFile$map$1
        });
        Response executeCall = this.baiduYunProvider.getBaiduYunClient().executeCall(new Function1<BaiduYunService, Call<BaiduYunFileResponseBody>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.BaiduYunRenameFileAction$queryFile$response$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<BaiduYunFileResponseBody> invoke(@NotNull BaiduYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.queryFile(map);
            }
        });
        if (executeCall.isSuccessful()) {
            return ((BaiduYunFileResponseBody) executeCall.body()).getList();
        }
        throw new Exception(executeCall.raw().message());
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public BaiduYunProvider getBaiduYunProvider() {
        return this.baiduYunProvider;
    }
}
