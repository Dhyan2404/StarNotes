package com.onyx.android.sdk.cloudstorage.provider.onxy.request;

import com.alibaba.sdk.android.oss.model.OSSObjectSummary;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudUtils;
import com.onyx.android.sdk.data.common.oss.GetListObjectBean;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\b\u0016\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR$\u0010\u0012\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxFetchAllFileListRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;", "execute", "Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;", "createGetListBean", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "a", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "rxOSSManager", "", "b", Constants.STRING_SIG, "getPath", "()Ljava/lang/String;", "setPath", "(Ljava/lang/String;)V", "path", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public class OnyxFetchAllFileListRequest extends RxBaseRequest<List<OSSObjectSummary>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final RxOSSManager rxOSSManager;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String path;

    public OnyxFetchAllFileListRequest(@NotNull RxOSSManager rxOSSManager) {
        Intrinsics.checkNotNullParameter(rxOSSManager, "rxOSSManager");
        this.rxOSSManager = rxOSSManager;
    }

    @NotNull
    public GetListObjectBean createGetListBean() {
        OnyxCloudUtils onyxCloudUtils = OnyxCloudUtils.INSTANCE;
        return onyxCloudUtils.getBaseListObjectBean(onyxCloudUtils.appendFileSeparator(this.path));
    }

    @Nullable
    public final String getPath() {
        return this.path;
    }

    public final void setPath(@Nullable String str) {
        this.path = str;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public List<OSSObjectSummary> execute() {
        return OnyxCloudUtils.INSTANCE.removeCurrentObject(this.rxOSSManager.syncGetObjectList(createGetListBean()), this.path);
    }
}
