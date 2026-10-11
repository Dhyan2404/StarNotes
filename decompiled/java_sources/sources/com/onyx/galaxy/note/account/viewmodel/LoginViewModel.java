package com.onyx.galaxy.note.account.viewmodel;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.databinding.ObservableField;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.onyx.android.sdk.base.extension.BooleanKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.LocaleUtils;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.EmailCheckAction;
import com.onyx.android.sdk.data.account.action.PhoneCheckAction;
import com.onyx.android.sdk.data.account.bean.AccountIntentArgs;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.data.account.bean.ResultData;
import com.onyx.android.sdk.data.cluster.bean.PriorityClusterParma;
import com.onyx.android.sdk.data.utils.AreaCodeUtil;
import com.onyx.android.sdk.event.StatisticClickLoginEvent;
import com.onyx.android.sdk.event.StatisticLoginEvent;
import com.onyx.android.sdk.replicator.cluster.action.SwitchPriorityClusterAction;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.action.GetSecurityVerifyDataAction;
import com.onyx.galaxy.note.account.action.MigrateOnAccountLoginAction;
import com.onyx.galaxy.note.account.action.SendPhoneOrEmailCodeAction;
import com.onyx.galaxy.note.account.data.AccountConfig;
import com.onyx.galaxy.note.account.data.VerifyCodeBundle;
import com.onyx.galaxy.note.account.hilt.AccountAuthSelector;
import com.onyx.galaxy.note.account.hilt.IAccountAuthEntryPoint;
import com.onyx.galaxy.note.account.interfaces.IAccountAuth;
import com.onyx.galaxy.note.account.p043ui.LoginFragment;
import com.onyx.galaxy.note.account.viewmodel.LoginViewModel;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.common.data.AppConfig;
import com.onyx.galaxy.note.common.data.AppConfigManager;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.utils.AreaCodeUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import dagger.hilt.android.EntryPointAccessors;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010 \n\u0002\b\n\u0018\u0000 x2\u00020\u0001:\u0001xB\u0007¢\u0006\u0004\bv\u0010wJ\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\bH\u0002J \u0010\r\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\bH\u0002J\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0006\u0010\u0012\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0010J\u0006\u0010\u0014\u001a\u00020\u0010J\u0006\u0010\u0015\u001a\u00020\u0010J\u001a\u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00180\u00042\u0006\u0010\u0017\u001a\u00020\u0016J\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\"\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0017\u001a\u00020\u00162\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bJ \u0010!\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u001fJ\u0014\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\"\u001a\u00020\bJ\u0014\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010$\u001a\u00020\bJ\u001e\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\u0010&\u001a\u0004\u0018\u00010\b2\u0006\u0010'\u001a\u00020\bJ*\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\u0010)\u001a\u0004\u0018\u00010\b2\b\u0010&\u001a\u0004\u0018\u00010\b2\b\u0010\n\u001a\u0004\u0018\u00010\bJ\u000e\u0010-\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020+J\u0006\u0010.\u001a\u00020\u001cJ\u0006\u0010/\u001a\u00020\u001cJ\u0006\u00100\u001a\u00020\u001cJ!\u00102\u001a\u00020\u001c2\u0006\u00101\u001a\u00020\b2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010+¢\u0006\u0004\b2\u00103J\u0019\u00104\u001a\u00020\u001c2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010+¢\u0006\u0004\b4\u00105J\u0019\u00106\u001a\u00020\u001c2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010+¢\u0006\u0004\b6\u00105J\u0010\u00109\u001a\u00020\u001c2\b\u00108\u001a\u0004\u0018\u000107J\u0006\u0010:\u001a\u00020\u0010J\u0006\u0010;\u001a\u00020\u0010J\u0006\u0010<\u001a\u00020\u0010J\u000e\u0010?\u001a\u00020\u001c2\u0006\u0010>\u001a\u00020=J\u000e\u0010@\u001a\u00020\u001c2\u0006\u0010>\u001a\u00020=J\u000e\u0010A\u001a\u00020\u001c2\u0006\u0010>\u001a\u00020=J\b\u0010B\u001a\u00020\u001cH\u0014R%\u0010I\u001a\u0010\u0012\f\u0012\n D*\u0004\u0018\u00010+0+0C8\u0006¢\u0006\f\n\u0004\bE\u0010F\u001a\u0004\bG\u0010HR%\u0010K\u001a\u0010\u0012\f\u0012\n D*\u0004\u0018\u00010\u00100\u00100C8\u0006¢\u0006\f\n\u0004\bJ\u0010F\u001a\u0004\bK\u0010HR%\u0010Q\u001a\u0010\u0012\f\u0012\n D*\u0004\u0018\u00010\b0\b0L8\u0006¢\u0006\f\n\u0004\bM\u0010N\u001a\u0004\bO\u0010PR%\u0010T\u001a\u0010\u0012\f\u0012\n D*\u0004\u0018\u00010\b0\b0C8\u0006¢\u0006\f\n\u0004\bR\u0010F\u001a\u0004\bS\u0010HR%\u0010V\u001a\u0010\u0012\f\u0012\n D*\u0004\u0018\u00010\b0\b0L8\u0006¢\u0006\f\n\u0004\b\u0007\u0010N\u001a\u0004\bU\u0010PR%\u0010W\u001a\u0010\u0012\f\u0012\n D*\u0004\u0018\u00010\u00100\u00100L8\u0006¢\u0006\f\n\u0004\b\r\u0010N\u001a\u0004\bW\u0010PR%\u0010Z\u001a\u0010\u0012\f\u0012\n D*\u0004\u0018\u00010+0+0C8\u0006¢\u0006\f\n\u0004\bX\u0010F\u001a\u0004\bY\u0010HR%\u0010\\\u001a\u0010\u0012\f\u0012\n D*\u0004\u0018\u00010+0+0C8\u0006¢\u0006\f\n\u0004\b\t\u0010F\u001a\u0004\b[\u0010HR\u001b\u0010a\u001a\u00020]8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b^\u0010_\u001a\u0004\bX\u0010`R$\u0010i\u001a\u0004\u0018\u00010b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bc\u0010d\u001a\u0004\be\u0010f\"\u0004\bg\u0010hR\u0016\u0010l\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010kR%\u0010n\u001a\u0010\u0012\f\u0012\n D*\u0004\u0018\u00010\u00100\u00100C8\u0006¢\u0006\f\n\u0004\bm\u0010F\u001a\u0004\bn\u0010HR(\u0010u\u001a\b\u0012\u0004\u0012\u00020+0o8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010p\u001a\u0004\bq\u0010r\"\u0004\bs\u0010t¨\u0006y"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;", "loginArgs", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/data/account/AccountDataBundle;", "u", "m", "", "p", "accessToken", "unionid", "openid", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;", "user", "", "x", "isPhoneNumberValid", "isEmailValid", "isVerifyCodeValid", "isAreaCodeValid", "Landroid/content/Context;", "activityContext", "Lcom/onyx/android/sdk/data/account/bean/ResultData;", "sendVerifyCode", "loginByVerifyCode", "Lkotlin/Function0;", "", "showDialog", "loginByPwd", "", "data", "wechatAppLogin", "code", "wechatQrCodeLogin", "authCode", "huaweiAuthLogin", "idToken", "googleId", "googleAuthLogin", "microsoftId", "microsoftAuthLogin", "", "type", "changeLoginType", "clearPhoneOrEmail", "togglePwdVisible", "updatePhoneLengthLimit", "eventId", "reportViewOrClickEvent", "(Ljava/lang/String;Ljava/lang/Integer;)V", "reportLoginedEvent", "(Ljava/lang/Integer;)V", "reportOnyxLoginedEvent", "Landroid/os/Bundle;", C1126e.f7698m, "initArgs", "checkConditionBeforeAuth", "checkAgreedPolicy", "checkNetwork", "Landroidx/fragment/app/Fragment;", "fragment", "huaweiAuth", "googleAuth", "microsoftAuth", "onCleared", "Landroidx/lifecycle/MutableLiveData;", "kotlin.jvm.PlatformType", "i", "Landroidx/lifecycle/MutableLiveData;", "getLoginType", "()Landroidx/lifecycle/MutableLiveData;", "loginType", "j", "isShowPwd", "Landroidx/databinding/ObservableField;", C4921e.f26537n, "Landroidx/databinding/ObservableField;", "getPhoneOrEmail", "()Landroidx/databinding/ObservableField;", "phoneOrEmail", "l", "getAreaCode", "areaCode", "getPwdOrVerification", "pwdOrVerification", "isAgreed", C4921e.f26528e, "getPhoneLengthLimit", "phoneLengthLimit", "getTriggerFrom", "triggerFrom", "Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;", "q", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;", "accountAuthCreator", "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;", "r", "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;", "getAccountAuth", "()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;", "setAccountAuth", "(Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;)V", "accountAuth", "s", Constants.HASIDCALL_INDEX_SIG, "initedArgs", "t", "isLoginFinish", "", "Ljava/util/List;", "getThirdPartySignRequestCodes", "()Ljava/util/List;", "setThirdPartySignRequestCodes", "(Ljava/util/List;)V", "thirdPartySignRequestCodes", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoginViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginViewModel.kt\ncom/onyx/galaxy/note/account/viewmodel/LoginViewModel\n+ 2 CharSequence.kt\nandroidx/core/text/CharSequenceKt\n*L\n1#1,385:1\n36#2:386\n36#2:387\n*S KotlinDebug\n*F\n+ 1 LoginViewModel.kt\ncom/onyx/galaxy/note/account/viewmodel/LoginViewModel\n*L\n104#1:386\n108#1:387\n*E\n"})
/* loaded from: classes9.dex */
public final class LoginViewModel extends BaseViewModel {
    public static final int AREA_CODE_MIN_LENGTH = 1;

    @NotNull
    public static final String AREA_CODE_PREFIX = "+";
    public static final int VERIFY_CODE_MIN_LENGTH = 4;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Integer> loginType = new MutableLiveData<>(Integer.valueOf(AppConfigManager.INSTANCE.getDefaultLoginType()));

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> isShowPwd;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final ObservableField<String> phoneOrEmail;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> areaCode;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final ObservableField<String> pwdOrVerification;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final ObservableField<Boolean> isAgreed;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Integer> phoneLengthLimit;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Integer> triggerFrom;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final Lazy accountAuthCreator;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public IAccountAuth accountAuth;

    /* renamed from: s, reason: from kotlin metadata */
    public boolean initedArgs;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> isLoginFinish;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public List<Integer> thirdPartySignRequestCodes;

    /* renamed from: com.onyx.galaxy.note.account.viewmodel.LoginViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C10735a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ AccountIntentArgs f53588f;

        public C10735a(AccountIntentArgs accountIntentArgs) {
            this.f53588f = accountIntentArgs;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends AccountDataBundle> m42082a(boolean z) {
            return LoginViewModel.this.m42080u(this.f53588f);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42082a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.viewmodel.LoginViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C10736b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Context f53589e;

        public C10736b(Context context) {
            this.f53589e = context;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends String> m42083a(boolean z) {
            return new GetSecurityVerifyDataAction(this.f53589e).build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42083a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.viewmodel.LoginViewModel$c */
    /* loaded from: classes9.dex */
    public static final class C10737c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Function0<Unit> f53590e;

        public C10737c(Function0<Unit> function0) {
            this.f53590e = function0;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f53590e.invoke();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.viewmodel.LoginViewModel$d */
    /* loaded from: classes9.dex */
    public static final class C10738d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ AccountIntentArgs f53591e;

        public C10738d(AccountIntentArgs accountIntentArgs) {
            this.f53591e = accountIntentArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AccountIntentArgs apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f53591e.setVerify(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.viewmodel.LoginViewModel$e */
    /* loaded from: classes9.dex */
    public static final class C10739e<T, R> implements Function {
        public C10739e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AccountDataBundle> apply(@NotNull AccountIntentArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoginViewModel.this.m42080u(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.viewmodel.LoginViewModel$f */
    /* loaded from: classes9.dex */
    public static final class C10740f<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ AccountIntentArgs f53594f;

        public C10740f(AccountIntentArgs accountIntentArgs) {
            this.f53594f = accountIntentArgs;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends AccountDataBundle> m42087a(boolean z) {
            return LoginViewModel.this.m42080u(this.f53594f);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42087a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.viewmodel.LoginViewModel$g */
    /* loaded from: classes9.dex */
    public static final class C10741g<T, R> implements Function {

        /* renamed from: e */
        public static final C10741g<T, R> f53595e = new C10741g<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AccountDataBundle> apply(@NotNull MigrateOnAccountLoginAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AccountDataBundle.INSTANCE.loadOnyxAccountObservable();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.viewmodel.LoginViewModel$h */
    /* loaded from: classes9.dex */
    public static final class C10742h<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ AccountIntentArgs f53597f;

        public C10742h(AccountIntentArgs accountIntentArgs) {
            this.f53597f = accountIntentArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoginViewModel.this.changeLoginType(this.f53597f.getLoginType());
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.viewmodel.LoginViewModel$i */
    /* loaded from: classes9.dex */
    public static final class C10743i<T> implements Consumer {
        public C10743i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoginViewModel.this.isLoginFinish().postValue(Boolean.TRUE);
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.viewmodel.LoginViewModel$j */
    /* loaded from: classes9.dex */
    public static final class C10744j<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ AccountIntentArgs f53600f;

        public C10744j(AccountIntentArgs accountIntentArgs) {
            this.f53600f = accountIntentArgs;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends AccountDataBundle> m42091a(boolean z) {
            return LoginViewModel.this.m42080u(this.f53600f);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42091a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.viewmodel.LoginViewModel$k */
    /* loaded from: classes9.dex */
    public static final class C10745k<T, R> implements Function {
        public C10745k() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0014, code lost:
        
            if (r0.intValue() == 1) goto L9;
         */
        @org.jetbrains.annotations.NotNull
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Boolean m42092a(boolean r1) {
            /*
                r0 = this;
                com.onyx.galaxy.note.account.viewmodel.LoginViewModel r0 = com.onyx.galaxy.note.account.viewmodel.LoginViewModel.this
                androidx.lifecycle.MutableLiveData r0 = r0.getLoginType()
                java.lang.Object r0 = r0.getValue()
                java.lang.Integer r0 = (java.lang.Integer) r0
                if (r0 != 0) goto Lf
                goto L17
            Lf:
                int r0 = r0.intValue()
                r1 = 1
                if (r0 != r1) goto L17
                goto L18
            L17:
                r1 = 0
            L18:
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.account.viewmodel.LoginViewModel.C10745k.m42092a(boolean):java.lang.Boolean");
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42092a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.viewmodel.LoginViewModel$l */
    /* loaded from: classes9.dex */
    public static final class C10746l<T, R> implements Function {
        public C10746l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Integer value = LoginViewModel.this.getLoginType().getValue();
            return Boolean.valueOf(value != null && value.intValue() == 2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.viewmodel.LoginViewModel$m */
    /* loaded from: classes9.dex */
    public static final class C10747m<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Context f53604f;

        /* renamed from: g */
        public final /* synthetic */ String f53605g;

        public C10747m(Context context, String str) {
            this.f53604f = context;
            this.f53605g = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ResultData<String>> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Integer value = LoginViewModel.this.getLoginType().getValue();
            Intrinsics.checkNotNull(value);
            int intValue = value.intValue();
            Context context = this.f53604f;
            String valueOf = String.valueOf(LoginViewModel.this.getPhoneOrEmail().get());
            String code = this.f53605g;
            Intrinsics.checkNotNullExpressionValue(code, "$code");
            return new SendPhoneOrEmailCodeAction(intValue, context, valueOf, code, false, 16, null).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.viewmodel.LoginViewModel$n */
    /* loaded from: classes9.dex */
    public static final class C10748n<T, R> implements Function {

        /* renamed from: e */
        public static final C10748n<T, R> f53606e = new C10748n<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull SwitchPriorityClusterAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(it2.getIsUpdated().get());
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.viewmodel.LoginViewModel$o */
    /* loaded from: classes9.dex */
    public static final class C10749o<T> implements Predicate {

        /* renamed from: e */
        public static final C10749o<T> f53607e = new C10749o<>();

        /* renamed from: a */
        public final boolean m42096a(boolean z) {
            return z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m42096a(((Boolean) obj).booleanValue());
        }
    }

    public LoginViewModel() {
        Lazy lazy;
        List<Integer> listOf;
        Boolean bool = Boolean.FALSE;
        this.isShowPwd = new MutableLiveData<>(bool);
        this.phoneOrEmail = new ObservableField<>("");
        this.areaCode = new MutableLiveData<>(m42079p());
        this.pwdOrVerification = new ObservableField<>("");
        this.isAgreed = new ObservableField<>(bool);
        this.phoneLengthLimit = new MutableLiveData<>(Integer.valueOf(ResManager.INSTANCE.getInteger(C10651R.integer.phone_length_limit_default)));
        this.triggerFrom = new MutableLiveData<>(1000);
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<AccountAuthSelector.Creator>() { // from class: com.onyx.galaxy.note.account.viewmodel.LoginViewModel$accountAuthCreator$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AccountAuthSelector.Creator invoke() {
                return ((IAccountAuthEntryPoint) EntryPointAccessors.fromApplication(ResManager.INSTANCE.getAppContext(), IAccountAuthEntryPoint.class)).getAccountAuthCreator();
            }
        });
        this.accountAuthCreator = lazy;
        this.isLoginFinish = new MutableLiveData<>(bool);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{1000, 1001, 1002});
        this.thirdPartySignRequestCodes = listOf;
    }

    /* renamed from: A */
    public static final void m42058A(LoginViewModel this$0, AccountIntentArgs loginArgs) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(loginArgs, "$loginArgs");
        this$0.reportLoginedEvent(Integer.valueOf(loginArgs.getLoginType()));
    }

    /* renamed from: q */
    public static final void m42068q(LoginViewModel this$0, AccountIntentArgs loginArgs) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(loginArgs, "$loginArgs");
        this$0.reportLoginedEvent(Integer.valueOf(loginArgs.getLoginType()));
    }

    /* renamed from: r */
    public static final void m42069r(LoginViewModel this$0, AccountIntentArgs loginArgs) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(loginArgs, "$loginArgs");
        this$0.reportLoginedEvent(Integer.valueOf(loginArgs.getLoginType()));
    }

    public static /* synthetic */ void reportLoginedEvent$default(LoginViewModel loginViewModel, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            num = null;
        }
        loginViewModel.reportLoginedEvent(num);
    }

    public static /* synthetic */ void reportOnyxLoginedEvent$default(LoginViewModel loginViewModel, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            num = null;
        }
        loginViewModel.reportOnyxLoginedEvent(num);
    }

    public static /* synthetic */ void reportViewOrClickEvent$default(LoginViewModel loginViewModel, String str, Integer num, int i, Object obj) {
        if ((i & 2) != 0) {
            num = null;
        }
        loginViewModel.reportViewOrClickEvent(str, num);
    }

    /* renamed from: s */
    public static final void m42070s(LoginViewModel this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.reportLoginedEvent(6);
    }

    /* renamed from: t */
    public static final void m42071t(LoginViewModel this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Integer value = this$0.loginType.getValue();
        Intrinsics.checkNotNull(value);
        this$0.reportLoginedEvent(value);
    }

    /* renamed from: v */
    public static final void m42072v(LoginViewModel this$0, AccountIntentArgs loginArgs) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(loginArgs, "$loginArgs");
        this$0.reportOnyxLoginedEvent(Integer.valueOf(loginArgs.getLoginType()));
    }

    /* renamed from: w */
    public static final void m42073w(LoginViewModel this$0, AccountIntentArgs loginArgs) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(loginArgs, "$loginArgs");
        this$0.reportLoginedEvent(Integer.valueOf(loginArgs.getLoginType()));
    }

    /* renamed from: y */
    public static final void m42074y(boolean z) {
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.network_socket_timeout, false, 2, (Object) null);
    }

    /* renamed from: z */
    public static final void m42075z(LoginViewModel this$0, AccountIntentArgs loginArgs) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(loginArgs, "$loginArgs");
        this$0.reportLoginedEvent(Integer.valueOf(loginArgs.getLoginType()));
    }

    public final void changeLoginType(int type) {
        Integer value = this.loginType.getValue();
        if (value != null && value.intValue() == type) {
            return;
        }
        this.phoneOrEmail.set("");
        this.pwdOrVerification.set("");
        this.loginType.postValue(Integer.valueOf(type));
        reportViewOrClickEvent(OnyxStatisticConstant.ID_LOGIN_CLICK, Integer.valueOf(type));
    }

    public final boolean checkAgreedPolicy() {
        Boolean bool = this.isAgreed.get();
        if (bool == null) {
            bool = Boolean.FALSE;
        }
        boolean booleanValue = bool.booleanValue();
        if (!booleanValue) {
            ToastUtils.INSTANCE.show(C10651R.string.login_read_policy_hint, true);
        }
        return booleanValue;
    }

    public final boolean checkConditionBeforeAuth() {
        return checkAgreedPolicy() && checkNetwork();
    }

    public final boolean checkNetwork() {
        boolean isNetworkConnected = NetworkUtils.INSTANCE.isNetworkConnected(ResManager.INSTANCE.getAppContext());
        if (!isNetworkConnected) {
            ToastUtils.INSTANCE.show(C10651R.string.network_error_hint, true);
        }
        return isNetworkConnected;
    }

    public final void clearPhoneOrEmail() {
        this.phoneOrEmail.set("");
    }

    @Nullable
    public final IAccountAuth getAccountAuth() {
        return this.accountAuth;
    }

    @NotNull
    public final MutableLiveData<String> getAreaCode() {
        return this.areaCode;
    }

    @NotNull
    public final MutableLiveData<Integer> getLoginType() {
        return this.loginType;
    }

    @NotNull
    public final MutableLiveData<Integer> getPhoneLengthLimit() {
        return this.phoneLengthLimit;
    }

    @NotNull
    public final ObservableField<String> getPhoneOrEmail() {
        return this.phoneOrEmail;
    }

    @NotNull
    public final ObservableField<String> getPwdOrVerification() {
        return this.pwdOrVerification;
    }

    @NotNull
    public final List<Integer> getThirdPartySignRequestCodes() {
        return this.thirdPartySignRequestCodes;
    }

    @NotNull
    public final MutableLiveData<Integer> getTriggerFrom() {
        return this.triggerFrom;
    }

    public final void googleAuth(@NotNull Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        if (checkConditionBeforeAuth()) {
            IAccountAuth accountAuth = m42078o().create(LoginAuthConst.GOOGLE_AUTH).getAccountAuth();
            this.accountAuth = accountAuth;
            if (accountAuth != null) {
                Context requireContext = fragment.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                RxBaseAction<Boolean> createRequestAuth = accountAuth.createRequestAuth(fragment, ContextExtKt.createLoadingDialog(requireContext), 1001);
                if (createRequestAuth != null) {
                    RxBaseAction.execute$default(createRequestAuth, null, null, null, 7, null);
                }
            }
        }
    }

    @NotNull
    public final Observable<AccountDataBundle> googleAuthLogin(@Nullable String idToken, @NotNull String googleId) {
        Intrinsics.checkNotNullParameter(googleId, "googleId");
        final AccountIntentArgs authCode = new AccountIntentArgs().setLoginType(8).setAuthCode(idToken);
        Observable<AccountDataBundle> doFinally = m42081x(new PriorityClusterParma.ClusterUserInfo(googleId, null, null, null, null, 30, null)).flatMap(new C10735a(authCode)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.w4j
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                LoginViewModel.m42068q(LoginViewModel.this, authCode);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    public final void huaweiAuth(@NotNull Fragment fragment) {
        RxBaseAction<Boolean> createRequestAuth;
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        if (checkConditionBeforeAuth()) {
            this.accountAuth = m42078o().create(LoginAuthConst.HUAWEI_AUTH).getAccountAuth();
            reportViewOrClickEvent(OnyxStatisticConstant.ID_LOGIN_VIEW, 3);
            reportViewOrClickEvent(OnyxStatisticConstant.ID_LOGIN_CLICK, 3);
            IAccountAuth iAccountAuth = this.accountAuth;
            if (iAccountAuth == null || (createRequestAuth = iAccountAuth.createRequestAuth(fragment, null, 1000)) == null) {
                return;
            }
            RxBaseAction.execute$default(createRequestAuth, null, null, null, 7, null);
        }
    }

    @NotNull
    public final Observable<AccountDataBundle> huaweiAuthLogin(@NotNull String authCode) {
        Intrinsics.checkNotNullParameter(authCode, "authCode");
        final AccountIntentArgs authCode2 = new AccountIntentArgs().setLoginType(3).setAuthCode(authCode);
        Observable<AccountDataBundle> doFinally = m42080u(authCode2).doFinally(new Action() { // from class: com.sunia.HTREnginev2.a5j
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                LoginViewModel.m42069r(LoginViewModel.this, authCode2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    public final void initArgs(@Nullable Bundle arguments) {
        if (this.initedArgs || arguments == null) {
            return;
        }
        this.loginType.setValue(Integer.valueOf(arguments.getInt(LoginFragment.KEY_LOGIN_TYPE, AppConfigManager.isSupportLoginType$default(AppConfigManager.INSTANCE, 1, null, 2, null) ? 1 : 2)));
        updatePhoneLengthLimit();
        this.triggerFrom.setValue(Integer.valueOf(arguments.getInt(OnyxStatisticConstant.KEY_TRIGGER_FROM, 1000)));
        this.phoneOrEmail.set(arguments.getString(LoginFragment.KEY_LOGIN_ACCOUNT, ""));
        this.initedArgs = true;
    }

    @NotNull
    public final ObservableField<Boolean> isAgreed() {
        return this.isAgreed;
    }

    public final boolean isAreaCodeValid() {
        String value = this.areaCode.getValue();
        Intrinsics.checkNotNull(value);
        return TextUtils.getTrimmedLength(value) >= 1;
    }

    public final boolean isEmailValid() {
        boolean contains$default;
        String str = this.phoneOrEmail.get();
        Intrinsics.checkNotNull(str);
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "@", false, 2, (Object) null);
        return contains$default;
    }

    @NotNull
    public final MutableLiveData<Boolean> isLoginFinish() {
        return this.isLoginFinish;
    }

    public final boolean isPhoneNumberValid() {
        return StringKt.isPhoneNumber(this.phoneOrEmail.get());
    }

    @NotNull
    public final MutableLiveData<Boolean> isShowPwd() {
        return this.isShowPwd;
    }

    public final boolean isVerifyCodeValid() {
        String str = this.pwdOrVerification.get();
        Intrinsics.checkNotNull(str);
        return TextUtils.getTrimmedLength(str) >= 4;
    }

    @NotNull
    public final Observable<AccountDataBundle> loginByPwd(@NotNull Context activityContext, @NotNull Function0<Unit> showDialog) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(showDialog, "showDialog");
        AccountIntentArgs m42076m = m42076m();
        Observable<AccountDataBundle> doFinally = m42081x(new PriorityClusterParma.ClusterUserInfo(null, null, null, m42076m.getAccount(), null, 23, null)).flatMap(new C10736b(activityContext)).doOnNext(new C10737c(showDialog)).map(new C10738d(m42076m)).flatMap(new C10739e()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.v4j
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                LoginViewModel.m42070s(LoginViewModel.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    @NotNull
    public final Observable<AccountDataBundle> loginByVerifyCode() {
        AccountIntentArgs m42076m = m42076m();
        Observable<AccountDataBundle> doFinally = m42081x(new PriorityClusterParma.ClusterUserInfo(null, null, null, m42076m.getAccount(), null, 23, null)).flatMap(new C10740f(m42076m)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.y4j
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                LoginViewModel.m42071t(LoginViewModel.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: m */
    public final AccountIntentArgs m42076m() {
        AccountIntentArgs accountIntentArgs = new AccountIntentArgs();
        Integer value = this.loginType.getValue();
        Intrinsics.checkNotNull(value);
        return accountIntentArgs.setLoginType(value.intValue()).setAccount(this.phoneOrEmail.get()).setAreaCode(this.areaCode.getValue()).setVerificationCode(this.pwdOrVerification.get()).setPassword(this.pwdOrVerification.get());
    }

    public final void microsoftAuth(@NotNull Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        if (checkConditionBeforeAuth()) {
            IAccountAuth accountAuth = m42078o().create(LoginAuthConst.MICROSOFT_AUTH).getAccountAuth();
            this.accountAuth = accountAuth;
            if (accountAuth != null) {
                Context requireContext = fragment.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                RxBaseAction<Boolean> createRequestAuth = accountAuth.createRequestAuth(fragment, ContextExtKt.createLoadingDialog(requireContext), 1002);
                if (createRequestAuth != null) {
                    RxBaseAction.execute$default(createRequestAuth, null, null, null, 7, null);
                }
            }
        }
    }

    @NotNull
    public final Observable<AccountDataBundle> microsoftAuthLogin(@Nullable String microsoftId, @Nullable String idToken, @Nullable String accessToken) {
        final AccountIntentArgs accessToken2 = new AccountIntentArgs().setLoginType(9).setAuthCode(idToken).setAccessToken(accessToken);
        Observable<AccountDataBundle> doFinally = m42081x(new PriorityClusterParma.ClusterUserInfo(null, microsoftId, null, null, null, 29, null)).flatMap(new C10744j(accessToken2)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.b5j
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                LoginViewModel.m42073w(LoginViewModel.this, accessToken2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: n */
    public final AccountIntentArgs m42077n(String accessToken, String unionid, String openid) {
        AccountIntentArgs accountIntentArgs = new AccountIntentArgs();
        accountIntentArgs.m72188setLoginType(4);
        accountIntentArgs.m72182setAccessToken(accessToken);
        accountIntentArgs.setUnionid(unionid);
        accountIntentArgs.setOpenid(openid);
        return accountIntentArgs;
    }

    /* renamed from: o */
    public final AccountAuthSelector.Creator m42078o() {
        return (AccountAuthSelector.Creator) this.accountAuthCreator.getValue();
    }

    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        VerifyCodeBundle.INSTANCE.release(LoginFragment.TAG);
    }

    /* renamed from: p */
    public final String m42079p() {
        return String.valueOf(PhoneNumberUtil.getInstance().getCountryCodeForRegion(LocaleUtils.INSTANCE.getCurrentLocale(ResManager.INSTANCE.getAppContext()).getCountry()));
    }

    public final void reportLoginedEvent(@Nullable Integer type) {
        int intValue;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (type != null) {
            intValue = type.intValue();
        } else {
            Integer value = this.loginType.getValue();
            Intrinsics.checkNotNull(value);
            intValue = value.intValue();
        }
        int integer = BooleanKt.toInteger(Boolean.valueOf(AccountDataBundle.INSTANCE.isNewUser()));
        int docCountIncludeDustbin = NoteTreeBundle.FilterManager.INSTANCE.getQuotaInfo().getDocCountIncludeDustbin();
        linkedHashMap.put("user_tag", Integer.valueOf(integer));
        linkedHashMap.put("login_way", Integer.valueOf(intValue));
        linkedHashMap.put(OnyxStatisticConstant.KEY_DEVICE_SYSTEM, OnyxStatisticConstant.INSTANCE.getTriggerSystem());
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        statisticsBundle.postEvent(new StatisticLoginEvent(integer, intValue, BooleanKt.toInteger(this.isLoginFinish.getValue()), docCountIncludeDustbin));
        statisticsBundle.postEvent(new StatisticClickLoginEvent(intValue));
    }

    public final void reportOnyxLoginedEvent(@Nullable Integer type) {
        int intValue;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (type != null) {
            intValue = type.intValue();
        } else {
            Integer value = this.loginType.getValue();
            Intrinsics.checkNotNull(value);
            intValue = value.intValue();
        }
        linkedHashMap.put("user_tag", Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(AccountDataBundle.INSTANCE.isNewUser()))));
        linkedHashMap.put("login_way", Integer.valueOf(intValue));
        linkedHashMap.put(OnyxStatisticConstant.KEY_DEVICE_SYSTEM, OnyxStatisticConstant.INSTANCE.getTriggerSystem());
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(OnyxStatisticConstant.ID_LOGINED_CLICK, linkedHashMap));
    }

    public final void reportViewOrClickEvent(@NotNull String eventId, @Nullable Integer type) {
        int intValue;
        Intrinsics.checkNotNullParameter(eventId, "eventId");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Integer value = this.triggerFrom.getValue();
        Intrinsics.checkNotNull(value);
        linkedHashMap.put(OnyxStatisticConstant.KEY_TRIGGER_FROM, value);
        if (type != null) {
            intValue = type.intValue();
        } else {
            Integer value2 = this.loginType.getValue();
            Intrinsics.checkNotNull(value2);
            intValue = value2.intValue();
        }
        linkedHashMap.put("login_way", Integer.valueOf(intValue));
        linkedHashMap.put(OnyxStatisticConstant.KEY_DEVICE_SYSTEM, OnyxStatisticConstant.INSTANCE.getTriggerSystem());
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    @NotNull
    public final Observable<ResultData<String>> sendVerifyCode(@NotNull Context activityContext) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        String prependIfMissing = StringUtils.prependIfMissing(String.valueOf(this.areaCode.getValue()), "+", "+");
        Observable<R> map = m42081x(new PriorityClusterParma.ClusterUserInfo(null, null, null, this.phoneOrEmail.get(), null, 23, null)).map(new C10745k());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable<R> map2 = RxjavaKt.flatMapIfTrue(map, new PhoneCheckAction(AreaCodeUtil.INSTANCE.getPrefixedAreaCode(prependIfMissing), String.valueOf(this.phoneOrEmail.get())).build()).map(new C10746l());
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        Observable flatMap = RxjavaKt.flatMapIfTrue(map2, new EmailCheckAction(String.valueOf(this.phoneOrEmail.get())).build()).flatMap(new C10747m(activityContext, prependIfMissing));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    public final void setAccountAuth(@Nullable IAccountAuth iAccountAuth) {
        this.accountAuth = iAccountAuth;
    }

    public final void setThirdPartySignRequestCodes(@NotNull List<Integer> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.thirdPartySignRequestCodes = list;
    }

    public final void togglePwdVisible() {
        MutableLiveData<Boolean> mutableLiveData = this.isShowPwd;
        Intrinsics.checkNotNull(mutableLiveData.getValue());
        mutableLiveData.setValue(Boolean.valueOf(!r0.booleanValue()));
    }

    /* renamed from: u */
    public final Observable<AccountDataBundle> m42080u(final AccountIntentArgs loginArgs) {
        Observable<AccountDataBundle> doOnNext = new MigrateOnAccountLoginAction(loginArgs).build().flatMap(C10741g.f53595e).observeOn(AndroidSchedulers.mainThread()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.z4j
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                LoginViewModel.m42072v(LoginViewModel.this, loginArgs);
            }
        }).doOnNext(new C10742h(loginArgs)).doOnNext(new C10743i());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    public final void updatePhoneLengthLimit() {
        Integer value = this.loginType.getValue();
        if (value != null && value.intValue() == 1) {
            this.phoneLengthLimit.setValue(Integer.valueOf(AreaCodeUtils.INSTANCE.getAreaPhoneMaxLength(this.areaCode.getValue())));
        } else {
            this.phoneLengthLimit.setValue(Integer.MAX_VALUE);
        }
    }

    @NotNull
    public final Observable<AccountDataBundle> wechatAppLogin(@NotNull Map<String, String> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        String str = data.get("access_token");
        if (str == null) {
            str = "";
        }
        String str2 = data.get("unionid");
        if (str2 == null) {
            str2 = "";
        }
        String str3 = data.get("openid");
        final AccountIntentArgs m42077n = m42077n(str, str2, str3 != null ? str3 : "");
        Observable<AccountDataBundle> doFinally = m42080u(m42077n).doFinally(new Action() { // from class: com.sunia.HTREnginev2.x4j
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                LoginViewModel.m42075z(LoginViewModel.this, m42077n);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    @NotNull
    public final Observable<AccountDataBundle> wechatQrCodeLogin(@NotNull String code) {
        Intrinsics.checkNotNullParameter(code, "code");
        reportViewOrClickEvent(OnyxStatisticConstant.ID_LOGIN_VIEW, 5);
        final AccountIntentArgs loginType = new AccountIntentArgs().setVerificationCode(code).setLoginType(5);
        Observable<AccountDataBundle> doFinally = m42080u(loginType).doFinally(new Action() { // from class: com.sunia.HTREnginev2.c5j
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                LoginViewModel.m42058A(LoginViewModel.this, loginType);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: x */
    public final Observable<Boolean> m42081x(PriorityClusterParma.ClusterUserInfo user) {
        AccountConfig accountConfig = AppConfig.INSTANCE.getAccountConfig();
        Observable<R> map = new SwitchPriorityClusterAction(user, accountConfig != null ? accountConfig.getEnableSwitchCluster() : false).build().map(C10748n.f53606e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable<Boolean> filter = RxjavaKt.doOnNextIfFalse(map, new Consumer() { // from class: com.sunia.HTREnginev2.u4j
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                LoginViewModel.m42074y(((Boolean) obj).booleanValue());
            }
        }).filter(C10749o.f53607e);
        Intrinsics.checkNotNullExpressionValue(filter, "filter(...)");
        return filter;
    }
}
