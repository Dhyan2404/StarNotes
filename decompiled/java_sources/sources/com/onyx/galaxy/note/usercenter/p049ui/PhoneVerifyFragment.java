package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.navigation.NavController;
import androidx.navigation.fragment.FragmentKt;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.galaxy.note.account.data.VerifyCodeBundle;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentPhoneVerifyBinding;
import com.onyx.galaxy.note.usercenter.p049ui.PhoneVerifyFragment;
import com.onyx.galaxy.note.usercenter.p049ui.PhoneVerifyFragmentDirections;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\"\u0010#J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J$\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u000f\u001a\u00020\u0004H\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0002R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006$"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/ui/PhoneVerifyFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "onDestroy", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "v0", "o0", "p0", "t0", "w0", "Lcom/onyx/galaxy/note/databinding/FragmentPhoneVerifyBinding;", "d1", "Lcom/onyx/galaxy/note/databinding/FragmentPhoneVerifyBinding;", "binding", "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;", "e1", "Lkotlin/Lazy;", "u0", "()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;", "accountViewModel", "Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;", "f1", "Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;", "verifyCodeViewModel", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class PhoneVerifyFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    public FragmentPhoneVerifyBinding binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy accountViewModel;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final VerifyCodeViewModel verifyCodeViewModel;

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.PhoneVerifyFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12888a implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f62469a;

        public C12888a(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f62469a = function;
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
            return this.f62469a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f62469a.invoke(obj);
        }
    }

    public PhoneVerifyFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<AccountCenterViewModel>() { // from class: com.onyx.galaxy.note.usercenter.ui.PhoneVerifyFragment$accountViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AccountCenterViewModel invoke() {
                FragmentActivity requireActivity = PhoneVerifyFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (AccountCenterViewModel) new ViewModelProvider(requireActivity).get(AccountCenterViewModel.class);
            }
        });
        this.accountViewModel = lazy;
        this.verifyCodeViewModel = new VerifyCodeViewModel();
    }

    /* renamed from: q0 */
    public static final void m51777q0(PhoneVerifyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    /* renamed from: r0 */
    public static final void m51778r0(PhoneVerifyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        VerifyCodeViewModel verifyCodeViewModel = this$0.verifyCodeViewModel;
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        verifyCodeViewModel.sendVerifyCodeWithSubscribe(requireActivity);
    }

    /* renamed from: s0 */
    public static final void m51779s0(PhoneVerifyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.verifyCodeViewModel.checkVerifyResult();
    }

    /* renamed from: o0 */
    public final void m51780o0() {
        this.verifyCodeViewModel.getVerifyCodeSendStatus().observe(this, new C12888a(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.PhoneVerifyFragment$addFragmentEvents$1
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
                FragmentPhoneVerifyBinding fragmentPhoneVerifyBinding;
                FragmentPhoneVerifyBinding fragmentPhoneVerifyBinding2;
                if (num != null && num.intValue() == 3) {
                    VerifyCodeBundle verifyCodeBundle = VerifyCodeBundle.INSTANCE;
                    verifyCodeViewModel = PhoneVerifyFragment.this.verifyCodeViewModel;
                    String verifyCodeTag = verifyCodeViewModel.getVerifyCodeTag();
                    verifyCodeViewModel2 = PhoneVerifyFragment.this.verifyCodeViewModel;
                    VerifyCodeBundle.addTimer$default(verifyCodeBundle, verifyCodeTag, verifyCodeViewModel2.getResendWaitTime(), false, 4, null);
                    fragmentPhoneVerifyBinding = PhoneVerifyFragment.this.binding;
                    FragmentPhoneVerifyBinding fragmentPhoneVerifyBinding3 = null;
                    if (fragmentPhoneVerifyBinding == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        fragmentPhoneVerifyBinding = null;
                    }
                    fragmentPhoneVerifyBinding.verifyCodeEdit.setEnabled(true);
                    fragmentPhoneVerifyBinding2 = PhoneVerifyFragment.this.binding;
                    if (fragmentPhoneVerifyBinding2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        fragmentPhoneVerifyBinding3 = fragmentPhoneVerifyBinding2;
                    }
                    fragmentPhoneVerifyBinding3.verifyCodeEdit.requestFocus();
                }
            }
        }));
        this.verifyCodeViewModel.getVerifyCodeCheckResult().observe(this, new C12888a(new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.PhoneVerifyFragment$addFragmentEvents$2
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
                    PhoneVerifyFragment.this.m51782t0();
                }
            }
        }));
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063246, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentPhoneVerifyBinding inflate = FragmentPhoneVerifyBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        FragmentPhoneVerifyBinding fragmentPhoneVerifyBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.setLifecycleOwner(getViewLifecycleOwner());
        FragmentPhoneVerifyBinding fragmentPhoneVerifyBinding2 = this.binding;
        if (fragmentPhoneVerifyBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentPhoneVerifyBinding2 = null;
        }
        fragmentPhoneVerifyBinding2.setVerifyCodeViewModel(this.verifyCodeViewModel);
        FragmentPhoneVerifyBinding fragmentPhoneVerifyBinding3 = this.binding;
        if (fragmentPhoneVerifyBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentPhoneVerifyBinding = fragmentPhoneVerifyBinding3;
        }
        View root = fragmentPhoneVerifyBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        VerifyCodeBundle verifyCodeBundle = VerifyCodeBundle.INSTANCE;
        EventBusHolderKt.ensureUnRegister(verifyCodeBundle.getEventBus(), this.verifyCodeViewModel);
        String simpleName = PhoneVerifyFragment.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        verifyCodeBundle.release(simpleName);
        super.onDestroy();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m51781p0();
    }

    /* renamed from: p0 */
    public final void m51781p0() {
        FragmentPhoneVerifyBinding fragmentPhoneVerifyBinding = this.binding;
        FragmentPhoneVerifyBinding fragmentPhoneVerifyBinding2 = null;
        if (fragmentPhoneVerifyBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentPhoneVerifyBinding = null;
        }
        fragmentPhoneVerifyBinding.backButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.s3l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhoneVerifyFragment.m51777q0(PhoneVerifyFragment.this, view);
            }
        });
        FragmentPhoneVerifyBinding fragmentPhoneVerifyBinding3 = this.binding;
        if (fragmentPhoneVerifyBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentPhoneVerifyBinding3 = null;
        }
        fragmentPhoneVerifyBinding3.verifyCodeButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.t3l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhoneVerifyFragment.m51778r0(PhoneVerifyFragment.this, view);
            }
        });
        FragmentPhoneVerifyBinding fragmentPhoneVerifyBinding4 = this.binding;
        if (fragmentPhoneVerifyBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentPhoneVerifyBinding2 = fragmentPhoneVerifyBinding4;
        }
        fragmentPhoneVerifyBinding2.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.u3l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhoneVerifyFragment.m51779s0(PhoneVerifyFragment.this, view);
            }
        });
    }

    /* renamed from: t0 */
    public final void m51782t0() {
        if (Intrinsics.areEqual(this.verifyCodeViewModel.getPurpose(), AccountVerifyPurpose.PURPOSE_PASSWORD_RESET)) {
            m51785w0();
        }
    }

    /* renamed from: u0 */
    public final AccountCenterViewModel m51783u0() {
        return (AccountCenterViewModel) this.accountViewModel.getValue();
    }

    /* renamed from: v0 */
    public final void m51784v0() {
        OnyxAccountModel currentAccount;
        Bundle arguments = getArguments();
        if (arguments == null || (currentAccount = m51783u0().getCurrentAccount()) == null) {
            return;
        }
        VerifyCodeViewModel verifyCodeViewModel = this.verifyCodeViewModel;
        String purpose = EmailVerifyFragmentArgs.fromBundle(arguments).getPurpose();
        Intrinsics.checkNotNullExpressionValue(purpose, "getPurpose(...)");
        verifyCodeViewModel.setPurpose(purpose);
        this.verifyCodeViewModel.getSocialAccount().setValue(currentAccount.getPhone());
        this.verifyCodeViewModel.getAreaCode().setValue(currentAccount.getAreaCode());
        this.verifyCodeViewModel.setVerifyType(1);
        VerifyCodeViewModel verifyCodeViewModel2 = this.verifyCodeViewModel;
        String simpleName = PhoneVerifyFragment.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        verifyCodeViewModel2.setVerifyCodeTag(simpleName);
    }

    /* renamed from: w0 */
    public final void m51785w0() {
        NavController findNavController = FragmentKt.findNavController(this);
        String purpose = this.verifyCodeViewModel.getPurpose();
        String value = this.verifyCodeViewModel.getSocialAccount().getValue();
        Intrinsics.checkNotNull(value);
        String value2 = this.verifyCodeViewModel.getVerifyCode().getValue();
        Intrinsics.checkNotNull(value2);
        PhoneVerifyFragmentDirections.PhoneVerifyToPasswordReset phoneVerifyToPasswordReset = PhoneVerifyFragmentDirections.phoneVerifyToPasswordReset(purpose, value, value2, this.verifyCodeViewModel.getToken());
        Intrinsics.checkNotNullExpressionValue(phoneVerifyToPasswordReset, "phoneVerifyToPasswordReset(...)");
        findNavController.navigate(phoneVerifyToPasswordReset);
    }
}
