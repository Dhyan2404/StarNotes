package com.onyx.android.sdk.replicator.account.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.BaseRxAccountAction;
import com.onyx.android.sdk.data.account.bean.AccountContext;
import com.onyx.android.sdk.data.account.bean.AccountIntentArgs;
import com.onyx.android.sdk.data.account.event.LoginAccountChanged;
import com.onyx.android.sdk.data.account.request.cloud.LogoutCloudOnyxAccountRequest;
import com.onyx.android.sdk.data.account.request.local.LogoutLocalOnyxAccountRequest;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.replicator.action.CloseAllReplicatorsActon;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\n\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\bH\u0014J\b\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0002J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0002J\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00000\bH\u0002J\b\u0010\u0010\u001a\u00020\u0000H\u0002R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;", "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;", "intentArgs", "setIntentArgs", "", "reason", "setLogoutReason", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/data/account/bean/AccountContext;", "m", "accountContext", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "l", "p", "e", "Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;", C6997f.f39671c, "I", "logoutReason", "", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "getSkipCloudLogout", Constants.BOOLEAN_VALUE_SIG, "setSkipCloudLogout", "(Z)V", "skipCloudLogout", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLogoutOnyxAccountAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogoutOnyxAccountAction.kt\ncom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,98:1\n1#2:99\n*E\n"})
/* loaded from: classes8.dex */
public class LogoutOnyxAccountAction extends BaseRxAccountAction<LogoutOnyxAccountAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public AccountIntentArgs intentArgs = new AccountIntentArgs();

    /* renamed from: f, reason: from kotlin metadata */
    public int logoutReason = 1;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean skipCloudLogout = true;

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LogoutOnyxAccountAction$a */
    /* loaded from: classes8.dex */
    public static final class C7610a<T, R> implements Function {
        public C7610a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LogoutOnyxAccountAction apply(@NotNull CloseAllReplicatorsActon it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LogoutOnyxAccountAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LogoutOnyxAccountAction$b */
    /* loaded from: classes8.dex */
    public static final class C7611b<T, R> implements Function {
        public C7611b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ClusterInfo> apply(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LogoutOnyxAccountAction.this.updateClusterInfoObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LogoutOnyxAccountAction$c */
    /* loaded from: classes8.dex */
    public static final class C7612c<T, R> implements Function {
        public C7612c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AccountContext apply(@NotNull ClusterInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LogoutOnyxAccountAction.this.m34889m();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LogoutOnyxAccountAction$d */
    /* loaded from: classes8.dex */
    public static final class C7613d<T, R> implements Function {
        public C7613d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AccountContext apply(@NotNull AccountContext accountContext) {
            Intrinsics.checkNotNullParameter(accountContext, "accountContext");
            return LogoutOnyxAccountAction.this.m34890n(accountContext);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LogoutOnyxAccountAction$e */
    /* loaded from: classes8.dex */
    public static final class C7614e<T, R> implements Function {
        public C7614e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AccountContext apply(@NotNull AccountContext accountContext) {
            Intrinsics.checkNotNullParameter(accountContext, "accountContext");
            return LogoutOnyxAccountAction.this.m34891o(accountContext);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LogoutOnyxAccountAction$f */
    /* loaded from: classes8.dex */
    public static final class C7615f<T, R> implements Function {
        public C7615f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LogoutOnyxAccountAction> apply(@NotNull AccountContext it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LogoutOnyxAccountAction.this.m34888l();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LogoutOnyxAccountAction$g */
    /* loaded from: classes8.dex */
    public static final class C7616g<T, R> implements Function {

        /* renamed from: e */
        public static final C7616g<T, R> f45178e = new C7616g<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AccountDataBundle> apply(@NotNull LogoutOnyxAccountAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AccountDataBundle.INSTANCE.loadOnyxAccountObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LogoutOnyxAccountAction$h */
    /* loaded from: classes8.dex */
    public static final class C7617h<T, R> implements Function {
        public C7617h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LogoutOnyxAccountAction apply(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LogoutOnyxAccountAction.this.m34892p();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LogoutOnyxAccountAction> create() {
        AccountDataBundle accountDataBundle = AccountDataBundle.INSTANCE;
        if (!accountDataBundle.isAlreadyLogin()) {
            Observable<LogoutOnyxAccountAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<R> flatMap = createCloudObservable().flatMap(new C7611b());
        ClusterManager clusterManager = ClusterManager.INSTANCE;
        Observable<LogoutOnyxAccountAction> map = flatMap.observeOn(clusterManager.getCloudObserveOn()).map(new C7612c()).observeOn(clusterManager.getCloudObserveOn()).map(new C7613d()).observeOn(accountDataBundle.getDataObserveOn()).map(new C7614e()).flatMap(new C7615f()).flatMap(C7616g.f45178e).observeOn(AndroidSchedulers.mainThread()).map(new C7617h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public boolean getSkipCloudLogout() {
        return this.skipCloudLogout;
    }

    /* renamed from: l */
    public final Observable<LogoutOnyxAccountAction> m34888l() {
        KSyncBundle.INSTANCE.resetSyncGateway();
        Observable map = new CloseAllReplicatorsActon().build().map(new C7610a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final AccountContext m34889m() {
        this.intentArgs.setAccount(AccountDataBundle.INSTANCE.getAccountId());
        return new AccountContext().setAccountIntentArgs(this.intentArgs);
    }

    /* renamed from: n */
    public final AccountContext m34890n(AccountContext accountContext) {
        LogoutCloudOnyxAccountRequest logoutCloudOnyxAccountRequest = new LogoutCloudOnyxAccountRequest(accountContext);
        logoutCloudOnyxAccountRequest.setClusterInfo(getClusterInfo());
        if (!getSkipCloudLogout()) {
            try {
                Result.Companion companion = Result.INSTANCE;
                logoutCloudOnyxAccountRequest.m72223execute();
                Result.m72621constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m72621constructorimpl(ResultKt.createFailure(th));
            }
        }
        return accountContext;
    }

    /* renamed from: o */
    public final AccountContext m34891o(AccountContext accountContext) throws Exception {
        new LogoutLocalOnyxAccountRequest(accountContext).setLogoutReason(this.logoutReason).m72236execute();
        return accountContext;
    }

    /* renamed from: p */
    public final LogoutOnyxAccountAction m34892p() {
        Debug debug = Debug.INSTANCE;
        Class<?> cls = getClass();
        StringBuilder sb = new StringBuilder();
        sb.append("onLogoutSuccess: ");
        AccountDataBundle accountDataBundle = AccountDataBundle.INSTANCE;
        sb.append(accountDataBundle.isAlreadyLogin());
        debug.m32035d(cls, sb.toString(), new Object[0]);
        KSyncBundle.INSTANCE.onLogout(this.intentArgs);
        accountDataBundle.getEventBusHolder().post(LoginAccountChanged.INSTANCE);
        return this;
    }

    @NotNull
    public final LogoutOnyxAccountAction setIntentArgs(@NotNull AccountIntentArgs intentArgs) {
        Intrinsics.checkNotNullParameter(intentArgs, "intentArgs");
        this.intentArgs = intentArgs;
        return this;
    }

    @NotNull
    public final LogoutOnyxAccountAction setLogoutReason(int reason) {
        this.logoutReason = reason;
        return this;
    }

    public void setSkipCloudLogout(boolean z) {
        this.skipCloudLogout = z;
    }
}
