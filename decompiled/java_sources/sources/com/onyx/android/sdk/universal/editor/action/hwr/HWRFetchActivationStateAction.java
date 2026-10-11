package com.onyx.android.sdk.universal.editor.action.hwr;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.action.BaseRxAccountAction;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.account.bean.HWRActivationState;
import com.onyx.android.sdk.data.account.model.HWRActivationModel;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.error.ErrorType;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import com.onyx.android.sdk.data.utils.SecurityUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.hwr.UserDataProvider;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \"2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\"B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b \u0010!J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\b\u001a\u00020\u0006H\u0002J\b\u0010\n\u001a\u00020\tH\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0019\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u001b\u0010\u001f\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;", "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "", "l", C4921e.f26528e, "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;", "p", "", "e", Constants.STRING_SIG, "engine", "", C6997f.f39671c, "J", "millis", "Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;", C6998g.f39679a, "Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;", "state", C6999h.f39688c, "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;", "record", "Lcom/onyx/android/sdk/replicator/hwr/UserDataProvider;", "i", "Lkotlin/Lazy;", GoogleApiAvailabilityLight.f29016b, "()Lcom/onyx/android/sdk/replicator/hwr/UserDataProvider;", CouchFieldKey.KEY_PROVIDER, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HWRFetchActivationStateAction extends BaseRxAccountAction<Boolean> {
    public static final long CACHE_DURATION = 2592000000L;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String engine;

    /* renamed from: f, reason: from kotlin metadata */
    public long millis;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public HWRActivationState state;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public HWRActivationModel record;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Lazy provider;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRFetchActivationStateAction$a */
    /* loaded from: classes8.dex */
    public static final class C9437a<T> implements Consumer {
        public C9437a() {
        }

        /* renamed from: a */
        public final void m38994a(boolean z) {
            HWRFetchActivationStateAction.this.m38989l();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m38994a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRFetchActivationStateAction$b */
    /* loaded from: classes8.dex */
    public static final class C9438b<T> implements Consumer {
        public C9438b() {
        }

        /* renamed from: a */
        public final void m38995a(boolean z) {
            HWRFetchActivationStateAction.this.m38992o();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m38995a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRFetchActivationStateAction$c */
    /* loaded from: classes8.dex */
    public static final class C9439c<T> implements Consumer {

        /* renamed from: e */
        public static final C9439c<T> f49681e = new C9439c<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Debug.INSTANCE.m32040d(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRFetchActivationStateAction$d */
    /* loaded from: classes8.dex */
    public static final class C9440d<T, R> implements Function {

        /* renamed from: e */
        public static final C9440d<T, R> f49682e = new C9440d<>();

        @NotNull
        /* renamed from: a */
        public final Boolean m38997a(boolean z) {
            return Boolean.TRUE;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m38997a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRFetchActivationStateAction$e */
    /* loaded from: classes8.dex */
    public static final class C9441e<T, R> implements Function {

        /* renamed from: e */
        public static final C9441e<T, R> f49683e = new C9441e<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.FALSE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRFetchActivationStateAction$f */
    /* loaded from: classes8.dex */
    public static final class C9442f<T, R> implements Function {

        /* renamed from: e */
        public static final C9442f<T, R> f49684e = new C9442f<>();

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m38999a(boolean z) {
            return new HWRLoadActivationStateAction().build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m38999a(((Boolean) obj).booleanValue());
        }
    }

    public HWRFetchActivationStateAction(@NotNull String engine) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(engine, "engine");
        this.engine = engine;
        this.millis = DateTimeUtil.INSTANCE.millisOfNow();
        this.state = new HWRActivationState();
        this.record = new HWRActivationModel();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<UserDataProvider>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRFetchActivationStateAction$provider$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final UserDataProvider invoke() {
                return KSyncBundle.INSTANCE.getUserDataProvider();
            }
        });
        this.provider = lazy;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        return !AccountDataBundle.INSTANCE.isAlreadyLogin() ? new HWRLoadActivationStateAction().build() : m38990m();
    }

    /* renamed from: l */
    public final void m38989l() {
        DataResponse executeAndGetResponse$default = RetrofitExt.executeAndGetResponse$default(RetrofitExt.INSTANCE, ((CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class)).queryHWRActivationState(), false, 1, null);
        HWRActivationState hWRActivationState = (HWRActivationState) executeAndGetResponse$default.getData();
        if (hWRActivationState == null) {
            throw OnyxException.INSTANCE.m31891of(ErrorType.DATA_FORMAT_ERROR);
        }
        this.state = hWRActivationState;
        this.millis = executeAndGetResponse$default.getServerTime();
    }

    /* renamed from: m */
    public final Observable<Boolean> m38990m() {
        Observable<Boolean> flatMap = Observable.just(Boolean.TRUE).observeOn(ClusterManager.INSTANCE.getCloudObserveOn()).doOnNext(new C9437a()).observeOn(AccountDataBundle.INSTANCE.getDataObserveOn()).doOnNext(new C9438b()).doOnError(C9439c.f49681e).map(C9440d.f49682e).onErrorReturn(C9441e.f49683e).flatMap(C9442f.f49684e);
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: n */
    public final UserDataProvider m38991n() {
        return (UserDataProvider) this.provider.getValue();
    }

    /* renamed from: o */
    public final void m38992o() {
        m38993p();
        m38991n().deleteActivationStateByEngine(this.engine);
        m38991n().saveActivationState(this.record);
    }

    /* renamed from: p */
    public final HWRActivationModel m38993p() {
        this.record.setUser(AccountDataBundle.INSTANCE.getSyncUserId());
        this.record.setDeviceId(SecurityUtils.INSTANCE.getAndroidId());
        this.record.setEngine(this.engine);
        this.record.setState(this.state.getState());
        this.record.setEncryptedContent(this.state.getEncryptedContent());
        this.record.setDeviceActivated(this.state.getDeviceActivated());
        if (this.state.getStartedAt().length() > 0) {
            this.record.setActivateTime(DateTimeUtil.rfcTimeToLong$default(DateTimeUtil.INSTANCE, this.state.getStartedAt(), false, 2, null));
        }
        if (this.state.getEndedAt().length() > 0) {
            this.record.setExpireTime(DateTimeUtil.rfcTimeToLong$default(DateTimeUtil.INSTANCE, this.state.getEndedAt(), false, 2, null));
        }
        this.record.setExceedDeviceLimit(this.state.getExceedDeviceLimit());
        this.record.setDeviceLimitCount(this.state.getDeviceLimitCount());
        this.record.setCacheValidityTime(this.millis + 2592000000L);
        return this.record;
    }
}
