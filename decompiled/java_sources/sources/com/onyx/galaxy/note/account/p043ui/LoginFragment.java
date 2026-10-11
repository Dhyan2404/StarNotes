package com.onyx.galaxy.note.account.p043ui;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.MessageQueue;
import android.text.Editable;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.LinkMovementMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.Observer;
import com.blankj.utilcode.util.LogUtils;
import com.google.firebase.installations.remote.FirebaseInstallationServiceClient;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.extension.StringMap;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.android.sdk.data.account.bean.AuthResultArgs;
import com.onyx.android.sdk.data.account.bean.LoginType;
import com.onyx.android.sdk.data.account.bean.ResultData;
import com.onyx.android.sdk.data.common.action.LoadCertificatesAction;
import com.onyx.android.sdk.data.common.data.ProviderCertificate;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.common.exception.ExpcetionsKt;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.p039ui.DigitInputFilter;
import com.onyx.android.sdk.p039ui.EnglishLetterOrDigitInputFilter;
import com.onyx.android.sdk.statistics.StatisticsManager;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.data.PolicyType;
import com.onyx.galaxy.note.account.data.VerifyCodeBundle;
import com.onyx.galaxy.note.account.event.VerifyCodeNotifyEvent;
import com.onyx.galaxy.note.account.hilt.AccountAuthSelector;
import com.onyx.galaxy.note.account.hilt.IAccountAuthEntryPoint;
import com.onyx.galaxy.note.account.interfaces.IAccountAuth;
import com.onyx.galaxy.note.account.model.AreaCodeModel;
import com.onyx.galaxy.note.account.p043ui.LoginFragment;
import com.onyx.galaxy.note.account.view.dialog.AreaCodeDialog;
import com.onyx.galaxy.note.account.view.dialog.LoginPolicyDialog;
import com.onyx.galaxy.note.account.view.dialog.PolicyDialog;
import com.onyx.galaxy.note.account.view.dialog.WechatLoginDialog;
import com.onyx.galaxy.note.account.viewmodel.LoginViewModel;
import com.onyx.galaxy.note.category.p044ui.NoteListActivity;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.data.AppConfigManager;
import com.onyx.galaxy.note.common.data.NavigationType;
import com.onyx.galaxy.note.common.extension.BindingAdapterUtils;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.LoginLoadingDialogFragment;
import com.onyx.galaxy.note.databinding.FragmentLoginBinding;
import com.onyx.galaxy.note.usercenter.p049ui.UserCenterActivity;
import com.onyx.galaxy.note.utils.Navigator;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import dagger.hilt.android.EntryPointAccessors;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import java.util.Map;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Ð\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u0000 \u0082\u00012\u00020\u0001:\u0002\u0082\u0001B\t¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J\"\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002J\b\u0010\t\u001a\u00020\u0007H\u0002J\b\u0010\n\u001a\u00020\u0007H\u0002J\b\u0010\u000b\u001a\u00020\u0007H\u0002J\b\u0010\f\u001a\u00020\u0007H\u0002J\b\u0010\r\u001a\u00020\u0007H\u0002J\b\u0010\u000e\u001a\u00020\u0007H\u0002J\b\u0010\u000f\u001a\u00020\u0007H\u0002J\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0013H\u0002J\b\u0010\u0018\u001a\u00020\u0007H\u0002J\u0010\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0013H\u0002J\b\u0010\u001b\u001a\u00020\u0007H\u0002J\b\u0010\u001c\u001a\u00020\u0007H\u0002J\b\u0010\u001d\u001a\u00020\u0007H\u0002J\b\u0010\u001e\u001a\u00020\u0007H\u0002J\b\u0010\u001f\u001a\u00020\u0007H\u0002J\b\u0010 \u001a\u00020\u0007H\u0002J\u001c\u0010#\u001a\u00020\u00072\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"0!H\u0002J\u0010\u0010%\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\"H\u0002J\u0010\u0010(\u001a\u00020\u00072\u0006\u0010'\u001a\u00020&H\u0002J\u0010\u0010)\u001a\u00020\u00072\u0006\u0010'\u001a\u00020&H\u0002J\u0010\u0010+\u001a\u00020\u00072\u0006\u0010*\u001a\u00020&H\u0002J\u0016\u0010/\u001a\u00020\u00072\f\u0010.\u001a\b\u0012\u0004\u0012\u00020-0,H\u0002J\b\u00100\u001a\u00020\u0013H\u0002J\b\u00101\u001a\u00020\u0007H\u0002J\b\u00102\u001a\u00020\u0007H\u0002J\b\u00103\u001a\u00020\u0007H\u0002J\b\u00104\u001a\u00020\u0007H\u0002J\b\u00105\u001a\u00020\u0007H\u0002J\b\u00106\u001a\u00020\"H\u0002J\b\u00108\u001a\u000207H\u0002J\b\u00109\u001a\u00020\u0007H\u0002J\u000e\u0010;\u001a\b\u0012\u0004\u0012\u00020\"0:H\u0002J\b\u0010=\u001a\u00020<H\u0002J\b\u0010>\u001a\u00020<H\u0002J\u0010\u0010@\u001a\u00020\u00072\u0006\u0010?\u001a\u00020\"H\u0002J\u0010\u0010C\u001a\u00020\u00072\u0006\u0010B\u001a\u00020AH\u0002J\u0010\u0010F\u001a\u00020\u00072\u0006\u0010E\u001a\u00020DH\u0002J\b\u0010G\u001a\u00020\u0007H\u0002J\b\u0010H\u001a\u00020\u0007H\u0002J\u0012\u0010K\u001a\u00020\u00072\b\u0010J\u001a\u0004\u0018\u00010IH\u0016J$\u0010Q\u001a\u00020P2\u0006\u0010M\u001a\u00020L2\b\u0010O\u001a\u0004\u0018\u00010N2\b\u0010J\u001a\u0004\u0018\u00010IH\u0016J\u001a\u0010S\u001a\u00020\u00072\u0006\u0010R\u001a\u00020P2\b\u0010J\u001a\u0004\u0018\u00010IH\u0016J\b\u0010T\u001a\u00020\u0007H\u0016J\"\u0010U\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010X\u001a\u00020\u00072\u0006\u0010W\u001a\u00020VH\u0007R\u0014\u0010\\\u001a\u00020Y8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bZ\u0010[R\u001b\u0010b\u001a\u00020]8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b^\u0010_\u001a\u0004\b`\u0010aR\u001b\u0010g\u001a\u00020c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bd\u0010_\u001a\u0004\be\u0010fR\u0016\u0010k\u001a\u00020h8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bi\u0010jR\u0018\u0010o\u001a\u0004\u0018\u00010l8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010nR\u001b\u0010t\u001a\u00020p8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bq\u0010_\u001a\u0004\br\u0010sR\u0018\u0010x\u001a\u0004\u0018\u00010u8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010wR(\u0010\u007f\u001a\b\u0012\u0004\u0012\u00020\u00020:8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\by\u0010z\u001a\u0004\b{\u0010|\"\u0004\b}\u0010~¨\u0006\u0083\u0001"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/ui/LoginFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "", "X0", "q1", "p1", "b1", "K1", "a1", "D1", "Z0", "Lcom/onyx/galaxy/note/account/data/PolicyType;", "policyType", "F1", "", "showPhone", "J1", "showAccount", "I1", "B1", "enable", "H1", "s1", "t1", FirebaseInstallationServiceClient.f35986m, "G1", "L1", "T0", "", "", "N1", "code", "O1", "Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;", "signInCredential", "Y0", "U0", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "x1", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/data/account/AccountDataBundle;", "accountDataBundleObservable", "J0", "C1", "E0", "H0", "G0", "y1", "W0", "Q0", "Lcom/onyx/android/sdk/base/extension/StringMap;", "P0", "z1", "", "R0", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "N0", "M0", "type", "F0", "Lcom/onyx/galaxy/note/account/model/AreaCodeModel;", "model", "A1", "", "t", "V0", "E1", "I0", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "onResume", "onActivityResult", "Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;", NotificationCompat.CATEGORY_EVENT, "onVerifyCodeNotifyEvent", "Landroid/os/Handler;", "d1", "Landroid/os/Handler;", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.TRANSLET_OUTPUT_PNAME, "Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;", "e1", "Lkotlin/Lazy;", "S0", "()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;", "viewModel", "Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;", "f1", "O0", "()Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;", "areaCodeDialog", "Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;", "g1", "Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;", "binding", "Landroid/app/Dialog;", "h1", "Landroid/app/Dialog;", "wechatLoginDialog", "Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;", "i1", "L0", "()Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;", "accountAuthCreator", "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;", "j1", "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;", "accountAuth", "k1", "Ljava/util/List;", "getThirdPartySignRequestCodes", "()Ljava/util/List;", "setThirdPartySignRequestCodes", "(Ljava/util/List;)V", "thirdPartySignRequestCodes", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoginFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginFragment.kt\ncom/onyx/galaxy/note/account/ui/LoginFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,918:1\n347#2:919\n*S KotlinDebug\n*F\n+ 1 LoginFragment.kt\ncom/onyx/galaxy/note/account/ui/LoginFragment\n*L\n333#1:919\n*E\n"})
/* loaded from: classes17.dex */
public final class LoginFragment extends BaseFragment {

    @NotNull
    public static final String KEY_ACCOUNT_BIND_EMAIL_PREFIX = "key_account_bind_email_prefix_";

    @NotNull
    public static final String KEY_ACCOUNT_BIND_PHONE_PREFIX = "key_account_bind_phone_prefix_";

    @NotNull
    public static final String KEY_LOGIN_ACCOUNT = "key_login_account";

    @NotNull
    public static final String KEY_LOGIN_TYPE = "key_login_type";
    public static final int REQUEST_CODE_GOOGLE_SIGN_IN = 1001;
    public static final int REQUEST_CODE_HW_SIGN_IN = 1000;
    public static final int REQUEST_CODE_MICROSOFT_SIGN_IN = 1002;

    @NotNull
    public static final String TAG = "LoginFragment";

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Handler handler;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewModel;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final Lazy areaCodeDialog;

    /* renamed from: g1, reason: from kotlin metadata */
    public FragmentLoginBinding binding;

    /* renamed from: h1, reason: from kotlin metadata */
    @Nullable
    public Dialog wechatLoginDialog;

    /* renamed from: i1, reason: from kotlin metadata */
    @NotNull
    public final Lazy accountAuthCreator;

    /* renamed from: j1, reason: from kotlin metadata */
    @Nullable
    public IAccountAuth accountAuth;

    /* renamed from: k1, reason: from kotlin metadata */
    @NotNull
    public List<Integer> thirdPartySignRequestCodes;

    /* renamed from: com.onyx.galaxy.note.account.ui.LoginFragment$a */
    /* loaded from: classes9.dex */
    public static final class C10712a<T> implements Consumer {
        public C10712a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            String stackTraceToString;
            Intrinsics.checkNotNullParameter(it2, "it");
            LoginFragment.this.m41893V0(it2);
            String simpleName = LoginFragment.this.getClass().getSimpleName();
            StringBuilder sb = new StringBuilder();
            sb.append("execute login by third party failed,error:");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(it2);
            sb.append(stackTraceToString);
            LogUtils.file(simpleName, sb.toString());
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.ui.LoginFragment$b */
    /* loaded from: classes9.dex */
    public static final class C10714b<T> implements Consumer {
        public C10714b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            String stackTraceToString;
            Intrinsics.checkNotNullParameter(it2, "it");
            LoginFragment.this.m41893V0(it2);
            String simpleName = LoginFragment.this.getClass().getSimpleName();
            StringBuilder sb = new StringBuilder();
            sb.append("login doOnError:");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(it2);
            sb.append(stackTraceToString);
            LogUtils.file(simpleName, sb.toString());
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.ui.LoginFragment$c */
    /* loaded from: classes9.dex */
    public static final class C10715c<T> implements Consumer {
        public C10715c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            String stackTraceToString;
            Intrinsics.checkNotNullParameter(it2, "it");
            LoginFragment.this.m41893V0(it2);
            String simpleName = LoginFragment.this.getClass().getSimpleName();
            StringBuilder sb = new StringBuilder();
            sb.append("login doOnError:");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(it2);
            sb.append(stackTraceToString);
            LogUtils.file(simpleName, sb.toString());
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.ui.LoginFragment$d */
    /* loaded from: classes9.dex */
    public static final class C10716d implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f53472a;

        public C10716d(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f53472a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return this.f53472a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f53472a.invoke(obj);
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.ui.LoginFragment$e */
    /* loaded from: classes9.dex */
    public static final class C10717e<T> implements Consumer {
        public C10717e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoginFragment.this.m41874H1(false);
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.ui.LoginFragment$f */
    /* loaded from: classes9.dex */
    public static final class C10718f<T> implements Consumer {
        public C10718f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            String stackTraceToString;
            Intrinsics.checkNotNullParameter(it2, "it");
            String simpleName = LoginFragment.this.getClass().getSimpleName();
            StringBuilder sb = new StringBuilder();
            sb.append("send verify code failed;error:");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(it2);
            sb.append(stackTraceToString);
            LogUtils.file(simpleName, sb.toString());
            if (it2 instanceof OnyxException) {
                OnyxErrorHandler.handle$default(OnyxErrorHandler.INSTANCE, it2, null, null, 6, null);
            }
            LoginFragment.this.m41874H1(true);
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.ui.LoginFragment$g */
    /* loaded from: classes9.dex */
    public static final class C10719g<T> implements Consumer {
        public C10719g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ResultData<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            VerifyCodeBundle.addTimer$default(VerifyCodeBundle.INSTANCE, LoginFragment.TAG, AppConfigManager.INSTANCE.getVerifyCodeTimeout(), false, 4, null);
            FragmentLoginBinding fragmentLoginBinding = LoginFragment.this.binding;
            if (fragmentLoginBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginBinding = null;
            }
            fragmentLoginBinding.btnVerificationCode.requestFocus();
        }
    }

    public LoginFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        List<Integer> listOf;
        Looper myLooper = Looper.myLooper();
        Intrinsics.checkNotNull(myLooper);
        this.handler = new Handler(myLooper);
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LoginViewModel>() { // from class: com.onyx.galaxy.note.account.ui.LoginFragment$viewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LoginViewModel invoke() {
                return (LoginViewModel) FragmentKt.getViewModel(LoginFragment.this, LoginViewModel.class);
            }
        });
        this.viewModel = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<AreaCodeDialog>() { // from class: com.onyx.galaxy.note.account.ui.LoginFragment$areaCodeDialog$2

            @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
            /* renamed from: com.onyx.galaxy.note.account.ui.LoginFragment$areaCodeDialog$2$1 */
            /* loaded from: classes9.dex */
            public /* synthetic */ class C107131 extends FunctionReferenceImpl implements Function1<AreaCodeModel, Unit> {
                public C107131(Object obj) {
                    super(1, obj, LoginFragment.class, "selectAreaCode", "selectAreaCode(Lcom/onyx/galaxy/note/account/model/AreaCodeModel;)V", 0);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(AreaCodeModel areaCodeModel) {
                    invoke2(areaCodeModel);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull AreaCodeModel p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    ((LoginFragment) this.receiver).m41863A1(p0);
                }
            }

            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AreaCodeDialog invoke() {
                LoginViewModel m41890S0;
                Context requireContext = LoginFragment.this.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                C107131 c107131 = new C107131(LoginFragment.this);
                m41890S0 = LoginFragment.this.m41890S0();
                String value = m41890S0.getAreaCode().getValue();
                Intrinsics.checkNotNull(value);
                return new AreaCodeDialog(requireContext, c107131, value);
            }
        });
        this.areaCodeDialog = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<AccountAuthSelector.Creator>() { // from class: com.onyx.galaxy.note.account.ui.LoginFragment$accountAuthCreator$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AccountAuthSelector.Creator invoke() {
                return ((IAccountAuthEntryPoint) EntryPointAccessors.fromApplication(ResManager.INSTANCE.getAppContext(), IAccountAuthEntryPoint.class)).getAccountAuthCreator();
            }
        });
        this.accountAuthCreator = lazy3;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{1000, 1001, 1002});
        this.thirdPartySignRequestCodes = listOf;
    }

    /* renamed from: K0 */
    public static final void m41829K0(LoginFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m41875I0();
    }

    /* renamed from: M1 */
    public static final void m41830M1(LoginFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m41891T0();
    }

    /* renamed from: P1 */
    public static final void m41831P1(LoginFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Dialog dialog = this$0.wechatLoginDialog;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    /* renamed from: c1 */
    public static final void m41832c1(LoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m41864B1();
    }

    /* renamed from: d1 */
    public static final boolean m41833d1(LoginFragment this$0, TextView textView, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i != 6) {
            return true;
        }
        this$0.m41902s1();
        return true;
    }

    /* renamed from: e1 */
    public static final void m41834e1(LoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m41866D1();
    }

    /* renamed from: f1 */
    public static final void m41835f1(LoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m41866D1();
    }

    /* renamed from: g1 */
    public static final void m41836g1(LoginFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m41879K1();
    }

    /* renamed from: h1 */
    public static final void m41837h1(LoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m41902s1();
    }

    /* renamed from: i1 */
    public static final void m41838i1(LoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m41890S0().huaweiAuth(this$0);
    }

    /* renamed from: j1 */
    public static final void m41839j1(LoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m41890S0().googleAuth(this$0);
    }

    /* renamed from: k1 */
    public static final void m41840k1(LoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m41890S0().microsoftAuth(this$0);
    }

    /* renamed from: l1 */
    public static final void m41842l1(LoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m41872G1();
    }

    /* renamed from: m1 */
    public static final void m41844m1(LoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentKt.finishActivity(this$0);
    }

    /* renamed from: n1 */
    public static final void m41846n1(LoginFragment this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentLoginBinding fragmentLoginBinding = this$0.binding;
        if (fragmentLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding = null;
        }
        fragmentLoginBinding.vEdtBg.setSelected(z);
    }

    /* renamed from: o1 */
    public static final void m41848o1(LoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intent intent = new Intent(this$0.requireActivity(), (Class<?>) UserCenterActivity.class);
        intent.putExtra(AccountVerifyPurpose.KEY_PURPOSE, AccountVerifyPurpose.PURPOSE_PASSWORD_RECOVER);
        this$0.startActivity(intent);
    }

    /* renamed from: r1 */
    public static final boolean m41852r1() {
        RxBaseAction.execute$default(new LoadCertificatesAction(LoadCertificatesAction.SDK_KEY, false), null, null, null, 7, null);
        return false;
    }

    /* renamed from: u1 */
    public static final void m41856u1(LoginFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m41875I0();
    }

    /* renamed from: w1 */
    public static final void m41859w1(LoginFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m41875I0();
    }

    /* renamed from: A1 */
    public final void m41863A1(AreaCodeModel model) {
        m41885O0().dismiss();
        Debug.INSTANCE.m32035d(LoginFragment.class, "Model:" + JSONUtils.INSTANCE.toJson(model), new Object[0]);
        m41890S0().getAreaCode().setValue(model.getCode());
        FragmentLoginBinding fragmentLoginBinding = this.binding;
        if (fragmentLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding = null;
        }
        Editable editableText = fragmentLoginBinding.edtPhoneOrEmail.getEditableText();
        if (editableText != null) {
            editableText.clear();
        }
    }

    /* renamed from: B1 */
    public final void m41864B1() {
        if (m41890S0().checkNetwork()) {
            Integer value = m41890S0().getLoginType().getValue();
            if (value != null && value.intValue() == 1) {
                if (!m41890S0().isPhoneNumberValid()) {
                    ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.invalid_phone_number, false, 2, (Object) null);
                    return;
                } else if (!m41890S0().isAreaCodeValid()) {
                    ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.invalid_area_code, false, 2, (Object) null);
                    return;
                }
            } else {
                if (value == null || value.intValue() != 2) {
                    Debug.INSTANCE.m32035d(LoginFragment.class, "sendVerifyCode loginType:" + m41890S0().getLoginType().getValue(), new Object[0]);
                    return;
                }
                if (!m41890S0().isEmailValid()) {
                    ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.invalid_email_addr, false, 2, (Object) null);
                    return;
                }
            }
            LoginViewModel m41890S0 = m41890S0();
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            Intrinsics.checkNotNullExpressionValue(m41890S0.sendVerifyCode(requireContext).doOnSubscribe(new C10717e()).doOnError(new C10718f()).subscribe(new C10719g()), "subscribe(...)");
        }
    }

    /* renamed from: C1 */
    public final boolean m41865C1() {
        String accountBindPrimaryType = AppConfigManager.INSTANCE.getAccountBindPrimaryType();
        return (Intrinsics.areEqual(accountBindPrimaryType, "email") && !AccountDataBundle.INSTANCE.hasEmail()) || (Intrinsics.areEqual(accountBindPrimaryType, "phone") && !AccountDataBundle.INSTANCE.hasPhone());
    }

    /* renamed from: D1 */
    public final void m41866D1() {
        AreaCodeDialog m41885O0 = m41885O0();
        String value = m41890S0().getAreaCode().getValue();
        Intrinsics.checkNotNull(value);
        m41885O0.updateAreaCode(value);
        m41885O0().show();
    }

    /* renamed from: E0 */
    public final void m41867E0() {
        if (Intrinsics.areEqual(AppConfigManager.INSTANCE.getAccountBindPrimaryType(), "phone")) {
            m41873H0();
        } else {
            m41871G0();
        }
    }

    /* renamed from: E1 */
    public final void m41868E1() {
        if (isAdded()) {
            m41875I0();
            LifecycleOwnerKt.getLifecycleScope(this).launchWhenResumed(new LoginFragment$showLoginLoadingDialog$1(this, null));
        }
    }

    /* renamed from: F0 */
    public final void m41869F0(String type) {
        if (m41889R0().contains(m41888Q0())) {
            return;
        }
        Intent intent = new Intent(requireActivity(), (Class<?>) UserCenterActivity.class);
        intent.putExtra(AccountVerifyPurpose.KEY_PURPOSE, type);
        startActivity(intent);
    }

    /* renamed from: F1 */
    public final void m41870F1(PolicyType policyType) {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new PolicyDialog(requireContext, policyType).show();
    }

    /* renamed from: G0 */
    public final void m41871G0() {
        BooleanOption m41882M0 = m41882M0();
        if (AccountDataBundle.INSTANCE.hasEmail() || m41882M0.get()) {
            m41882M0.put(true);
            m41894W0();
        } else {
            m41882M0.put(true);
            m41869F0(AccountVerifyPurpose.PURPOSE_BIND_EMAIL_AFTER_LOGIN);
        }
    }

    /* renamed from: G1 */
    public final void m41872G1() {
        if (m41890S0().checkAgreedPolicy()) {
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            WechatLoginDialog wechatLoginDialog = new WechatLoginDialog(requireContext, new LoginFragment$showWeChatDialog$1(this), new LoginFragment$showWeChatDialog$2(this));
            this.wechatLoginDialog = wechatLoginDialog;
            Intrinsics.checkNotNull(wechatLoginDialog);
            wechatLoginDialog.show();
        }
    }

    /* renamed from: H0 */
    public final void m41873H0() {
        BooleanOption m41883N0 = m41883N0();
        if (AccountDataBundle.INSTANCE.hasPhone() || m41883N0.get()) {
            m41883N0.put(true);
            m41894W0();
        } else {
            m41883N0.put(true);
            m41869F0(AccountVerifyPurpose.PURPOSE_BIND_PHONE_AFTER_LOGIN);
        }
    }

    /* renamed from: H1 */
    public final void m41874H1(boolean enable) {
        String string = enable ? getString(C10651R.string.get_verification_code) : getString(C10651R.string.receiving);
        Intrinsics.checkNotNull(string);
        FragmentLoginBinding fragmentLoginBinding = this.binding;
        FragmentLoginBinding fragmentLoginBinding2 = null;
        if (fragmentLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding = null;
        }
        fragmentLoginBinding.btnVerificationCode.setText(string);
        FragmentLoginBinding fragmentLoginBinding3 = this.binding;
        if (fragmentLoginBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentLoginBinding2 = fragmentLoginBinding3;
        }
        fragmentLoginBinding2.btnVerificationCode.setEnabled(enable);
    }

    /* renamed from: I0 */
    public final void m41875I0() {
        LoginLoadingDialogFragment loginLoadingDialogFragment;
        if (isAdded() && (loginLoadingDialogFragment = (LoginLoadingDialogFragment) getChildFragmentManager().findFragmentByTag(LoginLoadingDialogFragment.TAG)) != null) {
            loginLoadingDialogFragment.dismissAllowingStateLoss();
        }
    }

    /* renamed from: I1 */
    public final void m41876I1(boolean showAccount) {
        FragmentLoginBinding fragmentLoginBinding = null;
        if (!showAccount) {
            FragmentLoginBinding fragmentLoginBinding2 = this.binding;
            if (fragmentLoginBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginBinding2 = null;
            }
            fragmentLoginBinding2.edtPhoneOrEmail.setHint("");
            FragmentLoginBinding fragmentLoginBinding3 = this.binding;
            if (fragmentLoginBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginBinding3 = null;
            }
            fragmentLoginBinding3.tiePwdOrVerification.setHint("");
            FragmentLoginBinding fragmentLoginBinding4 = this.binding;
            if (fragmentLoginBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginBinding4 = null;
            }
            fragmentLoginBinding4.tiePwdOrVerification.setInputType(2);
            FragmentLoginBinding fragmentLoginBinding5 = this.binding;
            if (fragmentLoginBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginBinding5 = null;
            }
            fragmentLoginBinding5.tiePwdOrVerification.setFilters(new InputFilter[]{new InputFilter.LengthFilter(ResManager.INSTANCE.getInteger(C10651R.integer.login_variation_code_max_length)), new DigitInputFilter()});
            FragmentLoginBinding fragmentLoginBinding6 = this.binding;
            if (fragmentLoginBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentLoginBinding = fragmentLoginBinding6;
            }
            fragmentLoginBinding.tiePwdOrVerification.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
            return;
        }
        int i = AppConfigManager.isSupportLoginType$default(AppConfigManager.INSTANCE, 1, null, 2, null) ? C10651R.string.login_phone_or_email_hint : C10651R.string.login_email_hint;
        FragmentLoginBinding fragmentLoginBinding7 = this.binding;
        if (fragmentLoginBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding7 = null;
        }
        fragmentLoginBinding7.edtPhoneOrEmail.setHint(getString(i));
        FragmentLoginBinding fragmentLoginBinding8 = this.binding;
        if (fragmentLoginBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding8 = null;
        }
        fragmentLoginBinding8.tiePwdOrVerification.setHint(getString(C10651R.string.login_password_hint));
        FragmentLoginBinding fragmentLoginBinding9 = this.binding;
        if (fragmentLoginBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding9 = null;
        }
        fragmentLoginBinding9.tiePwdOrVerification.setInputType(128);
        FragmentLoginBinding fragmentLoginBinding10 = this.binding;
        if (fragmentLoginBinding10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding10 = null;
        }
        fragmentLoginBinding10.tiePwdOrVerification.setFilters(new InputFilter[]{new InputFilter.LengthFilter(ResManager.INSTANCE.getInteger(C10651R.integer.login_max_password_max_length)), new EnglishLetterOrDigitInputFilter()});
        FragmentLoginBinding fragmentLoginBinding11 = this.binding;
        if (fragmentLoginBinding11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentLoginBinding = fragmentLoginBinding11;
        }
        fragmentLoginBinding.tiePwdOrVerification.setTransformationMethod(PasswordTransformationMethod.getInstance());
    }

    /* renamed from: J0 */
    public final void m41877J0(Observable<AccountDataBundle> accountDataBundleObservable) {
        if (isAdded()) {
            m41868E1();
            accountDataBundleObservable.doOnError(new C10712a()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.s3j
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    LoginFragment.m41829K0(LoginFragment.this);
                }
            }).subscribe();
        }
    }

    /* renamed from: J1 */
    public final void m41878J1(boolean showPhone) {
        FragmentLoginBinding fragmentLoginBinding = null;
        if (showPhone) {
            FragmentLoginBinding fragmentLoginBinding2 = this.binding;
            if (fragmentLoginBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginBinding2 = null;
            }
            fragmentLoginBinding2.tvAreaCodeMark.setVisibility(0);
            FragmentLoginBinding fragmentLoginBinding3 = this.binding;
            if (fragmentLoginBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginBinding3 = null;
            }
            fragmentLoginBinding3.edtAreaCode.setVisibility(0);
            FragmentLoginBinding fragmentLoginBinding4 = this.binding;
            if (fragmentLoginBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginBinding4 = null;
            }
            fragmentLoginBinding4.vDivider.setVisibility(0);
            FragmentLoginBinding fragmentLoginBinding5 = this.binding;
            if (fragmentLoginBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginBinding5 = null;
            }
            fragmentLoginBinding5.ivAreaCodeArrow.setVisibility(0);
            FragmentLoginBinding fragmentLoginBinding6 = this.binding;
            if (fragmentLoginBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginBinding6 = null;
            }
            fragmentLoginBinding6.edtPhoneOrEmail.setHint(getString(C10651R.string.phone_hint));
            FragmentLoginBinding fragmentLoginBinding7 = this.binding;
            if (fragmentLoginBinding7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginBinding7 = null;
            }
            fragmentLoginBinding7.edtPhoneOrEmail.setInputType(2);
        } else {
            FragmentLoginBinding fragmentLoginBinding8 = this.binding;
            if (fragmentLoginBinding8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginBinding8 = null;
            }
            fragmentLoginBinding8.tvAreaCodeMark.setVisibility(8);
            FragmentLoginBinding fragmentLoginBinding9 = this.binding;
            if (fragmentLoginBinding9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginBinding9 = null;
            }
            fragmentLoginBinding9.edtAreaCode.setVisibility(8);
            FragmentLoginBinding fragmentLoginBinding10 = this.binding;
            if (fragmentLoginBinding10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginBinding10 = null;
            }
            fragmentLoginBinding10.vDivider.setVisibility(8);
            FragmentLoginBinding fragmentLoginBinding11 = this.binding;
            if (fragmentLoginBinding11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginBinding11 = null;
            }
            fragmentLoginBinding11.ivAreaCodeArrow.setVisibility(8);
            FragmentLoginBinding fragmentLoginBinding12 = this.binding;
            if (fragmentLoginBinding12 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginBinding12 = null;
            }
            fragmentLoginBinding12.edtPhoneOrEmail.setHint(getString(C10651R.string.email_hint));
            FragmentLoginBinding fragmentLoginBinding13 = this.binding;
            if (fragmentLoginBinding13 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginBinding13 = null;
            }
            fragmentLoginBinding13.edtPhoneOrEmail.setInputType(33);
        }
        FragmentLoginBinding fragmentLoginBinding14 = this.binding;
        if (fragmentLoginBinding14 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentLoginBinding = fragmentLoginBinding14;
        }
        fragmentLoginBinding.tiePwdOrVerification.setHint(getString(C10651R.string.verification_code_hint));
    }

    /* renamed from: K1 */
    public final void m41879K1() {
        FragmentLoginBinding fragmentLoginBinding = this.binding;
        FragmentLoginBinding fragmentLoginBinding2 = null;
        if (fragmentLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding = null;
        }
        int width = fragmentLoginBinding.getRoot().getWidth();
        FragmentLoginBinding fragmentLoginBinding3 = this.binding;
        if (fragmentLoginBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding3 = null;
        }
        int height = fragmentLoginBinding3.getRoot().getHeight();
        ResManager resManager = ResManager.INSTANCE;
        int dimens = resManager.getDimens(C7384R.dimen.dp_440);
        int dimens2 = resManager.getDimens(C7384R.dimen.dp_660);
        FragmentLoginBinding fragmentLoginBinding4 = this.binding;
        if (fragmentLoginBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding4 = null;
        }
        ViewGroup.LayoutParams layoutParams = fragmentLoginBinding4.btnLogin.getLayoutParams();
        if (dimens > width) {
            layoutParams.width = (int) (width * resManager.getFloat(C10651R.dimen.login_view_max_width_percent));
        } else {
            layoutParams.width = dimens;
        }
        FragmentLoginBinding fragmentLoginBinding5 = this.binding;
        if (fragmentLoginBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding5 = null;
        }
        fragmentLoginBinding5.btnLogin.setLayoutParams(layoutParams);
        FragmentLoginBinding fragmentLoginBinding6 = this.binding;
        if (fragmentLoginBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding6 = null;
        }
        ViewGroup.LayoutParams layoutParams2 = fragmentLoginBinding6.loginContentContainer.getLayoutParams();
        if (height < dimens2) {
            layoutParams2.height = dimens2;
        } else {
            layoutParams2.height = height;
        }
        FragmentLoginBinding fragmentLoginBinding7 = this.binding;
        if (fragmentLoginBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentLoginBinding2 = fragmentLoginBinding7;
        }
        fragmentLoginBinding2.loginContentContainer.setLayoutParams(layoutParams2);
    }

    /* renamed from: L0 */
    public final AccountAuthSelector.Creator m41880L0() {
        return (AccountAuthSelector.Creator) this.accountAuthCreator.getValue();
    }

    /* renamed from: L1 */
    public final void m41881L1() {
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        StatisticsManager statisticsManager = statisticsBundle.getStatisticsManager();
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        if (statisticsManager.isWechatInstallation(requireActivity) && m41890S0().checkNetwork()) {
            m41890S0().reportViewOrClickEvent(OnyxStatisticConstant.ID_LOGIN_VIEW, 4);
            m41890S0().reportViewOrClickEvent(OnyxStatisticConstant.ID_LOGIN_CLICK, 4);
            StatisticsManager statisticsManager2 = statisticsBundle.getStatisticsManager();
            Context applicationContext = requireContext().getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            RxBaseAction<ProviderCertificate> createInitSdkAction = statisticsManager2.createInitSdkAction(applicationContext);
            if (createInitSdkAction != null) {
                RxBaseAction.execute$default(createInitSdkAction, null, null, new Action() { // from class: com.sunia.HTREnginev2.g4j
                    @Override // io.reactivex.rxjava3.functions.Action
                    public final void run() {
                        LoginFragment.m41830M1(LoginFragment.this);
                    }
                }, 3, null);
            }
        }
    }

    /* renamed from: M0 */
    public final BooleanOption m41882M0() {
        return new BooleanOption(MMKVUtils.INSTANCE.get(), KEY_ACCOUNT_BIND_EMAIL_PREFIX + AccountDataBundle.INSTANCE.getAccountId(), false);
    }

    /* renamed from: N0 */
    public final BooleanOption m41883N0() {
        return new BooleanOption(MMKVUtils.INSTANCE.get(), KEY_ACCOUNT_BIND_PHONE_PREFIX + AccountDataBundle.INSTANCE.getAccountId(), false);
    }

    /* renamed from: N1 */
    public final void m41884N1(Map<String, String> data) {
        if (!data.isEmpty() && data.containsKey("openid") && data.containsKey("access_token") && data.containsKey("unionid")) {
            m41877J0(m41890S0().wechatAppLogin(data));
        } else {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.login_fail, false, 2, (Object) null);
        }
    }

    /* renamed from: O0 */
    public final AreaCodeDialog m41885O0() {
        return (AreaCodeDialog) this.areaCodeDialog.getValue();
    }

    /* renamed from: O1 */
    public final void m41886O1(String code) {
        Observable<AccountDataBundle> doOnComplete = m41890S0().wechatQrCodeLogin(code).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.f4j
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                LoginFragment.m41831P1(LoginFragment.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnComplete, "doOnComplete(...)");
        m41890S0().reportViewOrClickEvent(OnyxStatisticConstant.ID_LOGIN_VIEW, 5);
        m41890S0().reportViewOrClickEvent(OnyxStatisticConstant.ID_LOGIN_CLICK, 5);
        m41877J0(doOnComplete);
    }

    /* renamed from: P0 */
    public final StringMap m41887P0() {
        String stringExtra = requireActivity().getIntent().getStringExtra(NavigationType.KEY_NAV_DATA);
        if (stringExtra == null) {
            stringExtra = "";
        }
        StringMap stringMap = (StringMap) JSONUtils.INSTANCE.parseObject(stringExtra, StringMap.class);
        return stringMap == null ? new StringMap() : stringMap;
    }

    /* renamed from: Q0 */
    public final String m41888Q0() {
        String stringExtra = requireActivity().getIntent().getStringExtra(NavigationType.KEY_NAV_TYPE);
        return stringExtra == null ? "" : stringExtra;
    }

    /* renamed from: R0 */
    public final List<String> m41889R0() {
        List<String> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{NavigationType.VIP_CENTER, NavigationType.LIBRARY, NavigationType.MEMBER_CENTER});
        return listOf;
    }

    /* renamed from: S0 */
    public final LoginViewModel m41890S0() {
        return (LoginViewModel) this.viewModel.getValue();
    }

    /* renamed from: T0 */
    public final void m41891T0() {
        StatisticsManager statisticsManager = StatisticsBundle.INSTANCE.getStatisticsManager();
        Context applicationContext = requireContext().getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        statisticsManager.getWeChatInfo(applicationContext, requireActivity, new LoginFragment$getWeChatInfo$1(this));
    }

    /* renamed from: U0 */
    public final void m41892U0(AuthResultArgs signInCredential) {
        m41877J0(m41890S0().googleAuthLogin(signInCredential.getIdToken(), signInCredential.getAuthId()));
    }

    /* renamed from: V0 */
    public final void m41893V0(Throwable t) {
        if (ExpcetionsKt.isNetworkErrorException(t)) {
            ToastUtils.INSTANCE.show(C10651R.string.network_error_hint, true);
        } else if (t instanceof OnyxException) {
            ToastUtils.INSTANCE.show(OnyxErrorHandler.INSTANCE.errorTypeToMessage((OnyxException) t), true);
        } else {
            ToastUtils.INSTANCE.show(C10651R.string.login_fail, true);
        }
    }

    /* renamed from: W0 */
    public final void m41894W0() {
        Context context;
        m41907z1();
        if (requireActivity().isTaskRoot() && (context = getContext()) != null) {
            ContextExtKt.startActivity(context, NoteListActivity.class);
        }
        FragmentKt.finishActivity(this);
    }

    /* renamed from: X0 */
    public final void m41895X0(int requestCode, int resultCode, Intent data) {
        if (this.thirdPartySignRequestCodes.contains(Integer.valueOf(requestCode))) {
            FragmentKt.requireContextSafety(this, new LoginFragment$handleThirdPartyLogin$1(this, data, requestCode));
        }
    }

    /* renamed from: Y0 */
    public final void m41896Y0(AuthResultArgs signInCredential) {
        String authCode = signInCredential.getAuthCode();
        if (authCode.length() == 0) {
            return;
        }
        m41877J0(m41890S0().huaweiAuthLogin(authCode));
    }

    /* renamed from: Z0 */
    public final void m41897Z0() {
        String string = getString(C10651R.string.login_policy);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = getString(C10651R.string.login_policy_connection);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String string3 = getString(C10651R.string.login_service_policy);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        String string4 = getString(C10651R.string.login_privacy_policy);
        Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
        String string5 = getString(C10651R.string.login_policy_suffix);
        Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
        SpannableString spannableString = new SpannableString(string + string3 + string2 + string4 + string5);
        LoginFragment$initCbPolicy$serviceCS$1 loginFragment$initCbPolicy$serviceCS$1 = new LoginFragment$initCbPolicy$serviceCS$1(this);
        LoginFragment$initCbPolicy$privacyCS$1 loginFragment$initCbPolicy$privacyCS$1 = new LoginFragment$initCbPolicy$privacyCS$1(this);
        spannableString.setSpan(loginFragment$initCbPolicy$serviceCS$1, string.length(), string.length() + string3.length(), 34);
        spannableString.setSpan(loginFragment$initCbPolicy$privacyCS$1, string.length() + string3.length() + string2.length(), string.length() + string3.length() + string2.length() + string4.length(), 34);
        FragmentLoginBinding fragmentLoginBinding = this.binding;
        FragmentLoginBinding fragmentLoginBinding2 = null;
        if (fragmentLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding = null;
        }
        fragmentLoginBinding.cbPolicy.setMovementMethod(LinkMovementMethod.getInstance());
        FragmentLoginBinding fragmentLoginBinding3 = this.binding;
        if (fragmentLoginBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentLoginBinding2 = fragmentLoginBinding3;
        }
        fragmentLoginBinding2.cbPolicy.setText(spannableString);
    }

    /* renamed from: a1 */
    public final void m41898a1() {
        FragmentLoginBinding fragmentLoginBinding = this.binding;
        if (fragmentLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding = null;
        }
        TintTextView tintTextView = fragmentLoginBinding.tvLoginGoogle;
        AppConfigManager appConfigManager = AppConfigManager.INSTANCE;
        ViewKt.setViewVisibleOrGone(tintTextView, AppConfigManager.isSupportLoginType$default(appConfigManager, 8, null, 2, null));
        FragmentLoginBinding fragmentLoginBinding2 = this.binding;
        if (fragmentLoginBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding2 = null;
        }
        ViewKt.setViewVisibleOrGone(fragmentLoginBinding2.tvLoginMicrosoft, AppConfigManager.isSupportLoginType$default(appConfigManager, 9, null, 2, null));
        FragmentLoginBinding fragmentLoginBinding3 = this.binding;
        if (fragmentLoginBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding3 = null;
        }
        ViewKt.setViewVisibleOrGone(fragmentLoginBinding3.tvLoginWechat, AppConfigManager.isSupportLoginType$default(appConfigManager, 5, null, 2, null) || AppConfigManager.isSupportLoginType$default(appConfigManager, 4, null, 2, null));
        FragmentLoginBinding fragmentLoginBinding4 = this.binding;
        if (fragmentLoginBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding4 = null;
        }
        ViewKt.setViewVisibleOrGone(fragmentLoginBinding4.ivLoginPhone, AppConfigManager.isSupportLoginType$default(appConfigManager, 1, null, 2, null));
        FragmentLoginBinding fragmentLoginBinding5 = this.binding;
        if (fragmentLoginBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding5 = null;
        }
        ViewKt.setViewVisibleOrGone(fragmentLoginBinding5.tvLoginHuawei, AppConfigManager.isSupportLoginType$default(appConfigManager, 3, null, 2, null));
        FragmentLoginBinding fragmentLoginBinding6 = this.binding;
        if (fragmentLoginBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding6 = null;
        }
        ViewKt.setViewVisibleOrGone(fragmentLoginBinding6.ivLoginEmail, AppConfigManager.isSupportLoginType$default(appConfigManager, 2, null, 2, null));
    }

    /* renamed from: b1 */
    public final void m41899b1() {
        FragmentLoginBinding fragmentLoginBinding = this.binding;
        if (fragmentLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding = null;
        }
        TintTextView btnVerificationCode = fragmentLoginBinding.btnVerificationCode;
        Intrinsics.checkNotNullExpressionValue(btnVerificationCode, "btnVerificationCode");
        com.onyx.android.sdk.extension.ViewKt.click$default(btnVerificationCode, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.h4j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginFragment.m41832c1(LoginFragment.this, view);
            }
        }, 1, null);
        FragmentLoginBinding fragmentLoginBinding2 = this.binding;
        if (fragmentLoginBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding2 = null;
        }
        TintTextView btnLogin = fragmentLoginBinding2.btnLogin;
        Intrinsics.checkNotNullExpressionValue(btnLogin, "btnLogin");
        com.onyx.android.sdk.extension.ViewKt.click$default(btnLogin, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.t3j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginFragment.m41837h1(LoginFragment.this, view);
            }
        }, 1, null);
        FragmentLoginBinding fragmentLoginBinding3 = this.binding;
        if (fragmentLoginBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding3 = null;
        }
        TintTextView tvLoginHuawei = fragmentLoginBinding3.tvLoginHuawei;
        Intrinsics.checkNotNullExpressionValue(tvLoginHuawei, "tvLoginHuawei");
        com.onyx.android.sdk.extension.ViewKt.click$default(tvLoginHuawei, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.u3j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginFragment.m41838i1(LoginFragment.this, view);
            }
        }, 1, null);
        FragmentLoginBinding fragmentLoginBinding4 = this.binding;
        if (fragmentLoginBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding4 = null;
        }
        TintTextView tvLoginGoogle = fragmentLoginBinding4.tvLoginGoogle;
        Intrinsics.checkNotNullExpressionValue(tvLoginGoogle, "tvLoginGoogle");
        com.onyx.android.sdk.extension.ViewKt.click$default(tvLoginGoogle, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.v3j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginFragment.m41839j1(LoginFragment.this, view);
            }
        }, 1, null);
        FragmentLoginBinding fragmentLoginBinding5 = this.binding;
        if (fragmentLoginBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding5 = null;
        }
        TintTextView tvLoginMicrosoft = fragmentLoginBinding5.tvLoginMicrosoft;
        Intrinsics.checkNotNullExpressionValue(tvLoginMicrosoft, "tvLoginMicrosoft");
        com.onyx.android.sdk.extension.ViewKt.click$default(tvLoginMicrosoft, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.w3j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginFragment.m41840k1(LoginFragment.this, view);
            }
        }, 1, null);
        FragmentLoginBinding fragmentLoginBinding6 = this.binding;
        if (fragmentLoginBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding6 = null;
        }
        TintTextView tvLoginWechat = fragmentLoginBinding6.tvLoginWechat;
        Intrinsics.checkNotNullExpressionValue(tvLoginWechat, "tvLoginWechat");
        com.onyx.android.sdk.extension.ViewKt.click$default(tvLoginWechat, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.x3j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginFragment.m41842l1(LoginFragment.this, view);
            }
        }, 1, null);
        FragmentLoginBinding fragmentLoginBinding7 = this.binding;
        if (fragmentLoginBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding7 = null;
        }
        TintImageView btnBack = fragmentLoginBinding7.btnBack;
        Intrinsics.checkNotNullExpressionValue(btnBack, "btnBack");
        com.onyx.android.sdk.extension.ViewKt.click$default(btnBack, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.y3j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginFragment.m41844m1(LoginFragment.this, view);
            }
        }, 1, null);
        FragmentLoginBinding fragmentLoginBinding8 = this.binding;
        if (fragmentLoginBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding8 = null;
        }
        fragmentLoginBinding8.edtPhoneOrEmail.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.z3j
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                LoginFragment.m41846n1(LoginFragment.this, view, z);
            }
        });
        FragmentLoginBinding fragmentLoginBinding9 = this.binding;
        if (fragmentLoginBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding9 = null;
        }
        TintTextView btnForgetPassword = fragmentLoginBinding9.btnForgetPassword;
        Intrinsics.checkNotNullExpressionValue(btnForgetPassword, "btnForgetPassword");
        com.onyx.android.sdk.extension.ViewKt.click$default(btnForgetPassword, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.a4j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginFragment.m41848o1(LoginFragment.this, view);
            }
        }, 1, null);
        FragmentLoginBinding fragmentLoginBinding10 = this.binding;
        if (fragmentLoginBinding10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding10 = null;
        }
        fragmentLoginBinding10.tiePwdOrVerification.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.sunia.HTREnginev2.b4j
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean m41833d1;
                m41833d1 = LoginFragment.m41833d1(LoginFragment.this, textView, i, keyEvent);
                return m41833d1;
            }
        });
        FragmentLoginBinding fragmentLoginBinding11 = this.binding;
        if (fragmentLoginBinding11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding11 = null;
        }
        TintTextView edtAreaCode = fragmentLoginBinding11.edtAreaCode;
        Intrinsics.checkNotNullExpressionValue(edtAreaCode, "edtAreaCode");
        com.onyx.android.sdk.extension.ViewKt.click$default(edtAreaCode, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.i4j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginFragment.m41834e1(LoginFragment.this, view);
            }
        }, 1, null);
        FragmentLoginBinding fragmentLoginBinding12 = this.binding;
        if (fragmentLoginBinding12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding12 = null;
        }
        TintImageView ivAreaCodeArrow = fragmentLoginBinding12.ivAreaCodeArrow;
        Intrinsics.checkNotNullExpressionValue(ivAreaCodeArrow, "ivAreaCodeArrow");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivAreaCodeArrow, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.j4j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginFragment.m41835f1(LoginFragment.this, view);
            }
        }, 1, null);
        FragmentLoginBinding fragmentLoginBinding13 = this.binding;
        if (fragmentLoginBinding13 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding13 = null;
        }
        fragmentLoginBinding13.btnLogin.post(new Runnable() { // from class: com.sunia.HTREnginev2.k4j
            @Override // java.lang.Runnable
            public final void run() {
                LoginFragment.m41836g1(LoginFragment.this);
            }
        });
        FragmentLoginBinding fragmentLoginBinding14 = this.binding;
        if (fragmentLoginBinding14 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding14 = null;
        }
        NestedScrollView scrollView = fragmentLoginBinding14.scrollView;
        Intrinsics.checkNotNullExpressionValue(scrollView, "scrollView");
        ViewKt.addOnLayoutChangeListener(scrollView, new Function2<Rect, Rect, Unit>() { // from class: com.onyx.galaxy.note.account.ui.LoginFragment$initView$14
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Rect rect, Rect rect2) {
                invoke2(rect, rect2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Rect newRect, @NotNull Rect oldRect) {
                Intrinsics.checkNotNullParameter(newRect, "newRect");
                Intrinsics.checkNotNullParameter(oldRect, "oldRect");
                if (Intrinsics.areEqual(newRect, oldRect)) {
                    return;
                }
                LoginFragment.this.m41879K1();
            }
        });
        m41898a1();
        m41897Z0();
        FragmentLoginBinding fragmentLoginBinding15 = this.binding;
        if (fragmentLoginBinding15 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding15 = null;
        }
        TintImageView btnBack2 = fragmentLoginBinding15.btnBack;
        Intrinsics.checkNotNullExpressionValue(btnBack2, "btnBack");
        FragmentLoginBinding fragmentLoginBinding16 = this.binding;
        if (fragmentLoginBinding16 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding16 = null;
        }
        TintImageView btnBack3 = fragmentLoginBinding16.btnBack;
        Intrinsics.checkNotNullExpressionValue(btnBack3, "btnBack");
        ViewGroup.LayoutParams layoutParams = btnBack3.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        com.onyx.android.sdk.extension.ViewKt.adjustStatusBarMargin(btnBack2, marginLayoutParams != null ? marginLayoutParams.topMargin : 0);
    }

    @NotNull
    public final List<Integer> getThirdPartySignRequestCodes() {
        return this.thirdPartySignRequestCodes;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        m41895X0(requestCode, resultCode, data);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063334, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentLoginBinding inflate = FragmentLoginBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        FragmentLoginBinding fragmentLoginBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.setLifecycleOwner(getViewLifecycleOwner());
        FragmentLoginBinding fragmentLoginBinding2 = this.binding;
        if (fragmentLoginBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginBinding2 = null;
        }
        fragmentLoginBinding2.setViewModel(m41890S0());
        FragmentLoginBinding fragmentLoginBinding3 = this.binding;
        if (fragmentLoginBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentLoginBinding = fragmentLoginBinding3;
        }
        View root = fragmentLoginBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            m41894W0();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVerifyCodeNotifyEvent(@NotNull VerifyCodeNotifyEvent event) {
        boolean isBlank;
        Intrinsics.checkNotNullParameter(event, "event");
        long leftTime = event.getLeftTime();
        if (Intrinsics.areEqual(event.getKey(), TAG)) {
            FragmentLoginBinding fragmentLoginBinding = null;
            if (leftTime > 0) {
                FragmentLoginBinding fragmentLoginBinding2 = this.binding;
                if (fragmentLoginBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentLoginBinding2 = null;
                }
                fragmentLoginBinding2.btnVerificationCode.setText(getString(C10651R.string.resend_after, Long.valueOf(leftTime)));
                FragmentLoginBinding fragmentLoginBinding3 = this.binding;
                if (fragmentLoginBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    fragmentLoginBinding = fragmentLoginBinding3;
                }
                fragmentLoginBinding.btnVerificationCode.setEnabled(false);
                return;
            }
            FragmentLoginBinding fragmentLoginBinding4 = this.binding;
            if (fragmentLoginBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginBinding4 = null;
            }
            fragmentLoginBinding4.btnVerificationCode.setText(getString(C10651R.string.get_verification_code_again));
            FragmentLoginBinding fragmentLoginBinding5 = this.binding;
            if (fragmentLoginBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginBinding5 = null;
            }
            TintTextView tintTextView = fragmentLoginBinding5.btnVerificationCode;
            FragmentLoginBinding fragmentLoginBinding6 = this.binding;
            if (fragmentLoginBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentLoginBinding = fragmentLoginBinding6;
            }
            Editable text = fragmentLoginBinding.edtPhoneOrEmail.getText();
            Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
            isBlank = StringsKt__StringsJVMKt.isBlank(text);
            tintTextView.setEnabled(!isBlank);
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m41900p1();
        m41899b1();
        m41901q1();
    }

    /* renamed from: p1 */
    public final void m41900p1() {
        m41890S0().initArgs(getArguments());
        m41890S0().getLoginType().observe(getViewLifecycleOwner(), new C10716d(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.account.ui.LoginFragment$initViewModel$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke2(num);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Integer num) {
                LoginViewModel m41890S0;
                LoginViewModel m41890S02;
                LoginViewModel m41890S03;
                if (num != null && num.intValue() == 1) {
                    LoginFragment.this.m41876I1(false);
                    LoginFragment.this.m41878J1(true);
                    FragmentLoginBinding fragmentLoginBinding = LoginFragment.this.binding;
                    if (fragmentLoginBinding == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        fragmentLoginBinding = null;
                    }
                    fragmentLoginBinding.tvLoginType.setText(LoginFragment.this.getString(C10651R.string.login_type_phone_title));
                } else if (num != null && num.intValue() == 2) {
                    LoginFragment.this.m41876I1(false);
                    LoginFragment.this.m41878J1(false);
                    FragmentLoginBinding fragmentLoginBinding2 = LoginFragment.this.binding;
                    if (fragmentLoginBinding2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        fragmentLoginBinding2 = null;
                    }
                    fragmentLoginBinding2.tvLoginType.setText(LoginFragment.this.getString(C10651R.string.login_type_email_title));
                } else if ((num == null || num.intValue() != 5) && ((num == null || num.intValue() != 3) && num != null && num.intValue() == 6)) {
                    LoginFragment.this.m41878J1(false);
                    LoginFragment.this.m41876I1(true);
                    m41890S0 = LoginFragment.this.m41890S0();
                    m41890S0.isShowPwd().postValue(Boolean.FALSE);
                    FragmentLoginBinding fragmentLoginBinding3 = LoginFragment.this.binding;
                    if (fragmentLoginBinding3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        fragmentLoginBinding3 = null;
                    }
                    fragmentLoginBinding3.tvLoginType.setText(LoginFragment.this.getString(C10651R.string.login_type_account_title));
                }
                if (!AppConfigManager.isSupportLoginType$default(AppConfigManager.INSTANCE, 1, null, 2, null)) {
                    FragmentLoginBinding fragmentLoginBinding4 = LoginFragment.this.binding;
                    if (fragmentLoginBinding4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        fragmentLoginBinding4 = null;
                    }
                    ViewKt.setViewVisibleOrGone(fragmentLoginBinding4.ivLoginPhone, false);
                } else {
                    FragmentLoginBinding fragmentLoginBinding5 = LoginFragment.this.binding;
                    if (fragmentLoginBinding5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        fragmentLoginBinding5 = null;
                    }
                    TintTextView ivLoginPhone = fragmentLoginBinding5.ivLoginPhone;
                    Intrinsics.checkNotNullExpressionValue(ivLoginPhone, "ivLoginPhone");
                    Intrinsics.checkNotNull(num);
                    BindingAdapterUtils.setVisibility(ivLoginPhone, 1, num.intValue());
                }
                m41890S02 = LoginFragment.this.m41890S0();
                m41890S02.updatePhoneLengthLimit();
                m41890S03 = LoginFragment.this.m41890S0();
                LoginViewModel.reportViewOrClickEvent$default(m41890S03, OnyxStatisticConstant.ID_LOGIN_VIEW, null, 2, null);
            }
        }));
        m41890S0().isShowPwd().observe(getViewLifecycleOwner(), new C10716d(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.account.ui.LoginFragment$initViewModel$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool) {
                LoginViewModel m41890S0;
                m41890S0 = LoginFragment.this.m41890S0();
                Integer value = m41890S0.getLoginType().getValue();
                if (value != null && value.intValue() == 6) {
                    Intrinsics.checkNotNull(bool);
                    FragmentLoginBinding fragmentLoginBinding = null;
                    if (bool.booleanValue()) {
                        FragmentLoginBinding fragmentLoginBinding2 = LoginFragment.this.binding;
                        if (fragmentLoginBinding2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            fragmentLoginBinding2 = null;
                        }
                        fragmentLoginBinding2.tiePwdOrVerification.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
                    } else {
                        FragmentLoginBinding fragmentLoginBinding3 = LoginFragment.this.binding;
                        if (fragmentLoginBinding3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            fragmentLoginBinding3 = null;
                        }
                        fragmentLoginBinding3.tiePwdOrVerification.setTransformationMethod(PasswordTransformationMethod.getInstance());
                    }
                    FragmentLoginBinding fragmentLoginBinding4 = LoginFragment.this.binding;
                    if (fragmentLoginBinding4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        fragmentLoginBinding4 = null;
                    }
                    Editable text = fragmentLoginBinding4.tiePwdOrVerification.getText();
                    int length = text != null ? text.length() : 0;
                    FragmentLoginBinding fragmentLoginBinding5 = LoginFragment.this.binding;
                    if (fragmentLoginBinding5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        fragmentLoginBinding5 = null;
                    }
                    fragmentLoginBinding5.tiePwdOrVerification.setSelection(length);
                    FragmentLoginBinding fragmentLoginBinding6 = LoginFragment.this.binding;
                    if (fragmentLoginBinding6 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        fragmentLoginBinding = fragmentLoginBinding6;
                    }
                    fragmentLoginBinding.btnTogglePwdVisible.setSelected(bool.booleanValue());
                }
            }
        }));
        m41890S0().getAreaCode().observe(getViewLifecycleOwner(), new C10716d(new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.account.ui.LoginFragment$initViewModel$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String str) {
                LoginViewModel m41890S0;
                m41890S0 = LoginFragment.this.m41890S0();
                m41890S0.updatePhoneLengthLimit();
            }
        }));
        m41890S0().isLoginFinish().observe(getViewLifecycleOwner(), new C10716d(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.account.ui.LoginFragment$initViewModel$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool) {
                Intrinsics.checkNotNull(bool);
                if (bool.booleanValue()) {
                    LoginFragment.this.m41906y1();
                }
            }
        }));
    }

    /* renamed from: q1 */
    public final void m41901q1() {
        this.handler.getLooper().getQueue().addIdleHandler(new MessageQueue.IdleHandler() { // from class: com.sunia.HTREnginev2.c4j
            @Override // android.os.MessageQueue.IdleHandler
            public final boolean queueIdle() {
                boolean m41852r1;
                m41852r1 = LoginFragment.m41852r1();
                return m41852r1;
            }
        });
    }

    /* renamed from: s1 */
    public final void m41902s1() {
        if (m41890S0().checkNetwork()) {
            Integer value = m41890S0().getLoginType().getValue();
            if (value != null && value.intValue() == 6) {
                m41903t1();
            } else {
                m41904v1();
            }
        }
    }

    public final void setThirdPartySignRequestCodes(@NotNull List<Integer> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.thirdPartySignRequestCodes = list;
    }

    /* renamed from: t1 */
    public final void m41903t1() {
        String str = m41890S0().getPhoneOrEmail().get();
        Intrinsics.checkNotNull(str);
        if (str.length() == 0) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.invalid_phone_or_email, false, 2, (Object) null);
            return;
        }
        String str2 = m41890S0().getPwdOrVerification().get();
        Intrinsics.checkNotNull(str2);
        if (str2.length() == 0) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.login_password_hint, false, 2, (Object) null);
            return;
        }
        if (Intrinsics.areEqual(m41890S0().isAgreed().get(), Boolean.FALSE)) {
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            new LoginPolicyDialog(requireContext, new Function0<Unit>() { // from class: com.onyx.galaxy.note.account.ui.LoginFragment$loginByPwd$1
                {
                    super(0);
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    LoginViewModel m41890S0;
                    m41890S0 = LoginFragment.this.m41890S0();
                    m41890S0.isAgreed().set(Boolean.TRUE);
                    LoginFragment.this.m41902s1();
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            }).show();
        } else {
            LoginViewModel.reportViewOrClickEvent$default(m41890S0(), OnyxStatisticConstant.ID_LOGIN_CLICK, null, 2, null);
            LoginViewModel m41890S0 = m41890S0();
            FragmentActivity requireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
            m41890S0.loginByPwd(requireActivity, new Function0<Unit>() { // from class: com.onyx.galaxy.note.account.ui.LoginFragment$loginByPwd$2
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
                    LoginFragment.this.m41868E1();
                }
            }).doOnError(new C10714b()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.e4j
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    LoginFragment.m41856u1(LoginFragment.this);
                }
            }).subscribe();
        }
    }

    /* renamed from: v1 */
    public final void m41904v1() {
        String str = m41890S0().getPhoneOrEmail().get();
        String value = m41890S0().getAreaCode().getValue();
        Integer value2 = m41890S0().getLoginType().getValue();
        String str2 = m41890S0().getPwdOrVerification().get();
        Debug debug = Debug.INSTANCE;
        debug.m32035d(LoginFragment.class, "phoneOrEmail:" + str + ";areaCode:" + value + ";verifyCode:" + str2 + ";loginType:" + value2 + ';', new Object[0]);
        if (value2 != null && value2.intValue() == 1) {
            if (!m41890S0().isPhoneNumberValid()) {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.invalid_phone_number, false, 2, (Object) null);
                return;
            } else if (!m41890S0().isAreaCodeValid()) {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.invalid_area_code, false, 2, (Object) null);
                return;
            }
        } else {
            if (value2 == null || value2.intValue() != 2) {
                debug.m32035d(LoginFragment.class, "login loginType:" + m41890S0().getLoginType().getValue(), new Object[0]);
                return;
            }
            if (!m41890S0().isEmailValid()) {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.invalid_email_addr, false, 2, (Object) null);
                return;
            }
        }
        if (!m41890S0().isVerifyCodeValid()) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.invalid_verify_code, false, 2, (Object) null);
            return;
        }
        if (Intrinsics.areEqual(m41890S0().isAgreed().get(), Boolean.FALSE)) {
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            new LoginPolicyDialog(requireContext, new Function0<Unit>() { // from class: com.onyx.galaxy.note.account.ui.LoginFragment$loginByVerifyCode$1
                {
                    super(0);
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    LoginViewModel m41890S0;
                    m41890S0 = LoginFragment.this.m41890S0();
                    m41890S0.isAgreed().set(Boolean.TRUE);
                    LoginFragment.this.m41902s1();
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            }).show();
        } else {
            LoginViewModel.reportViewOrClickEvent$default(m41890S0(), OnyxStatisticConstant.ID_LOGIN_CLICK, null, 2, null);
            m41868E1();
            m41890S0().loginByVerifyCode().doOnError(new C10715c()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.d4j
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    LoginFragment.m41859w1(LoginFragment.this);
                }
            }).subscribe();
        }
    }

    /* renamed from: x1 */
    public final void m41905x1(AuthResultArgs result) {
        m41877J0(m41890S0().microsoftAuthLogin(result.getAuthId(), result.getIdToken(), result.getAuthToken()));
    }

    /* renamed from: y1 */
    public final void m41906y1() {
        Integer value = m41890S0().getLoginType().getValue();
        if (value != null && value.intValue() == 2 && AppConfigManager.isSupportLoginType$default(AppConfigManager.INSTANCE, 1, null, 2, null)) {
            m41873H0();
            return;
        }
        LoginType loginType = LoginType.INSTANCE;
        Intrinsics.checkNotNull(value);
        if (loginType.isLoginByThirdParty(value.intValue()) && m41865C1()) {
            m41867E0();
        } else {
            m41894W0();
        }
    }

    /* renamed from: z1 */
    public final void m41907z1() {
        if (m41889R0().contains(m41888Q0())) {
            String m41888Q0 = m41888Q0();
            int hashCode = m41888Q0.hashCode();
            if (hashCode == -694830161) {
                if (m41888Q0.equals(NavigationType.MEMBER_CENTER)) {
                    Navigator.navigate$default(Navigator.INSTANCE, NavigationType.MEMBER_CENTER, m41887P0(), null, 4, null);
                    return;
                }
                return;
            }
            if (hashCode == 120215218) {
                if (m41888Q0.equals(NavigationType.VIP_CENTER)) {
                    Navigator.navigateToVipCenter$default(Navigator.INSTANCE, null, 1, null);
                }
            } else if (hashCode == 1830861979 && m41888Q0.equals(NavigationType.LIBRARY)) {
                Navigator.navigateToDataRepository$default(Navigator.INSTANCE, null, 1, null);
            }
        }
    }
}
