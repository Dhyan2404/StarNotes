package com.onyx.android.sdk.replicator.account.action;

import android.os.RemoteException;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.AccountLogUtils;
import com.onyx.android.sdk.data.account.action.BaseRxAccountAction;
import com.onyx.android.sdk.data.account.bean.AccountContext;
import com.onyx.android.sdk.data.account.bean.AccountIntentArgs;
import com.onyx.android.sdk.data.account.bean.AccountPermissionItem;
import com.onyx.android.sdk.data.account.bean.ResultData;
import com.onyx.android.sdk.data.account.event.LoginAccountChanged;
import com.onyx.android.sdk.data.account.request.cloud.LoadUserInfoRequest;
import com.onyx.android.sdk.data.account.request.cloud.LoginByGoogleAuthRequest;
import com.onyx.android.sdk.data.account.request.cloud.LoginByHuaweiAuthRequest;
import com.onyx.android.sdk.data.account.request.cloud.LoginByMicrosoftAuthRequest;
import com.onyx.android.sdk.data.account.request.cloud.LoginByOnyxQrCodeRequest;
import com.onyx.android.sdk.data.account.request.cloud.LoginByPasswordRequest;
import com.onyx.android.sdk.data.account.request.cloud.LoginByPhoneOrEmailRequest;
import com.onyx.android.sdk.data.account.request.cloud.LoginByWechatAppRequest;
import com.onyx.android.sdk.data.account.request.cloud.LoginByWechatRequest;
import com.onyx.android.sdk.data.account.request.local.LoginOnyxAccountRequest;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.cluster.action.SaveClusterListAction;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.utils.MMKVSync;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.action.FetchAccountPermissionAction;
import com.onyx.android.sdk.replicator.note.action.FetchAccountQuotasAction;
import com.onyx.android.sdk.replicator.replicator.action.CloseAllReplicatorsActon;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u0014¢\u0006\u0004\b\u001f\u0010 J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005H\u0014J\f\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0011\u001a\u00020\u0000H\u0002J\u000e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005H\u0002J\u0010\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001a8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001c¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;", "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "Lcom/onyx/android/sdk/data/account/bean/AccountContext;", "accountContext", "setAccountContext", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, "", "l", C4921e.f26528e, "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "clusterInfo", "v", "t", "r", "s", "u", "m", "q", "Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;", "e", "Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;", "intentArgs", C6997f.f39671c, "Lcom/onyx/android/sdk/data/account/bean/AccountContext;", "", "p", "()I", "loginReason", "args", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoginOnyxAccountAction extends BaseRxAccountAction<LoginOnyxAccountAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final AccountIntentArgs intentArgs;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public AccountContext accountContext;

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LoginOnyxAccountAction$a */
    /* loaded from: classes8.dex */
    public static final class C7595a<T, R> implements Function {
        public C7595a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoginOnyxAccountAction apply(@NotNull CloseAllReplicatorsActon it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoginOnyxAccountAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LoginOnyxAccountAction$b */
    /* loaded from: classes8.dex */
    public static final class C7596b<T, R> implements Function {
        public C7596b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LoginOnyxAccountAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoginOnyxAccountAction.this.m34863m();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LoginOnyxAccountAction$c */
    /* loaded from: classes8.dex */
    public static final class C7597c<T, R> implements Function {

        /* renamed from: e */
        public static final C7597c<T, R> f45156e = new C7597c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveClusterListAction> apply(@NotNull LoginOnyxAccountAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new SaveClusterListAction().build();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LoginOnyxAccountAction$d */
    /* loaded from: classes8.dex */
    public static final class C7598d<T, R> implements Function {
        public C7598d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoginOnyxAccountAction apply(@NotNull SaveClusterListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoginOnyxAccountAction.this.m34871u();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LoginOnyxAccountAction$e */
    /* loaded from: classes8.dex */
    public static final class C7599e<T, R> implements Function {
        public C7599e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ClusterInfo> apply(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoginOnyxAccountAction.this.updateClusterInfoObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LoginOnyxAccountAction$f */
    /* loaded from: classes8.dex */
    public static final class C7600f<T, R> implements Function {
        public C7600f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AccountContext apply(@NotNull ClusterInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoginOnyxAccountAction loginOnyxAccountAction = LoginOnyxAccountAction.this;
            return loginOnyxAccountAction.m34870t(loginOnyxAccountAction.m34865o());
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LoginOnyxAccountAction$g */
    /* loaded from: classes8.dex */
    public static final class C7601g<T> implements Predicate {
        public C7601g() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull AccountContext accountContext) {
            Intrinsics.checkNotNullParameter(accountContext, "accountContext");
            return LoginOnyxAccountAction.this.m34862l(accountContext);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LoginOnyxAccountAction$h */
    /* loaded from: classes8.dex */
    public static final class C7602h<T, R> implements Function {

        /* renamed from: e */
        public static final C7602h<T, R> f45161e = new C7602h<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ClusterInfo> apply(@NotNull AccountContext it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ClusterManager.INSTANCE.getCurrentClusterObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LoginOnyxAccountAction$i */
    /* loaded from: classes8.dex */
    public static final class C7603i<T, R> implements Function {
        public C7603i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AccountContext apply(@NotNull ClusterInfo o) {
            Intrinsics.checkNotNullParameter(o, "o");
            LoginOnyxAccountAction loginOnyxAccountAction = LoginOnyxAccountAction.this;
            return loginOnyxAccountAction.m34872v(loginOnyxAccountAction.m34865o(), o);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LoginOnyxAccountAction$j */
    /* loaded from: classes8.dex */
    public static final class C7604j<T, R> implements Function {
        public C7604j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AccountContext apply(@NotNull AccountContext accountContext) {
            Intrinsics.checkNotNullParameter(accountContext, "accountContext");
            return LoginOnyxAccountAction.this.m34868r(accountContext);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LoginOnyxAccountAction$k */
    /* loaded from: classes8.dex */
    public static final class C7605k<T, R> implements Function {
        public C7605k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AccountContext apply(@NotNull AccountContext accountContext) {
            Intrinsics.checkNotNullParameter(accountContext, "accountContext");
            return LoginOnyxAccountAction.this.m34869s(accountContext);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LoginOnyxAccountAction$l */
    /* loaded from: classes8.dex */
    public static final class C7606l<T, R> implements Function {

        /* renamed from: e */
        public static final C7606l<T, R> f45165e = new C7606l<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AccountDataBundle> apply(@NotNull AccountContext it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AccountDataBundle.INSTANCE.loadOnyxAccountObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LoginOnyxAccountAction$m */
    /* loaded from: classes8.dex */
    public static final class C7607m<T, R> implements Function {
        public C7607m() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoginOnyxAccountAction.this.m34864n();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LoginOnyxAccountAction$n */
    /* loaded from: classes8.dex */
    public static final class C7608n<T, R> implements Function {

        /* renamed from: e */
        public static final C7608n<T, R> f45167e = new C7608n<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends FetchAccountQuotasAction> apply(@NotNull ResultData<List<AccountPermissionItem>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new FetchAccountQuotasAction().build();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.account.action.LoginOnyxAccountAction$o */
    /* loaded from: classes8.dex */
    public static final class C7609o<T, R> implements Function {
        public C7609o() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoginOnyxAccountAction apply(@NotNull FetchAccountQuotasAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoginOnyxAccountAction.this;
        }
    }

    public LoginOnyxAccountAction(@NotNull AccountIntentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        this.intentArgs = args;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LoginOnyxAccountAction> create() {
        Observable<R> flatMap = createCloudObservable().flatMap(new C7599e());
        ClusterManager clusterManager = ClusterManager.INSTANCE;
        Observable<LoginOnyxAccountAction> map = flatMap.observeOn(clusterManager.getCloudObserveOn()).map(new C7600f()).filter(new C7601g()).flatMap(C7602h.f45161e).observeOn(clusterManager.getCloudObserveOn()).map(new C7603i()).map(new C7604j()).observeOn(AccountDataBundle.INSTANCE.getDataObserveOn()).map(new C7605k()).concatMap(C7606l.f45165e).concatMap(new C7607m()).flatMap(new C7596b()).flatMap(C7597c.f45156e).observeOn(AndroidSchedulers.mainThread()).map(new C7598d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final boolean m34862l(AccountContext accountContext) throws RemoteException {
        boolean isNotBlank = StringUtils.isNotBlank(accountContext.getToken());
        if (!isNotBlank) {
            AccountLogUtils.INSTANCE.m32937i(LoginOnyxAccountAction.class, "token is empty");
        }
        return isNotBlank;
    }

    /* renamed from: m */
    public final Observable<LoginOnyxAccountAction> m34863m() {
        KSyncBundle.INSTANCE.resetSyncGateway();
        Observable map = new CloseAllReplicatorsActon().build().map(new C7595a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<?> m34864n() {
        Observable map = new FetchAccountPermissionAction().build().flatMap(C7608n.f45167e).map(new C7609o());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return RxjavaKt.onErrorReturnItemWithLog(map, this);
    }

    /* renamed from: o */
    public final AccountContext m34865o() {
        AccountContext accountContext = this.accountContext;
        if (accountContext != null) {
            Intrinsics.checkNotNull(accountContext);
            if (StringUtils.isNotBlank(accountContext.getToken())) {
                AccountContext accountContext2 = this.accountContext;
                Intrinsics.checkNotNull(accountContext2, "null cannot be cast to non-null type com.onyx.android.sdk.data.account.bean.AccountContext");
                return accountContext2;
            }
        }
        AccountContext accountIntentArgs = new AccountContext().setAccountIntentArgs(this.intentArgs);
        this.accountContext = accountIntentArgs;
        Intrinsics.checkNotNull(accountIntentArgs, "null cannot be cast to non-null type com.onyx.android.sdk.data.account.bean.AccountContext");
        return accountIntentArgs;
    }

    /* renamed from: p */
    public final int m34866p() {
        if (m34865o().isLoginMaster()) {
            return 1;
        }
        return m34865o().isLoginChild() ? 2 : 0;
    }

    /* renamed from: q */
    public final boolean m34867q(AccountContext accountContext) {
        if (!NetworkUtils.INSTANCE.isWifiConnected(ResManager.INSTANCE.getAppContext()) && accountContext.isLoginChild()) {
            AccountIntentArgs accountIntentArgs = accountContext.getAccountIntentArgs();
            if (StringUtils.isNotBlank(accountIntentArgs != null ? accountIntentArgs.getAccount() : null)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: r */
    public final AccountContext m34868r(AccountContext accountContext) throws Exception {
        if (accountContext.isLoginMaster() || m34867q(accountContext)) {
            return accountContext;
        }
        new LoadUserInfoRequest(accountContext).setClusterInfo(getClusterInfo()).execute();
        return accountContext;
    }

    /* renamed from: s */
    public final AccountContext m34869s(AccountContext accountContext) throws Exception {
        new LoginOnyxAccountRequest(accountContext).m72235execute();
        return accountContext;
    }

    @NotNull
    public final LoginOnyxAccountAction setAccountContext(@NotNull AccountContext accountContext) {
        Intrinsics.checkNotNullParameter(accountContext, "accountContext");
        this.accountContext = accountContext;
        return this;
    }

    /* renamed from: t */
    public final AccountContext m34870t(AccountContext accountContext) throws Exception {
        if (accountContext.isPhoneOrEmail()) {
            new LoginByPhoneOrEmailRequest(accountContext).setClusterInfo(getClusterInfo()).execute();
        } else if (accountContext.isWechatQr()) {
            new LoginByWechatRequest(accountContext).setClusterInfo(getClusterInfo()).execute();
        } else if (accountContext.isOnyxQrCode()) {
            new LoginByOnyxQrCodeRequest(accountContext).setClusterInfo(getClusterInfo()).execute();
        } else if (accountContext.isWechatApp()) {
            new LoginByWechatAppRequest(accountContext).setClusterInfo(getClusterInfo()).execute();
        } else if (accountContext.isLoginAccount()) {
            new LoginByPasswordRequest(accountContext).setClusterInfo(getClusterInfo()).execute();
        } else if (accountContext.isLoginHuawei()) {
            new LoginByHuaweiAuthRequest(accountContext).setClusterInfo(getClusterInfo()).execute();
        } else if (accountContext.isLoginGoogle()) {
            new LoginByGoogleAuthRequest(accountContext).setClusterInfo(getClusterInfo()).execute();
        } else if (accountContext.isLoginMicrosoft()) {
            new LoginByMicrosoftAuthRequest(accountContext).setClusterInfo(getClusterInfo()).execute();
        }
        return accountContext;
    }

    /* renamed from: u */
    public final LoginOnyxAccountAction m34871u() {
        MMKVSync.INSTANCE.setSaveToCloudNoteLatestTime(MMKVUtils.INSTANCE, 0L);
        KSyncBundle.INSTANCE.onLogin(this.intentArgs);
        AccountDataBundle.INSTANCE.getEventBusHolder().post(LoginAccountChanged.INSTANCE);
        return this;
    }

    /* renamed from: v */
    public final AccountContext m34872v(AccountContext accountContext, ClusterInfo clusterInfo) {
        accountContext.setClusterInfo(clusterInfo);
        return accountContext;
    }
}
