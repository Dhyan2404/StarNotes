package com.onyx.galaxy.note.datarepository.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import com.onyx.galaxy.note.datarepository.bean.ShareResourceBean;
import com.onyx.galaxy.note.datarepository.service.DataRepositoryService;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u0017\u0010\n\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/request/LoadShareResourceRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;", "execute", "", "a", Constants.STRING_SIG, "getCode", "()Ljava/lang/String;", "code", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoadShareResourceRequest extends RxBaseRequest<DataResponse<ShareResourceBean>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String code;

    public LoadShareResourceRequest(@NotNull String code) {
        Intrinsics.checkNotNullParameter(code, "code");
        this.code = code;
    }

    @NotNull
    public final String getCode() {
        return this.code;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public DataResponse<ShareResourceBean> execute() {
        return RetrofitExt.executeAndGetResponse$default(RetrofitExt.INSTANCE, ((DataRepositoryService) ServiceFactory.INSTANCE.getOnyxApiV2Service(DataRepositoryService.class)).loadShareResource(this.code), false, 1, null);
    }
}
