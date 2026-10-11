package com.onyx.galaxy.note.usercenter.viewmodel;

import android.app.Activity;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Transformations;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.account.action.CheckPhoneEmailCodeAction;
import com.onyx.android.sdk.data.account.action.EmailBindStateCheckAction;
import com.onyx.android.sdk.data.account.action.EmailCheckAction;
import com.onyx.android.sdk.data.account.action.EmailRegisterStateCheckAction;
import com.onyx.android.sdk.data.account.action.LogOffByPhoneEmailAction;
import com.onyx.android.sdk.data.account.action.PhoneBindStateCheckAction;
import com.onyx.android.sdk.data.account.action.PhoneCheckAction;
import com.onyx.android.sdk.data.account.action.PhoneRegisterStateCheckAction;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.common.exception.AbortException;
import com.onyx.android.sdk.data.utils.AreaCodeUtil;
import com.onyx.android.sdk.replicator.account.action.LogoutOnyxAccountAction;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.action.SendPhoneOrEmailCodeAction;
import com.onyx.galaxy.note.account.event.VerifyCodeNotifyEvent;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.common.data.AppConfigManager;
import com.onyx.galaxy.note.usercenter.p049ui.UserCenterEvents;
import com.onyx.galaxy.note.utils.AreaCodeUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0018\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u001c\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bq\u0010rJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\u000e\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u000f\u001a\u00020\rJ\u0006\u0010\u0010\u001a\u00020\rJ\u0006\u0010\u0011\u001a\u00020\rJ\u0006\u0010\u0012\u001a\u00020\rJ\u0006\u0010\u0013\u001a\u00020\u0007J$\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\rJ\u000e\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u001a\u001a\u00020\u000bJ\u0006\u0010\u001b\u001a\u00020\u000bJ\u0006\u0010\u001c\u001a\u00020\u0007J\u0010\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0007R\u0017\u0010%\u001a\u00020 8\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\"\u0010,\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u00100\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010'\u001a\u0004\b.\u0010)\"\u0004\b/\u0010+R\"\u00104\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u0010'\u001a\u0004\b2\u0010)\"\u0004\b3\u0010+R\"\u00108\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u0010'\u001a\u0004\b6\u0010)\"\u0004\b7\u0010+R\"\u0010@\u001a\u0002098\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\"\u0010D\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010'\u001a\u0004\bB\u0010)\"\u0004\bC\u0010+R%\u0010K\u001a\u0010\u0012\f\u0012\n F*\u0004\u0018\u00010\r0\r0E8\u0006¢\u0006\f\n\u0004\bG\u0010H\u001a\u0004\bI\u0010JR%\u0010N\u001a\u0010\u0012\f\u0012\n F*\u0004\u0018\u000109090E8\u0006¢\u0006\f\n\u0004\bL\u0010H\u001a\u0004\bM\u0010JR%\u0010Q\u001a\u0010\u0012\f\u0012\n F*\u0004\u0018\u00010\r0\r0E8\u0006¢\u0006\f\n\u0004\bO\u0010H\u001a\u0004\bP\u0010JR%\u0010T\u001a\u0010\u0012\f\u0012\n F*\u0004\u0018\u000109090E8\u0006¢\u0006\f\n\u0004\bR\u0010H\u001a\u0004\bS\u0010JR%\u0010\u0017\u001a\u0010\u0012\f\u0012\n F*\u0004\u0018\u00010\r0\r0E8\u0006¢\u0006\f\n\u0004\bU\u0010H\u001a\u0004\bV\u0010JR\u001d\u0010\\\u001a\b\u0012\u0004\u0012\u00020\r0W8\u0006¢\u0006\f\n\u0004\bX\u0010Y\u001a\u0004\bZ\u0010[R%\u0010_\u001a\u0010\u0012\f\u0012\n F*\u0004\u0018\u000109090W8\u0006¢\u0006\f\n\u0004\b]\u0010Y\u001a\u0004\b^\u0010[R%\u0010b\u001a\u0010\u0012\f\u0012\n F*\u0004\u0018\u00010\r0\r0E8\u0006¢\u0006\f\n\u0004\b`\u0010H\u001a\u0004\ba\u0010JR\"\u0010e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bc\u0010d\u001a\u0004\be\u0010f\"\u0004\bg\u0010hR\"\u0010j\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bi\u0010d\u001a\u0004\bj\u0010f\"\u0004\bk\u0010hR\u001d\u0010n\u001a\b\u0012\u0004\u0012\u00020\u00070W8\u0006¢\u0006\f\n\u0004\bl\u0010Y\u001a\u0004\bm\u0010[R\u001d\u0010p\u001a\b\u0012\u0004\u0012\u00020\r0W8\u0006¢\u0006\f\n\u0004\b\"\u0010Y\u001a\u0004\bo\u0010[¨\u0006s"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "Lio/reactivex/rxjava3/core/Observable;", "", "d", C6997f.f39671c, C6998g.f39679a, "", "e", "Landroid/view/View;", "view", "", "clearSocialAccount", "", "getVerifyFragmentTitle", "getVerifyFragmentTipText", "getBindFragmentTitle", "getBindFragmentHeaderTitle", "getBindFragmentHeaderTipText", "isRebindMode", "Landroid/app/Activity;", "activityContext", "phoneOrEmail", "areaCode", "sendVerifyCode", "sendVerifyCodeWithSubscribe", "checkVerifyResult", "logoffWithPhoneEmail", "checkEmailFormat", "Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;", NotificationCompat.CATEGORY_EVENT, "onVerifyCodeWaitTimeUpdate", "", "i", "J", "getResendWaitTime", "()J", "resendWaitTime", "j", Constants.STRING_SIG, "getPurpose", "()Ljava/lang/String;", "setPurpose", "(Ljava/lang/String;)V", AccountVerifyPurpose.KEY_PURPOSE, C4921e.f26537n, "getOldSocialAccount", "setOldSocialAccount", "oldSocialAccount", "l", "getOldVerifyCode", "setOldVerifyCode", "oldVerifyCode", "m", "getToken", "setToken", "token", "", GoogleApiAvailabilityLight.f29016b, "I", "getVerifyType", "()I", "setVerifyType", "(I)V", "verifyType", C4921e.f26528e, "getVerifyCodeTag", "setVerifyCodeTag", "verifyCodeTag", "Landroidx/lifecycle/MutableLiveData;", "kotlin.jvm.PlatformType", "p", "Landroidx/lifecycle/MutableLiveData;", "getVerifyCode", "()Landroidx/lifecycle/MutableLiveData;", "verifyCode", "q", "getVerifyCodeSendStatus", "verifyCodeSendStatus", "r", "getVerifyCodeCheckResult", "verifyCodeCheckResult", "s", "getVerifyCodeWaitTime", "verifyCodeWaitTime", "t", "getAreaCode", "Landroidx/lifecycle/LiveData;", "u", "Landroidx/lifecycle/LiveData;", "getPrefixedAreaCode", "()Landroidx/lifecycle/LiveData;", "prefixedAreaCode", "v", "getMaxPhoneLength", "maxPhoneLength", "w", "getSocialAccount", "socialAccount", "x", Constants.HASIDCALL_INDEX_SIG, "isResend", Constants.BOOLEAN_VALUE_SIG, "setResend", "(Z)V", "y", "isReconfirmed", "setReconfirmed", "z", "getVerifyCodeButtonEnable", "verifyCodeButtonEnable", "getVerifyCodeButtonTitle", "verifyCodeButtonTitle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nVerifyCodeViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VerifyCodeViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel\n+ 2 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,296:1\n214#2:297\n214#2:298\n214#2:299\n*S KotlinDebug\n*F\n+ 1 VerifyCodeViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel\n*L\n215#1:297\n267#1:298\n283#1:299\n*E\n"})
/* loaded from: classes9.dex */
public final class VerifyCodeViewModel extends BaseViewModel {

    /* renamed from: J, reason: from kotlin metadata */
    @NotNull
    public final LiveData<String> verifyCodeButtonTitle;

    /* renamed from: n, reason: from kotlin metadata */
    public int verifyType;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Integer> verifyCodeSendStatus;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> verifyCodeCheckResult;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Integer> verifyCodeWaitTime;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> areaCode;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final LiveData<String> prefixedAreaCode;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final LiveData<Integer> maxPhoneLength;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> socialAccount;

    /* renamed from: x, reason: from kotlin metadata */
    public boolean isResend;

    /* renamed from: y, reason: from kotlin metadata */
    public boolean isReconfirmed;

    /* renamed from: z, reason: from kotlin metadata */
    @NotNull
    public final LiveData<Boolean> verifyCodeButtonEnable;

    /* renamed from: i, reason: from kotlin metadata */
    public final long resendWaitTime = AppConfigManager.INSTANCE.getVerifyCodeTimeout();

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public String purpose = "none";

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public String oldSocialAccount = "";

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public String oldVerifyCode = "";

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public String token = "";

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public String verifyCodeTag = "";

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> verifyCode = new MutableLiveData<>("");

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12966a<T> implements Consumer {
        public C12966a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            VerifyCodeViewModel.this.setToken(it2);
            VerifyCodeViewModel.this.getVerifyCodeCheckResult().postValue(UserCenterEvents.VERIFY_SUCCESS);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C12967b<T> implements Consumer {
        public C12967b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            VerifyCodeViewModel.this.getVerifyCodeCheckResult().postValue(UserCenterEvents.VERIFY_FAIL);
            OnyxErrorHandler.handle$default(OnyxErrorHandler.INSTANCE, it2, null, null, 6, null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel$c */
    /* loaded from: classes9.dex */
    public static final class C12968c<T> implements Consumer {
        public C12968c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            VerifyCodeViewModel.this.getVerifyCodeCheckResult().postValue(UserCenterEvents.LOGOFF_SUCCESS);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel$d */
    /* loaded from: classes9.dex */
    public static final class C12969d<T, R> implements Function {

        /* renamed from: e */
        public static final C12969d<T, R> f62664e = new C12969d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LogoutOnyxAccountAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LogoutOnyxAccountAction logoutOnyxAccountAction = new LogoutOnyxAccountAction();
            logoutOnyxAccountAction.setSkipCloudLogout(true);
            return logoutOnyxAccountAction.build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel$e */
    /* loaded from: classes9.dex */
    public static final class C12970e<T, R> implements Function {
        public C12970e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull VerifyCodeViewModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(VerifyCodeViewModel.this.getVerifyType() == 1);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel$f */
    /* loaded from: classes9.dex */
    public static final class C12971f<T, R> implements Function {
        public C12971f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(VerifyCodeViewModel.this.getVerifyType() == 2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel$g */
    /* loaded from: classes9.dex */
    public static final class C12972g<T, R> implements Function {
        public C12972g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return VerifyCodeViewModel.this.m51945d();
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel$h */
    /* loaded from: classes9.dex */
    public static final class C12973h<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Activity f62669f;

        /* renamed from: g */
        public final /* synthetic */ String f62670g;

        /* renamed from: h */
        public final /* synthetic */ String f62671h;

        public C12973h(Activity activity, String str, String str2) {
            this.f62669f = activity;
            this.f62670g = str;
            this.f62671h = str2;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new SendPhoneOrEmailCodeAction(VerifyCodeViewModel.this.getVerifyType(), this.f62669f, this.f62670g, this.f62671h, false, 16, null).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel$i */
    /* loaded from: classes9.dex */
    public static final class C12974i<T> implements Consumer {
        public C12974i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            VerifyCodeViewModel.this.getVerifyCode().postValue("");
            VerifyCodeViewModel.this.getVerifyCodeSendStatus().postValue(2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel$j */
    /* loaded from: classes9.dex */
    public static final class C12975j<T> implements Consumer {
        public C12975j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            VerifyCodeViewModel.this.getVerifyCodeSendStatus().postValue(3);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel$k */
    /* loaded from: classes9.dex */
    public static final class C12976k<T> implements Consumer {
        public C12976k() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            VerifyCodeViewModel.this.getVerifyCodeSendStatus().postValue(1);
            if (it2 instanceof AbortException) {
                return;
            }
            OnyxErrorHandler.handle$default(OnyxErrorHandler.INSTANCE, it2, null, null, 6, null);
        }
    }

    public VerifyCodeViewModel() {
        MutableLiveData<Integer> mutableLiveData = new MutableLiveData<>(1);
        this.verifyCodeSendStatus = mutableLiveData;
        this.verifyCodeCheckResult = new MutableLiveData<>("");
        MutableLiveData<Integer> mutableLiveData2 = new MutableLiveData<>(0);
        this.verifyCodeWaitTime = mutableLiveData2;
        MutableLiveData<String> mutableLiveData3 = new MutableLiveData<>(AreaCodeUtils.INSTANCE.getDefaultAreaCode());
        this.areaCode = mutableLiveData3;
        this.prefixedAreaCode = Transformations.map(mutableLiveData3, new Function1<String, String>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel$prefixedAreaCode$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(String str) {
                return AreaCodeUtil.INSTANCE.getPrefixedAreaCode(VerifyCodeViewModel.this.getAreaCode().getValue());
            }
        });
        this.maxPhoneLength = Transformations.switchMap(mutableLiveData3, new Function1<String, LiveData<Integer>>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel$maxPhoneLength$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final LiveData<Integer> invoke(String str) {
                int areaPhoneMaxLength = AreaCodeUtils.INSTANCE.getAreaPhoneMaxLength(VerifyCodeViewModel.this.getAreaCode().getValue());
                String value = VerifyCodeViewModel.this.getSocialAccount().getValue();
                if (value == null) {
                    value = "";
                }
                if (value.length() > areaPhoneMaxLength) {
                    MutableLiveData<String> socialAccount = VerifyCodeViewModel.this.getSocialAccount();
                    String substring = value.substring(0, areaPhoneMaxLength);
                    Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                    socialAccount.setValue(substring);
                }
                return new MutableLiveData(Integer.valueOf(areaPhoneMaxLength));
            }
        });
        this.socialAccount = new MutableLiveData<>("");
        this.verifyCodeButtonEnable = Transformations.switchMap(mutableLiveData, new Function1<Integer, LiveData<Boolean>>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel$verifyCodeButtonEnable$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final LiveData<Boolean> invoke(Integer num) {
                MutableLiveData<Integer> verifyCodeWaitTime = VerifyCodeViewModel.this.getVerifyCodeWaitTime();
                final VerifyCodeViewModel verifyCodeViewModel = VerifyCodeViewModel.this;
                return Transformations.switchMap(verifyCodeWaitTime, new Function1<Integer, LiveData<Boolean>>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel$verifyCodeButtonEnable$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @Nullable
                    public final LiveData<Boolean> invoke(Integer num2) {
                        MutableLiveData<String> socialAccount = VerifyCodeViewModel.this.getSocialAccount();
                        final VerifyCodeViewModel verifyCodeViewModel2 = VerifyCodeViewModel.this;
                        return Transformations.map(socialAccount, new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel.verifyCodeButtonEnable.1.1.1
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            @NotNull
                            public final Boolean invoke(String str) {
                                Integer value;
                                Integer value2 = VerifyCodeViewModel.this.getVerifyCodeSendStatus().getValue();
                                return Boolean.valueOf((value2 == null || value2.intValue() != 2) && (value = VerifyCodeViewModel.this.getVerifyCodeWaitTime().getValue()) != null && value.intValue() == 0 && StringKt.isNotBlank(VerifyCodeViewModel.this.getSocialAccount().getValue()));
                            }
                        });
                    }
                });
            }
        });
        this.verifyCodeButtonTitle = Transformations.map(mutableLiveData2, new Function1<Integer, String>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel$verifyCodeButtonTitle$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(Integer num) {
                int i;
                if (num != null && num.intValue() == 0) {
                    ResManager resManager = ResManager.INSTANCE;
                    if (VerifyCodeViewModel.this.getIsResend()) {
                        i = C10651R.string.user_title_resend_verify_code;
                    } else {
                        i = C10651R.string.user_title_send_verify_code;
                    }
                    return resManager.getStringSafely(i);
                }
                VerifyCodeViewModel.this.setResend(true);
                StringBuilder sb = new StringBuilder();
                sb.append(VerifyCodeViewModel.this.getVerifyCodeWaitTime().getValue());
                sb.append('s');
                return sb.toString();
            }
        });
    }

    public final boolean checkEmailFormat() {
        return StringKt.checkEmailFormat(this.socialAccount.getValue());
    }

    public final void checkVerifyResult() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<String> doOnError = new CheckPhoneEmailCodeAction(this.socialAccount.getValue(), this.verifyCode.getValue(), null, false, 12, null).build().doOnNext(new C12966a()).doOnError(new C12967b());
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        Observable<String> doOnError2 = doOnError.doOnError(new Consumer() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel$checkVerifyResult$$inlined$handleTimeoutError$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Throwable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OnyxErrorHandler.INSTANCE.showTimeoutMessage(it2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnError2, "doOnError(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnError2, null, null, 3, null);
    }

    public final void clearSocialAccount(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.socialAccount.postValue("");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0050, code lost:
    
        if (r0.equals(com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose.PURPOSE_BIND_EMAIL_AFTER_LOGIN) == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0059, code lost:
    
        if (r0.equals(com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose.PURPOSE_BIND_PHONE_AFTER_LOGIN) == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
    
        if (r0.equals(com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose.PURPOSE_BIND_EMAIL_BEFORE_VERIFY) == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
    
        if (r0.equals("bind") == false) goto L30;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.reactivex.rxjava3.core.Observable<java.lang.Object> m51945d() {
        /*
            r3 = this;
            java.lang.String r0 = r3.purpose
            int r1 = r0.hashCode()
            java.lang.String r2 = "just(...)"
            switch(r1) {
                case -2125020557: goto L53;
                case -1541145695: goto L4a;
                case -934944528: goto L2c;
                case -88751168: goto L1e;
                case 3023933: goto L15;
                case 1135703764: goto Lc;
                default: goto Lb;
            }
        Lb:
            goto L61
        Lc:
            java.lang.String r1 = "bind_email_before_verify"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L5c
            goto L61
        L15:
            java.lang.String r1 = "bind"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L5c
            goto L61
        L1e:
            java.lang.String r1 = "password_recover"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L27
            goto L61
        L27:
            io.reactivex.rxjava3.core.Observable r3 = r3.m51948g()
            goto L68
        L2c:
            java.lang.String r1 = "rebind"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L35
            goto L61
        L35:
            java.lang.String r0 = r3.oldSocialAccount
            boolean r0 = com.onyx.android.sdk.base.extension.StringKt.isEmpty(r0)
            if (r0 == 0) goto L45
            io.reactivex.rxjava3.core.Observable r3 = io.reactivex.rxjava3.core.Observable.just(r3)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r2)
            return r3
        L45:
            io.reactivex.rxjava3.core.Observable r3 = r3.m51947f()
            goto L68
        L4a:
            java.lang.String r1 = "bind_email_after_login"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L5c
            goto L61
        L53:
            java.lang.String r1 = "bind_phone_after_login"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L5c
            goto L61
        L5c:
            io.reactivex.rxjava3.core.Observable r3 = r3.m51947f()
            goto L68
        L61:
            io.reactivex.rxjava3.core.Observable r3 = io.reactivex.rxjava3.core.Observable.just(r3)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r2)
        L68:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel.m51945d():io.reactivex.rxjava3.core.Observable");
    }

    /* renamed from: e */
    public final boolean m51946e() {
        return Intrinsics.areEqual(this.oldSocialAccount, this.socialAccount.getValue());
    }

    /* renamed from: f */
    public final Observable<Object> m51947f() {
        int i = this.verifyType;
        if (i == 1) {
            String value = this.socialAccount.getValue();
            return new PhoneBindStateCheckAction(value != null ? value : "").build();
        }
        if (i == 2) {
            String value2 = this.socialAccount.getValue();
            return new EmailBindStateCheckAction(value2 != null ? value2 : "").build();
        }
        Observable<Object> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: g */
    public final Observable<Object> m51948g() {
        int i = this.verifyType;
        if (i == 1) {
            String value = this.socialAccount.getValue();
            return new PhoneRegisterStateCheckAction(value != null ? value : "").build();
        }
        if (i == 2) {
            String value2 = this.socialAccount.getValue();
            return new EmailRegisterStateCheckAction(value2 != null ? value2 : "").build();
        }
        Observable<Object> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @NotNull
    public final MutableLiveData<String> getAreaCode() {
        return this.areaCode;
    }

    @NotNull
    public final String getBindFragmentHeaderTipText() {
        int i = this.verifyType;
        return i != 1 ? i != 2 ? "" : ResManager.INSTANCE.getStringSafely(C10651R.string.user_tip_bind_email) : ResManager.INSTANCE.getStringSafely(C10651R.string.user_tip_bind_phone);
    }

    @NotNull
    public final String getBindFragmentHeaderTitle() {
        int i = this.verifyType;
        return i != 1 ? i != 2 ? "" : ResManager.INSTANCE.getStringSafely(C10651R.string.user_title_bind_email_verify) : ResManager.INSTANCE.getStringSafely(C10651R.string.user_title_bind_phone_verify);
    }

    @NotNull
    public final String getBindFragmentTitle() {
        if (isRebindMode()) {
            int i = this.verifyType;
            return i != 1 ? i != 2 ? "" : ResManager.INSTANCE.getStringSafely(C10651R.string.user_title_rebind_email) : ResManager.INSTANCE.getStringSafely(C10651R.string.user_title_rebind_phone);
        }
        int i2 = this.verifyType;
        return i2 != 1 ? i2 != 2 ? "" : ResManager.INSTANCE.getStringSafely(C10651R.string.user_title_bind_email) : ResManager.INSTANCE.getStringSafely(C10651R.string.user_title_bind_phone);
    }

    @NotNull
    public final LiveData<Integer> getMaxPhoneLength() {
        return this.maxPhoneLength;
    }

    @NotNull
    public final String getOldSocialAccount() {
        return this.oldSocialAccount;
    }

    @NotNull
    public final String getOldVerifyCode() {
        return this.oldVerifyCode;
    }

    @NotNull
    public final LiveData<String> getPrefixedAreaCode() {
        return this.prefixedAreaCode;
    }

    @NotNull
    public final String getPurpose() {
        return this.purpose;
    }

    public final long getResendWaitTime() {
        return this.resendWaitTime;
    }

    @NotNull
    public final MutableLiveData<String> getSocialAccount() {
        return this.socialAccount;
    }

    @NotNull
    public final String getToken() {
        return this.token;
    }

    @NotNull
    public final MutableLiveData<String> getVerifyCode() {
        return this.verifyCode;
    }

    @NotNull
    public final LiveData<Boolean> getVerifyCodeButtonEnable() {
        return this.verifyCodeButtonEnable;
    }

    @NotNull
    public final LiveData<String> getVerifyCodeButtonTitle() {
        return this.verifyCodeButtonTitle;
    }

    @NotNull
    public final MutableLiveData<String> getVerifyCodeCheckResult() {
        return this.verifyCodeCheckResult;
    }

    @NotNull
    public final MutableLiveData<Integer> getVerifyCodeSendStatus() {
        return this.verifyCodeSendStatus;
    }

    @NotNull
    public final String getVerifyCodeTag() {
        return this.verifyCodeTag;
    }

    @NotNull
    public final MutableLiveData<Integer> getVerifyCodeWaitTime() {
        return this.verifyCodeWaitTime;
    }

    @NotNull
    public final String getVerifyFragmentTipText() {
        String str = this.purpose;
        return Intrinsics.areEqual(str, "destroy") ? ResManager.INSTANCE.getStringSafely(C10651R.string.user_tip_logoff_warning_2) : Intrinsics.areEqual(str, AccountVerifyPurpose.PURPOSE_PASSWORD_RECOVER) ? ResManager.INSTANCE.getStringSafely(C10651R.string.user_tip_password_recover_verify) : ResManager.INSTANCE.getStringSafely(C10651R.string.user_tip_security_verify);
    }

    @NotNull
    public final String getVerifyFragmentTitle() {
        String str = this.purpose;
        int hashCode = str.hashCode();
        if (hashCode != -187786581) {
            if (hashCode != -88751168) {
                if (hashCode == 1557372922 && str.equals("destroy")) {
                    return ResManager.INSTANCE.getStringSafely(C10651R.string.user_title_log_off);
                }
            } else if (str.equals(AccountVerifyPurpose.PURPOSE_PASSWORD_RECOVER)) {
                return ResManager.INSTANCE.getStringSafely(C10651R.string.user_title_password_recover);
            }
        } else if (str.equals(AccountVerifyPurpose.PURPOSE_PASSWORD_RESET)) {
            return ResManager.INSTANCE.getStringSafely(C10651R.string.user_title_password_recover);
        }
        return "";
    }

    public final int getVerifyType() {
        return this.verifyType;
    }

    public final boolean isRebindMode() {
        List listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(AccountVerifyPurpose.PURPOSE_REBIND);
        return listOf.contains(this.purpose);
    }

    /* renamed from: isReconfirmed, reason: from getter */
    public final boolean getIsReconfirmed() {
        return this.isReconfirmed;
    }

    /* renamed from: isResend, reason: from getter */
    public final boolean getIsResend() {
        return this.isResend;
    }

    public final void logoffWithPhoneEmail() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        String value = this.socialAccount.getValue();
        Intrinsics.checkNotNull(value);
        String value2 = this.verifyCode.getValue();
        Intrinsics.checkNotNull(value2);
        Observable<R> flatMap = new LogOffByPhoneEmailAction(value, value2).build().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12968c()).flatMap(C12969d.f62664e);
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable doOnError = flatMap.doOnError(new Consumer() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel$logoffWithPhoneEmail$$inlined$handleTimeoutError$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Throwable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OnyxErrorHandler.INSTANCE.showTimeoutMessage(it2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnError, null, null, 3, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVerifyCodeWaitTimeUpdate(@NotNull VerifyCodeNotifyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (Intrinsics.areEqual(event.getKey(), this.verifyCodeTag)) {
            this.verifyCodeWaitTime.postValue(Integer.valueOf((int) event.getLeftTime()));
        }
    }

    @NotNull
    public final Observable<Object> sendVerifyCode(@NotNull Activity activityContext, @NotNull String phoneOrEmail, @NotNull String areaCode) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(phoneOrEmail, "phoneOrEmail");
        Intrinsics.checkNotNullParameter(areaCode, "areaCode");
        Observable map = Observable.just(this).map(new C12970e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        String value = this.prefixedAreaCode.getValue();
        if (value == null) {
            value = "";
        }
        String value2 = this.socialAccount.getValue();
        Observable<R> map2 = RxjavaKt.flatMapIfTrue(map, new PhoneCheckAction(value, value2 != null ? value2 : "").build()).map(new C12971f());
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        Observable<Object> flatMap = RxjavaKt.flatMapIfTrue(map2, new EmailCheckAction(phoneOrEmail).build()).flatMap(new C12972g()).flatMap(new C12973h(activityContext, phoneOrEmail, areaCode));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    public final void sendVerifyCodeWithSubscribe(@NotNull Activity activityContext) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        if (m51946e()) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.user_tip_account_is_same, false, 2, (Object) null);
            return;
        }
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        String value = this.socialAccount.getValue();
        if (value == null) {
            value = "";
        }
        String value2 = this.prefixedAreaCode.getValue();
        Observable<Object> doOnError = sendVerifyCode(activityContext, value, value2 != null ? value2 : "").doOnSubscribe(new C12974i()).doOnNext(new C12975j()).doOnError(new C12976k());
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        Observable<Object> doOnError2 = doOnError.doOnError(new Consumer() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel$sendVerifyCodeWithSubscribe$$inlined$handleTimeoutError$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Throwable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OnyxErrorHandler.INSTANCE.showTimeoutMessage(it2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnError2, "doOnError(...)");
        doOnError2.subscribe();
    }

    public final void setOldSocialAccount(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.oldSocialAccount = str;
    }

    public final void setOldVerifyCode(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.oldVerifyCode = str;
    }

    public final void setPurpose(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.purpose = str;
    }

    public final void setReconfirmed(boolean z) {
        this.isReconfirmed = z;
    }

    public final void setResend(boolean z) {
        this.isResend = z;
    }

    public final void setToken(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.token = str;
    }

    public final void setVerifyCodeTag(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.verifyCodeTag = str;
    }

    public final void setVerifyType(int i) {
        this.verifyType = i;
    }
}
