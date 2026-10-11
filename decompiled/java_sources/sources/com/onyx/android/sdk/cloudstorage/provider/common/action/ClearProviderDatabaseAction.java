package com.onyx.android.sdk.cloudstorage.provider.common.action;

import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0003¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0014J\b\u0010\u0007\u001a\u00020\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/action/ClearProviderDatabaseAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "getProvider", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "e", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "cloudProvider", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class ClearProviderDatabaseAction extends BaseCloudStorageAction<Unit> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final BaseCloudStorageProvider cloudProvider;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.ClearProviderDatabaseAction$a */
    /* loaded from: classes7.dex */
    public static final class C7208a<T, R> implements Function {
        public C7208a() {
        }

        /* renamed from: a */
        public final void m32422a(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ClearProviderDatabaseAction.this.m32421l();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m32422a((BaseCloudStorageProvider) obj);
            return Unit.INSTANCE;
        }
    }

    public ClearProviderDatabaseAction(@NotNull BaseCloudStorageProvider cloudProvider) {
        Intrinsics.checkNotNullParameter(cloudProvider, "cloudProvider");
        this.cloudProvider = cloudProvider;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Unit> create() {
        Observable map = createObservable().map(new C7208a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public BaseCloudStorageProvider getGoogleDriverProvider() {
        return this.cloudProvider;
    }

    /* renamed from: l */
    public final void m32421l() {
        CloudStorageRecordProvider cloudStorageRecordProvider = this.cloudProvider.getCloudStorageRecordProvider();
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cloudStorageRecordProvider.deleteCloudFileList(cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_PROVIDER, Integer.valueOf(getGoogleDriverProvider().getProviderType().getTypeValue()))).andWith(couchUtils.equalExpression("accountId", cloudStorageRecordProvider.getAccountId())).andWith(couchUtils.nullOrMissing(CouchFieldKey.KEY_PARENT_ID)));
        this.cloudProvider.closeDBProvider();
    }
}
