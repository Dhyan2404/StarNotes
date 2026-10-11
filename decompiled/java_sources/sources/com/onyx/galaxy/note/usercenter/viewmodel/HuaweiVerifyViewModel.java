package com.onyx.galaxy.note.usercenter.viewmodel;

import android.app.Activity;
import android.content.Intent;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.MutableLiveData;
import androidx.navigation.NavController;
import androidx.navigation.NavDirections;
import androidx.navigation.fragment.FragmentKt;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.common.error.BaseError;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.action.HuaweiVerifyAction;
import com.onyx.android.sdk.data.account.action.NetworkCheckAction;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.android.sdk.data.account.bean.HuaweiVerifyArgs;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.p039ui.DoubleOptionDialog;
import com.onyx.android.sdk.replicator.account.action.LogoutOnyxAccountAction;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.hilt.IAccountAuthEntryPoint;
import com.onyx.galaxy.note.account.interfaces.IAccountAuth;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.usercenter.p049ui.LogOffAgreementFragmentDirections;
import com.onyx.galaxy.note.usercenter.p049ui.UserCenterEvents;
import com.onyx.galaxy.note.usercenter.viewmodel.HuaweiVerifyViewModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import dagger.hilt.android.EntryPointAccessors;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 92\u00020\u0001:\u00019B\u0007¢\u0006\u0004\b7\u00108J\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u000b\u001a\u00020\u0002J\u000e\u0010\r\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\fJ\u0016\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u000f\u001a\u00020\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\u0012\u001a\u00020\tH\u0002R\"\u0010\u0019\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\u001d\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0014\u001a\u0004\b\u001b\u0010\u0016\"\u0004\b\u001c\u0010\u0018R\u001d\u0010#\u001a\b\u0012\u0004\u0012\u00020\t0\u001e8\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R*\u0010+\u001a\u0015\u0012\f\u0012\n %*\u0004\u0018\u00010\t0\t0$¢\u0006\u0002\b&8\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u001c\u00100\u001a\b\u0012\u0004\u0012\u00020-0,8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b.\u0010/R\u001b\u00106\u001a\u0002018BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u00105¨\u0006:"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", "markEventConsumed", "Landroidx/activity/ComponentActivity;", "activityContext", "Landroidx/fragment/app/Fragment;", "fragment", "Lio/reactivex/rxjava3/core/Observable;", "", "registerHuaweiLauncher", "unregisterHuaweiLauncher", "Landroid/app/Activity;", "startAuthService", "askForVerify", "startHuaweiVerify", "e", C6999h.f39688c, C6998g.f39679a, "i", Constants.STRING_SIG, "getPurpose", "()Ljava/lang/String;", "setPurpose", "(Ljava/lang/String;)V", AccountVerifyPurpose.KEY_PURPOSE, "j", "getAuthorization", "setAuthorization", Constant.TAG_AUTHORIZATION, "Landroidx/lifecycle/MutableLiveData;", C4921e.f26537n, "Landroidx/lifecycle/MutableLiveData;", "getEvents", "()Landroidx/lifecycle/MutableLiveData;", "events", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", "l", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "getHuaweiLauncherObservable", "()Lio/reactivex/rxjava3/subjects/PublishSubject;", "huaweiLauncherObservable", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/content/Intent;", "m", "Landroidx/activity/result/ActivityResultLauncher;", "huaweiLauncher", "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;", GoogleApiAvailabilityLight.f29016b, "Lkotlin/Lazy;", C6997f.f39671c, "()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;", "huaweiAccountAuth", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class HuaweiVerifyViewModel extends BaseViewModel {

    /* renamed from: o */
    @NotNull
    public static final String f62611o = "huawei_auth_key";

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public String purpose = "none";

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public String authorization = "";

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> events = new MutableLiveData<>();

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final PublishSubject<String> huaweiLauncherObservable;

    /* renamed from: m, reason: from kotlin metadata */
    public ActivityResultLauncher<Intent> huaweiLauncher;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final Lazy huaweiAccountAuth;

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.HuaweiVerifyViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12951a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ HuaweiVerifyArgs f62618e;

        public C12951a(HuaweiVerifyArgs huaweiVerifyArgs) {
            this.f62618e = huaweiVerifyArgs;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Object> m51929a(boolean z) {
            return new HuaweiVerifyAction(this.f62618e).build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m51929a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.HuaweiVerifyViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C12952b<T, R> implements Function {
        public C12952b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(Intrinsics.areEqual(HuaweiVerifyViewModel.this.getPurpose(), "destroy"));
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.HuaweiVerifyViewModel$c */
    /* loaded from: classes9.dex */
    public static final class C12953c<T> implements Consumer {
        public C12953c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HuaweiVerifyViewModel.this.getEvents().postValue(UserCenterEvents.HUAWEI_VERIFY_SUCCESS);
        }
    }

    public HuaweiVerifyViewModel() {
        Lazy lazy;
        PublishSubject<String> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.huaweiLauncherObservable = create;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<IAccountAuth>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.HuaweiVerifyViewModel$huaweiAccountAuth$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final IAccountAuth invoke() {
                return ((IAccountAuthEntryPoint) EntryPointAccessors.fromApplication(ResManager.INSTANCE.getAppContext(), IAccountAuthEntryPoint.class)).getAccountAuthCreator().create(LoginAuthConst.HUAWEI_AUTH).getAccountAuth();
            }
        });
        this.huaweiAccountAuth = lazy;
    }

    /* renamed from: i */
    public static final void m51924i(HuaweiVerifyViewModel this$0, ComponentActivity activityContext, Fragment fragment, ActivityResult result) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(activityContext, "$activityContext");
        Intrinsics.checkNotNullParameter(fragment, "$fragment");
        Intrinsics.checkNotNullParameter(result, "result");
        String accountAuthAuthorization = this$0.m51926f().getAccountAuthAuthorization(result);
        if (accountAuthAuthorization == null || accountAuthAuthorization.length() == 0) {
            this$0.m51925e();
        } else {
            this$0.authorization = accountAuthAuthorization;
            this$0.askForVerify(activityContext, fragment);
        }
    }

    public final void askForVerify(@NotNull Activity activityContext, @NotNull final Fragment fragment) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        if (!Intrinsics.areEqual(this.purpose, "destroy")) {
            startHuaweiVerify();
            return;
        }
        DoubleOptionDialog createWithConfirmWarningIconStyle = DoubleOptionDialog.INSTANCE.createWithConfirmWarningIconStyle(activityContext);
        createWithConfirmWarningIconStyle.setMask(0.7f);
        createWithConfirmWarningIconStyle.setMessageTextRes(C10651R.string.user_tip_logoff_warning);
        createWithConfirmWarningIconStyle.setLeftButtonTitleRes(C10651R.string.user_title_continue_use);
        createWithConfirmWarningIconStyle.setRightButtonTitleRes(C10651R.string.user_title_confirm_logoff);
        createWithConfirmWarningIconStyle.setOnLeftButtonClick(new Function0<Unit>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.HuaweiVerifyViewModel$askForVerify$1$1
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
                HuaweiVerifyViewModel.this.m51928h(fragment);
            }
        });
        createWithConfirmWarningIconStyle.setOnRightButtonClick(new Function0<Unit>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.HuaweiVerifyViewModel$askForVerify$1$2
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
                HuaweiVerifyViewModel.this.startHuaweiVerify();
            }
        });
        createWithConfirmWarningIconStyle.show();
    }

    /* renamed from: e */
    public final void m51925e() {
        this.huaweiLauncherObservable.onError(OnyxException.INSTANCE.m31891of(BaseError.ACTION_ABORT));
    }

    /* renamed from: f */
    public final IAccountAuth m51926f() {
        return (IAccountAuth) this.huaweiAccountAuth.getValue();
    }

    /* renamed from: g */
    public final String m51927g() {
        return "huawei_auth_key_" + hashCode();
    }

    @NotNull
    public final String getAuthorization() {
        return this.authorization;
    }

    @NotNull
    public final MutableLiveData<String> getEvents() {
        return this.events;
    }

    @NotNull
    public final PublishSubject<String> getHuaweiLauncherObservable() {
        return this.huaweiLauncherObservable;
    }

    @NotNull
    public final String getPurpose() {
        return this.purpose;
    }

    /* renamed from: h */
    public final void m51928h(Fragment fragment) {
        NavController findNavController = FragmentKt.findNavController(fragment);
        NavDirections accountCenter = LogOffAgreementFragmentDirections.toAccountCenter();
        Intrinsics.checkNotNullExpressionValue(accountCenter, "toAccountCenter(...)");
        findNavController.navigate(accountCenter);
    }

    public final void markEventConsumed() {
        this.events.setValue("");
    }

    @NotNull
    public final Observable<String> registerHuaweiLauncher(@NotNull final ComponentActivity activityContext, @NotNull final Fragment fragment) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        ActivityResultLauncher<Intent> register = activityContext.getActivityResultRegistry().register(m51927g(), fragment, new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.sunia.HTREnginev2.l0i
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                HuaweiVerifyViewModel.m51924i(HuaweiVerifyViewModel.this, activityContext, fragment, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(register, "register(...)");
        this.huaweiLauncher = register;
        return this.huaweiLauncherObservable;
    }

    public final void setAuthorization(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.authorization = str;
    }

    public final void setPurpose(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.purpose = str;
    }

    public final void startAuthService(@NotNull Activity activityContext) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intent createAccountAuthServiceIntent = m51926f().createAccountAuthServiceIntent(activityContext);
        if (createAccountAuthServiceIntent == null) {
            return;
        }
        ActivityResultLauncher<Intent> activityResultLauncher = this.huaweiLauncher;
        if (activityResultLauncher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("huaweiLauncher");
            activityResultLauncher = null;
        }
        activityResultLauncher.launch(createAccountAuthServiceIntent);
    }

    public final void startHuaweiVerify() {
        HuaweiVerifyArgs huaweiVerifyArgs = new HuaweiVerifyArgs();
        huaweiVerifyArgs.setAction(this.purpose);
        huaweiVerifyArgs.setCode(this.authorization);
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable map = new NetworkCheckAction().build().flatMap(new C12951a(huaweiVerifyArgs)).map(new C12952b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        LogoutOnyxAccountAction logoutOnyxAccountAction = new LogoutOnyxAccountAction();
        logoutOnyxAccountAction.setSkipCloudLogout(true);
        Unit unit = Unit.INSTANCE;
        Observable<Object> doOnNext = RxjavaKt.flatMapIfTrue(map, logoutOnyxAccountAction.build()).doOnNext(new C12953c());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
    }

    public final void unregisterHuaweiLauncher() {
        this.huaweiLauncherObservable.onComplete();
        ActivityResultLauncher<Intent> activityResultLauncher = this.huaweiLauncher;
        if (activityResultLauncher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("huaweiLauncher");
            activityResultLauncher = null;
        }
        activityResultLauncher.unregister();
    }
}
