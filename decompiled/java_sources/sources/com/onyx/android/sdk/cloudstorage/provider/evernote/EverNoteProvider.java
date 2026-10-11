package com.onyx.android.sdk.cloudstorage.provider.evernote;

import android.content.Context;
import android.content.Intent;
import androidx.core.app.NotificationCompat;
import com.evernote.client.android.AuthenticationResult;
import com.evernote.client.android.EvernoteSession;
import com.evernote.edam.error.EDAMErrorCode;
import com.evernote.edam.error.EDAMUserException;
import com.evernote.edam.type.Note;
import com.evernote.thrift.transport.TTransportException;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.p018rx.RxSimpleAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.C7153R;
import com.onyx.android.sdk.cloudstorage.CloudStorageManager;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.AsyncResult;
import com.onyx.android.sdk.cloudstorage.model.AuthResult;
import com.onyx.android.sdk.cloudstorage.model.CloudAnnotation;
import com.onyx.android.sdk.cloudstorage.model.CloudNote;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.model.ProviderContext;
import com.onyx.android.sdk.cloudstorage.model.UserInfo;
import com.onyx.android.sdk.cloudstorage.model.common.ProviderFeature;
import com.onyx.android.sdk.cloudstorage.provider.common.utils.ProviderAccountModelUtils;
import com.onyx.android.sdk.cloudstorage.provider.evernote.event.EvernoteAuthEvent;
import com.onyx.android.sdk.cloudstorage.provider.evernote.p022ui.EvernoteAuthActivity;
import com.onyx.android.sdk.cloudstorage.provider.evernote.request.EvernoteFetchAccountInfoRequest;
import com.onyx.android.sdk.cloudstorage.provider.evernote.request.EvernoteLoadAccountInfoRequest;
import com.onyx.android.sdk.cloudstorage.provider.evernote.request.EvernoteSaveAnnotationRequest;
import com.onyx.android.sdk.cloudstorage.provider.evernote.request.EvernoteSaveNoteRequest;
import com.onyx.android.sdk.cloudstorage.utils.CloudNoteUploadLimitErrorUtils;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.AccountProfile;
import com.onyx.android.sdk.data.account.request.cloud.BindAccountRequest;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.BehaviorSubject;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 22\u00020\u0001:\u00012B\u0007¢\u0006\u0004\b0\u00101J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u001e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\b\u0010\u0016\u001a\u00020\u0015H\u0016J\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00130\u000b2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\u000e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0016J\u0010\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0007J\b\u0010 \u001a\u00020\u0006H\u0002J\u0010\u0010#\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020!H\u0002J\b\u0010$\u001a\u00020\u0006H\u0002J\u0010\u0010(\u001a\u00020'2\u0006\u0010&\u001a\u00020%H\u0002J\u0010\u0010*\u001a\u00020\u00062\u0006\u0010)\u001a\u00020%H\u0002J\b\u0010)\u001a\u00020\u0006H\u0002J\u0010\u0010+\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b#\u0010,R\u001e\u0010/\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010.¨\u00063"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "providerContext", "", "initProvider", "Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;", Constant.USER_INFO, "activityContext", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", "authenticate", "logOut", "", "isAuth", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", "cloudNote", "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;", "saveNote", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "getAccountInfo", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", "cloudAnnotation", "saveAnnotation", "", "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;", "getEnableFeatures", "Lcom/onyx/android/sdk/cloudstorage/provider/evernote/event/EvernoteAuthEvent;", NotificationCompat.CATEGORY_EVENT, "onEvernoteAuth", "b", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "clusterInfo", "a", "c", "", "throwable", "Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;", C6998g.f39679a, "e", C6997f.f39671c, "d", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "Lio/reactivex/rxjava3/subjects/BehaviorSubject;", "Lio/reactivex/rxjava3/subjects/BehaviorSubject;", "authObservable", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class EverNoteProvider extends BaseCloudStorageProvider {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static EvernoteSession session;

    /* renamed from: a, reason: from kotlin metadata */
    public ProviderContext providerContext;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public BehaviorSubject<AuthResult> authObservable;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;", "", "()V", "session", "Lcom/evernote/client/android/EvernoteSession;", "getSession", "()Lcom/evernote/client/android/EvernoteSession;", "setSession", "(Lcom/evernote/client/android/EvernoteSession;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final EvernoteSession getSession() {
            EvernoteSession evernoteSession = EverNoteProvider.session;
            if (evernoteSession != null) {
                return evernoteSession;
            }
            Intrinsics.throwUninitializedPropertyAccessException("session");
            return null;
        }

        public final void setSession(@NotNull EvernoteSession evernoteSession) {
            Intrinsics.checkNotNullParameter(evernoteSession, "<set-?>");
            EverNoteProvider.session = evernoteSession;
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.evernote.EverNoteProvider$a */
    /* loaded from: classes7.dex */
    public static final class C7299a<T, R> implements Function {
        public C7299a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EverNoteProvider apply(@NotNull ClusterInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EverNoteProvider.this.m32659a(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.evernote.EverNoteProvider$b */
    /* loaded from: classes7.dex */
    public static final class C7300b<T, R> implements Function {

        /* renamed from: e */
        public static final C7300b<T, R> f41589e = new C7300b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AsyncResult apply(@NotNull Note it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AsyncResult.INSTANCE.success();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.evernote.EverNoteProvider$c */
    /* loaded from: classes7.dex */
    public static final class C7301c<T, R> implements Function {
        public C7301c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AsyncResult apply(@NotNull Throwable e) {
            Intrinsics.checkNotNullParameter(e, "e");
            Debug.INSTANCE.m32048e(e);
            EverNoteProvider.this.m32664f(e);
            return AsyncResult.INSTANCE.fail(EverNoteProvider.this.m32665g(e));
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.evernote.EverNoteProvider$d */
    /* loaded from: classes7.dex */
    public static final class C7302d<T, R> implements Function {

        /* renamed from: e */
        public static final C7302d<T, R> f41591e = new C7302d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AsyncResult apply(@NotNull Note it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AsyncResult.INSTANCE.success();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.evernote.EverNoteProvider$e */
    /* loaded from: classes7.dex */
    public static final class C7303e<T, R> implements Function {
        public C7303e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AsyncResult apply(@NotNull Throwable e) {
            Intrinsics.checkNotNullParameter(e, "e");
            EverNoteProvider.this.m32664f(e);
            return AsyncResult.INSTANCE.fail(EverNoteProvider.this.m32665g(e));
        }
    }

    public EverNoteProvider() {
        setProvider(Provider.EVER_NOTE);
    }

    /* renamed from: a */
    public final EverNoteProvider m32659a(ClusterInfo clusterInfo) {
        if (!AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            return this;
        }
        BindAccountRequest bindAccountRequest = new BindAccountRequest(Provider.EVER_NOTE.getTitle(), new AccountProfile().setId(String.valueOf(INSTANCE.getSession().getAuthenticationResult().getUserId())));
        bindAccountRequest.setClusterInfo(clusterInfo);
        bindAccountRequest.m72201execute();
        return this;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AuthResult> authenticate(@NotNull UserInfo userInfo, @NotNull Context activityContext) {
        Intrinsics.checkNotNullParameter(userInfo, "userInfo");
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        this.authObservable = BehaviorSubject.create();
        m32662d(activityContext);
        activityContext.startActivity(new Intent(activityContext, (Class<?>) EvernoteAuthActivity.class));
        BehaviorSubject<AuthResult> behaviorSubject = this.authObservable;
        Intrinsics.checkNotNull(behaviorSubject);
        return behaviorSubject;
    }

    /* renamed from: b */
    public final void m32660b() {
        ClusterManager.INSTANCE.getCurrentClusterObservable().map(new C7299a()).subscribe();
    }

    /* renamed from: c */
    public final void m32661c() {
        RxBaseAction.execute$default(new RxSimpleAction(new EvernoteFetchAccountInfoRequest(this, String.valueOf(INSTANCE.getSession().getAuthenticationResult().getUserId())), getObserveOn()), null, null, null, 7, null);
    }

    /* renamed from: d */
    public final void m32662d(Context context) {
        ProviderContext providerContext = this.providerContext;
        ProviderContext providerContext2 = null;
        if (providerContext == null) {
            Intrinsics.throwUninitializedPropertyAccessException("providerContext");
            providerContext = null;
        }
        EvernoteSession.EvernoteService evernoteService = providerContext.getSandbox() ? EvernoteSession.EvernoteService.SANDBOX : EvernoteSession.EvernoteService.PRODUCTION;
        Companion companion = INSTANCE;
        EvernoteSession.Builder builder = new EvernoteSession.Builder(context.getApplicationContext());
        ProviderContext providerContext3 = this.providerContext;
        if (providerContext3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("providerContext");
            providerContext3 = null;
        }
        EvernoteSession.Builder evernoteService2 = builder.setLocale(providerContext3.getLocale()).setEvernoteService(evernoteService);
        ProviderContext providerContext4 = this.providerContext;
        if (providerContext4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("providerContext");
            providerContext4 = null;
        }
        String key = providerContext4.getKey();
        ProviderContext providerContext5 = this.providerContext;
        if (providerContext5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("providerContext");
        } else {
            providerContext2 = providerContext5;
        }
        EvernoteSession asSingleton = evernoteService2.build(key, providerContext2.getSecret()).asSingleton();
        Intrinsics.checkNotNullExpressionValue(asSingleton, "asSingleton(...)");
        companion.setSession(asSingleton);
    }

    /* renamed from: e */
    public final void m32663e() {
        INSTANCE.getSession().logOut();
        ProviderAccountModelUtils.INSTANCE.deleteAccount(Provider.EVER_NOTE.getTitle(), getAccountId());
    }

    /* renamed from: f */
    public final void m32664f(Throwable e) {
        if ((e instanceof EDAMUserException) && ((EDAMUserException) e).getErrorCode() == EDAMErrorCode.AUTH_EXPIRED) {
            m32663e();
        }
    }

    /* renamed from: g */
    public final CloudNoteException m32665g(Throwable throwable) {
        if ((throwable instanceof TTransportException) && throwable.getCause() != null) {
            return new CloudNoteException(throwable.getCause());
        }
        CloudNoteException cloudNoteException = new CloudNoteException(throwable);
        if (throwable instanceof EDAMUserException) {
            EDAMUserException eDAMUserException = (EDAMUserException) throwable;
            if (eDAMUserException.getErrorCode() == EDAMErrorCode.QUOTA_REACHED) {
                cloudNoteException.setError(CloudNoteUploadLimitErrorUtils.INSTANCE.getUploadLimitErrorString(Provider.EVER_NOTE));
            } else if (eDAMUserException.getErrorCode() == EDAMErrorCode.LIMIT_REACHED) {
                cloudNoteException.setError(ResManager.INSTANCE.getString(C7153R.string.evernote_async_fail_size_limit));
            }
        }
        return cloudNoteException;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public AccountInfoBean getAccountInfo() {
        EvernoteLoadAccountInfoRequest evernoteLoadAccountInfoRequest = new EvernoteLoadAccountInfoRequest();
        evernoteLoadAccountInfoRequest.setAccountId(String.valueOf(INSTANCE.getSession().getAuthenticationResult().getUserId()));
        return evernoteLoadAccountInfoRequest.executeSafety();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Set<ProviderFeature> getEnableFeatures() {
        Set<ProviderFeature> of;
        if (getProviderAccountModel() == null) {
            of = SetsKt__SetsJVMKt.setOf(ProviderFeature.Note);
            return of;
        }
        ProviderAccountModel providerAccountModel = getProviderAccountModel();
        Intrinsics.checkNotNull(providerAccountModel);
        return providerAccountModel.getEnableFeatures();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public void initProvider(@NotNull Context context, @NotNull ProviderContext providerContext) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(providerContext, "providerContext");
        this.providerContext = providerContext;
        m32662d(context);
        EventBusHolderKt.ensureRegister(CloudStorageManager.INSTANCE.getOurInstance().getEventBus(), this);
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public boolean isAuth() {
        return INSTANCE.getSession().isLoggedIn();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public void logOut(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        m32663e();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEvernoteAuth(@NotNull EvernoteAuthEvent event) {
        AuthResult authFail;
        AuthenticationResult authenticationResult;
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.authObservable == null) {
            return;
        }
        if (event.getSuccess()) {
            authFail = AuthResult.INSTANCE.authSuccess();
            authenticationResult = INSTANCE.getSession().getAuthenticationResult();
            if (authenticationResult == null) {
                Debug.INSTANCE.m32059w(EverNoteProvider.class, getProviderType() + " login success, but detect null session auth result", new Object[0]);
            } else {
                authFail.setAccountId(String.valueOf(authenticationResult.getUserId()));
            }
        } else {
            authFail = AuthResult.INSTANCE.authFail();
            authenticationResult = null;
        }
        BehaviorSubject<AuthResult> behaviorSubject = this.authObservable;
        Intrinsics.checkNotNull(behaviorSubject);
        behaviorSubject.onNext(authFail);
        BehaviorSubject<AuthResult> behaviorSubject2 = this.authObservable;
        Intrinsics.checkNotNull(behaviorSubject2);
        behaviorSubject2.onComplete();
        this.authObservable = null;
        if (!event.getSuccess() || authenticationResult == null) {
            return;
        }
        m32661c();
        m32660b();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AsyncResult> saveAnnotation(@NotNull CloudAnnotation cloudAnnotation) {
        Intrinsics.checkNotNullParameter(cloudAnnotation, "cloudAnnotation");
        Observable<AsyncResult> onErrorReturn = new RxSimpleAction(new EvernoteSaveAnnotationRequest(cloudAnnotation), getObserveOn()).build().map(C7300b.f41589e).onErrorReturn(new C7301c());
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "onErrorReturn(...)");
        return onErrorReturn;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AsyncResult> saveNote(@NotNull CloudNote cloudNote) {
        Intrinsics.checkNotNullParameter(cloudNote, "cloudNote");
        Observable<AsyncResult> onErrorReturn = new RxSimpleAction(new EvernoteSaveNoteRequest(INSTANCE.getSession(), cloudNote), getObserveOn()).build().map(C7302d.f41591e).onErrorReturn(new C7303e());
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "onErrorReturn(...)");
        return onErrorReturn;
    }
}
