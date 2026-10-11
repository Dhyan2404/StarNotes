package com.onyx.android.sdk.replicator.note.action;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.AccountPermissionItem;
import com.onyx.android.sdk.data.account.bean.ResultData;
import com.onyx.android.sdk.data.account.request.cloud.FetchAccountPermissionRequest;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00020\u0001B\u0007¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00020\u0005H\u0014J\u0014\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u0002¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/FetchAccountPermissionAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "Lcom/onyx/android/sdk/data/account/bean/ResultData;", "", "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class FetchAccountPermissionAction extends BaseNoteSyncAction<ResultData<List<? extends AccountPermissionItem>>> {

    /* renamed from: com.onyx.android.sdk.replicator.note.action.FetchAccountPermissionAction$a */
    /* loaded from: classes8.dex */
    public static final class C7680a<T, R> implements Function {
        public C7680a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ResultData<List<AccountPermissionItem>> apply(@NotNull FetchAccountPermissionAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchAccountPermissionAction.this.m35069l();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.FetchAccountPermissionAction$b */
    /* loaded from: classes8.dex */
    public static final class C7681b<T> implements Consumer {

        /* renamed from: e */
        public static final C7681b<T> f45410e = new C7681b<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ResultData<List<AccountPermissionItem>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AccountDataBundle.INSTANCE.updateAccountPermission(it2.getData());
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ResultData<List<AccountPermissionItem>>> create() {
        Observable<ResultData<List<AccountPermissionItem>>> doOnNext = Observable.just(this).observeOn(ClusterManager.INSTANCE.getCloudObserveOn()).map(new C7680a()).observeOn(getMainUIScheduler()).doOnNext(C7681b.f45410e);
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: l */
    public final ResultData<List<AccountPermissionItem>> m35069l() {
        try {
            return new ResultData<>(new FetchAccountPermissionRequest().execute());
        } catch (Exception e) {
            Debug.INSTANCE.m32048e(e);
            ResultData<List<AccountPermissionItem>> resultData = new ResultData<>();
            resultData.setCode(-1);
            resultData.setMessage(e.getLocalizedMessage());
            return resultData;
        }
    }
}
