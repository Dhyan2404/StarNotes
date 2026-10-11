package com.onyx.galaxy.note.usercenter.p049ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.MainThread;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavController;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.data.account.action.NetworkCheckAction;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.common.cloud.service.WebpageService;
import com.onyx.android.sdk.note.common.event.NetworkStatusChangeEvent;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.databinding.FragmentLogOffAgreementBinding;
import com.onyx.galaxy.note.p048ui.dialog.MessageDialogAction;
import com.onyx.galaxy.note.usercenter.p049ui.LogOffAgreementFragment;
import com.onyx.galaxy.note.usercenter.p049ui.LogOffAgreementFragmentDirections;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountCenterViewModel;
import com.onyx.galaxy.note.usercenter.viewmodel.GoogleVerifyViewModel;
import com.onyx.galaxy.note.usercenter.viewmodel.HuaweiVerifyViewModel;
import com.onyx.galaxy.note.usercenter.viewmodel.MicrosoftVerifyViewModel;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import dagger.hilt.android.AndroidEntryPoint;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b5\u00106J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\u001a\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\r\u001a\u00020\u0004H\u0016J\"\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014H\u0007J\b\u0010\u0017\u001a\u00020\u0004H\u0002J\b\u0010\u0018\u001a\u00020\u0004H\u0002J\b\u0010\u0019\u001a\u00020\u0004H\u0002J\b\u0010\u001a\u001a\u00020\u0004H\u0003J\b\u0010\u001b\u001a\u00020\u0004H\u0002R\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u001b\u0010%\u001a\u00020 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u001b\u0010*\u001a\u00020&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010\"\u001a\u0004\b(\u0010)R\u001b\u0010/\u001a\u00020+8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010\"\u001a\u0004\b-\u0010.R\u001b\u00104\u001a\u0002008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u0010\"\u001a\u0004\b2\u00103¨\u00067"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "onDestroy", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "root", "Landroid/view/View;", "setContentView", "onDestroyView", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;", NotificationCompat.CATEGORY_EVENT, "onNetworkChanged", "n0", "o0", "u0", "w0", "v0", "Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;", "i1", "Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;", "binding", "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;", "j1", "Lkotlin/Lazy;", "q0", "()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;", "accountViewModel", "Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;", "k1", "s0", "()Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;", "huaweiViewModel", "Lcom/onyx/galaxy/note/usercenter/viewmodel/GoogleVerifyViewModel;", "l1", "r0", "()Lcom/onyx/galaxy/note/usercenter/viewmodel/GoogleVerifyViewModel;", "googleViewModel", "Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;", "m1", "t0", "()Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;", "microsoftViewModel", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@AndroidEntryPoint
@SourceDebugExtension({"SMAP\nLogOffAgreementFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogOffAgreementFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,229:1\n106#2,15:230\n106#2,15:245\n106#2,15:260\n41#3,5:275\n41#3,5:280\n41#3,5:285\n41#3,5:290\n*S KotlinDebug\n*F\n+ 1 LogOffAgreementFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment\n*L\n56#1:230,15\n57#1:245,15\n58#1:260,15\n195#1:275,5\n198#1:280,5\n201#1:285,5\n203#1:290,5\n*E\n"})
/* loaded from: classes17.dex */
public final class LogOffAgreementFragment extends Hilt_LogOffAgreementFragment {

    /* renamed from: i1, reason: from kotlin metadata */
    public FragmentLogOffAgreementBinding binding;

    /* renamed from: j1, reason: from kotlin metadata */
    @NotNull
    public final Lazy accountViewModel;

    /* renamed from: k1, reason: from kotlin metadata */
    @NotNull
    public final Lazy huaweiViewModel;

    /* renamed from: l1, reason: from kotlin metadata */
    @NotNull
    public final Lazy googleViewModel;

    /* renamed from: m1, reason: from kotlin metadata */
    @NotNull
    public final Lazy microsoftViewModel;

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.LogOffAgreementFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12875a<T> implements Consumer {
        public C12875a() {
        }

        /* renamed from: a */
        public final void m51683a(boolean z) {
            FragmentKt.finishActivity(LogOffAgreementFragment.this);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m51683a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.LogOffAgreementFragment$b */
    /* loaded from: classes9.dex */
    public static final class C12876b implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f62433a;

        public C12876b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f62433a = function;
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
            return this.f62433a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f62433a.invoke(obj);
        }
    }

    public LogOffAgreementFragment() {
        Lazy lazy;
        final Lazy lazy2;
        final Lazy lazy3;
        final Lazy lazy4;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<AccountCenterViewModel>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffAgreementFragment$accountViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AccountCenterViewModel invoke() {
                FragmentActivity requireActivity = LogOffAgreementFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (AccountCenterViewModel) new ViewModelProvider(requireActivity).get(AccountCenterViewModel.class);
            }
        });
        this.accountViewModel = lazy;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffAgreementFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Fragment invoke() {
                return Fragment.this;
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<ViewModelStoreOwner>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffAgreementFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) Function0.this.invoke();
            }
        });
        final Function0 function02 = null;
        this.huaweiViewModel = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(HuaweiVerifyViewModel.class), new Function0<ViewModelStore>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffAgreementFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewModelStore invoke() {
                ViewModelStoreOwner m4782b;
                m4782b = FragmentViewModelLazyKt.m4782b(Lazy.this);
                return m4782b.getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffAgreementFragment$special$$inlined$viewModels$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CreationExtras invoke() {
                ViewModelStoreOwner m4782b;
                CreationExtras creationExtras;
                Function0 function03 = Function0.this;
                if (function03 != null && (creationExtras = (CreationExtras) function03.invoke()) != null) {
                    return creationExtras;
                }
                m4782b = FragmentViewModelLazyKt.m4782b(lazy2);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = m4782b instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) m4782b : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffAgreementFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewModelProvider.Factory invoke() {
                ViewModelStoreOwner m4782b;
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                m4782b = FragmentViewModelLazyKt.m4782b(lazy2);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = m4782b instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) m4782b : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = Fragment.this.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "defaultViewModelProviderFactory");
                return defaultViewModelProviderFactory2;
            }
        });
        final Function0<Fragment> function03 = new Function0<Fragment>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffAgreementFragment$special$$inlined$viewModels$default$6
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Fragment invoke() {
                return Fragment.this;
            }
        };
        lazy3 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<ViewModelStoreOwner>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffAgreementFragment$special$$inlined$viewModels$default$7
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) Function0.this.invoke();
            }
        });
        this.googleViewModel = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(GoogleVerifyViewModel.class), new Function0<ViewModelStore>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffAgreementFragment$special$$inlined$viewModels$default$8
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewModelStore invoke() {
                ViewModelStoreOwner m4782b;
                m4782b = FragmentViewModelLazyKt.m4782b(Lazy.this);
                return m4782b.getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffAgreementFragment$special$$inlined$viewModels$default$9
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CreationExtras invoke() {
                ViewModelStoreOwner m4782b;
                CreationExtras creationExtras;
                Function0 function04 = Function0.this;
                if (function04 != null && (creationExtras = (CreationExtras) function04.invoke()) != null) {
                    return creationExtras;
                }
                m4782b = FragmentViewModelLazyKt.m4782b(lazy3);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = m4782b instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) m4782b : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffAgreementFragment$special$$inlined$viewModels$default$10
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewModelProvider.Factory invoke() {
                ViewModelStoreOwner m4782b;
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                m4782b = FragmentViewModelLazyKt.m4782b(lazy3);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = m4782b instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) m4782b : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = Fragment.this.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "defaultViewModelProviderFactory");
                return defaultViewModelProviderFactory2;
            }
        });
        final Function0<Fragment> function04 = new Function0<Fragment>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffAgreementFragment$special$$inlined$viewModels$default$11
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Fragment invoke() {
                return Fragment.this;
            }
        };
        lazy4 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<ViewModelStoreOwner>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffAgreementFragment$special$$inlined$viewModels$default$12
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) Function0.this.invoke();
            }
        });
        this.microsoftViewModel = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(MicrosoftVerifyViewModel.class), new Function0<ViewModelStore>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffAgreementFragment$special$$inlined$viewModels$default$13
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewModelStore invoke() {
                ViewModelStoreOwner m4782b;
                m4782b = FragmentViewModelLazyKt.m4782b(Lazy.this);
                return m4782b.getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffAgreementFragment$special$$inlined$viewModels$default$14
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CreationExtras invoke() {
                ViewModelStoreOwner m4782b;
                CreationExtras creationExtras;
                Function0 function05 = Function0.this;
                if (function05 != null && (creationExtras = (CreationExtras) function05.invoke()) != null) {
                    return creationExtras;
                }
                m4782b = FragmentViewModelLazyKt.m4782b(lazy4);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = m4782b instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) m4782b : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffAgreementFragment$special$$inlined$viewModels$default$15
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewModelProvider.Factory invoke() {
                ViewModelStoreOwner m4782b;
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                m4782b = FragmentViewModelLazyKt.m4782b(lazy4);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = m4782b instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) m4782b : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = Fragment.this.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "defaultViewModelProviderFactory");
                return defaultViewModelProviderFactory2;
            }
        });
    }

    /* renamed from: p0 */
    public static final void m51673p0(LogOffAgreementFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    /* renamed from: n0 */
    public final void m51674n0() {
        m51678s0().getEvents().observe(this, new C12876b(new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffAgreementFragment$addFragmentEvent$1
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
                HuaweiVerifyViewModel m51678s0;
                if (StringKt.isEmpty(str)) {
                    return;
                }
                Intrinsics.checkNotNull(str);
                if (Intrinsics.areEqual(str, UserCenterEvents.HUAWEI_VERIFY_SUCCESS)) {
                    LogOffAgreementFragment.this.m51681v0();
                }
                m51678s0 = LogOffAgreementFragment.this.m51678s0();
                m51678s0.markEventConsumed();
            }
        }));
    }

    /* renamed from: o0 */
    public final void m51675o0() {
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding = this.binding;
        if (fragmentLogOffAgreementBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogOffAgreementBinding = null;
        }
        fragmentLogOffAgreementBinding.backButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.v2j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LogOffAgreementFragment.m51673p0(LogOffAgreementFragment.this, view);
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, @Nullable final Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode != -1) {
            return;
        }
        if (requestCode == 1001) {
            FragmentKt.requireContextSafety(this, new Function1<Context, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffAgreementFragment$onActivityResult$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Context context) {
                    invoke2(context);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Context it2) {
                    GoogleVerifyViewModel m51677r0;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    m51677r0 = LogOffAgreementFragment.this.m51677r0();
                    m51677r0.handleGoogleLogOff(LogOffAgreementFragment.this, data);
                }
            });
        } else {
            if (requestCode != 1002) {
                return;
            }
            FragmentKt.requireContextSafety(this, new Function1<Context, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffAgreementFragment$onActivityResult$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Context context) {
                    invoke2(context);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Context it2) {
                    MicrosoftVerifyViewModel m51679t0;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    m51679t0 = LogOffAgreementFragment.this.m51679t0();
                    m51679t0.handleMicrosoftLogOff(LogOffAgreementFragment.this, data);
                }
            });
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063252, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        GlobalBundle.INSTANCE.unregister(this);
        m51678s0().unregisterHuaweiLauncher();
        m51677r0().disposeActions();
        m51679t0().disposeActions();
        super.onDestroy();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding = this.binding;
        if (fragmentLogOffAgreementBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogOffAgreementBinding = null;
        }
        fragmentLogOffAgreementBinding.webView.destroy();
        super.onDestroyView();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNetworkChanged(@NotNull NetworkStatusChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getConnected()) {
            FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding = this.binding;
            if (fragmentLogOffAgreementBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLogOffAgreementBinding = null;
            }
            if (ViewKt.isVisible(fragmentLogOffAgreementBinding.webView)) {
                return;
            }
            m51680u0();
        }
    }

    /* renamed from: q0 */
    public final AccountCenterViewModel m51676q0() {
        return (AccountCenterViewModel) this.accountViewModel.getValue();
    }

    /* renamed from: r0 */
    public final GoogleVerifyViewModel m51677r0() {
        return (GoogleVerifyViewModel) this.googleViewModel.getValue();
    }

    /* renamed from: s0 */
    public final HuaweiVerifyViewModel m51678s0() {
        return (HuaweiVerifyViewModel) this.huaweiViewModel.getValue();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment
    @NotNull
    public View setContentView(@NotNull LayoutInflater inflater, @Nullable ViewGroup root) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentLogOffAgreementBinding inflate = FragmentLogOffAgreementBinding.inflate(inflater, root, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.setLifecycleOwner(getViewLifecycleOwner());
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding2 = this.binding;
        if (fragmentLogOffAgreementBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogOffAgreementBinding2 = null;
        }
        fragmentLogOffAgreementBinding2.setViewModel(m51676q0());
        m51675o0();
        m51680u0();
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding3 = this.binding;
        if (fragmentLogOffAgreementBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentLogOffAgreementBinding = fragmentLogOffAgreementBinding3;
        }
        View root2 = fragmentLogOffAgreementBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root2, "getRoot(...)");
        return root2;
    }

    /* renamed from: t0 */
    public final MicrosoftVerifyViewModel m51679t0() {
        return (MicrosoftVerifyViewModel) this.microsoftViewModel.getValue();
    }

    /* renamed from: u0 */
    public final void m51680u0() {
        final LogOffAgreementFragment$loadWebpage$callback$1 logOffAgreementFragment$loadWebpage$callback$1 = new LogOffAgreementFragment$loadWebpage$callback$1(this);
        String accountLogoffService = WebpageService.INSTANCE.getAccountLogoffService();
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding = this.binding;
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding2 = null;
        if (fragmentLogOffAgreementBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogOffAgreementBinding = null;
        }
        fragmentLogOffAgreementBinding.webView.setWebViewCallback(logOffAgreementFragment$loadWebpage$callback$1);
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding3 = this.binding;
        if (fragmentLogOffAgreementBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogOffAgreementBinding3 = null;
        }
        fragmentLogOffAgreementBinding3.webView.registerNativeObject("native", logOffAgreementFragment$loadWebpage$callback$1);
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding4 = this.binding;
        if (fragmentLogOffAgreementBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogOffAgreementBinding4 = null;
        }
        fragmentLogOffAgreementBinding4.webView.openWebpage(accountLogoffService);
        FragmentLogOffAgreementBinding fragmentLogOffAgreementBinding5 = this.binding;
        if (fragmentLogOffAgreementBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentLogOffAgreementBinding2 = fragmentLogOffAgreementBinding5;
        }
        LinearLayout loadingView = fragmentLogOffAgreementBinding2.loadingView;
        Intrinsics.checkNotNullExpressionValue(loadingView, "loadingView");
        ViewExtKt.startAlphaAnimation$default(loadingView, 0.0f, 1.0f, 0L, null, 13, null);
        NetworkCheckAction.Companion.checkNetwork$default(NetworkCheckAction.INSTANCE, null, new Function1<Throwable, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffAgreementFragment$loadWebpage$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Throwable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                LogOffAgreementFragment$loadWebpage$callback$1.this.onWebViewTimeout();
            }
        }, null, false, 5, null);
    }

    /* renamed from: v0 */
    public final void m51681v0() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        new MessageDialogAction(requireActivity, C10651R.string.user_title_logoff_success, C10651R.string.user_tip_logoff_thanks).build().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12875a()).subscribe();
    }

    @MainThread
    /* renamed from: w0 */
    public final void m51682w0() {
        NavController findNavController = androidx.navigation.fragment.FragmentKt.findNavController(this);
        OnyxAccountModel currentAccount = m51676q0().getCurrentAccount();
        if (currentAccount == null) {
            return;
        }
        if (StringKt.isNotBlank(currentAccount.getPhone()) || StringKt.isNotBlank(currentAccount.getEmail())) {
            LogOffAgreementFragmentDirections.ToMixedVerify mixedVerify = LogOffAgreementFragmentDirections.toMixedVerify("destroy");
            Intrinsics.checkNotNullExpressionValue(mixedVerify, "toMixedVerify(...)");
            findNavController.navigate(mixedVerify);
            return;
        }
        if (currentAccount.getWechat() != null) {
            LogOffAgreementFragmentDirections.ToWechatVerify wechatVerify = LogOffAgreementFragmentDirections.toWechatVerify("destroy");
            Intrinsics.checkNotNullExpressionValue(wechatVerify, "toWechatVerify(...)");
            findNavController.navigate(wechatVerify);
            return;
        }
        if (currentAccount.getHuawei() != null) {
            m51678s0().setPurpose("destroy");
            HuaweiVerifyViewModel m51678s0 = m51678s0();
            FragmentActivity requireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
            m51678s0.startAuthService(requireActivity);
            return;
        }
        if (currentAccount.getGoogle() != null) {
            m51677r0().requestGoogleAuth(this);
            return;
        }
        if (currentAccount.getMicrosoft() != null) {
            m51679t0().requestMicrosoftAuth(this);
        }
    }
}
