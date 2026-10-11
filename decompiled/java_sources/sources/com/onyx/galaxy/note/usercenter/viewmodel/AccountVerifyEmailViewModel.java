package com.onyx.galaxy.note.usercenter.viewmodel;

import android.app.Activity;
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
import com.onyx.android.sdk.data.account.action.CheckPhoneEmailCodeAction;
import com.onyx.android.sdk.data.account.action.EmailCheckAction;
import com.onyx.android.sdk.data.account.bean.AccountVerifyArgs;
import com.onyx.android.sdk.data.account.bean.ResultData;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.common.exception.AbortException;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.action.SendPhoneOrEmailCodeAction;
import com.onyx.galaxy.note.account.data.VerifyCodeBundle;
import com.onyx.galaxy.note.account.event.CloseKeyBoardEvent;
import com.onyx.galaxy.note.account.event.EnableVerificationCodeEditEvent;
import com.onyx.galaxy.note.account.event.VerifyCodeNotifyEvent;
import com.onyx.galaxy.note.account.event.VerifySuccessEvent;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.common.data.AppConfigManager;
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
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0010\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bH\u0010IJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\u000b\u001a\u00020\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0007R\u001d\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR%\u0010!\u001a\u0010\u0012\f\u0012\n \u001e*\u0004\u0018\u00010\u001d0\u001d0\u000f8\u0006¢\u0006\f\n\u0004\b\u001f\u0010\u0012\u001a\u0004\b \u0010\u0014R0\u0010&\u001a\u0010\u0012\f\u0012\n \u001e*\u0004\u0018\u00010\u001d0\u001d0\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u0012\u001a\u0004\b#\u0010\u0014\"\u0004\b$\u0010%R\u0017\u0010,\u001a\u00020'8\u0006¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+R\u001d\u00101\u001a\b\u0012\u0004\u0012\u00020.0-8\u0006¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102R\"\u00109\u001a\u00020.8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R%\u0010=\u001a\u0010\u0012\f\u0012\n \u001e*\u0004\u0018\u00010:0:0\u000f8\u0006¢\u0006\f\n\u0004\b;\u0010\u0012\u001a\u0004\b<\u0010\u0014R%\u0010@\u001a\u0010\u0012\f\u0012\n \u001e*\u0004\u0018\u00010:0:0\u000f8\u0006¢\u0006\f\n\u0004\b>\u0010\u0012\u001a\u0004\b?\u0010\u0014R\u001d\u0010B\u001a\b\u0012\u0004\u0012\u00020.0-8\u0006¢\u0006\f\n\u0004\bA\u00100\u001a\u0004\bB\u00102R\u001d\u0010D\u001a\b\u0012\u0004\u0012\u00020.0-8\u0006¢\u0006\f\n\u0004\bC\u00100\u001a\u0004\bD\u00102R\u001d\u0010G\u001a\b\u0012\u0004\u0012\u00020\u001d0-8\u0006¢\u0006\f\n\u0004\bE\u00100\u001a\u0004\bF\u00102¨\u0006J"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", Constants.RESET, "Landroid/view/View;", "view", "onVerifyCodeClick", "onNextButtonClick", "Landroid/app/Activity;", "uiContext", "sendVerifyCode", "startVerify", "Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;", NotificationCompat.CATEGORY_EVENT, "onVerifyCodeWaitTimeUpdate", "Landroidx/lifecycle/MutableLiveData;", "", "i", "Landroidx/lifecycle/MutableLiveData;", "getEvent", "()Landroidx/lifecycle/MutableLiveData;", "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", "j", "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", "getVerifyArgs", "()Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", "setVerifyArgs", "(Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V", "verifyArgs", "", "kotlin.jvm.PlatformType", C4921e.f26537n, "getEmail", "email", "l", "getVerificationCode", "setVerificationCode", "(Landroidx/lifecycle/MutableLiveData;)V", "verificationCode", "", "m", "J", "getResendWaitTime", "()J", "resendWaitTime", "Landroidx/lifecycle/LiveData;", "", GoogleApiAvailabilityLight.f29016b, "Landroidx/lifecycle/LiveData;", "isNextEnabled", "()Landroidx/lifecycle/LiveData;", C4921e.f26528e, Constants.HASIDCALL_INDEX_SIG, "getVerifyCodeResend", Constants.BOOLEAN_VALUE_SIG, "setVerifyCodeResend", "(Z)V", "verifyCodeResend", "", "p", "getVerifyCodeSendStatus", "verifyCodeSendStatus", "q", "getVerifyCodeWaitTime", "verifyCodeWaitTime", "r", "isVerifyCodeEditEnabled", "s", "isVerifyCodeButtonEnabled", "t", "getVerifyCodeButtonTitle", "verifyCodeButtonTitle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAccountVerifyEmailViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountVerifyEmailViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel\n+ 2 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,154:1\n214#2:155\n214#2:156\n*S KotlinDebug\n*F\n+ 1 AccountVerifyEmailViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel\n*L\n132#1:155\n143#1:156\n*E\n"})
/* loaded from: classes9.dex */
public final class AccountVerifyEmailViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Object> event = new MutableLiveData<>(Unit.INSTANCE);

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public AccountVerifyArgs verifyArgs = new AccountVerifyArgs();

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> email;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<String> verificationCode;

    /* renamed from: m, reason: from kotlin metadata */
    public final long resendWaitTime;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final LiveData<Boolean> isNextEnabled;

    /* renamed from: o, reason: from kotlin metadata */
    public boolean verifyCodeResend;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Integer> verifyCodeSendStatus;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Integer> verifyCodeWaitTime;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final LiveData<Boolean> isVerifyCodeEditEnabled;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final LiveData<Boolean> isVerifyCodeButtonEnabled;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final LiveData<String> verifyCodeButtonTitle;

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyEmailViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12916a<T, R> implements Function {
        public C12916a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            String value = AccountVerifyEmailViewModel.this.getEmail().getValue();
            if (value == null) {
                value = "";
            }
            return new EmailCheckAction(value).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyEmailViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C12917b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Activity f62537e;

        /* renamed from: f */
        public final /* synthetic */ AccountVerifyEmailViewModel f62538f;

        public C12917b(Activity activity, AccountVerifyEmailViewModel accountVerifyEmailViewModel) {
            this.f62537e = activity;
            this.f62538f = accountVerifyEmailViewModel;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ResultData<String>> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Activity activity = this.f62537e;
            String value = this.f62538f.getEmail().getValue();
            if (value == null) {
                value = "";
            }
            return new SendPhoneOrEmailCodeAction(2, activity, value, "", this.f62538f.getVerifyArgs().getCheckCurrentAccount()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyEmailViewModel$c */
    /* loaded from: classes9.dex */
    public static final class C12918c<T> implements Consumer {
        public C12918c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AccountVerifyEmailViewModel.this.getVerificationCode().setValue("");
            AccountVerifyEmailViewModel.this.getVerifyCodeSendStatus().setValue(2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyEmailViewModel$d */
    /* loaded from: classes9.dex */
    public static final class C12919d<T> implements Consumer {
        public C12919d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ResultData<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AccountVerifyEmailViewModel.this.getVerifyCodeSendStatus().setValue(3);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyEmailViewModel$e */
    /* loaded from: classes9.dex */
    public static final class C12920e<T> implements Consumer {
        public C12920e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AccountVerifyEmailViewModel.this.getVerifyCodeSendStatus().setValue(1);
            if (it2 instanceof AbortException) {
                return;
            }
            OnyxErrorHandler.handle$default(OnyxErrorHandler.INSTANCE, it2, null, null, 6, null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyEmailViewModel$f */
    /* loaded from: classes9.dex */
    public static final class C12921f<T> implements Consumer {
        public C12921f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AccountVerifyEmailViewModel.this.getEvent().setValue(new VerifySuccessEvent());
        }
    }

    public AccountVerifyEmailViewModel() {
        MutableLiveData<String> mutableLiveData = new MutableLiveData<>("");
        this.email = mutableLiveData;
        this.verificationCode = new MutableLiveData<>("");
        this.resendWaitTime = AppConfigManager.INSTANCE.getVerifyCodeTimeout();
        this.isNextEnabled = Transformations.switchMap(mutableLiveData, new Function1<String, LiveData<Boolean>>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyEmailViewModel$isNextEnabled$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final LiveData<Boolean> invoke(String str) {
                MutableLiveData<String> verificationCode = AccountVerifyEmailViewModel.this.getVerificationCode();
                final AccountVerifyEmailViewModel accountVerifyEmailViewModel = AccountVerifyEmailViewModel.this;
                return Transformations.map(verificationCode, new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyEmailViewModel$isNextEnabled$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(String str2) {
                        return Boolean.valueOf(StringKt.isNotEmpty(AccountVerifyEmailViewModel.this.getEmail().getValue()) && StringKt.isNotEmpty(AccountVerifyEmailViewModel.this.getVerificationCode().getValue()));
                    }
                });
            }
        });
        MutableLiveData<Integer> mutableLiveData2 = new MutableLiveData<>(1);
        this.verifyCodeSendStatus = mutableLiveData2;
        MutableLiveData<Integer> mutableLiveData3 = new MutableLiveData<>(0);
        this.verifyCodeWaitTime = mutableLiveData3;
        this.isVerifyCodeEditEnabled = Transformations.map(mutableLiveData2, new Function1<Integer, Boolean>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyEmailViewModel$isVerifyCodeEditEnabled$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(Integer num) {
                boolean z = false;
                if (num != null && num.intValue() == 3) {
                    VerifyCodeBundle verifyCodeBundle = VerifyCodeBundle.INSTANCE;
                    verifyCodeBundle.addTimer(verifyCodeBundle.getKEY_EMAIL_VERIFY(), AccountVerifyEmailViewModel.this.getResendWaitTime(), false);
                    AccountVerifyEmailViewModel.this.getEvent().setValue(new EnableVerificationCodeEditEvent());
                }
                if (num != null && num.intValue() == 3) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        });
        this.isVerifyCodeButtonEnabled = Transformations.switchMap(mutableLiveData2, new Function1<Integer, LiveData<Boolean>>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyEmailViewModel$isVerifyCodeButtonEnabled$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final LiveData<Boolean> invoke(Integer num) {
                MutableLiveData<Integer> verifyCodeWaitTime = AccountVerifyEmailViewModel.this.getVerifyCodeWaitTime();
                final AccountVerifyEmailViewModel accountVerifyEmailViewModel = AccountVerifyEmailViewModel.this;
                return Transformations.switchMap(verifyCodeWaitTime, new Function1<Integer, LiveData<Boolean>>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyEmailViewModel$isVerifyCodeButtonEnabled$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @Nullable
                    public final LiveData<Boolean> invoke(Integer num2) {
                        MutableLiveData<String> email = AccountVerifyEmailViewModel.this.getEmail();
                        final AccountVerifyEmailViewModel accountVerifyEmailViewModel2 = AccountVerifyEmailViewModel.this;
                        return Transformations.map(email, new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyEmailViewModel.isVerifyCodeButtonEnabled.1.1.1
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            @NotNull
                            public final Boolean invoke(String str) {
                                Integer value;
                                Integer value2 = AccountVerifyEmailViewModel.this.getVerifyCodeSendStatus().getValue();
                                return Boolean.valueOf((value2 == null || value2.intValue() != 2) && (value = AccountVerifyEmailViewModel.this.getVerifyCodeWaitTime().getValue()) != null && value.intValue() == 0 && StringKt.isNotEmpty(AccountVerifyEmailViewModel.this.getEmail().getValue()));
                            }
                        });
                    }
                });
            }
        });
        this.verifyCodeButtonTitle = Transformations.map(mutableLiveData3, new Function1<Integer, String>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyEmailViewModel$verifyCodeButtonTitle$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(Integer num) {
                int i;
                if (num != null && num.intValue() == 0) {
                    ResManager resManager = ResManager.INSTANCE;
                    if (AccountVerifyEmailViewModel.this.getVerifyCodeResend()) {
                        i = C10651R.string.user_title_resend_verify_code;
                    } else {
                        i = C10651R.string.user_title_send_verify_code;
                    }
                    return resManager.getStringSafely(i);
                }
                AccountVerifyEmailViewModel.this.setVerifyCodeResend(true);
                StringBuilder sb = new StringBuilder();
                sb.append(AccountVerifyEmailViewModel.this.getVerifyCodeWaitTime().getValue());
                sb.append('s');
                return sb.toString();
            }
        });
    }

    @NotNull
    public final MutableLiveData<String> getEmail() {
        return this.email;
    }

    @NotNull
    public final MutableLiveData<Object> getEvent() {
        return this.event;
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
        if (Intrinsics.areEqual(event.getKey(), VerifyCodeBundle.INSTANCE.getKEY_EMAIL_VERIFY())) {
            this.verifyCodeWaitTime.setValue(Integer.valueOf((int) event.getLeftTime()));
        }
    }

    public final void reset() {
        this.event.setValue(Unit.INSTANCE);
        this.email.setValue("");
        this.verificationCode.setValue("");
        this.verifyCodeResend = false;
        this.verifyCodeSendStatus.setValue(1);
        this.verifyCodeWaitTime.setValue(0);
    }

    public final void sendVerifyCode(@NotNull Activity uiContext) {
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable doOnError = Observable.just(Unit.INSTANCE).flatMap(new C12916a()).flatMap(new C12917b(uiContext, this)).observeOn(AndroidSchedulers.mainThread()).doOnSubscribe(new C12918c()).doOnNext(new C12919d()).doOnError(new C12920e());
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        Observable doOnError2 = doOnError.doOnError(new Consumer() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyEmailViewModel$sendVerifyCode$$inlined$handleTimeoutError$1
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
        String value = this.email.getValue();
        String str = value == null ? "" : value;
        String value2 = this.verificationCode.getValue();
        Observable<String> doOnNext = new CheckPhoneEmailCodeAction(str, value2 == null ? "" : value2, null, this.verifyArgs.getCheckCurrentAccount(), 4, null).build().doOnNext(new C12921f());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<String> doOnError = doOnNext.doOnError(new Consumer() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyEmailViewModel$startVerify$$inlined$handleTimeoutError$1
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
