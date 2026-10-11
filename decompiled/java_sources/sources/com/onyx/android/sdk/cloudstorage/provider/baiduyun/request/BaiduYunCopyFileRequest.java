package com.onyx.android.sdk.cloudstorage.provider.baiduyun.request;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunService;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileResponseBody;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0014J\u0012\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0014J\u001c\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0006H\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCopyFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "parent", "", "fetchCloudFileList", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "dataList", "", "copy", "targetFolder", "", "getTargetCloudPath", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;", "list", "c", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "baiduYunProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "fileOperation", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBaiduYunCopyFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaiduYunCopyFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCopyFileRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,86:1\n1#2:87\n1855#3,2:88\n*S KotlinDebug\n*F\n+ 1 BaiduYunCopyFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCopyFileRequest\n*L\n73#1:88,2\n*E\n"})
/* loaded from: classes7.dex */
public final class BaiduYunCopyFileRequest extends CopyCloudFileRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BaiduYunProvider baiduYunProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaiduYunCopyFileRequest(@NotNull BaiduYunProvider baiduYunProvider, @NotNull CloudFileOperation fileOperation) {
        super(baiduYunProvider, fileOperation);
        Intrinsics.checkNotNullParameter(baiduYunProvider, "baiduYunProvider");
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        this.baiduYunProvider = baiduYunProvider;
    }

    /* renamed from: c */
    public final List<CloudFileBean> m32392c(List<? extends BaiduYunFileInfo> list) throws Exception {
        Object first;
        ArrayList arrayList = new ArrayList();
        for (BaiduYunFileInfo baiduYunFileInfo : list) {
            BaiduYunQueryArgs baiduYunQueryArgs = new BaiduYunQueryArgs();
            baiduYunQueryArgs.setMethod("search");
            baiduYunQueryArgs.setKey(FilenameUtils.getName(baiduYunFileInfo.getPath()));
            baiduYunQueryArgs.setDir(FileUtils.INSTANCE.getParent(baiduYunFileInfo.getPath()));
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) new BaiduYunSearchFileRequest(this.baiduYunProvider, baiduYunQueryArgs).execute().ensureList());
            arrayList.add(BaiduYunFileInfo.INSTANCE.toCloudFile((BaiduYunFileInfo) first, this.baiduYunProvider.getAccountId()));
        }
        return arrayList;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    public void copy(@NotNull final List<CloudFileOperation.OperationData> dataList) {
        Intrinsics.checkNotNullParameter(dataList, "dataList");
        Debug.INSTANCE.m32035d(BaiduYunCopyFileRequest.class, "copy cloud file list:" + dataList.size(), new Object[0]);
        Response executeCall = this.baiduYunProvider.getBaiduYunClient().executeCall(new Function1<BaiduYunService, Call<BaiduYunFileResponseBody>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunCopyFileRequest$copy$response$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<BaiduYunFileResponseBody> invoke(@NotNull BaiduYunService service) {
                CloudFileOperation args;
                Intrinsics.checkNotNullParameter(service, "service");
                String str = BaiduYunCopyFileRequest.this.getCut() ? BaiduYunConstant.OPERATION_MOVE : "copy";
                String json = JSONUtils.INSTANCE.toJson(dataList);
                args = BaiduYunCopyFileRequest.this.getArgs();
                return service.operateFile(BaiduYunConstant.FILE_MANAGER, str, 0, json, args.getStrategy().getTitle());
            }
        });
        if (!executeCall.isSuccessful()) {
            throw new Exception(executeCall.raw().message());
        }
        getResult().setCode(((BaiduYunFileResponseBody) executeCall.body()).getErrno());
        List<BaiduYunFileInfo> list = ((BaiduYunFileResponseBody) executeCall.body()).getList();
        CollectionKt.safeAddAll(getResult().ensureList(), list != null ? m32392c(list) : null);
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    @NotNull
    public List<CloudFileBean> fetchCloudFileList(@NotNull CloudFileBean parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setProvider(Provider.BAIDU_YUN.getTitle());
        cloudFileQueryArgs.setParentId(parent.getUniqueId());
        cloudFileQueryArgs.setLimit(1000);
        return BaiduYunFileInfo.INSTANCE.toCloudFiles(new BaiduYunFetchFileListRequest(this.baiduYunProvider, cloudFileQueryArgs).execute().ensureList(), this.baiduYunProvider.getAccountId());
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    @Nullable
    public String getTargetCloudPath(@NotNull CloudFileOperation.OperationData targetFolder) {
        Intrinsics.checkNotNullParameter(targetFolder, "targetFolder");
        return this.baiduYunProvider.getCloudStorageRecordProvider().getCloudFilePath(targetFolder.getOrigin(), "/");
    }
}
