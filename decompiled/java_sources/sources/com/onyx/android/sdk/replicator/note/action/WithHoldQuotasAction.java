package com.onyx.android.sdk.replicator.note.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.bean.AccountQuotaItemData;
import com.onyx.android.sdk.data.account.bean.WithHoldQuotasData;
import com.onyx.android.sdk.data.account.request.cloud.WithHoldQuotasRequest;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/WithHoldQuotasAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;", C6997f.f39671c, "Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;", "withHoldQuotasData", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class WithHoldQuotasAction extends BaseNoteSyncAction<AccountQuotaItemData> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final WithHoldQuotasData withHoldQuotasData;

    /* renamed from: com.onyx.android.sdk.replicator.note.action.WithHoldQuotasAction$a */
    /* loaded from: classes8.dex */
    public static final class C7737a<T, R> implements Function {
        public C7737a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AccountQuotaItemData apply(@NotNull WithHoldQuotasAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return WithHoldQuotasAction.this.m35156l();
        }
    }

    public WithHoldQuotasAction(@NotNull WithHoldQuotasData withHoldQuotasData) {
        Intrinsics.checkNotNullParameter(withHoldQuotasData, "withHoldQuotasData");
        this.withHoldQuotasData = withHoldQuotasData;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<AccountQuotaItemData> create() {
        Observable<AccountQuotaItemData> map = Observable.just(this).observeOn(ClusterManager.INSTANCE.getCloudObserveOn()).map(new C7737a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final AccountQuotaItemData m35156l() {
        return new WithHoldQuotasRequest(this.withHoldQuotasData).execute();
    }
}
