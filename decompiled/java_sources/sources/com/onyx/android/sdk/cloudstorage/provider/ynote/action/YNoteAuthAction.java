package com.onyx.android.sdk.cloudstorage.provider.ynote.action;

import android.content.Context;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.common.p019ui.OAuthDialog;
import com.onyx.android.sdk.cloudstorage.common.p019ui.OAuthDialogParam;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.AuthResult;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.ynote.YNoteProvider;
import com.onyx.android.sdk.cloudstorage.provider.ynote.action.YNoteAuthAction;
import com.onyx.android.sdk.cloudstorage.provider.ynote.model.AccessTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.ynote.request.YNoteAccessTokenRequest;
import com.onyx.android.sdk.cloudstorage.provider.ynote.request.YNoteAuthRequest;
import com.onyx.android.sdk.cloudstorage.provider.ynote.request.YNoteFetchAccountInfoRequest;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.AccountProfile;
import com.onyx.android.sdk.data.account.request.cloud.BindAccountRequest;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.BehaviorSubject;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001a¢\u0006\u0004\b\u001e\u0010\u001fJ\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0014J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0012\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\u0012\u0010\u000e\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0013\u001a\u00020\u0010H\u0002J\b\u0010\u0014\u001a\u00020\u0000H\u0002J\b\u0010\u0015\u001a\u00020\fH\u0002R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "getProvider", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "authCode", "q", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "accountModel", "", GoogleApiAvailabilityLight.f29016b, "m", "u", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAuthRequest;", "authRequest", "s", "r", "t", "p", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;", CouchFieldKey.KEY_PROVIDER, "Landroid/content/Context;", C6997f.f39671c, "Landroid/content/Context;", "activityContext", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;Landroid/content/Context;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class YNoteAuthAction extends BaseCloudStorageAction<AuthResult> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final YNoteProvider provider;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.ynote.action.YNoteAuthAction$a */
    /* loaded from: classes7.dex */
    public static final class C7363a<T, R> implements Function {
        public C7363a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ClusterInfo> apply(@NotNull YNoteAuthAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return YNoteAuthAction.this.updateClusterInfoObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.ynote.action.YNoteAuthAction$b */
    /* loaded from: classes7.dex */
    public static final class C7364b<T, R> implements Function {
        public C7364b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final YNoteAuthAction apply(@NotNull ClusterInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return YNoteAuthAction.this.m32901t();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.ynote.action.YNoteAuthAction$c */
    /* loaded from: classes7.dex */
    public static final class C7365c<T, R> implements Function {
        public C7365c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final YNoteAuthRequest apply(@NotNull YNoteAuthAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return YNoteAuthAction.this.m32899r();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.ynote.action.YNoteAuthAction$d */
    /* loaded from: classes7.dex */
    public static final class C7366d<T, R> implements Function {
        public C7366d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull YNoteAuthRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return YNoteAuthAction.this.m32900s(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.ynote.action.YNoteAuthAction$e */
    /* loaded from: classes7.dex */
    public static final class C7367e<T, R> implements Function {
        public C7367e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return YNoteAuthAction.this.m32902u(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.ynote.action.YNoteAuthAction$f */
    /* loaded from: classes7.dex */
    public static final class C7368f<T, R> implements Function {
        public C7368f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AuthResult apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return YNoteAuthAction.this.m32898q(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.ynote.action.YNoteAuthAction$g */
    /* loaded from: classes7.dex */
    public static final class C7369g<T> implements Consumer {
        public C7369g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            YNoteAuthAction.this.m32897p();
        }
    }

    public YNoteAuthAction(@NotNull YNoteProvider provider, @NotNull Context activityContext) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        this.provider = provider;
        this.activityContext = activityContext;
    }

    /* renamed from: o */
    public static final void m32894o(YNoteAuthAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m32897p();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<AuthResult> create() {
        Observable<AuthResult> doOnError = Observable.just(this).flatMap(new C7363a()).observeOn(AndroidSchedulers.mainThread()).map(new C7364b()).observeOn(getObserveOn()).map(new C7365c()).observeOn(AndroidSchedulers.mainThread()).flatMap(new C7366d()).map(new C7367e()).observeOn(getObserveOn()).map(new C7368f()).observeOn(AndroidSchedulers.mainThread()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.cxo
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                YNoteAuthAction.m32894o(YNoteAuthAction.this);
            }
        }).doOnError(new C7369g());
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        return doOnError;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider */
    public BaseCloudStorageProvider getBaiduYunProvider() {
        return this.provider;
    }

    /* renamed from: m */
    public final void m32895m(ProviderAccountModel accountModel) throws Exception {
        if (accountModel == null) {
            return;
        }
        AccountProfile accountProfile = new AccountProfile();
        AccountInfoBean accountInfoBean = accountModel.getAccountInfoBean();
        accountProfile.m72196setName(accountInfoBean != null ? accountInfoBean.getAccountName() : null);
        accountProfile.m72195setId(accountModel.getAccountId());
        BindAccountRequest bindAccountRequest = new BindAccountRequest(Provider.ONYX_NOTE.getTitle(), accountProfile);
        bindAccountRequest.m72240setClusterInfo(getClusterInfo());
        bindAccountRequest.m72201execute();
    }

    /* renamed from: n */
    public final void m32896n(ProviderAccountModel accountModel) throws Exception {
        if (AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            m32895m(accountModel);
        }
    }

    /* renamed from: p */
    public final void m32897p() {
    }

    /* renamed from: q */
    public final AuthResult m32898q(String authCode) throws Exception {
        if (authCode.length() == 0) {
            return AuthResult.INSTANCE.authFail();
        }
        AccessTokenResponse execute = new YNoteAccessTokenRequest(this.provider, authCode).execute();
        if (!StringKt.isNotBlank(execute.getAccessToken())) {
            return AuthResult.INSTANCE.authFail();
        }
        this.provider.setAccessToken(execute.getAccessToken());
        this.provider.updateTokenHeader(execute.getAccessToken());
        YNoteProvider yNoteProvider = this.provider;
        String accessToken = execute.getAccessToken();
        Intrinsics.checkNotNull(accessToken);
        ProviderAccountModel execute2 = new YNoteFetchAccountInfoRequest(yNoteProvider, accessToken).execute();
        m32896n(execute2);
        AuthResult authSuccess = AuthResult.INSTANCE.authSuccess();
        authSuccess.setAccountId(execute2.getAccountId());
        return authSuccess;
    }

    /* renamed from: r */
    public final YNoteAuthRequest m32899r() throws Exception {
        YNoteAuthRequest yNoteAuthRequest = new YNoteAuthRequest(this.provider.getNoteClient());
        yNoteAuthRequest.setConsumerKey(this.provider.getProviderContext().getKey());
        yNoteAuthRequest.setAuthState(UUIDUtils.INSTANCE.shortUUID());
        yNoteAuthRequest.execute();
        return yNoteAuthRequest;
    }

    /* renamed from: s */
    public final Observable<String> m32900s(YNoteAuthRequest authRequest) {
        final BehaviorSubject create = BehaviorSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        final OAuthDialog newInstance = OAuthDialog.INSTANCE.newInstance(new OAuthDialogParam(this.provider.getProviderType().getTitle(), authRequest.getAuthUrl(), null, null, BundleKt.bundleOf(TuplesKt.m61535to(CloudStorageConstants.YNOTE_AUTH_STATE_KEY, authRequest.getAuthState())), 12, null));
        newInstance.setOnDismissListener(new Function0<Unit>() { // from class: com.onyx.android.sdk.cloudstorage.provider.ynote.action.YNoteAuthAction$showAuthDialog$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                RxjavaKt.done(create, newInstance.getCode());
            }
        });
        Context context = this.activityContext;
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        newInstance.show(((FragmentActivity) context).getSupportFragmentManager(), YNoteAuthAction.class.getSimpleName());
        return create;
    }

    /* renamed from: t */
    public final YNoteAuthAction m32901t() {
        return this;
    }

    /* renamed from: u */
    public final String m32902u(String authCode) {
        return authCode;
    }
}
