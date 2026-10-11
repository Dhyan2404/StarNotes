package com.onyx.android.sdk.cloudstorage.provider.baiduyun.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunSearchFileRequest;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.BooleanUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002R\u0014\u0010\u000e\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunSearchFileListAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "getProvider", "searchCloudFileList", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;", "l", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "baiduYunProvider", C6997f.f39671c, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BaiduYunSearchFileListAction extends BaseCloudStorageAction<CloudFileListResult> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final BaiduYunProvider baiduYunProvider;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final CloudFileQueryArgs queryArgs;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.BaiduYunSearchFileListAction$a */
    /* loaded from: classes7.dex */
    public static final class C7204a<T, R> implements Function {
        public C7204a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileListResult apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaiduYunSearchFileListAction.this.searchCloudFileList();
        }
    }

    public BaiduYunSearchFileListAction(@NotNull BaiduYunProvider baiduYunProvider, @NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(baiduYunProvider, "baiduYunProvider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.baiduYunProvider = baiduYunProvider;
        this.queryArgs = queryArgs;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudFileListResult> create() {
        Observable map = createObservable().map(new C7204a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final BaiduYunQueryArgs m32385l(CloudFileQueryArgs queryArgs) {
        BaiduYunQueryArgs baiduYunQueryArgs = new BaiduYunQueryArgs();
        baiduYunQueryArgs.setMethod("search");
        baiduYunQueryArgs.setRecursion(BooleanUtils.toInteger(queryArgs.getRecursionSearch()));
        baiduYunQueryArgs.setKey(queryArgs.getQuery());
        baiduYunQueryArgs.setPage((int) ((queryArgs.getOffset() / queryArgs.getLimit()) + 1));
        baiduYunQueryArgs.setNum(queryArgs.getLimit());
        baiduYunQueryArgs.setDir(this.baiduYunProvider.getCloudStorageRecordProvider().getCloudFilePath(queryArgs.getParentId(), "/"));
        return baiduYunQueryArgs;
    }

    public final CloudFileListResult searchCloudFileList() throws Exception {
        QueryListResult<BaiduYunFileInfo> execute = new BaiduYunSearchFileRequest(this.baiduYunProvider, m32385l(this.queryArgs)).execute();
        List<BaiduYunFileInfo> ensureList = execute.ensureList();
        execute.setList(new ArrayList());
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        CloudFileListResult cloudFileListResult = (CloudFileListResult) jSONUtils.parseObject(jSONUtils.toJson(execute), CloudFileListResult.class);
        if (cloudFileListResult == null) {
            throw new Exception("BaiduYunSearchFileListAction searchCloudFileList cloudFileResult is null.");
        }
        cloudFileListResult.setList(BaiduYunFileInfo.INSTANCE.toCloudFiles(ensureList, this.baiduYunProvider.getAccountId()));
        cloudFileListResult.setCount(cloudFileListResult.ensureList().size());
        this.baiduYunProvider.getCloudStorageRecordProvider().saveFolder(cloudFileListResult.ensureList());
        return cloudFileListResult;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public BaiduYunProvider getHuaweiYunProvider() {
        return this.baiduYunProvider;
    }
}
