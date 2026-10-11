package com.onyx.android.sdk.cloudstorage.provider.aliyun.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunService;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileCreate;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.utils.AliYunUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002R\u0014\u0010\b\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR$\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCreateFolderRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;", "execute", "fileInfo", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFile", "", "<set-?>", "c", Constants.HASIDCALL_INDEX_SIG, "getAlreadyExist", Constants.BOOLEAN_VALUE_SIG, "alreadyExist", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class AliYunCreateFolderRequest extends RxBaseRequest<AliYunFileInfo> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final AliYunProvider provider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean cloudFile;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean alreadyExist;

    public AliYunCreateFolderRequest(@NotNull AliYunProvider provider, @NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        this.provider = provider;
        this.cloudFile = cloudFile;
    }

    /* renamed from: a */
    public final AliYunFileInfo m32340a(AliYunFileInfo fileInfo) {
        try {
            String fileId = fileInfo.getFileId();
            if (fileId != null) {
                return new AliYunFetchFileInfoRequest(this.provider, fileId).execute();
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public final boolean getAlreadyExist() {
        return this.alreadyExist;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public AliYunFileInfo execute() {
        final AliYunFileCreate aliYunFileCreate = new AliYunFileCreate();
        aliYunFileCreate.setDriveId(this.provider.getDefaultDriveId());
        aliYunFileCreate.setParentFileId(AliYunUtils.INSTANCE.normalizeToCloudParentId(this.cloudFile.getParentId()));
        aliYunFileCreate.setName(this.cloudFile.getName());
        aliYunFileCreate.setType(Constant.FOLDER);
        Response executeCall = this.provider.getDriveClient().executeCall(new Function1<AliYunService, Call<AliYunFileInfo>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunCreateFolderRequest$execute$response$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<AliYunFileInfo> invoke(@NotNull AliYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.createFolder(AliYunFileCreate.this);
            }
        });
        AliYunFileInfo aliYunFileInfo = (AliYunFileInfo) executeCall.body();
        Intrinsics.checkNotNull(aliYunFileInfo);
        this.alreadyExist = aliYunFileInfo.getExist();
        if (aliYunFileInfo.getExist() && aliYunFileInfo.getCreatedAt() == null) {
            aliYunFileInfo = m32340a(aliYunFileInfo);
        }
        if (aliYunFileInfo == null) {
            aliYunFileInfo = (AliYunFileInfo) executeCall.body();
        }
        Intrinsics.checkNotNull(aliYunFileInfo);
        return aliYunFileInfo;
    }
}
