package com.onyx.galaxy.note.usercenter.p049ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.data.VerifyCodeBundle;
import com.onyx.galaxy.note.account.event.VerifyCodeNotifyEvent;
import com.onyx.galaxy.note.account.p043ui.LoginActivity;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentLogoffByPhoneBinding;
import com.onyx.galaxy.note.p048ui.dialog.MessageDialogAction;
import com.onyx.galaxy.note.usercenter.p049ui.LogOffByPhoneFragment;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountCenterViewModel;
import com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b$\u0010%J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J$\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0007J\b\u0010\u0012\u001a\u00020\u0004H\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0002J\b\u0010\u0014\u001a\u00020\u0004H\u0002J\b\u0010\u0015\u001a\u00020\u0004H\u0002R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u001b\u0010\u001f\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "onDestroy", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;", NotificationCompat.CATEGORY_EVENT, "onVerifyCodeWaitTimeUpdate", "u0", "o0", "p0", "v0", "Lcom/onyx/galaxy/note/databinding/FragmentLogoffByPhoneBinding;", "d1", "Lcom/onyx/galaxy/note/databinding/FragmentLogoffByPhoneBinding;", "binding", "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;", "e1", "Lkotlin/Lazy;", "t0", "()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;", "accountViewModel", "Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;", "f1", "Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;", "verifyCodeViewModel", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class LogOffByPhoneFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    public FragmentLogoffByPhoneBinding binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy accountViewModel;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final VerifyCodeViewModel verifyCodeViewModel;

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.LogOffByPhoneFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12880a<T> implements Consumer {
        public C12880a() {
        }

        /* renamed from: a */
        public final void m51717a(boolean z) {
            LogOffByPhoneFragment.this.startActivity(new Intent(LogOffByPhoneFragment.this.requireContext(), (Class<?>) LoginActivity.class));
            FragmentKt.finishActivity(LogOffByPhoneFragment.this);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m51717a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.LogOffByPhoneFragment$b */
    /* loaded from: classes9.dex */
    public static final class C12881b implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f62446a;

        public C12881b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f62446a = function;
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
            return this.f62446a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f62446a.invoke(obj);
        }
    }

    public LogOffByPhoneFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<AccountCenterViewModel>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffByPhoneFragment$accountViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AccountCenterViewModel invoke() {
                FragmentActivity requireActivity = LogOffByPhoneFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (AccountCenterViewModel) new ViewModelProvider(requireActivity).get(AccountCenterViewModel.class);
            }
        });
        this.accountViewModel = lazy;
        this.verifyCodeViewModel = new VerifyCodeViewModel();
    }

    /* renamed from: q0 */
    public static final void m51709q0(LogOffByPhoneFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    /* renamed from: r0 */
    public static final void m51710r0(LogOffByPhoneFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.verifyCodeViewModel.logoffWithPhoneEmail();
    }

    /* renamed from: s0 */
    public static final void m51711s0(LogOffByPhoneFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        VerifyCodeViewModel verifyCodeViewModel = this$0.verifyCodeViewModel;
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        verifyCodeViewModel.sendVerifyCodeWithSubscribe(requireActivity);
    }

    /* renamed from: o0 */
    public final void m51712o0() {
        this.verifyCodeViewModel.getVerifyCodeCheckResult().observe(this, new C12881b(new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffByPhoneFragment$addFragmentEvents$1
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
                if (Intrinsics.areEqual(str, UserCenterEvents.LOGOFF_SUCCESS)) {
                    LogOffByPhoneFragment.this.m51716v0();
                }
            }
        }));
        this.verifyCodeViewModel.getVerifyCodeSendStatus().observe(this, new C12881b(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.LogOffByPhoneFragment$addFragmentEvents$2
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
                VerifyCodeViewModel verifyCodeViewModel;
                VerifyCodeViewModel verifyCodeViewModel2;
                FragmentLogoffByPhoneBinding fragmentLogoffByPhoneBinding;
                FragmentLogoffByPhoneBinding fragmentLogoffByPhoneBinding2;
                if (num != null && num.intValue() == 3) {
                    VerifyCodeBundle verifyCodeBundle = VerifyCodeBundle.INSTANCE;
                    verifyCodeViewModel = LogOffByPhoneFragment.this.verifyCodeViewModel;
                    String verifyCodeTag = verifyCodeViewModel.getVerifyCodeTag();
                    verifyCodeViewModel2 = LogOffByPhoneFragment.this.verifyCodeViewModel;
                    VerifyCodeBundle.addTimer$default(verifyCodeBundle, verifyCodeTag, verifyCodeViewModel2.getResendWaitTime(), false, 4, null);
                    fragmentLogoffByPhoneBinding = LogOffByPhoneFragment.this.binding;
                    FragmentLogoffByPhoneBinding fragmentLogoffByPhoneBinding3 = null;
                    if (fragmentLogoffByPhoneBinding == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        fragmentLogoffByPhoneBinding = null;
                    }
                    fragmentLogoffByPhoneBinding.verifyCodeEdit.setEnabled(true);
                    fragmentLogoffByPhoneBinding2 = LogOffByPhoneFragment.this.binding;
                    if (fragmentLogoffByPhoneBinding2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        fragmentLogoffByPhoneBinding3 = fragmentLogoffByPhoneBinding2;
                    }
                    fragmentLogoffByPhoneBinding3.verifyCodeEdit.requestFocus();
                }
            }
        }));
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063250, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentLogoffByPhoneBinding inflate = FragmentLogoffByPhoneBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        FragmentLogoffByPhoneBinding fragmentLogoffByPhoneBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.setLifecycleOwner(getViewLifecycleOwner());
        FragmentLogoffByPhoneBinding fragmentLogoffByPhoneBinding2 = this.binding;
        if (fragmentLogoffByPhoneBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogoffByPhoneBinding2 = null;
        }
        fragmentLogoffByPhoneBinding2.setVerifyCodeViewModel(this.verifyCodeViewModel);
        FragmentLogoffByPhoneBinding fragmentLogoffByPhoneBinding3 = this.binding;
        if (fragmentLogoffByPhoneBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogoffByPhoneBinding3 = null;
        }
        fragmentLogoffByPhoneBinding3.executePendingBindings();
        m51715u0();
        FragmentLogoffByPhoneBinding fragmentLogoffByPhoneBinding4 = this.binding;
        if (fragmentLogoffByPhoneBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentLogoffByPhoneBinding = fragmentLogoffByPhoneBinding4;
        }
        View root = fragmentLogoffByPhoneBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        EventBusHolderKt.ensureUnRegister(VerifyCodeBundle.INSTANCE.getEventBus(), this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVerifyCodeWaitTimeUpdate(@NotNull VerifyCodeNotifyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (Intrinsics.areEqual(event.getKey(), LogOffByPhoneFragment.class.getSimpleName())) {
            this.verifyCodeViewModel.getVerifyCodeWaitTime().postValue(Integer.valueOf((int) event.getLeftTime()));
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m51713p0();
    }

    /* renamed from: p0 */
    public final void m51713p0() {
        FragmentLogoffByPhoneBinding fragmentLogoffByPhoneBinding = this.binding;
        FragmentLogoffByPhoneBinding fragmentLogoffByPhoneBinding2 = null;
        if (fragmentLogoffByPhoneBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogoffByPhoneBinding = null;
        }
        fragmentLogoffByPhoneBinding.backButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.f3j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LogOffByPhoneFragment.m51709q0(LogOffByPhoneFragment.this, view);
            }
        });
        FragmentLogoffByPhoneBinding fragmentLogoffByPhoneBinding3 = this.binding;
        if (fragmentLogoffByPhoneBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogoffByPhoneBinding3 = null;
        }
        fragmentLogoffByPhoneBinding3.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.g3j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LogOffByPhoneFragment.m51710r0(LogOffByPhoneFragment.this, view);
            }
        });
        FragmentLogoffByPhoneBinding fragmentLogoffByPhoneBinding4 = this.binding;
        if (fragmentLogoffByPhoneBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentLogoffByPhoneBinding2 = fragmentLogoffByPhoneBinding4;
        }
        fragmentLogoffByPhoneBinding2.verifyCodeButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.h3j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LogOffByPhoneFragment.m51711s0(LogOffByPhoneFragment.this, view);
            }
        });
    }

    /* renamed from: t0 */
    public final AccountCenterViewModel m51714t0() {
        return (AccountCenterViewModel) this.accountViewModel.getValue();
    }

    /* renamed from: u0 */
    public final void m51715u0() {
        OnyxAccountModel currentAccount = m51714t0().getCurrentAccount();
        if (currentAccount == null) {
            return;
        }
        VerifyCodeViewModel verifyCodeViewModel = this.verifyCodeViewModel;
        verifyCodeViewModel.setVerifyType(1);
        verifyCodeViewModel.getSocialAccount().postValue(currentAccount.getPhone());
        if (StringKt.isNotBlank(currentAccount.getAreaCode())) {
            verifyCodeViewModel.getAreaCode().postValue(currentAccount.getAreaCode());
        }
        String simpleName = VerifyCodeViewModel.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        verifyCodeViewModel.setVerifyCodeTag(simpleName);
    }

    /* renamed from: v0 */
    public final void m51716v0() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        new MessageDialogAction(requireActivity, C10651R.string.user_title_logoff_success, C10651R.string.user_tip_logoff_thanks).build().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12880a()).subscribe();
    }
}
