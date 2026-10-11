package com.onyx.galaxy.note.usercenter.viewmodel;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Transformations;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.CheckPhoneEmailCodeAction;
import com.onyx.android.sdk.data.account.action.PhoneCheckAction;
import com.onyx.android.sdk.data.account.bean.AccountVerifyArgs;
import com.onyx.android.sdk.data.account.bean.ResultData;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.common.exception.AbortException;
import com.onyx.android.sdk.data.utils.AreaCodeUtil;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.action.SendPhoneOrEmailCodeAction;
import com.onyx.galaxy.note.account.data.VerifyCodeBundle;
import com.onyx.galaxy.note.account.event.CloseKeyBoardEvent;
import com.onyx.galaxy.note.account.event.EnableVerificationCodeEditEvent;
import com.onyx.galaxy.note.account.event.VerifyCodeNotifyEvent;
import com.onyx.galaxy.note.account.event.VerifySuccessEvent;
import com.onyx.galaxy.note.account.model.AreaCodeModel;
import com.onyx.galaxy.note.account.view.dialog.AreaCodeDialog;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.common.data.AppConfigManager;
import com.onyx.galaxy.note.utils.AreaCodeUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0019\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bS\u0010TJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\r\u001a\u00020\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0007R\u001d\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00120\u00118\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR%\u0010#\u001a\u0010\u0012\f\u0012\n  *\u0004\u0018\u00010\u001f0\u001f0\u00118\u0006¢\u0006\f\n\u0004\b!\u0010\u0014\u001a\u0004\b\"\u0010\u0016R%\u0010&\u001a\u0010\u0012\f\u0012\n  *\u0004\u0018\u00010\u001f0\u001f0\u00118\u0006¢\u0006\f\n\u0004\b$\u0010\u0014\u001a\u0004\b%\u0010\u0016R0\u0010+\u001a\u0010\u0012\f\u0012\n  *\u0004\u0018\u00010\u001f0\u001f0\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010\u0014\u001a\u0004\b(\u0010\u0016\"\u0004\b)\u0010*R\u0017\u00101\u001a\u00020,8\u0006¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u001d\u00107\u001a\b\u0012\u0004\u0012\u00020\u001f028\u0006¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\u001d\u0010;\u001a\b\u0012\u0004\u0012\u000208028\u0006¢\u0006\f\n\u0004\b9\u00104\u001a\u0004\b:\u00106R\u001d\u0010>\u001a\b\u0012\u0004\u0012\u00020<028\u0006¢\u0006\f\n\u0004\b=\u00104\u001a\u0004\b>\u00106R\"\u0010E\u001a\u00020<8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR%\u0010H\u001a\u0010\u0012\f\u0012\n  *\u0004\u0018\u000108080\u00118\u0006¢\u0006\f\n\u0004\bF\u0010\u0014\u001a\u0004\bG\u0010\u0016R%\u0010K\u001a\u0010\u0012\f\u0012\n  *\u0004\u0018\u000108080\u00118\u0006¢\u0006\f\n\u0004\bI\u0010\u0014\u001a\u0004\bJ\u0010\u0016R\u001d\u0010M\u001a\b\u0012\u0004\u0012\u00020<028\u0006¢\u0006\f\n\u0004\bL\u00104\u001a\u0004\bM\u00106R\u001d\u0010O\u001a\b\u0012\u0004\u0012\u00020<028\u0006¢\u0006\f\n\u0004\bN\u00104\u001a\u0004\bO\u00106R\u001d\u0010R\u001a\b\u0012\u0004\u0012\u00020\u001f028\u0006¢\u0006\f\n\u0004\bP\u00104\u001a\u0004\bQ\u00106¨\u0006U"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", Constants.RESET, "initAreaCode", "Landroid/view/View;", "view", "onAreaCodeClick", "onVerifyCodeClick", "onNextButtonClick", "Landroid/app/Activity;", "uiContext", "sendVerifyCode", "startVerify", "Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;", NotificationCompat.CATEGORY_EVENT, "onVerifyCodeWaitTimeUpdate", "Landroidx/lifecycle/MutableLiveData;", "", "i", "Landroidx/lifecycle/MutableLiveData;", "getEvent", "()Landroidx/lifecycle/MutableLiveData;", "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", "j", "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", "getVerifyArgs", "()Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", "setVerifyArgs", "(Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V", "verifyArgs", "", "kotlin.jvm.PlatformType", C4921e.f26537n, "getPhone", "phone", "l", "getAreaCode", "areaCode", "m", "getVerificationCode", "setVerificationCode", "(Landroidx/lifecycle/MutableLiveData;)V", "verificationCode", "", GoogleApiAvailabilityLight.f29016b, "J", "getResendWaitTime", "()J", "resendWaitTime", "Landroidx/lifecycle/LiveData;", C4921e.f26528e, "Landroidx/lifecycle/LiveData;", "getPrefixedAreaCode", "()Landroidx/lifecycle/LiveData;", "prefixedAreaCode", "", "p", "getMaxPhoneLength", "maxPhoneLength", "", "q", "isNextEnabled", "r", Constants.HASIDCALL_INDEX_SIG, "getVerifyCodeResend", Constants.BOOLEAN_VALUE_SIG, "setVerifyCodeResend", "(Z)V", "verifyCodeResend", "s", "getVerifyCodeSendStatus", "verifyCodeSendStatus", "t", "getVerifyCodeWaitTime", "verifyCodeWaitTime", "u", "isVerifyCodeEditEnabled", "v", "isVerifyCodeButtonEnabled", "w", "getVerifyCodeButtonTitle", "verifyCodeButtonTitle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAccountVerifyPhoneViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountVerifyPhoneViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel\n+ 2 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,191:1\n214#2:192\n214#2:193\n*S KotlinDebug\n*F\n+ 1 AccountVerifyPhoneViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel\n*L\n169#1:192\n180#1:193\n*E\n"})
/* loaded from: classes9.dex */
public final class AccountVerifyPhoneViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Object> event = new MutableLiveData<>(Unit.INSTANCE);

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public AccountVerifyArgs verifyArgs = new AccountVerifyArgs();

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> phone;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> areaCode;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<String> verificationCode;

    /* renamed from: n, reason: from kotlin metadata */
    public final long resendWaitTime;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final LiveData<String> prefixedAreaCode;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final LiveData<Integer> maxPhoneLength;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final LiveData<Boolean> isNextEnabled;

    /* renamed from: r, reason: from kotlin metadata */
    public boolean verifyCodeResend;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Integer> verifyCodeSendStatus;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Integer> verifyCodeWaitTime;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final LiveData<Boolean> isVerifyCodeEditEnabled;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final LiveData<Boolean> isVerifyCodeButtonEnabled;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public final LiveData<String> verifyCodeButtonTitle;

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPhoneViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12933a<T, R> implements Function {
        public C12933a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            String value = AccountVerifyPhoneViewModel.this.getPrefixedAreaCode().getValue();
            if (value == null) {
                value = "";
            }
            String value2 = AccountVerifyPhoneViewModel.this.getPhone().getValue();
            return new PhoneCheckAction(value, value2 != null ? value2 : "").build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPhoneViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C12934b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Activity f62577e;

        /* renamed from: f */
        public final /* synthetic */ AccountVerifyPhoneViewModel f62578f;

        public C12934b(Activity activity, AccountVerifyPhoneViewModel accountVerifyPhoneViewModel) {
            this.f62577e = activity;
            this.f62578f = accountVerifyPhoneViewModel;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ResultData<String>> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Activity activity = this.f62577e;
            String value = this.f62578f.getPhone().getValue();
            String str = value == null ? "" : value;
            String value2 = this.f62578f.getPrefixedAreaCode().getValue();
            return new SendPhoneOrEmailCodeAction(1, activity, str, value2 == null ? "" : value2, this.f62578f.getVerifyArgs().getCheckCurrentAccount()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPhoneViewModel$c */
    /* loaded from: classes9.dex */
    public static final class C12935c<T> implements Consumer {
        public C12935c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AccountVerifyPhoneViewModel.this.getVerificationCode().setValue("");
            AccountVerifyPhoneViewModel.this.getVerifyCodeSendStatus().setValue(2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPhoneViewModel$d */
    /* loaded from: classes9.dex */
    public static final class C12936d<T> implements Consumer {
        public C12936d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ResultData<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AccountVerifyPhoneViewModel.this.getVerifyCodeSendStatus().setValue(3);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPhoneViewModel$e */
    /* loaded from: classes9.dex */
    public static final class C12937e<T> implements Consumer {
        public C12937e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AccountVerifyPhoneViewModel.this.getVerifyCodeSendStatus().setValue(1);
            if (it2 instanceof AbortException) {
                return;
            }
            OnyxErrorHandler.handle$default(OnyxErrorHandler.INSTANCE, it2, null, null, 6, null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPhoneViewModel$f */
    /* loaded from: classes9.dex */
    public static final class C12938f<T> implements Consumer {
        public C12938f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AccountVerifyPhoneViewModel.this.getEvent().setValue(new VerifySuccessEvent());
        }
    }

    public AccountVerifyPhoneViewModel() {
        MutableLiveData<String> mutableLiveData = new MutableLiveData<>("");
        this.phone = mutableLiveData;
        MutableLiveData<String> mutableLiveData2 = new MutableLiveData<>("");
        this.areaCode = mutableLiveData2;
        this.verificationCode = new MutableLiveData<>("");
        this.resendWaitTime = AppConfigManager.INSTANCE.getVerifyCodeTimeout();
        this.prefixedAreaCode = Transformations.map(mutableLiveData2, new Function1<String, String>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPhoneViewModel$prefixedAreaCode$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(String str) {
                return AreaCodeUtil.INSTANCE.getPrefixedAreaCode(AccountVerifyPhoneViewModel.this.getAreaCode().getValue());
            }
        });
        this.maxPhoneLength = Transformations.map(mutableLiveData2, new Function1<String, Integer>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPhoneViewModel$maxPhoneLength$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Integer invoke(String str) {
                int areaPhoneMaxLength = AreaCodeUtils.INSTANCE.getAreaPhoneMaxLength(AccountVerifyPhoneViewModel.this.getAreaCode().getValue());
                String value = AccountVerifyPhoneViewModel.this.getPhone().getValue();
                if (value == null) {
                    value = "";
                }
                if (value.length() > areaPhoneMaxLength) {
                    MutableLiveData<String> phone = AccountVerifyPhoneViewModel.this.getPhone();
                    String substring = value.substring(0, areaPhoneMaxLength);
                    Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                    phone.setValue(substring);
                }
                return Integer.valueOf(areaPhoneMaxLength);
            }
        });
        this.isNextEnabled = Transformations.switchMap(mutableLiveData, new Function1<String, LiveData<Boolean>>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPhoneViewModel$isNextEnabled$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final LiveData<Boolean> invoke(String str) {
                MutableLiveData<String> verificationCode = AccountVerifyPhoneViewModel.this.getVerificationCode();
                final AccountVerifyPhoneViewModel accountVerifyPhoneViewModel = AccountVerifyPhoneViewModel.this;
                return Transformations.map(verificationCode, new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPhoneViewModel$isNextEnabled$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(String str2) {
                        return Boolean.valueOf(StringKt.isNotEmpty(AccountVerifyPhoneViewModel.this.getPhone().getValue()) && StringKt.isNotEmpty(AccountVerifyPhoneViewModel.this.getVerificationCode().getValue()));
                    }
                });
            }
        });
        MutableLiveData<Integer> mutableLiveData3 = new MutableLiveData<>(1);
        this.verifyCodeSendStatus = mutableLiveData3;
        MutableLiveData<Integer> mutableLiveData4 = new MutableLiveData<>(0);
        this.verifyCodeWaitTime = mutableLiveData4;
        this.isVerifyCodeEditEnabled = Transformations.map(mutableLiveData3, new Function1<Integer, Boolean>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPhoneViewModel$isVerifyCodeEditEnabled$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(Integer num) {
                boolean z = false;
                if (num != null && num.intValue() == 3) {
                    VerifyCodeBundle verifyCodeBundle = VerifyCodeBundle.INSTANCE;
                    verifyCodeBundle.addTimer(verifyCodeBundle.getKEY_PHONE_VERIFY(), AccountVerifyPhoneViewModel.this.getResendWaitTime(), false);
                    AccountVerifyPhoneViewModel.this.getEvent().setValue(new EnableVerificationCodeEditEvent());
                }
                if (num != null && num.intValue() == 3) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        });
        this.isVerifyCodeButtonEnabled = Transformations.switchMap(mutableLiveData3, new Function1<Integer, LiveData<Boolean>>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPhoneViewModel$isVerifyCodeButtonEnabled$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final LiveData<Boolean> invoke(Integer num) {
                MutableLiveData<Integer> verifyCodeWaitTime = AccountVerifyPhoneViewModel.this.getVerifyCodeWaitTime();
                final AccountVerifyPhoneViewModel accountVerifyPhoneViewModel = AccountVerifyPhoneViewModel.this;
                return Transformations.switchMap(verifyCodeWaitTime, new Function1<Integer, LiveData<Boolean>>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPhoneViewModel$isVerifyCodeButtonEnabled$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @Nullable
                    public final LiveData<Boolean> invoke(Integer num2) {
                        MutableLiveData<String> phone = AccountVerifyPhoneViewModel.this.getPhone();
                        final AccountVerifyPhoneViewModel accountVerifyPhoneViewModel2 = AccountVerifyPhoneViewModel.this;
                        return Transformations.map(phone, new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPhoneViewModel.isVerifyCodeButtonEnabled.1.1.1
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            @NotNull
                            public final Boolean invoke(String str) {
                                Integer value;
                                Integer value2 = AccountVerifyPhoneViewModel.this.getVerifyCodeSendStatus().getValue();
                                return Boolean.valueOf((value2 == null || value2.intValue() != 2) && (value = AccountVerifyPhoneViewModel.this.getVerifyCodeWaitTime().getValue()) != null && value.intValue() == 0 && StringKt.isNotEmpty(AccountVerifyPhoneViewModel.this.getPhone().getValue()));
                            }
                        });
                    }
                });
            }
        });
        this.verifyCodeButtonTitle = Transformations.map(mutableLiveData4, new Function1<Integer, String>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPhoneViewModel$verifyCodeButtonTitle$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(Integer num) {
                int i;
                if (num != null && num.intValue() == 0) {
                    ResManager resManager = ResManager.INSTANCE;
                    if (AccountVerifyPhoneViewModel.this.getVerifyCodeResend()) {
                        i = C10651R.string.user_title_resend_verify_code;
                    } else {
                        i = C10651R.string.user_title_send_verify_code;
                    }
                    return resManager.getStringSafely(i);
                }
                AccountVerifyPhoneViewModel.this.setVerifyCodeResend(true);
                StringBuilder sb = new StringBuilder();
                sb.append(AccountVerifyPhoneViewModel.this.getVerifyCodeWaitTime().getValue());
                sb.append('s');
                return sb.toString();
            }
        });
    }

    @NotNull
    public final MutableLiveData<String> getAreaCode() {
        return this.areaCode;
    }

    @NotNull
    public final MutableLiveData<Object> getEvent() {
        return this.event;
    }

    @NotNull
    public final LiveData<Integer> getMaxPhoneLength() {
        return this.maxPhoneLength;
    }

    @NotNull
    public final MutableLiveData<String> getPhone() {
        return this.phone;
    }

    @NotNull
    public final LiveData<String> getPrefixedAreaCode() {
        return this.prefixedAreaCode;
    }

    public final long getResendWaitTime() {
        return this.resendWaitTime;
    }

    @NotNull
    public final MutableLiveData<String> getVerificationCode() {
        return this.verificationCode;
    }

    @NotNull
    public final AccountVerifyArgs getVerifyArgs() {
        return this.verifyArgs;
    }

    @NotNull
    public final LiveData<String> getVerifyCodeButtonTitle() {
        return this.verifyCodeButtonTitle;
    }

    public final boolean getVerifyCodeResend() {
        return this.verifyCodeResend;
    }

    @NotNull
    public final MutableLiveData<Integer> getVerifyCodeSendStatus() {
        return this.verifyCodeSendStatus;
    }

    @NotNull
    public final MutableLiveData<Integer> getVerifyCodeWaitTime() {
        return this.verifyCodeWaitTime;
    }

    public final void initAreaCode() {
        OnyxAccountModel onyxAccount = AccountDataBundle.INSTANCE.getOnyxAccount();
        String areaCode = onyxAccount != null ? onyxAccount.getAreaCode() : null;
        if (areaCode == null) {
            areaCode = "";
        }
        MutableLiveData<String> mutableLiveData = this.areaCode;
        if (!StringKt.isNotEmpty(areaCode)) {
            areaCode = AreaCodeUtils.INSTANCE.getDefaultAreaCode();
        }
        mutableLiveData.setValue(areaCode);
    }

    @NotNull
    public final LiveData<Boolean> isNextEnabled() {
        return this.isNextEnabled;
    }

    @NotNull
    public final LiveData<Boolean> isVerifyCodeButtonEnabled() {
        return this.isVerifyCodeButtonEnabled;
    }

    @NotNull
    public final LiveData<Boolean> isVerifyCodeEditEnabled() {
        return this.isVerifyCodeEditEnabled;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [T, com.onyx.galaxy.note.account.view.dialog.AreaCodeDialog, android.app.Dialog] */
    public final void onAreaCodeClick(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Function1<AreaCodeModel, Unit> function1 = new Function1<AreaCodeModel, Unit>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPhoneViewModel$onAreaCodeClick$callback$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AreaCodeModel areaCodeModel) {
                invoke2(areaCodeModel);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull AreaCodeModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                AccountVerifyPhoneViewModel.this.getAreaCode().setValue(it2.getCode());
                AreaCodeDialog areaCodeDialog = objectRef.element;
                if (areaCodeDialog != null) {
                    areaCodeDialog.dismiss();
                }
            }
        };
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        String value = this.areaCode.getValue();
        if (value == null) {
            value = "";
        }
        ?? areaCodeDialog = new AreaCodeDialog(context, function1, value);
        objectRef.element = areaCodeDialog;
        areaCodeDialog.show();
    }

    public final void onNextButtonClick(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.event.setValue(new CloseKeyBoardEvent());
        startVerify();
    }

    public final void onVerifyCodeClick(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        sendVerifyCode(ViewLocator.INSTANCE.getActivity(view));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVerifyCodeWaitTimeUpdate(@NotNull VerifyCodeNotifyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (Intrinsics.areEqual(event.getKey(), VerifyCodeBundle.INSTANCE.getKEY_PHONE_VERIFY())) {
            this.verifyCodeWaitTime.setValue(Integer.valueOf((int) event.getLeftTime()));
        }
    }

    public final void reset() {
        this.event.setValue(Unit.INSTANCE);
        this.phone.setValue("");
        this.verificationCode.setValue("");
        this.verifyCodeResend = false;
        this.verifyCodeSendStatus.setValue(1);
        this.verifyCodeWaitTime.setValue(0);
        initAreaCode();
    }

    public final void sendVerifyCode(@NotNull Activity uiContext) {
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable doOnError = Observable.just(Unit.INSTANCE).flatMap(new C12933a()).flatMap(new C12934b(uiContext, this)).observeOn(AndroidSchedulers.mainThread()).doOnSubscribe(new C12935c()).doOnNext(new C12936d()).doOnError(new C12937e());
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        Observable doOnError2 = doOnError.doOnError(new Consumer() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPhoneViewModel$sendVerifyCode$$inlined$handleTimeoutError$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Throwable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OnyxErrorHandler.INSTANCE.showTimeoutMessage(it2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnError2, "doOnError(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnError2, null, null, 3, null);
    }

    public final void setVerificationCode(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.verificationCode = mutableLiveData;
    }

    public final void setVerifyArgs(@NotNull AccountVerifyArgs accountVerifyArgs) {
        Intrinsics.checkNotNullParameter(accountVerifyArgs, "<set-?>");
        this.verifyArgs = accountVerifyArgs;
    }

    public final void setVerifyCodeResend(boolean z) {
        this.verifyCodeResend = z;
    }

    public final void startVerify() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        String value = this.phone.getValue();
        String str = value == null ? "" : value;
        String value2 = this.verificationCode.getValue();
        Observable<String> doOnNext = new CheckPhoneEmailCodeAction(str, value2 == null ? "" : value2, null, this.verifyArgs.getCheckCurrentAccount(), 4, null).build().doOnNext(new C12938f());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<String> doOnError = doOnNext.doOnError(new Consumer() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPhoneViewModel$startVerify$$inlined$handleTimeoutError$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Throwable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OnyxErrorHandler.INSTANCE.showTimeoutMessage(it2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnError, null, null, 3, null);
    }
}
