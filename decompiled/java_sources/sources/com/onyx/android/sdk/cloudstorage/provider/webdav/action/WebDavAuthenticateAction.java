package com.onyx.android.sdk.cloudstorage.provider.webdav.action;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.Html;
import android.text.Spanned;
import android.widget.Toast;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.C7153R;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.common.utils.CloudStorageMMKVHelper;
import com.onyx.android.sdk.cloudstorage.model.AuthResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.common.action.CloudStorageProviderLogOutAction;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider;
import com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavAuthenticateAction;
import com.onyx.android.sdk.cloudstorage.provider.webdav.p023ui.DialogWebDavAuth;
import com.onyx.android.sdk.cloudstorage.provider.webdav.request.WebDavFetchFileListRequest;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.model.p028v2.WebDAVAuthAccount;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.DavResource;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0019\u001a\u00020\u0003\u0012\u0006\u0010\u001d\u001a\u00020\u001a¢\u0006\u0004\b\"\u0010#J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0014J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0002J4\u0010\u000f\u001a\u00020\u000e2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\f\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\nH\u0002J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0013\u001a\u00020\u000eH\u0002J\b\u0010\u0014\u001a\u00020\u000eH\u0002J\b\u0010\u0016\u001a\u00020\u0015H\u0002J\n\u0010\u0017\u001a\u0004\u0018\u00010\nH\u0002R\u0014\u0010\u0019\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "getProvider", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "u", "Lio/reactivex/rxjava3/core/Observer;", EventHandlerManager.OBSERVER, "", "davUrl", LoginAuthConst.ACCOUNT_AUTH, "password", "", "s", "", "e", "x", "q", "y", "Landroid/text/Spanned;", "p", "getTitle", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "webDavProvider", "Landroid/content/Context;", C6997f.f39671c, "Landroid/content/Context;", "activityContext", "Landroid/app/Dialog;", C6998g.f39679a, "Landroid/app/Dialog;", "dialogAuth", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Landroid/content/Context;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class WebDavAuthenticateAction extends BaseCloudStorageAction<AuthResult> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final WebDavProvider webDavProvider;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public Dialog dialogAuth;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Provider.values().length];
            try {
                iArr[Provider.WEBDAV.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Provider.NUT_STORE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavAuthenticateAction$a */
    /* loaded from: classes7.dex */
    public static final class C7343a<T, R> implements Function {
        public C7343a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AuthResult> apply(@NotNull WebDavAuthenticateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return WebDavAuthenticateAction.this.m32844u();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavAuthenticateAction$b */
    /* loaded from: classes7.dex */
    public static final class C7344b<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ AtomicReference<ProviderAccountModel> f41911f;

        public C7344b(AtomicReference<ProviderAccountModel> atomicReference) {
            this.f41911f = atomicReference;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileQueryArgs apply(@NotNull ProviderAccountModel accountInfo) {
            Intrinsics.checkNotNullParameter(accountInfo, "accountInfo");
            WebDavAuthenticateAction.this.webDavProvider.configureProviderAccountModel(accountInfo);
            this.f41911f.set(accountInfo);
            CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
            cloudFileQueryArgs.setProvider(WebDavAuthenticateAction.this.webDavProvider.getProviderType().getTitle());
            cloudFileQueryArgs.setFetchPolicy(0);
            cloudFileQueryArgs.setAccountId(accountInfo.getAccountId());
            return cloudFileQueryArgs;
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavAuthenticateAction$c */
    /* loaded from: classes7.dex */
    public static final class C7345c<T, R> implements Function {
        public C7345c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final QueryListResult<DavResource> apply(@NotNull CloudFileQueryArgs queryArgs) {
            Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
            return new WebDavFetchFileListRequest(WebDavAuthenticateAction.this.webDavProvider, queryArgs).execute();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavAuthenticateAction$d */
    /* loaded from: classes7.dex */
    public static final class C7346d<T> implements Consumer {
        public C7346d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            WebDavAuthenticateAction.this.m32845x(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavAuthenticateAction$e */
    /* loaded from: classes7.dex */
    public static final class C7347e<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Dialog f41915f;

        public C7347e(Dialog dialog) {
            this.f41915f = dialog;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull QueryListResult<DavResource> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            WebDavAuthenticateAction.this.dialogAuth = null;
            Dialog dialog = this.f41915f;
            if (dialog != null) {
                dialog.dismiss();
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavAuthenticateAction$f */
    /* loaded from: classes7.dex */
    public static final class C7348f<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ AtomicReference<ProviderAccountModel> f41916e;

        /* renamed from: f */
        public final /* synthetic */ Observer<AuthResult> f41917f;

        public C7348f(AtomicReference<ProviderAccountModel> atomicReference, Observer<AuthResult> observer) {
            this.f41916e = atomicReference;
            this.f41917f = observer;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull QueryListResult<DavResource> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AuthResult authSuccess = AuthResult.INSTANCE.authSuccess();
            if (this.f41916e.get() != null) {
                authSuccess.setAccountId(this.f41916e.get().getAccountId());
            }
            this.f41917f.onNext(authSuccess);
            this.f41917f.onComplete();
        }
    }

    public WebDavAuthenticateAction(@NotNull WebDavProvider webDavProvider, @NotNull Context activityContext) {
        Intrinsics.checkNotNullParameter(webDavProvider, "webDavProvider");
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        this.webDavProvider = webDavProvider;
        this.activityContext = activityContext;
    }

    /* renamed from: r */
    public static final void m32837r(WebDavAuthenticateAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.webDavProvider.configureProviderAccountModel(null);
    }

    /* renamed from: t */
    public static final void m32838t() {
    }

    /* renamed from: v */
    public static final void m32839v(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }

    /* renamed from: w */
    public static final void m32840w(PublishSubject subject, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(subject, "$subject");
        subject.onNext(AuthResult.INSTANCE.authFail());
        subject.onComplete();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<AuthResult> create() {
        Observable<AuthResult> flatMap = Observable.just(this).observeOn(getMainUIScheduler()).flatMap(new C7343a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    public final String getTitle() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.webDavProvider.getProviderType().ordinal()];
        return ResManager.INSTANCE.getString(i != 1 ? i != 2 ? C7153R.string.nut_store_bind : C7153R.string.nut_store_bind : C7153R.string.webdav_cloud_bind);
    }

    /* renamed from: p */
    public final Spanned m32841p() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.webDavProvider.getProviderType().ordinal()];
        Spanned fromHtml = Html.fromHtml(ResManager.INSTANCE.getString(i != 1 ? i != 2 ? C7153R.string.nut_store_login_tip : C7153R.string.nut_store_login_tip : C7153R.string.webdav_login_tip));
        Intrinsics.checkNotNullExpressionValue(fromHtml, "fromHtml(...)");
        return fromHtml;
    }

    /* renamed from: q */
    public final void m32842q() {
        CloudStorageProviderLogOutAction cloudStorageProviderLogOutAction = new CloudStorageProviderLogOutAction(this.webDavProvider);
        cloudStorageProviderLogOutAction.setWorkScheduler(getObserveOn());
        cloudStorageProviderLogOutAction.build().doFinally(new Action() { // from class: com.sunia.HTREnginev2.u5o
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                WebDavAuthenticateAction.m32837r(WebDavAuthenticateAction.this);
            }
        }).subscribe();
    }

    /* renamed from: s */
    public final void m32843s(Observer<AuthResult> observer, String davUrl, String account, String password) {
        this.webDavProvider.getWebDavClient().setWebDavURL(davUrl);
        WebDAVAuthAccount create = WebDAVAuthAccount.INSTANCE.create(account, password);
        create.setWebDAVUrl(davUrl);
        this.webDavProvider.setClientCredentials(create);
        Dialog dialog = this.dialogAuth;
        m32846y();
        AtomicReference atomicReference = new AtomicReference();
        WebDavProvider webDavProvider = this.webDavProvider;
        webDavProvider.saveAccountInfo(create, webDavProvider.getProviderType().getTitle()).map(new C7344b(atomicReference)).observeOn(getObserveOn()).map(new C7345c()).observeOn(getMainUIScheduler()).doOnError(new C7346d()).doOnNext(new C7347e(dialog)).doOnNext(new C7348f(atomicReference, observer)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.v5o
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                WebDavAuthenticateAction.m32838t();
            }
        }).subscribe();
    }

    /* renamed from: u */
    public final Observable<AuthResult> m32844u() {
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        DialogWebDavAuth dialogWebDavAuth = new DialogWebDavAuth(this.activityContext);
        dialogWebDavAuth.setTitleText(getTitle());
        dialogWebDavAuth.setTutorials(m32841p());
        dialogWebDavAuth.setWebDAVAuthAccount(CloudStorageMMKVHelper.INSTANCE.getWebDAVAuthAccount(this.webDavProvider.getProviderType().getTitle()));
        dialogWebDavAuth.setDefaultDavUrl(this.webDavProvider.getWebDavClient().getWebDavURL());
        dialogWebDavAuth.setNegativeListener(new DialogInterface.OnClickListener() { // from class: com.sunia.HTREnginev2.w5o
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                WebDavAuthenticateAction.m32839v(dialogInterface, i);
            }
        });
        dialogWebDavAuth.setPositiveListener(new DialogWebDavAuth.WebDavDialogPositiveListener() { // from class: com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavAuthenticateAction$showAuthDialog$1$2
            @Override // com.onyx.android.sdk.cloudstorage.provider.webdav.ui.DialogWebDavAuth.WebDavDialogPositiveListener
            public void onClick(@Nullable DialogInterface dialog, @Nullable String davUrl, @Nullable String account, @Nullable String password) {
                WebDavAuthenticateAction.this.m32843s(create, davUrl, account, password);
            }
        });
        this.dialogAuth = dialogWebDavAuth;
        dialogWebDavAuth.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.sunia.HTREnginev2.x5o
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                WebDavAuthenticateAction.m32840w(PublishSubject.this, dialogInterface);
            }
        });
        Dialog dialog = this.dialogAuth;
        if (dialog != null) {
            dialog.show();
        }
        return create;
    }

    /* renamed from: x */
    public final void m32845x(Throwable e) {
        if (!(e instanceof CloudNoteException)) {
            Toast.makeText(getAppContext(), C7153R.string.login_fail, 0).show();
            m32842q();
        } else if (((CloudNoteException) e).getCode() == 1005) {
            Toast.makeText(getAppContext(), C7153R.string.this_cloud_storage_account_is_bound, 0).show();
        } else {
            m32842q();
        }
    }

    /* renamed from: y */
    public final void m32846y() {
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public WebDavProvider getGoogleDriverProvider() {
        return this.webDavProvider;
    }
}
