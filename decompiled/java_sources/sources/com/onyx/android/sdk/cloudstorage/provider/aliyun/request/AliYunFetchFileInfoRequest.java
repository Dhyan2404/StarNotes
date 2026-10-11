package com.onyx.android.sdk.cloudstorage.provider.aliyun.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunService;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileBase;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileInfo;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunFetchFileInfoRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;", "execute", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", CouchFieldKey.KEY_PROVIDER, "", "b", Constants.STRING_SIG, "fileId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class AliYunFetchFileInfoRequest extends RxBaseRequest<AliYunFileInfo> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final AliYunProvider provider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final String fileId;

    public AliYunFetchFileInfoRequest(@NotNull AliYunProvider provider, @NotNull String fileId) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(fileId, "fileId");
        this.provider = provider;
        this.fileId = fileId;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public AliYunFileInfo execute() throws Exception {
        final AliYunFileBase aliYunFileBase = new AliYunFileBase();
        aliYunFileBase.setDriveId(this.provider.getDefaultDriveId());
        aliYunFileBase.setFileId(this.fileId);
        Object body = this.provider.getDriveClient().executeCall(new Function1<AliYunService, Call<AliYunFileInfo>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunFetchFileInfoRequest$execute$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<AliYunFileInfo> invoke(@NotNull AliYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.fetchFileById(AliYunFileBase.this);
            }
        }).body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return (AliYunFileInfo) body;
    }
}
