package com.onyx.galaxy.note.usercenter.viewmodel;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.WechatVerifyAction;
import com.onyx.android.sdk.data.account.bean.AccountVerifyArgs;
import com.onyx.android.sdk.data.account.bean.WechatVerifyArgs;
import com.onyx.android.sdk.data.account.bean.WechatVerifyTypes;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.data.ProviderCertificate;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.note.common.event.NetworkStatusChangeEvent;
import com.onyx.android.sdk.statistics.AuthResultListener;
import com.onyx.android.sdk.statistics.StatisticsManager;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.account.data.VerifyCodeBundle;
import com.onyx.galaxy.note.account.event.LoadQrCodeEvent;
import com.onyx.galaxy.note.account.event.RefreshQrCodeEvent;
import com.onyx.galaxy.note.account.event.VerifyCodeNotifyEvent;
import com.onyx.galaxy.note.account.event.VerifySuccessEvent;
import com.onyx.galaxy.note.account.view.WechatLoadWebWidget;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyWechatViewModel;
import com.onyx.galaxy.note.utils.ServiceUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bA\u0010BJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0007J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0007J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000eH\u0007J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0010H\u0007J\b\u0010\u0012\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\b\u0010\u0016\u001a\u00020\u0002H\u0002R\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00180\u00178\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R$\u0010,\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R$\u00100\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010'\u001a\u0004\b.\u0010)\"\u0004\b/\u0010+R$\u00104\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u0010'\u001a\u0004\b2\u0010)\"\u0004\b3\u0010+R$\u00108\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u0010'\u001a\u0004\b6\u0010)\"\u0004\b7\u0010+R$\u0010<\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u0010'\u001a\u0004\b:\u0010)\"\u0004\b;\u0010+R%\u0010@\u001a\u0010\u0012\f\u0012\n >*\u0004\u0018\u00010=0=0\u00178\u0006¢\u0006\f\n\u0004\b?\u0010\u001a\u001a\u0004\b@\u0010\u001c¨\u0006C"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", Constants.RESET, "Landroid/view/View;", "view", "onCodeImageClick", "onNextButtonClick", "Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRCodeEvent;", "e", "onQrRefresh", "Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRVerifiedEvent;", NotificationCompat.CATEGORY_EVENT, "onQrVerified", "Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;", "onVerifyCodeWaitTimeUpdate", "Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;", "onNetworkStatusChange", C6998g.f39679a, "Landroid/app/Activity;", "uiContext", C6997f.f39671c, "startVerify", "Landroidx/lifecycle/MutableLiveData;", "", "i", "Landroidx/lifecycle/MutableLiveData;", "getEvent", "()Landroidx/lifecycle/MutableLiveData;", "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", "j", "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", "getVerifyArgs", "()Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", "setVerifyArgs", "(Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V", "verifyArgs", "", C4921e.f26537n, Constants.STRING_SIG, "getVerifyType", "()Ljava/lang/String;", "setVerifyType", "(Ljava/lang/String;)V", "verifyType", "l", "getCode", "setCode", "code", "m", "getState", "setState", "state", GoogleApiAvailabilityLight.f29016b, "getOpenId", "setOpenId", "openId", C4921e.f26528e, "getAccessToken", "setAccessToken", "accessToken", "", "kotlin.jvm.PlatformType", "p", "isNextButtonEnable", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class AccountVerifyWechatViewModel extends BaseViewModel {

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public String verifyType;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public String code;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public String state;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public String openId;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public String accessToken;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Object> event = new MutableLiveData<>(Unit.INSTANCE);

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public AccountVerifyArgs verifyArgs = new AccountVerifyArgs();

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> isNextButtonEnable = new MutableLiveData<>(Boolean.TRUE);

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyWechatViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12941a<T> implements Consumer {
        public C12941a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Map mapOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            mapOf = MapsKt__MapsJVMKt.mapOf(new Pair(Constant.TAG_AUTHORIZATION, BaseCloudRequest.INSTANCE.getBearerToken(AccountDataBundle.INSTANCE.getAccountToken())));
            AccountVerifyWechatViewModel.this.getEvent().setValue(new LoadQrCodeEvent(it2, mapOf));
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyWechatViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C12942b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Activity f62596e;

        /* renamed from: f */
        public final /* synthetic */ AccountVerifyWechatViewModel$loadWechatApp$authResultListener$1 f62597f;

        public C12942b(Activity activity, AccountVerifyWechatViewModel$loadWechatApp$authResultListener$1 accountVerifyWechatViewModel$loadWechatApp$authResultListener$1) {
            this.f62596e = activity;
            this.f62597f = accountVerifyWechatViewModel$loadWechatApp$authResultListener$1;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ProviderCertificate it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StatisticsManager statisticsManager = StatisticsBundle.INSTANCE.getStatisticsManager();
            Context applicationContext = this.f62596e.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            statisticsManager.getWeChatInfo(applicationContext, this.f62596e, this.f62597f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyWechatViewModel$c */
    /* loaded from: classes9.dex */
    public static final class C12943c<T> implements Consumer {

        /* renamed from: e */
        public static final C12943c<T> f62598e = new C12943c<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, C7106R.string.network_bad, false, 2, (Object) null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyWechatViewModel$d */
    /* loaded from: classes9.dex */
    public static final class C12944d<T> implements Consumer {

        /* renamed from: e */
        public static final C12944d<T> f62599e = new C12944d<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.postEvent(new VerifySuccessEvent());
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyWechatViewModel$e */
    /* loaded from: classes9.dex */
    public static final class C12945e<T> implements Consumer {
        public C12945e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AccountVerifyWechatViewModel.this.isNextButtonEnable().setValue(Boolean.TRUE);
        }
    }

    /* renamed from: h */
    public static final void m51907h(AccountVerifyWechatViewModel this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51908e();
    }

    /* renamed from: e */
    public final void m51908e() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<String> doOnNext = ServiceUtils.INSTANCE.loadWechatQrCodeUrl("security").observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12941a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyWechatViewModel$loadWechatApp$authResultListener$1] */
    /* renamed from: f */
    public final void m51909f(Activity uiContext) {
        Observable<ProviderCertificate> build;
        Observable<ProviderCertificate> doOnNext;
        Observable<ProviderCertificate> doOnError;
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        if (statisticsBundle.getStatisticsManager().isWechatInstallation(uiContext)) {
            ?? r1 = new AuthResultListener() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyWechatViewModel$loadWechatApp$authResultListener$1
                @Override // com.onyx.android.sdk.statistics.AuthResultListener
                public void onCancel(int p1) {
                }

                @Override // com.onyx.android.sdk.statistics.AuthResultListener
                public void onComplete(int p1, @NotNull Map<String, String> data) {
                    Intrinsics.checkNotNullParameter(data, "data");
                    AccountVerifyWechatViewModel.this.setOpenId(data.get("openid"));
                    AccountVerifyWechatViewModel.this.setAccessToken(data.get("accessToken"));
                    AccountVerifyWechatViewModel.this.setVerifyType("APP");
                    AccountVerifyWechatViewModel.this.startVerify();
                }

                @Override // com.onyx.android.sdk.statistics.AuthResultListener
                public void onError(int p1, @Nullable Throwable t) {
                }

                @Override // com.onyx.android.sdk.statistics.AuthResultListener
                public void onStart() {
                }
            };
            StatisticsManager statisticsManager = statisticsBundle.getStatisticsManager();
            Context applicationContext = uiContext.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            RxBaseAction<ProviderCertificate> createInitSdkAction = statisticsManager.createInitSdkAction(applicationContext);
            if (createInitSdkAction == null || (build = createInitSdkAction.build()) == null || (doOnNext = build.doOnNext(new C12942b(uiContext, r1))) == null || (doOnError = doOnNext.doOnError(C12943c.f62598e)) == null) {
                return;
            }
            doOnError.subscribe();
        }
    }

    /* renamed from: g */
    public final void m51910g() {
        m51908e();
        VerifyCodeBundle.INSTANCE.startWechatTimer();
    }

    @Nullable
    public final String getAccessToken() {
        return this.accessToken;
    }

    @Nullable
    public final String getCode() {
        return this.code;
    }

    @NotNull
    public final MutableLiveData<Object> getEvent() {
        return this.event;
    }

    @Nullable
    public final String getOpenId() {
        return this.openId;
    }

    @Nullable
    public final String getState() {
        return this.state;
    }

    @NotNull
    public final AccountVerifyArgs getVerifyArgs() {
        return this.verifyArgs;
    }

    @Nullable
    public final String getVerifyType() {
        return this.verifyType;
    }

    @NotNull
    public final MutableLiveData<Boolean> isNextButtonEnable() {
        return this.isNextButtonEnable;
    }

    public final void onCodeImageClick(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        m51910g();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNetworkStatusChange(@NotNull NetworkStatusChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getConnected()) {
            m51908e();
        }
    }

    public final void onNextButtonClick(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        m51909f(ViewLocator.INSTANCE.getActivity(view));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onQrRefresh(@NotNull WechatLoadWebWidget.WechatQRCodeEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        this.event.setValue(new RefreshQrCodeEvent(e.getQrCodeUrl()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onQrVerified(@NotNull WechatLoadWebWidget.WechatQRVerifiedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        String code = event.getCode();
        if (code == null) {
            code = "";
        }
        this.code = code;
        String state = event.getState();
        this.state = state != null ? state : "";
        this.verifyType = WechatVerifyTypes.QR;
        startVerify();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVerifyCodeWaitTimeUpdate(@NotNull VerifyCodeNotifyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (Intrinsics.areEqual(event.getKey(), VerifyCodeBundle.INSTANCE.getKEY_WECHAT()) && event.getLeftTime() <= 0) {
            m51910g();
        }
    }

    public final void reset() {
        this.event.setValue(Unit.INSTANCE);
        this.isNextButtonEnable.setValue(Boolean.TRUE);
    }

    public final void setAccessToken(@Nullable String str) {
        this.accessToken = str;
    }

    public final void setCode(@Nullable String str) {
        this.code = str;
    }

    public final void setOpenId(@Nullable String str) {
        this.openId = str;
    }

    public final void setState(@Nullable String str) {
        this.state = str;
    }

    public final void setVerifyArgs(@NotNull AccountVerifyArgs accountVerifyArgs) {
        Intrinsics.checkNotNullParameter(accountVerifyArgs, "<set-?>");
        this.verifyArgs = accountVerifyArgs;
    }

    public final void setVerifyType(@Nullable String str) {
        this.verifyType = str;
    }

    public final void startVerify() {
        this.isNextButtonEnable.setValue(Boolean.FALSE);
        WechatVerifyArgs wechatVerifyArgs = new WechatVerifyArgs();
        wechatVerifyArgs.setAction("security");
        wechatVerifyArgs.setType(this.verifyType);
        wechatVerifyArgs.setCode(this.code);
        wechatVerifyArgs.setState(this.state);
        wechatVerifyArgs.setOpenId(this.openId);
        wechatVerifyArgs.setAccessToken(this.accessToken);
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<Object> doFinally = new WechatVerifyAction(wechatVerifyArgs).build().observeOn(AndroidSchedulers.mainThread()).doOnNext(C12944d.f62599e).doOnError(new C12945e()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.b6
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                AccountVerifyWechatViewModel.m51907h(AccountVerifyWechatViewModel.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doFinally, null, null, 3, null);
    }
}
