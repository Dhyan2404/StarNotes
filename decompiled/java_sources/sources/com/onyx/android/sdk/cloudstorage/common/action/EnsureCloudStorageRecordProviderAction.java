package com.onyx.android.sdk.cloudstorage.common.action;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/common/action/EnsureCloudStorageRecordProviderAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "e", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", CouchFieldKey.KEY_PROVIDER, Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class EnsureCloudStorageRecordProviderAction extends RxBaseAction<CloudStorageRecordProvider> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final BaseCloudStorageProvider provider;

    /* renamed from: com.onyx.android.sdk.cloudstorage.common.action.EnsureCloudStorageRecordProviderAction$a */
    /* loaded from: classes7.dex */
    public static final class C7157a<T, R> implements Function {
        public C7157a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudStorageRecordProvider apply(@NotNull EnsureCloudStorageRecordProviderAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EnsureCloudStorageRecordProviderAction.this.m32262l();
        }
    }

    public EnsureCloudStorageRecordProviderAction(@NotNull BaseCloudStorageProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.provider = provider;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudStorageRecordProvider> create() {
        Observable<CloudStorageRecordProvider> map = Observable.just(this).observeOn(Schedulers.m61350io()).map(new C7157a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final CloudStorageRecordProvider m32262l() {
        return new CloudStorageRecordProvider(this.provider.getProviderType().getTitle(), this.provider.getAccountId(), this.provider);
    }
}
