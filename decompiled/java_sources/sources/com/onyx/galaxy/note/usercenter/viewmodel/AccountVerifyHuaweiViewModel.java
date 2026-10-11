package com.onyx.galaxy.note.usercenter.viewmodel;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.HuaweiVerifyAction;
import com.onyx.android.sdk.data.account.action.NetworkCheckAction;
import com.onyx.android.sdk.data.account.bean.AccountVerifyArgs;
import com.onyx.android.sdk.data.account.bean.HuaweiVerifyArgs;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.data.account.model.HuaweiModel;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.common.error.ErrorCode;
import com.onyx.android.sdk.data.common.error.ErrorType;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.galaxy.note.account.event.VerifySuccessEvent;
import com.onyx.galaxy.note.account.hilt.IAccountAuthEntryPoint;
import com.onyx.galaxy.note.account.interfaces.IAccountAuth;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyHuaweiViewModel;
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
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b8\u00109J\u0006\u0010\u0003\u001a\u00020\u0002J \u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\bJ\u0006\u0010\u000b\u001a\u00020\u0002J\u000e\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fJ\u000e\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u0016\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00150\u00142\u0006\u0010\u0013\u001a\u00020\u0011R\u001d\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00150\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0014\u0010'\u001a\u00020\u00118\u0002X\u0082D¢\u0006\u0006\n\u0004\b%\u0010&R\u001e\u0010,\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R)\u00101\u001a\u0015\u0012\f\u0012\n -*\u0004\u0018\u00010\u00110\u00110\u0010¢\u0006\u0002\b.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u001b\u00107\u001a\u0002028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106¨\u0006:"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", Constants.RESET, "Landroid/content/Context;", "uiContext", "Landroidx/lifecycle/LifecycleOwner;", "lifecycleOwner", "", "checkCurrentAccount", "registerHuaweiLauncher", "unregisterHuaweiLauncher", "Landroid/view/View;", "view", "onNextButtonClick", "startVerify", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "", "startHuaweiAuth", "authorizationCode", "Lio/reactivex/rxjava3/core/Observable;", "", "startHuaweiVerify", "Landroidx/lifecycle/MutableLiveData;", "i", "Landroidx/lifecycle/MutableLiveData;", "getEvent", "()Landroidx/lifecycle/MutableLiveData;", NotificationCompat.CATEGORY_EVENT, "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", "j", "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", "getVerifyArgs", "()Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", "setVerifyArgs", "(Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V", "verifyArgs", C4921e.f26537n, Constants.STRING_SIG, "authKey", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/content/Intent;", "l", "Landroidx/activity/result/ActivityResultLauncher;", "huaweiAuthLauncher", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", "m", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "huaweiAuthObservable", "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;", GoogleApiAvailabilityLight.f29016b, "Lkotlin/Lazy;", "e", "()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;", "huaweiAccountAuth", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class AccountVerifyHuaweiViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Object> event = new MutableLiveData<>(Unit.INSTANCE);

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public AccountVerifyArgs verifyArgs = new AccountVerifyArgs();

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final String authKey = "huawei_auth_key_security";

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public ActivityResultLauncher<Intent> huaweiAuthLauncher;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public PublishSubject<String> huaweiAuthObservable;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final Lazy huaweiAccountAuth;

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyHuaweiViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12924a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ HuaweiVerifyArgs f62549e;

        public C12924a(HuaweiVerifyArgs huaweiVerifyArgs) {
            this.f62549e = huaweiVerifyArgs;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Object> m51897a(boolean z) {
            return new HuaweiVerifyAction(this.f62549e).build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m51897a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyHuaweiViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C12925b<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Context f62551f;

        public C12925b(Context context) {
            this.f62551f = context;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends String> m51898a(boolean z) {
            return AccountVerifyHuaweiViewModel.this.startHuaweiAuth(this.f62551f);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m51898a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyHuaweiViewModel$c */
    /* loaded from: classes9.dex */
    public static final class C12926c<T, R> implements Function {
        public C12926c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(String str) {
            AccountVerifyHuaweiViewModel accountVerifyHuaweiViewModel = AccountVerifyHuaweiViewModel.this;
            Intrinsics.checkNotNull(str);
            return accountVerifyHuaweiViewModel.startHuaweiVerify(str);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyHuaweiViewModel$d */
    /* loaded from: classes9.dex */
    public static final class C12927d<T> implements Consumer {
        public C12927d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AccountVerifyHuaweiViewModel.this.getEvent().setValue(new VerifySuccessEvent());
        }
    }

    public AccountVerifyHuaweiViewModel() {
        Lazy lazy;
        PublishSubject<String> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.huaweiAuthObservable = create;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<IAccountAuth>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyHuaweiViewModel$huaweiAccountAuth$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final IAccountAuth invoke() {
                return ((IAccountAuthEntryPoint) EntryPointAccessors.fromApplication(ResManager.INSTANCE.getAppContext(), IAccountAuthEntryPoint.class)).getAccountAuthCreator().create(LoginAuthConst.HUAWEI_AUTH).getAccountAuth();
            }
        });
        this.huaweiAccountAuth = lazy;
    }

    /* renamed from: f */
    public static final void m51895f(AccountVerifyHuaweiViewModel this$0, boolean z, ActivityResult result) {
        HuaweiModel huawei;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(result, "result");
        Pair<String, String> parseAuthResultFromIntent = this$0.m51896e().parseAuthResultFromIntent(result.getData());
        if (parseAuthResultFromIntent == null) {
            return;
        }
        String first = parseAuthResultFromIntent.getFirst();
        String second = parseAuthResultFromIntent.getSecond();
        OnyxAccountModel onyxAccount = AccountDataBundle.INSTANCE.getOnyxAccount();
        if (z) {
            if (!Intrinsics.areEqual(first, (onyxAccount == null || (huawei = onyxAccount.getHuawei()) == null) ? null : huawei.getUnionid())) {
                this$0.huaweiAuthObservable.onError(OnyxException.INSTANCE.m31893of(ErrorType.VERIFY_FAIL, ErrorType.VERIFY_FAIL, ErrorCode.ACCOUNT_HUAWEI_UNMATCHED));
                return;
            }
        }
        RxjavaKt.done(this$0.huaweiAuthObservable, second);
    }

    public static /* synthetic */ void registerHuaweiLauncher$default(AccountVerifyHuaweiViewModel accountVerifyHuaweiViewModel, Context context, LifecycleOwner lifecycleOwner, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        accountVerifyHuaweiViewModel.registerHuaweiLauncher(context, lifecycleOwner, z);
    }

    /* renamed from: e */
    public final IAccountAuth m51896e() {
        return (IAccountAuth) this.huaweiAccountAuth.getValue();
    }

    @NotNull
    public final MutableLiveData<Object> getEvent() {
        return this.event;
    }

    @NotNull
    public final AccountVerifyArgs getVerifyArgs() {
        return this.verifyArgs;
    }

    public final void onNextButtonClick(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        startVerify(ViewLocator.INSTANCE.getActivity(view));
    }

    public final void registerHuaweiLauncher(@NotNull Context uiContext, @NotNull LifecycleOwner lifecycleOwner, final boolean checkCurrentAccount) {
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        ComponentActivity componentActivity = uiContext instanceof ComponentActivity ? (ComponentActivity) uiContext : null;
        if (componentActivity == null) {
            return;
        }
        this.huaweiAuthLauncher = componentActivity.getActivityResultRegistry().register(this.authKey, lifecycleOwner, new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.sunia.HTREnginev2.a6
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                AccountVerifyHuaweiViewModel.m51895f(AccountVerifyHuaweiViewModel.this, checkCurrentAccount, (ActivityResult) obj);
            }
        });
    }

    public final void reset() {
        this.event.setValue(Unit.INSTANCE);
    }

    public final void setVerifyArgs(@NotNull AccountVerifyArgs accountVerifyArgs) {
        Intrinsics.checkNotNullParameter(accountVerifyArgs, "<set-?>");
        this.verifyArgs = accountVerifyArgs;
    }

    @NotNull
    public final PublishSubject<String> startHuaweiAuth(@NotNull Context uiContext) {
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        this.huaweiAuthObservable.onComplete();
        PublishSubject<String> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.huaweiAuthObservable = create;
        Activity activity = uiContext instanceof Activity ? (Activity) uiContext : null;
        if (activity == null) {
            return create;
        }
        Intent createAccountAuthServiceIntent = m51896e().createAccountAuthServiceIntent(activity);
        if (createAccountAuthServiceIntent == null) {
            return this.huaweiAuthObservable;
        }
        ActivityResultLauncher<Intent> activityResultLauncher = this.huaweiAuthLauncher;
        if (activityResultLauncher != null) {
            activityResultLauncher.launch(createAccountAuthServiceIntent);
        }
        return this.huaweiAuthObservable;
    }

    @NotNull
    public final Observable<? extends Object> startHuaweiVerify(@NotNull String authorizationCode) {
        Intrinsics.checkNotNullParameter(authorizationCode, "authorizationCode");
        HuaweiVerifyArgs huaweiVerifyArgs = new HuaweiVerifyArgs();
        huaweiVerifyArgs.setAction("security");
        huaweiVerifyArgs.setCode(authorizationCode);
        Observable flatMap = new NetworkCheckAction().build().flatMap(new C12924a(huaweiVerifyArgs));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    public final void startVerify(@NotNull Context uiContext) {
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable doOnNext = new NetworkCheckAction().build().flatMap(new C12925b(uiContext)).flatMap(new C12926c()).doOnNext(new C12927d());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
    }

    public final void unregisterHuaweiLauncher() {
        this.huaweiAuthObservable.onComplete();
        ActivityResultLauncher<Intent> activityResultLauncher = this.huaweiAuthLauncher;
        if (activityResultLauncher != null) {
            activityResultLauncher.unregister();
        }
    }
}
