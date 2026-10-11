package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.navigation.NavController;
import androidx.navigation.fragment.FragmentKt;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.galaxy.note.account.data.VerifyCodeBundle;
import com.onyx.galaxy.note.account.event.VerifyCodeNotifyEvent;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentUnbindPhoneBinding;
import com.onyx.galaxy.note.usercenter.p049ui.UnbindPhoneFragment;
import com.onyx.galaxy.note.usercenter.p049ui.UnbindPhoneFragmentDirections;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountCenterViewModel;
import com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
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

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b$\u0010%J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J$\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0007J\b\u0010\u0012\u001a\u00020\u0004H\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0002J\b\u0010\u0014\u001a\u00020\u0004H\u0002J\b\u0010\u0015\u001a\u00020\u0004H\u0002R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u001b\u0010\u001f\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/ui/UnbindPhoneFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "onDestroy", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;", NotificationCompat.CATEGORY_EVENT, "onVerifyCodeWaitTimeUpdate", "u0", "o0", "p0", "v0", "Lcom/onyx/galaxy/note/databinding/FragmentUnbindPhoneBinding;", "d1", "Lcom/onyx/galaxy/note/databinding/FragmentUnbindPhoneBinding;", "binding", "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;", "e1", "Lkotlin/Lazy;", "t0", "()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;", "accountViewModel", "Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;", "f1", "Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;", "verifyCodeViewModel", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class UnbindPhoneFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    public FragmentUnbindPhoneBinding binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy accountViewModel;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final VerifyCodeViewModel verifyCodeViewModel;

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.UnbindPhoneFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12894a implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f62483a;

        public C12894a(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f62483a = function;
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
            return this.f62483a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f62483a.invoke(obj);
        }
    }

    public UnbindPhoneFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<AccountCenterViewModel>() { // from class: com.onyx.galaxy.note.usercenter.ui.UnbindPhoneFragment$accountViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AccountCenterViewModel invoke() {
                FragmentActivity requireActivity = UnbindPhoneFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (AccountCenterViewModel) new ViewModelProvider(requireActivity).get(AccountCenterViewModel.class);
            }
        });
        this.accountViewModel = lazy;
        this.verifyCodeViewModel = new VerifyCodeViewModel();
    }

    /* renamed from: q0 */
    public static final void m51802q0(UnbindPhoneFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    /* renamed from: r0 */
    public static final void m51803r0(UnbindPhoneFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.verifyCodeViewModel.checkVerifyResult();
    }

    /* renamed from: s0 */
    public static final void m51804s0(UnbindPhoneFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        VerifyCodeViewModel verifyCodeViewModel = this$0.verifyCodeViewModel;
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        verifyCodeViewModel.sendVerifyCodeWithSubscribe(requireActivity);
    }

    /* renamed from: o0 */
    public final void m51805o0() {
        this.verifyCodeViewModel.getVerifyCodeSendStatus().observe(this, new C12894a(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.UnbindPhoneFragment$addFragmentEvents$1
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
                FragmentUnbindPhoneBinding fragmentUnbindPhoneBinding;
                FragmentUnbindPhoneBinding fragmentUnbindPhoneBinding2;
                if (num != null && num.intValue() == 3) {
                    VerifyCodeBundle verifyCodeBundle = VerifyCodeBundle.INSTANCE;
                    verifyCodeViewModel = UnbindPhoneFragment.this.verifyCodeViewModel;
                    String verifyCodeTag = verifyCodeViewModel.getVerifyCodeTag();
                    verifyCodeViewModel2 = UnbindPhoneFragment.this.verifyCodeViewModel;
                    VerifyCodeBundle.addTimer$default(verifyCodeBundle, verifyCodeTag, verifyCodeViewModel2.getResendWaitTime(), false, 4, null);
                    fragmentUnbindPhoneBinding = UnbindPhoneFragment.this.binding;
                    FragmentUnbindPhoneBinding fragmentUnbindPhoneBinding3 = null;
                    if (fragmentUnbindPhoneBinding == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        fragmentUnbindPhoneBinding = null;
                    }
                    fragmentUnbindPhoneBinding.verifyCodeEdit.setEnabled(true);
                    fragmentUnbindPhoneBinding2 = UnbindPhoneFragment.this.binding;
                    if (fragmentUnbindPhoneBinding2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        fragmentUnbindPhoneBinding3 = fragmentUnbindPhoneBinding2;
                    }
                    fragmentUnbindPhoneBinding3.verifyCodeEdit.requestFocus();
                }
            }
        }));
        this.verifyCodeViewModel.getVerifyCodeCheckResult().observe(this, new C12894a(new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.UnbindPhoneFragment$addFragmentEvents$2
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
                if (Intrinsics.areEqual(str, UserCenterEvents.VERIFY_SUCCESS)) {
                    UnbindPhoneFragment.this.m51809v0();
                }
            }
        }));
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063244, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentUnbindPhoneBinding inflate = FragmentUnbindPhoneBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        FragmentUnbindPhoneBinding fragmentUnbindPhoneBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.setLifecycleOwner(getViewLifecycleOwner());
        FragmentUnbindPhoneBinding fragmentUnbindPhoneBinding2 = this.binding;
        if (fragmentUnbindPhoneBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUnbindPhoneBinding2 = null;
        }
        fragmentUnbindPhoneBinding2.setVerifyCodeViewModel(this.verifyCodeViewModel);
        FragmentUnbindPhoneBinding fragmentUnbindPhoneBinding3 = this.binding;
        if (fragmentUnbindPhoneBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentUnbindPhoneBinding = fragmentUnbindPhoneBinding3;
        }
        View root = fragmentUnbindPhoneBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        VerifyCodeBundle verifyCodeBundle = VerifyCodeBundle.INSTANCE;
        EventBusHolderKt.ensureUnRegister(verifyCodeBundle.getEventBus(), this);
        String simpleName = UnbindPhoneFragment.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        verifyCodeBundle.release(simpleName);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVerifyCodeWaitTimeUpdate(@NotNull VerifyCodeNotifyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (Intrinsics.areEqual(event.getKey(), UnbindPhoneFragment.class.getSimpleName())) {
            this.verifyCodeViewModel.getVerifyCodeWaitTime().postValue(Integer.valueOf((int) event.getLeftTime()));
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m51806p0();
    }

    /* renamed from: p0 */
    public final void m51806p0() {
        FragmentUnbindPhoneBinding fragmentUnbindPhoneBinding = this.binding;
        FragmentUnbindPhoneBinding fragmentUnbindPhoneBinding2 = null;
        if (fragmentUnbindPhoneBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUnbindPhoneBinding = null;
        }
        fragmentUnbindPhoneBinding.backButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vpn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UnbindPhoneFragment.m51802q0(UnbindPhoneFragment.this, view);
            }
        });
        FragmentUnbindPhoneBinding fragmentUnbindPhoneBinding3 = this.binding;
        if (fragmentUnbindPhoneBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUnbindPhoneBinding3 = null;
        }
        fragmentUnbindPhoneBinding3.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.wpn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UnbindPhoneFragment.m51803r0(UnbindPhoneFragment.this, view);
            }
        });
        FragmentUnbindPhoneBinding fragmentUnbindPhoneBinding4 = this.binding;
        if (fragmentUnbindPhoneBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentUnbindPhoneBinding2 = fragmentUnbindPhoneBinding4;
        }
        fragmentUnbindPhoneBinding2.verifyCodeButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.xpn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UnbindPhoneFragment.m51804s0(UnbindPhoneFragment.this, view);
            }
        });
    }

    /* renamed from: t0 */
    public final AccountCenterViewModel m51807t0() {
        return (AccountCenterViewModel) this.accountViewModel.getValue();
    }

    /* renamed from: u0 */
    public final void m51808u0() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            UnbindPhoneFragmentArgs fromBundle = UnbindPhoneFragmentArgs.fromBundle(arguments);
            Intrinsics.checkNotNullExpressionValue(fromBundle, "fromBundle(...)");
            OnyxAccountModel currentAccount = m51807t0().getCurrentAccount();
            if (currentAccount == null) {
                return;
            }
            VerifyCodeViewModel verifyCodeViewModel = this.verifyCodeViewModel;
            String purpose = fromBundle.getPurpose();
            Intrinsics.checkNotNullExpressionValue(purpose, "getPurpose(...)");
            verifyCodeViewModel.setPurpose(purpose);
            this.verifyCodeViewModel.setVerifyType(1);
            this.verifyCodeViewModel.getSocialAccount().setValue(currentAccount.getPhone());
            if (StringKt.isNotBlank(currentAccount.getAreaCode())) {
                this.verifyCodeViewModel.getAreaCode().setValue(currentAccount.getAreaCode());
            }
            VerifyCodeViewModel verifyCodeViewModel2 = this.verifyCodeViewModel;
            String simpleName = UnbindPhoneFragment.class.getSimpleName();
            Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
            verifyCodeViewModel2.setVerifyCodeTag(simpleName);
        }
    }

    /* renamed from: v0 */
    public final void m51809v0() {
        NavController findNavController = FragmentKt.findNavController(this);
        String value = this.verifyCodeViewModel.getSocialAccount().getValue();
        Intrinsics.checkNotNull(value);
        String value2 = this.verifyCodeViewModel.getVerifyCode().getValue();
        Intrinsics.checkNotNull(value2);
        UnbindPhoneFragmentDirections.UnbindPhoneToBindPhone unbindPhoneToBindPhone = UnbindPhoneFragmentDirections.unbindPhoneToBindPhone(value, value2, this.verifyCodeViewModel.getPurpose());
        Intrinsics.checkNotNullExpressionValue(unbindPhoneToBindPhone, "unbindPhoneToBindPhone(...)");
        findNavController.navigate(unbindPhoneToBindPhone);
    }
}
