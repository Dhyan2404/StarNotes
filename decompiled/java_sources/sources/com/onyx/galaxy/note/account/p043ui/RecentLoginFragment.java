package com.onyx.galaxy.note.account.p043ui;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.Observer;
import androidx.navigation.NavDirections;
import com.blankj.utilcode.util.LogUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.android.sdk.data.account.bean.AuthResultArgs;
import com.onyx.android.sdk.data.account.bean.LoginType;
import com.onyx.android.sdk.data.account.event.FinishBeforeLogin;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.common.data.ProviderCertificate;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.common.exception.ExpcetionsKt;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.device.CommonBaseDevice;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.statistics.AuthResultListener;
import com.onyx.android.sdk.statistics.StatisticsManager;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.action.ClearLogoffAccountAction;
import com.onyx.galaxy.note.account.p043ui.RecentLoginFragment;
import com.onyx.galaxy.note.account.p043ui.RecentLoginFragment$mBackPressedCallback$2;
import com.onyx.galaxy.note.account.view.dialog.LoginAccountListDialog;
import com.onyx.galaxy.note.account.view.dialog.WechatLoginDialog;
import com.onyx.galaxy.note.account.viewmodel.LoginViewModel;
import com.onyx.galaxy.note.category.p044ui.NoteListActivity;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.data.AppConfigManager;
import com.onyx.galaxy.note.common.data.NavigationType;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.LoginLoadingDialogFragment;
import com.onyx.galaxy.note.databinding.FragmentRecentLoginBinding;
import com.onyx.galaxy.note.editor.view.popup.TipsPopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.usercenter.p049ui.UserCenterActivity;
import com.onyx.galaxy.note.utils.LoginUtils;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.schedulers.Timed;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000º\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\b\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 g2\u00020\u0001:\u0001gB\u0007¢\u0006\u0004\be\u0010fJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\u0016\u0010\n\u001a\u00020\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\u0012\u0010\r\u001a\u00020\u00022\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\b\u0010\u000f\u001a\u00020\u0002H\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\b\u0010\u0013\u001a\u00020\u0012H\u0002J\b\u0010\u0014\u001a\u00020\u0012H\u0002J\b\u0010\u0016\u001a\u00020\u0015H\u0002J\b\u0010\u0017\u001a\u00020\u0002H\u0002J\b\u0010\u0018\u001a\u00020\u000bH\u0002J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u000bH\u0002J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\bH\u0002J\u0010\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\bH\u0002J\u0010\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\bH\u0002J\"\u0010$\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f2\b\u0010#\u001a\u0004\u0018\u00010\"H\u0002J\u0010\u0010'\u001a\u00020\u00022\u0006\u0010&\u001a\u00020%H\u0002J\u0010\u0010(\u001a\u00020\u00022\u0006\u0010&\u001a\u00020%H\u0002J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010)\u001a\u00020%H\u0002J\u0016\u0010.\u001a\u00020\u00022\f\u0010-\u001a\b\u0012\u0004\u0012\u00020,0+H\u0002J\b\u0010/\u001a\u00020\u0002H\u0002J\b\u00100\u001a\u00020\u0002H\u0002J\u0010\u00103\u001a\u00020\u00022\u0006\u00102\u001a\u000201H\u0002J\b\u00104\u001a\u00020\u0002H\u0002J\b\u00105\u001a\u00020\u0002H\u0002J\b\u00106\u001a\u00020\u0002H\u0002J\u0010\u00108\u001a\u00020\u00022\u0006\u00107\u001a\u00020\u000bH\u0002J\b\u00109\u001a\u00020\u0002H\u0002J\u001c\u0010;\u001a\u00020\u00022\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0:H\u0002J\b\u0010<\u001a\u00020\u0002H\u0002J\b\u0010=\u001a\u00020\u0002H\u0002J\u0012\u0010@\u001a\u00020\u00022\b\u0010?\u001a\u0004\u0018\u00010>H\u0016J\b\u0010A\u001a\u00020\u0002H\u0016J$\u0010G\u001a\u00020F2\u0006\u0010C\u001a\u00020B2\b\u0010E\u001a\u0004\u0018\u00010D2\b\u0010?\u001a\u0004\u0018\u00010>H\u0016J\u001a\u0010I\u001a\u00020\u00022\u0006\u0010H\u001a\u00020F2\b\u0010?\u001a\u0004\u0018\u00010>H\u0016J\"\u0010J\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f2\b\u0010#\u001a\u0004\u0018\u00010\"H\u0016R\u0016\u0010M\u001a\u00020K8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b=\u0010LR\u0018\u0010O\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010NR\u001b\u0010T\u001a\u00020P8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b5\u0010Q\u001a\u0004\bR\u0010SR\u0018\u0010W\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010VR\u0014\u0010Z\u001a\u00020X8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u0010YR'\u0010`\u001a\u0015\u0012\f\u0012\n \\*\u0004\u0018\u00010\u00150\u00150[¢\u0006\u0002\b]8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b^\u0010_R\u001b\u0010d\u001a\u00020a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b;\u0010Q\u001a\u0004\bb\u0010c¨\u0006h"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "T0", "N0", "L0", "M0", "", "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", "accountList", "g1", "", "url", "V0", "U0", "Y0", "w0", "v0", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "B0", "A0", "", "b1", "t0", "D0", "type", "u0", "accountModel", "X0", "a1", "Z0", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "J0", "Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;", "signInCredential", "K0", "G0", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "W0", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/data/account/AccountDataBundle;", "accountDataBundleObservable", "y0", "e1", "x0", "", "t", "H0", "I0", "f1", "h1", "code", "k1", "F0", "", "j1", "c1", "d1", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "onResume", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "onActivityResult", "Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;", "Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;", "binding", "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", "lastAccountModel", "Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;", "Lkotlin/Lazy;", "E0", "()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;", "viewModel", "Landroid/app/Dialog;", "Landroid/app/Dialog;", "wechatLoginDialog", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", "i1", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "backButtonClickSource", "Landroidx/activity/OnBackPressedCallback;", "C0", "()Landroidx/activity/OnBackPressedCallback;", "mBackPressedCallback", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRecentLoginFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentLoginFragment.kt\ncom/onyx/galaxy/note/account/ui/RecentLoginFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,594:1\n347#2:595\n347#2:596\n256#2,2:597\n256#2,2:599\n254#2:601\n*S KotlinDebug\n*F\n+ 1 RecentLoginFragment.kt\ncom/onyx/galaxy/note/account/ui/RecentLoginFragment\n*L\n150#1:595\n151#1:596\n243#1:597,2\n244#1:599,2\n576#1:601\n*E\n"})
/* loaded from: classes17.dex */
public final class RecentLoginFragment extends BaseFragment {
    public static final int SCREEN_COMPACT = 500;

    /* renamed from: d1, reason: from kotlin metadata */
    public FragmentRecentLoginBinding binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @Nullable
    public OnyxAccountModel lastAccountModel;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewModel;

    /* renamed from: g1, reason: from kotlin metadata */
    @Nullable
    public Dialog wechatLoginDialog;

    /* renamed from: h1, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    /* renamed from: i1, reason: from kotlin metadata */
    @NotNull
    public final PublishSubject<Boolean> backButtonClickSource;

    /* renamed from: j1, reason: from kotlin metadata */
    @NotNull
    public final Lazy mBackPressedCallback;

    /* renamed from: com.onyx.galaxy.note.account.ui.RecentLoginFragment$a */
    /* loaded from: classes9.dex */
    public static final class C10721a<T> implements Consumer {
        public C10721a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            String stackTraceToString;
            Intrinsics.checkNotNullParameter(it2, "it");
            RecentLoginFragment.this.m41948H0(it2);
            String simpleName = RecentLoginFragment.this.getClass().getSimpleName();
            StringBuilder sb = new StringBuilder();
            sb.append("execute login by third party failed,error:");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(it2);
            sb.append(stackTraceToString);
            LogUtils.file(simpleName, sb.toString());
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.ui.RecentLoginFragment$b */
    /* loaded from: classes9.dex */
    public static final class C10722b implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f53489a;

        public C10722b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f53489a = function;
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
            return this.f53489a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f53489a.invoke(obj);
        }
    }

    public RecentLoginFragment() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LoginViewModel>() { // from class: com.onyx.galaxy.note.account.ui.RecentLoginFragment$viewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LoginViewModel invoke() {
                return (LoginViewModel) FragmentKt.getViewModel(RecentLoginFragment.this, LoginViewModel.class);
            }
        });
        this.viewModel = lazy;
        this.compositeDisposable = new CompositeDisposable();
        PublishSubject<Boolean> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.backButtonClickSource = create;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<RecentLoginFragment$mBackPressedCallback$2.C107261>() { // from class: com.onyx.galaxy.note.account.ui.RecentLoginFragment$mBackPressedCallback$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.onyx.galaxy.note.account.ui.RecentLoginFragment$mBackPressedCallback$2$1] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final C107261 invoke() {
                final RecentLoginFragment recentLoginFragment = RecentLoginFragment.this;
                return new OnBackPressedCallback() { // from class: com.onyx.galaxy.note.account.ui.RecentLoginFragment$mBackPressedCallback$2.1
                    {
                        super(true);
                    }

                    @Override // androidx.activity.OnBackPressedCallback
                    public void handleOnBackPressed() {
                        PublishSubject publishSubject;
                        publishSubject = RecentLoginFragment.this.backButtonClickSource;
                        publishSubject.onNext(Boolean.TRUE);
                    }
                };
            }
        });
        this.mBackPressedCallback = lazy2;
    }

    /* renamed from: O0 */
    public static final void m41925O0(RecentLoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        OnyxAccountModel onyxAccountModel = this$0.lastAccountModel;
        if (onyxAccountModel != null) {
            this$0.m41959X0(onyxAccountModel);
        }
    }

    /* renamed from: P0 */
    public static final void m41926P0(RecentLoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Context context = this$0.getContext();
        if (context != null) {
            ContextExtKt.startActivity(context, LoginActivity.class);
        }
    }

    /* renamed from: Q0 */
    public static final void m41927Q0(RecentLoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m41964c1();
    }

    /* renamed from: R0 */
    public static final void m41928R0(RecentLoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NavDirections gotoSettingsHelpAndFeedbackFragment = RecentLoginFragmentDirections.gotoSettingsHelpAndFeedbackFragment();
        Intrinsics.checkNotNullExpressionValue(gotoSettingsHelpAndFeedbackFragment, "gotoSettingsHelpAndFeedbackFragment(...)");
        androidx.navigation.fragment.FragmentKt.findNavController(this$0).navigate(gotoSettingsHelpAndFeedbackFragment);
    }

    /* renamed from: S0 */
    public static final void m41929S0(RecentLoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m41965d1();
    }

    /* renamed from: i1 */
    public static final void m41930i1(RecentLoginFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m41946F0();
    }

    /* renamed from: l1 */
    public static final void m41932l1(RecentLoginFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Dialog dialog = this$0.wechatLoginDialog;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    /* renamed from: z0 */
    public static final void m41940z0(RecentLoginFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m41976x0();
    }

    /* renamed from: A0 */
    public final BooleanOption m41941A0() {
        return new BooleanOption(MMKVUtils.INSTANCE.get(), LoginFragment.KEY_ACCOUNT_BIND_EMAIL_PREFIX + AccountDataBundle.INSTANCE.getAccountId(), false);
    }

    /* renamed from: B0 */
    public final BooleanOption m41942B0() {
        return new BooleanOption(MMKVUtils.INSTANCE.get(), LoginFragment.KEY_ACCOUNT_BIND_PHONE_PREFIX + AccountDataBundle.INSTANCE.getAccountId(), false);
    }

    /* renamed from: C0 */
    public final OnBackPressedCallback m41943C0() {
        return (OnBackPressedCallback) this.mBackPressedCallback.getValue();
    }

    /* renamed from: D0 */
    public final String m41944D0() {
        String stringExtra = requireActivity().getIntent().getStringExtra(NavigationType.KEY_NAV_TYPE);
        return stringExtra == null ? "" : stringExtra;
    }

    /* renamed from: E0 */
    public final LoginViewModel m41945E0() {
        return (LoginViewModel) this.viewModel.getValue();
    }

    /* renamed from: F0 */
    public final void m41946F0() {
        StatisticsManager statisticsManager = StatisticsBundle.INSTANCE.getStatisticsManager();
        Context applicationContext = requireContext().getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        statisticsManager.getWeChatInfo(applicationContext, requireActivity, new AuthResultListener() { // from class: com.onyx.galaxy.note.account.ui.RecentLoginFragment$getWeChatInfo$1
            @Override // com.onyx.android.sdk.statistics.AuthResultListener
            public void onCancel(int p1) {
                Debug.INSTANCE.m32044e(RecentLoginFragment.class, "wechat login onCancel", new Object[0]);
            }

            @Override // com.onyx.android.sdk.statistics.AuthResultListener
            public void onComplete(int p1, @NotNull Map<String, String> data) {
                Intrinsics.checkNotNullParameter(data, "data");
                Debug.INSTANCE.m32044e(RecentLoginFragment.class, "wechat login onComplete:" + JSONUtils.INSTANCE.toJson(data), new Object[0]);
                RecentLoginFragment.this.m41970j1(data);
            }

            @Override // com.onyx.android.sdk.statistics.AuthResultListener
            public void onError(int p1, @Nullable Throwable t) {
                Debug.INSTANCE.m32044e(RecentLoginFragment.class, "wechat login error:" + t, new Object[0]);
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.login_fail, false, 2, (Object) null);
            }

            @Override // com.onyx.android.sdk.statistics.AuthResultListener
            public void onStart() {
                Debug.INSTANCE.m32044e(RecentLoginFragment.class, "wechat login onStart", new Object[0]);
            }
        });
    }

    /* renamed from: G0 */
    public final void m41947G0(AuthResultArgs signInCredential) {
        m41977y0(m41945E0().googleAuthLogin(signInCredential.getIdToken(), signInCredential.getAuthId()));
    }

    /* renamed from: H0 */
    public final void m41948H0(Throwable t) {
        if (ExpcetionsKt.isNetworkErrorException(t)) {
            ToastUtils.INSTANCE.show(C10651R.string.network_error_hint, true);
        } else if (t instanceof OnyxException) {
            ToastUtils.INSTANCE.show(OnyxErrorHandler.INSTANCE.errorTypeToMessage((OnyxException) t), true);
        } else {
            ToastUtils.INSTANCE.show(C10651R.string.login_fail, true);
        }
    }

    /* renamed from: I0 */
    public final void m41949I0() {
        Context context = getContext();
        if (context != null) {
            ContextExtKt.startActivity(context, NoteListActivity.class);
        }
        FragmentKt.finishActivity(this);
    }

    /* renamed from: J0 */
    public final void m41950J0(int requestCode, int resultCode, Intent data) {
        if (m41945E0().getThirdPartySignRequestCodes().contains(Integer.valueOf(requestCode))) {
            FragmentKt.requireContextSafety(this, new RecentLoginFragment$handleThirdPartyLogin$1(this, data, requestCode));
        }
    }

    /* renamed from: K0 */
    public final void m41951K0(AuthResultArgs signInCredential) {
        String authCode = signInCredential.getAuthCode();
        if (authCode.length() == 0) {
            return;
        }
        m41977y0(m41945E0().huaweiAuthLogin(authCode));
    }

    /* renamed from: L0 */
    public final void m41952L0() {
        OnBackPressedDispatcher onBackPressedDispatcher = requireActivity().getOnBackPressedDispatcher();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        onBackPressedDispatcher.addCallback(viewLifecycleOwner, m41943C0());
        getLifecycle().addObserver(new DefaultLifecycleObserver() { // from class: com.onyx.galaxy.note.account.ui.RecentLoginFragment$initBackDebounce$1

            /* renamed from: com.onyx.galaxy.note.account.ui.RecentLoginFragment$initBackDebounce$1$a */
            /* loaded from: classes9.dex */
            public static final class C10723a<T> implements Consumer {

                /* renamed from: e */
                public static final C10723a<T> f53492e = new C10723a<>();

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(Boolean bool) {
                    ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.exit_app, false, 2, (Object) null);
                }
            }

            /* renamed from: com.onyx.galaxy.note.account.ui.RecentLoginFragment$initBackDebounce$1$b */
            /* loaded from: classes9.dex */
            public static final class C10724b<T> implements Predicate {

                /* renamed from: e */
                public static final C10724b<T> f53493e = new C10724b<>();

                @Override // io.reactivex.rxjava3.functions.Predicate
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final boolean test(@NotNull Timed<Boolean> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return it2.time() < 1500;
                }
            }

            /* renamed from: com.onyx.galaxy.note.account.ui.RecentLoginFragment$initBackDebounce$1$c */
            /* loaded from: classes9.dex */
            public static final class C10725c<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ RecentLoginFragment f53494e;

                public C10725c(RecentLoginFragment recentLoginFragment) {
                    this.f53494e = recentLoginFragment;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull Timed<Boolean> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    this.f53494e.requireActivity().finish();
                }
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public void onPause(@NotNull LifecycleOwner owner) {
                CompositeDisposable compositeDisposable;
                Intrinsics.checkNotNullParameter(owner, "owner");
                super.onPause(owner);
                compositeDisposable = RecentLoginFragment.this.compositeDisposable;
                compositeDisposable.clear();
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public void onResume(@NotNull LifecycleOwner owner) {
                PublishSubject publishSubject;
                CompositeDisposable compositeDisposable;
                Intrinsics.checkNotNullParameter(owner, "owner");
                super.onResume(owner);
                publishSubject = RecentLoginFragment.this.backButtonClickSource;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                Disposable subscribe = publishSubject.debounce(100L, timeUnit).observeOn(AndroidSchedulers.mainThread()).doOnNext(C10723a.f53492e).timeInterval(timeUnit).skip(1L).filter(C10724b.f53493e).subscribe(new C10725c(RecentLoginFragment.this));
                Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
                compositeDisposable = RecentLoginFragment.this.compositeDisposable;
                compositeDisposable.add(subscribe);
            }
        });
    }

    /* renamed from: M0 */
    public final void m41953M0() {
        RxBaseAction.execute$default(new ClearLogoffAccountAction(), null, null, null, 7, null);
        AccountDataBundle accountDataBundle = AccountDataBundle.INSTANCE;
        accountDataBundle.loadRecentLoginAccountList();
        accountDataBundle.getLocalAccountList().observe(getViewLifecycleOwner(), new C10722b(new Function1<List<? extends OnyxAccountModel>, Unit>() { // from class: com.onyx.galaxy.note.account.ui.RecentLoginFragment$initData$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends OnyxAccountModel> list) {
                invoke2((List<OnyxAccountModel>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<OnyxAccountModel> list) {
                RecentLoginFragment recentLoginFragment = RecentLoginFragment.this;
                Intrinsics.checkNotNull(list);
                recentLoginFragment.m41968g1(list);
            }
        }));
    }

    /* renamed from: N0 */
    public final void m41954N0() {
        m41952L0();
        FragmentRecentLoginBinding fragmentRecentLoginBinding = this.binding;
        FragmentRecentLoginBinding fragmentRecentLoginBinding2 = null;
        if (fragmentRecentLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRecentLoginBinding = null;
        }
        TintTextView tvLogin = fragmentRecentLoginBinding.tvLogin;
        Intrinsics.checkNotNullExpressionValue(tvLogin, "tvLogin");
        ViewKt.click$default(tvLogin, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.gel
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RecentLoginFragment.m41925O0(RecentLoginFragment.this, view);
            }
        }, 1, null);
        FragmentRecentLoginBinding fragmentRecentLoginBinding3 = this.binding;
        if (fragmentRecentLoginBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRecentLoginBinding3 = null;
        }
        TintTextView tvLoginOther = fragmentRecentLoginBinding3.tvLoginOther;
        Intrinsics.checkNotNullExpressionValue(tvLoginOther, "tvLoginOther");
        ViewKt.click$default(tvLoginOther, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hel
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RecentLoginFragment.m41926P0(RecentLoginFragment.this, view);
            }
        }, 1, null);
        FragmentRecentLoginBinding fragmentRecentLoginBinding4 = this.binding;
        if (fragmentRecentLoginBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRecentLoginBinding4 = null;
        }
        TintLinearLayout llyAccountList = fragmentRecentLoginBinding4.llyAccountList;
        Intrinsics.checkNotNullExpressionValue(llyAccountList, "llyAccountList");
        ViewKt.click$default(llyAccountList, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.iel
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RecentLoginFragment.m41927Q0(RecentLoginFragment.this, view);
            }
        }, 1, null);
        FragmentRecentLoginBinding fragmentRecentLoginBinding5 = this.binding;
        if (fragmentRecentLoginBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRecentLoginBinding5 = null;
        }
        fragmentRecentLoginBinding5.llyFeedback.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.jel
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RecentLoginFragment.m41928R0(RecentLoginFragment.this, view);
            }
        });
        FragmentRecentLoginBinding fragmentRecentLoginBinding6 = this.binding;
        if (fragmentRecentLoginBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRecentLoginBinding6 = null;
        }
        TintLinearLayout llyDataTips = fragmentRecentLoginBinding6.llyDataTips;
        Intrinsics.checkNotNullExpressionValue(llyDataTips, "llyDataTips");
        ViewKt.click$default(llyDataTips, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.kel
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RecentLoginFragment.m41929S0(RecentLoginFragment.this, view);
            }
        }, 1, null);
        FragmentRecentLoginBinding fragmentRecentLoginBinding7 = this.binding;
        if (fragmentRecentLoginBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentRecentLoginBinding2 = fragmentRecentLoginBinding7;
        }
        View root = fragmentRecentLoginBinding2.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        com.onyx.android.sdk.base.extension.ViewKt.addOnLayoutChangeListener(root, new Function2<Rect, Rect, Unit>() { // from class: com.onyx.galaxy.note.account.ui.RecentLoginFragment$initListener$6
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
                FragmentRecentLoginBinding fragmentRecentLoginBinding8;
                FragmentRecentLoginBinding fragmentRecentLoginBinding9;
                FragmentRecentLoginBinding fragmentRecentLoginBinding10;
                FragmentRecentLoginBinding fragmentRecentLoginBinding11;
                FragmentRecentLoginBinding fragmentRecentLoginBinding12;
                Intrinsics.checkNotNullParameter(newRect, "newRect");
                Intrinsics.checkNotNullParameter(oldRect, "oldRect");
                if (Intrinsics.areEqual(oldRect, newRect)) {
                    return;
                }
                CommonBaseDevice currentDevice = DeviceFactory.INSTANCE.getCurrentDevice();
                FragmentActivity requireActivity = RecentLoginFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                boolean isSmallScreen = currentDevice.isSmallScreen(requireActivity);
                fragmentRecentLoginBinding8 = RecentLoginFragment.this.binding;
                FragmentRecentLoginBinding fragmentRecentLoginBinding13 = null;
                if (fragmentRecentLoginBinding8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentRecentLoginBinding8 = null;
                }
                TintTextView tvDataTips = fragmentRecentLoginBinding8.tvDataTips;
                Intrinsics.checkNotNullExpressionValue(tvDataTips, "tvDataTips");
                if ((tvDataTips.getVisibility() == 0) == isSmallScreen) {
                    fragmentRecentLoginBinding9 = RecentLoginFragment.this.binding;
                    if (fragmentRecentLoginBinding9 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        fragmentRecentLoginBinding9 = null;
                    }
                    TintTextView tvDataTips2 = fragmentRecentLoginBinding9.tvDataTips;
                    Intrinsics.checkNotNullExpressionValue(tvDataTips2, "tvDataTips");
                    tvDataTips2.setVisibility(isSmallScreen ^ true ? 0 : 8);
                    fragmentRecentLoginBinding10 = RecentLoginFragment.this.binding;
                    if (fragmentRecentLoginBinding10 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        fragmentRecentLoginBinding10 = null;
                    }
                    TintTextView tvHelpAndFeedback = fragmentRecentLoginBinding10.tvHelpAndFeedback;
                    Intrinsics.checkNotNullExpressionValue(tvHelpAndFeedback, "tvHelpAndFeedback");
                    tvHelpAndFeedback.setVisibility(isSmallScreen ^ true ? 0 : 8);
                    fragmentRecentLoginBinding11 = RecentLoginFragment.this.binding;
                    if (fragmentRecentLoginBinding11 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        fragmentRecentLoginBinding11 = null;
                    }
                    fragmentRecentLoginBinding11.llyDataTips.requestLayout();
                    fragmentRecentLoginBinding12 = RecentLoginFragment.this.binding;
                    if (fragmentRecentLoginBinding12 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        fragmentRecentLoginBinding13 = fragmentRecentLoginBinding12;
                    }
                    fragmentRecentLoginBinding13.llyFeedback.requestLayout();
                }
            }
        });
    }

    /* renamed from: T0 */
    public final void m41955T0() {
        FragmentRecentLoginBinding fragmentRecentLoginBinding = this.binding;
        if (fragmentRecentLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRecentLoginBinding = null;
        }
        View root = fragmentRecentLoginBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        ViewKt.applyPaddingOnStatusBarChanges(root, requireActivity);
        FragmentRecentLoginBinding fragmentRecentLoginBinding2 = this.binding;
        if (fragmentRecentLoginBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRecentLoginBinding2 = null;
        }
        TintLinearLayout llyFeedback = fragmentRecentLoginBinding2.llyFeedback;
        Intrinsics.checkNotNullExpressionValue(llyFeedback, "llyFeedback");
        FragmentRecentLoginBinding fragmentRecentLoginBinding3 = this.binding;
        if (fragmentRecentLoginBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRecentLoginBinding3 = null;
        }
        TintLinearLayout llyFeedback2 = fragmentRecentLoginBinding3.llyFeedback;
        Intrinsics.checkNotNullExpressionValue(llyFeedback2, "llyFeedback");
        ViewGroup.LayoutParams layoutParams = llyFeedback2.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        ViewKt.adjustStatusBarMargin(llyFeedback, marginLayoutParams != null ? marginLayoutParams.topMargin : 0);
        FragmentRecentLoginBinding fragmentRecentLoginBinding4 = this.binding;
        if (fragmentRecentLoginBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRecentLoginBinding4 = null;
        }
        TintLinearLayout llyDataTips = fragmentRecentLoginBinding4.llyDataTips;
        Intrinsics.checkNotNullExpressionValue(llyDataTips, "llyDataTips");
        FragmentRecentLoginBinding fragmentRecentLoginBinding5 = this.binding;
        if (fragmentRecentLoginBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRecentLoginBinding5 = null;
        }
        TintLinearLayout llyFeedback3 = fragmentRecentLoginBinding5.llyFeedback;
        Intrinsics.checkNotNullExpressionValue(llyFeedback3, "llyFeedback");
        ViewGroup.LayoutParams layoutParams2 = llyFeedback3.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
        ViewKt.adjustStatusBarMargin(llyDataTips, marginLayoutParams2 != null ? marginLayoutParams2.topMargin : 0);
    }

    /* renamed from: U0 */
    public final void m41956U0() {
        m41945E0().isLoginFinish().observe(getViewLifecycleOwner(), new C10722b(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.account.ui.RecentLoginFragment$initViewModel$1
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
                    RecentLoginFragment.this.m41960Y0();
                }
            }
        }));
        m41945E0().isAgreed().set(Boolean.TRUE);
    }

    /* renamed from: V0 */
    public final void m41957V0(String url) {
        FragmentRecentLoginBinding fragmentRecentLoginBinding = null;
        if (url == null || url.length() == 0) {
            FragmentRecentLoginBinding fragmentRecentLoginBinding2 = this.binding;
            if (fragmentRecentLoginBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentRecentLoginBinding = fragmentRecentLoginBinding2;
            }
            fragmentRecentLoginBinding.ivUserAvatar.setImageDrawable(ResManager.INSTANCE.getDrawable(C10651R.drawable.icon_avatar));
            return;
        }
        FragmentRecentLoginBinding fragmentRecentLoginBinding3 = this.binding;
        if (fragmentRecentLoginBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRecentLoginBinding3 = null;
        }
        RequestBuilder error = Glide.with(fragmentRecentLoginBinding3.ivUserAvatar).load(url).placeholder(C10651R.drawable.icon_avatar).error(C10651R.drawable.icon_avatar);
        FragmentRecentLoginBinding fragmentRecentLoginBinding4 = this.binding;
        if (fragmentRecentLoginBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentRecentLoginBinding = fragmentRecentLoginBinding4;
        }
        error.into(fragmentRecentLoginBinding.ivUserAvatar);
    }

    /* renamed from: W0 */
    public final void m41958W0(AuthResultArgs result) {
        m41977y0(m41945E0().microsoftAuthLogin(result.getAuthId(), result.getIdToken(), result.getAuthToken()));
    }

    /* renamed from: X0 */
    public final void m41959X0(OnyxAccountModel accountModel) {
        FragmentRecentLoginBinding fragmentRecentLoginBinding = this.binding;
        if (fragmentRecentLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRecentLoginBinding = null;
        }
        ViewCompat.setOnApplyWindowInsetsListener(fragmentRecentLoginBinding.getRoot(), null);
        if (LoginType.INSTANCE.isLoginByThirdParty(accountModel.getLoginType())) {
            m41962a1(accountModel);
        } else {
            m41961Z0(accountModel);
        }
    }

    /* renamed from: Y0 */
    public final void m41960Y0() {
        Integer value = m41945E0().getLoginType().getValue();
        if (value != null && value.intValue() == 2 && AppConfigManager.isSupportLoginType$default(AppConfigManager.INSTANCE, 1, null, 2, null)) {
            m41975w0();
            return;
        }
        LoginType loginType = LoginType.INSTANCE;
        Intrinsics.checkNotNull(value);
        if (loginType.isLoginByThirdParty(value.intValue()) && m41963b1()) {
            m41972t0();
        } else {
            m41949I0();
        }
    }

    /* renamed from: Z0 */
    public final void m41961Z0(OnyxAccountModel accountModel) {
        String phone;
        int loginType = accountModel.getLoginType();
        if (loginType == 1) {
            phone = accountModel.getPhone();
        } else if (loginType == 2) {
            phone = accountModel.getEmail();
        } else if (loginType != 6) {
            phone = "";
        } else {
            phone = accountModel.getLoginAccount();
            if (phone == null && (phone = accountModel.getPhone()) == null) {
                phone = accountModel.getEmail();
            }
        }
        Intent intent = new Intent(getContext(), (Class<?>) LoginActivity.class);
        intent.putExtra(LoginFragment.KEY_LOGIN_TYPE, accountModel.getLoginType());
        intent.putExtra(LoginFragment.KEY_LOGIN_ACCOUNT, phone);
        startActivity(intent);
    }

    /* renamed from: a1 */
    public final void m41962a1(OnyxAccountModel accountModel) {
        int loginType = accountModel.getLoginType();
        if (loginType == 3) {
            m41945E0().huaweiAuth(this);
            return;
        }
        if (loginType == 4 || loginType == 5) {
            m41967f1();
        } else if (loginType == 8) {
            m41945E0().googleAuth(this);
        } else {
            if (loginType != 9) {
                return;
            }
            m41945E0().microsoftAuth(this);
        }
    }

    /* renamed from: b1 */
    public final boolean m41963b1() {
        String accountBindPrimaryType = AppConfigManager.INSTANCE.getAccountBindPrimaryType();
        return (Intrinsics.areEqual(accountBindPrimaryType, "email") && !AccountDataBundle.INSTANCE.hasEmail()) || (Intrinsics.areEqual(accountBindPrimaryType, "phone") && !AccountDataBundle.INSTANCE.hasPhone());
    }

    /* renamed from: c1 */
    public final void m41964c1() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        final LoginAccountListDialog loginAccountListDialog = new LoginAccountListDialog(requireContext);
        loginAccountListDialog.setListener(new LoginAccountListDialog.LoginAccountListener() { // from class: com.onyx.galaxy.note.account.ui.RecentLoginFragment$showAccountListDialog$1
            @Override // com.onyx.galaxy.note.account.view.dialog.LoginAccountListDialog.LoginAccountListener
            public void onDelete(@NotNull OnyxAccountModel model) {
                Intrinsics.checkNotNullParameter(model, "model");
                AccountDataBundle.INSTANCE.loadRecentLoginAccountList();
            }

            @Override // com.onyx.galaxy.note.account.view.dialog.LoginAccountListDialog.LoginAccountListener
            public void onLogin(@NotNull OnyxAccountModel model) {
                Intrinsics.checkNotNullParameter(model, "model");
                RecentLoginFragment.this.m41959X0(model);
                loginAccountListDialog.dismiss();
            }
        });
        loginAccountListDialog.show();
    }

    /* renamed from: d1 */
    public final void m41965d1() {
        View view;
        String string = ResManager.INSTANCE.getString(C10651R.string.recent_login_data_tips);
        if (string == null) {
            string = "";
        }
        String str = string;
        FragmentRecentLoginBinding fragmentRecentLoginBinding = this.binding;
        FragmentRecentLoginBinding fragmentRecentLoginBinding2 = null;
        if (fragmentRecentLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRecentLoginBinding = null;
        }
        TintTextView tvDataTips = fragmentRecentLoginBinding.tvDataTips;
        Intrinsics.checkNotNullExpressionValue(tvDataTips, "tvDataTips");
        if (tvDataTips.getVisibility() == 0) {
            FragmentRecentLoginBinding fragmentRecentLoginBinding3 = this.binding;
            if (fragmentRecentLoginBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentRecentLoginBinding2 = fragmentRecentLoginBinding3;
            }
            view = fragmentRecentLoginBinding2.tvDataTips;
            Intrinsics.checkNotNull(view);
        } else {
            FragmentRecentLoginBinding fragmentRecentLoginBinding4 = this.binding;
            if (fragmentRecentLoginBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentRecentLoginBinding2 = fragmentRecentLoginBinding4;
            }
            view = fragmentRecentLoginBinding2.llyDataTips;
            Intrinsics.checkNotNull(view);
        }
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new TipsPopup(new TipsPopup.TipContext(requireContext, DockType.BOTTOM, str, view, DockType.TOP, 0, 32, null)).show(view);
    }

    /* renamed from: e1 */
    public final void m41966e1() {
        if (isAdded()) {
            m41976x0();
            LifecycleOwnerKt.getLifecycleScope(this).launchWhenResumed(new RecentLoginFragment$showLoginLoadingDialog$1(this, null));
        }
    }

    /* renamed from: f1 */
    public final void m41967f1() {
        if (m41945E0().checkAgreedPolicy()) {
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            WechatLoginDialog wechatLoginDialog = new WechatLoginDialog(requireContext, new RecentLoginFragment$showWeChatDialog$1(this), new RecentLoginFragment$showWeChatDialog$2(this));
            this.wechatLoginDialog = wechatLoginDialog;
            Intrinsics.checkNotNull(wechatLoginDialog);
            wechatLoginDialog.show();
        }
    }

    /* renamed from: g1 */
    public final void m41968g1(List<OnyxAccountModel> accountList) {
        Object firstOrNull;
        AccountDataBundle accountDataBundle = AccountDataBundle.INSTANCE;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) accountDataBundle.getRecentLoginLocalAccountList());
        OnyxAccountModel onyxAccountModel = (OnyxAccountModel) firstOrNull;
        if (onyxAccountModel == null) {
            accountDataBundle.getLocalAccountList().removeObservers(getViewLifecycleOwner());
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            ContextExtKt.startActivity(requireContext, LoginActivity.class);
            FragmentKt.finishActivity(this);
            return;
        }
        this.lastAccountModel = onyxAccountModel;
        FragmentRecentLoginBinding fragmentRecentLoginBinding = this.binding;
        FragmentRecentLoginBinding fragmentRecentLoginBinding2 = null;
        if (fragmentRecentLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRecentLoginBinding = null;
        }
        TintTextView tintTextView = fragmentRecentLoginBinding.tvAccount;
        LoginUtils loginUtils = LoginUtils.INSTANCE;
        tintTextView.setText(loginUtils.getLoginAccount(onyxAccountModel));
        FragmentRecentLoginBinding fragmentRecentLoginBinding3 = this.binding;
        if (fragmentRecentLoginBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRecentLoginBinding3 = null;
        }
        fragmentRecentLoginBinding3.ivLoginType.setImageDrawable(loginUtils.getLoginTypeIconDrawable(onyxAccountModel));
        FragmentRecentLoginBinding fragmentRecentLoginBinding4 = this.binding;
        if (fragmentRecentLoginBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRecentLoginBinding4 = null;
        }
        TintTextView tintTextView2 = fragmentRecentLoginBinding4.tvLastLoginAt;
        ResManager resManager = ResManager.INSTANCE;
        int i = C10651R.string.last_login_at;
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        tintTextView2.setText(resManager.getString(i, dateTimeUtil.formatDate(loginUtils.getLocalLoginAt(onyxAccountModel), dateTimeUtil.getDATE_FORMAT_YYYYMMDD_HHMM_2())));
        Drawable loginAccountRoleIconDrawable = loginUtils.getLoginAccountRoleIconDrawable(onyxAccountModel);
        FragmentRecentLoginBinding fragmentRecentLoginBinding5 = this.binding;
        if (fragmentRecentLoginBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRecentLoginBinding5 = null;
        }
        fragmentRecentLoginBinding5.ivUserRole.setImageDrawable(loginAccountRoleIconDrawable);
        FragmentRecentLoginBinding fragmentRecentLoginBinding6 = this.binding;
        if (fragmentRecentLoginBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRecentLoginBinding6 = null;
        }
        ImageView ivUserRole = fragmentRecentLoginBinding6.ivUserRole;
        Intrinsics.checkNotNullExpressionValue(ivUserRole, "ivUserRole");
        ivUserRole.setVisibility(loginAccountRoleIconDrawable != null ? 0 : 8);
        FragmentRecentLoginBinding fragmentRecentLoginBinding7 = this.binding;
        if (fragmentRecentLoginBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentRecentLoginBinding2 = fragmentRecentLoginBinding7;
        }
        TintTextView tvTips = fragmentRecentLoginBinding2.tvTips;
        Intrinsics.checkNotNullExpressionValue(tvTips, "tvTips");
        tvTips.setVisibility(onyxAccountModel.getLoginType() == 3 ? 0 : 8);
        m41957V0(onyxAccountModel.getAvatarUrl());
    }

    /* renamed from: h1 */
    public final void m41969h1() {
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        StatisticsManager statisticsManager = statisticsBundle.getStatisticsManager();
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        if (statisticsManager.isWechatInstallation(requireActivity) && m41945E0().checkNetwork()) {
            m41945E0().reportViewOrClickEvent(OnyxStatisticConstant.ID_LOGIN_VIEW, 4);
            m41945E0().reportViewOrClickEvent(OnyxStatisticConstant.ID_LOGIN_CLICK, 4);
            StatisticsManager statisticsManager2 = statisticsBundle.getStatisticsManager();
            Context applicationContext = requireContext().getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            RxBaseAction<ProviderCertificate> createInitSdkAction = statisticsManager2.createInitSdkAction(applicationContext);
            if (createInitSdkAction != null) {
                RxBaseAction.execute$default(createInitSdkAction, null, null, new Action() { // from class: com.sunia.HTREnginev2.mel
                    @Override // io.reactivex.rxjava3.functions.Action
                    public final void run() {
                        RecentLoginFragment.m41930i1(RecentLoginFragment.this);
                    }
                }, 3, null);
            }
        }
    }

    /* renamed from: j1 */
    public final void m41970j1(Map<String, String> data) {
        if (!data.isEmpty() && data.containsKey("openid") && data.containsKey("access_token") && data.containsKey("unionid")) {
            m41977y0(m41945E0().wechatAppLogin(data));
        } else {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.login_fail, false, 2, (Object) null);
        }
    }

    /* renamed from: k1 */
    public final void m41971k1(String code) {
        Observable<AccountDataBundle> doOnComplete = m41945E0().wechatQrCodeLogin(code).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.lel
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                RecentLoginFragment.m41932l1(RecentLoginFragment.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnComplete, "doOnComplete(...)");
        m41945E0().reportViewOrClickEvent(OnyxStatisticConstant.ID_LOGIN_VIEW, 5);
        m41945E0().reportViewOrClickEvent(OnyxStatisticConstant.ID_LOGIN_CLICK, 5);
        m41977y0(doOnComplete);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        m41950J0(requestCode, resultCode, data);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063332, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentRecentLoginBinding inflate = FragmentRecentLoginBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (LoginUtils.INSTANCE.isLoginRequired()) {
            return;
        }
        m41949I0();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        AccountDataBundle.INSTANCE.getEventBusHolder().post(FinishBeforeLogin.INSTANCE);
        m41955T0();
        m41956U0();
        m41954N0();
        m41953M0();
    }

    /* renamed from: t0 */
    public final void m41972t0() {
        if (Intrinsics.areEqual(AppConfigManager.INSTANCE.getAccountBindPrimaryType(), "phone")) {
            m41975w0();
        } else {
            m41974v0();
        }
    }

    /* renamed from: u0 */
    public final void m41973u0(String type) {
        if (m41944D0().length() == 0) {
            Intent intent = new Intent(requireActivity(), (Class<?>) UserCenterActivity.class);
            intent.putExtra(AccountVerifyPurpose.KEY_PURPOSE, type);
            startActivity(intent);
        }
    }

    /* renamed from: v0 */
    public final void m41974v0() {
        BooleanOption m41941A0 = m41941A0();
        if (AccountDataBundle.INSTANCE.hasEmail() || m41941A0.get()) {
            m41941A0.put(true);
            m41949I0();
        } else {
            m41941A0.put(true);
            m41973u0(AccountVerifyPurpose.PURPOSE_BIND_EMAIL_AFTER_LOGIN);
        }
    }

    /* renamed from: w0 */
    public final void m41975w0() {
        BooleanOption m41942B0 = m41942B0();
        if (AccountDataBundle.INSTANCE.hasPhone() || m41942B0.get()) {
            m41942B0.put(true);
            m41949I0();
        } else {
            m41942B0.put(true);
            m41973u0(AccountVerifyPurpose.PURPOSE_BIND_PHONE_AFTER_LOGIN);
        }
    }

    /* renamed from: x0 */
    public final void m41976x0() {
        LoginLoadingDialogFragment loginLoadingDialogFragment;
        if (isAdded() && (loginLoadingDialogFragment = (LoginLoadingDialogFragment) getChildFragmentManager().findFragmentByTag(LoginLoadingDialogFragment.TAG)) != null) {
            loginLoadingDialogFragment.dismissAllowingStateLoss();
        }
    }

    /* renamed from: y0 */
    public final void m41977y0(Observable<AccountDataBundle> accountDataBundleObservable) {
        if (isAdded()) {
            m41966e1();
            accountDataBundleObservable.doOnError(new C10721a()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.nel
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    RecentLoginFragment.m41940z0(RecentLoginFragment.this);
                }
            }).subscribe();
        }
    }
}
