package com.onyx.android.sdk.replicator.replicator.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.request.cloud.UpdateUserStorageRequest;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.sync.MMKVBackup;
import com.onyx.android.sdk.data.couchbase.bean.ReplicatorError;
import com.onyx.android.sdk.data.couchbase.bean.SyncGateway;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.bean.ReplicatorBean;
import com.onyx.android.sdk.replicator.replicator.request.AddCommonChannelsRequest;
import com.onyx.android.sdk.replicator.replicator.request.GetSyncGatewayRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\b\u0010\t\u001a\u00020\bH\u0002J\b\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\r\u001a\u00020\fH\u0002J\b\u0010\u000e\u001a\u00020\u0000H\u0002J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0002R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;", "Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "p", "", C4921e.f26528e, "checkNetwork", "Lcom/onyx/android/sdk/replicator/replicator/request/AddCommonChannelsRequest;", "l", "Lcom/onyx/android/sdk/replicator/replicator/request/GetSyncGatewayRequest;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;", "r", "q", "", "throwable", "", "m", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/replicator/request/GetSyncGatewayRequest;", "syncGatewayRequest", C6998g.f39679a, "Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;", "userStorageRequest", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PrepareSyncAction extends BaseSyncAction<PrepareSyncAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public GetSyncGatewayRequest syncGatewayRequest;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public UpdateUserStorageRequest userStorageRequest;

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PrepareSyncAction$a */
    /* loaded from: classes8.dex */
    public static final class C7855a<T, R> implements Function {

        /* renamed from: e */
        public static final C7855a<T, R> f46224e = new C7855a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AccountDataBundle> apply(@NotNull PrepareSyncAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AccountDataBundle.INSTANCE.loadOnyxAccountObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PrepareSyncAction$b */
    /* loaded from: classes8.dex */
    public static final class C7856b<T, R> implements Function {
        public C7856b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends PrepareSyncAction> apply(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PrepareSyncAction.this.m35706p();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PrepareSyncAction$c */
    /* loaded from: classes8.dex */
    public static final class C7857c<T, R> implements Function {
        public C7857c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ClusterInfo> apply(@NotNull ClusterManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PrepareSyncAction.this.updateClusterInfoObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PrepareSyncAction$d */
    /* loaded from: classes8.dex */
    public static final class C7858d<T, R> implements Function {
        public C7858d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AddCommonChannelsRequest apply(@NotNull ClusterInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PrepareSyncAction.this.m35702l();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PrepareSyncAction$e */
    /* loaded from: classes8.dex */
    public static final class C7859e<T, R> implements Function {
        public C7859e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GetSyncGatewayRequest apply(@NotNull AddCommonChannelsRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PrepareSyncAction.this.m35704n();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PrepareSyncAction$f */
    /* loaded from: classes8.dex */
    public static final class C7860f<T, R> implements Function {
        public C7860f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateUserStorageRequest apply(@NotNull GetSyncGatewayRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PrepareSyncAction.this.m35708r();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PrepareSyncAction$g */
    /* loaded from: classes8.dex */
    public static final class C7861g<T> implements Consumer {
        public C7861g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable throwable) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            PrepareSyncAction.this.m35703m(throwable);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PrepareSyncAction$h */
    /* loaded from: classes8.dex */
    public static final class C7862h<T, R> implements Function {
        public C7862h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PrepareSyncAction apply(@NotNull UpdateUserStorageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PrepareSyncAction.this.m35707q();
        }
    }

    public final boolean checkNetwork() {
        BooleanOption cloudSyncWifiOnlyOption = MMKVBackup.INSTANCE.getCloudSyncWifiOnlyOption();
        NetworkUtils networkUtils = NetworkUtils.INSTANCE;
        ResManager resManager = ResManager.INSTANCE;
        return cloudSyncWifiOnlyOption.get() ? networkUtils.isWifiConnected(resManager.getAppContext()) : networkUtils.isNetworkConnected(resManager.getAppContext());
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<PrepareSyncAction> create() {
        Observable<PrepareSyncAction> flatMap = Observable.just(this).flatMap(C7855a.f46224e).flatMap(new C7856b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final AddCommonChannelsRequest m35702l() throws Exception {
        AddCommonChannelsRequest addCommonChannelsRequest = new AddCommonChannelsRequest();
        addCommonChannelsRequest.setClusterInfo(getClusterInfo());
        addCommonChannelsRequest.m72398execute();
        return addCommonChannelsRequest;
    }

    /* renamed from: m */
    public final void m35703m(Throwable throwable) {
        KSyncBundle.INSTANCE.updateSyncGateway(new SyncGateway().setError(throwable.getMessage()));
        new HashMap().put("NOTE_TREE", new ReplicatorBean().setStatus(9).setError(new ReplicatorError().setMessage(throwable.getMessage()).setCode(100)));
    }

    /* renamed from: n */
    public final GetSyncGatewayRequest m35704n() {
        GetSyncGatewayRequest getSyncGatewayRequest = new GetSyncGatewayRequest();
        this.syncGatewayRequest = getSyncGatewayRequest;
        getSyncGatewayRequest.setClusterInfo(getClusterInfo());
        getSyncGatewayRequest.m72399execute();
        return getSyncGatewayRequest;
    }

    /* renamed from: o */
    public final boolean m35705o() {
        return AccountDataBundle.INSTANCE.canSync() && checkNetwork();
    }

    /* renamed from: p */
    public final Observable<PrepareSyncAction> m35706p() {
        if (m35705o()) {
            Observable<PrepareSyncAction> map = ClusterManager.INSTANCE.ensureLoadObservable().flatMap(new C7857c()).observeOn(KSyncBundle.INSTANCE.getNetworkScheduler()).map(new C7858d()).map(new C7859e()).map(new C7860f()).doOnError(new C7861g()).observeOn(AndroidSchedulers.mainThread()).map(new C7862h());
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        Observable<PrepareSyncAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: q */
    public final PrepareSyncAction m35707q() {
        KSyncBundle kSyncBundle = KSyncBundle.INSTANCE;
        UpdateUserStorageRequest updateUserStorageRequest = this.userStorageRequest;
        Intrinsics.checkNotNull(updateUserStorageRequest);
        kSyncBundle.setUserStorageBean(updateUserStorageRequest.getUserStorageBean());
        GetSyncGatewayRequest getSyncGatewayRequest = this.syncGatewayRequest;
        Intrinsics.checkNotNull(getSyncGatewayRequest);
        kSyncBundle.updateSyncGateway(getSyncGatewayRequest.getSyncGateway());
        return this;
    }

    /* renamed from: r */
    public final UpdateUserStorageRequest m35708r() throws Exception {
        UpdateUserStorageRequest updateUserStorageRequest = new UpdateUserStorageRequest();
        this.userStorageRequest = updateUserStorageRequest;
        updateUserStorageRequest.setClusterInfo(getClusterInfo());
        updateUserStorageRequest.execute();
        return updateUserStorageRequest;
    }
}
