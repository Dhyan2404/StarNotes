package com.onyx.android.sdk.cloudstorage.provider.common.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001d\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/request/AbortCloudFileTransferRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "execute", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", CouchFieldKey.KEY_PROVIDER, "b", "Ljava/util/List;", "list", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Ljava/util/List;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class AbortCloudFileTransferRequest extends RxBaseRequest<List<? extends CloudFileBean>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BaseCloudStorageProvider provider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<CloudFileBean> list;

    public AbortCloudFileTransferRequest(@NotNull BaseCloudStorageProvider provider, @NotNull List<CloudFileBean> list) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(list, "list");
        this.provider = provider;
        this.list = list;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public List<? extends CloudFileBean> execute() {
        Debug.INSTANCE.m32038d(AbortCloudFileTransferRequest.class.getName(), "abort cloud file transfer:" + this.list.size(), new Object[0]);
        Iterator<CloudFileBean> it2 = this.list.iterator();
        while (it2.hasNext()) {
            String localFilePath = it2.next().getLocalFilePath();
            if (localFilePath != null) {
                this.provider.disposeTransfer(localFilePath);
            }
        }
        return this.list;
    }
}
