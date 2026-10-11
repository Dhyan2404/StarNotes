package com.onyx.galaxy.note.usercenter.p049ui;

import android.content.Intent;
import android.os.Bundle;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.p043ui.LoginActivity;
import com.onyx.galaxy.note.account.p043ui.LoginFragment;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentPasswordResetBinding;
import com.onyx.galaxy.note.usercenter.p049ui.PasswordResetFragment;
import com.onyx.galaxy.note.usercenter.viewmodel.PasswordResetViewModel;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u000e\u001a\u00020\u0004H\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0002R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "r0", "m0", "n0", "p0", "q0", "s0", "Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;", "d1", "Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;", "binding", "Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;", "e1", "Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;", "passwordViewModel", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class PasswordResetFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    public FragmentPasswordResetBinding binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final PasswordResetViewModel passwordViewModel = new PasswordResetViewModel();

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.PasswordResetFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12886a implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f62463a;

        public C12886a(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f62463a = function;
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
            return this.f62463a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f62463a.invoke(obj);
        }
    }

    /* renamed from: o0 */
    public static final void m51766o0(PasswordResetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    /* renamed from: m0 */
    public final void m51767m0() {
        this.passwordViewModel.getEvents().observe(this, new C12886a(new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.PasswordResetFragment$addFragmentEvents$1
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
                if (str != null) {
                    int hashCode = str.hashCode();
                    if (hashCode == -893275313) {
                        if (str.equals(UserCenterEvents.RESET_PASSWORD_SUCCESS)) {
                            PasswordResetFragment.this.m51772s0();
                        }
                    } else if (hashCode == -498432948) {
                        if (str.equals(UserCenterEvents.NEW_PASSWORD_VISIBILITY_CHANGED)) {
                            PasswordResetFragment.this.m51769p0();
                        }
                    } else if (hashCode == -352450477 && str.equals(UserCenterEvents.OLD_PASSWORD_VISIBILITY_CHANGED)) {
                        PasswordResetFragment.this.m51770q0();
                    }
                }
            }
        }));
    }

    /* renamed from: n0 */
    public final void m51768n0() {
        FragmentPasswordResetBinding fragmentPasswordResetBinding = this.binding;
        if (fragmentPasswordResetBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentPasswordResetBinding = null;
        }
        fragmentPasswordResetBinding.backButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.yyk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PasswordResetFragment.m51766o0(PasswordResetFragment.this, view);
            }
        });
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063247, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentPasswordResetBinding inflate = FragmentPasswordResetBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        FragmentPasswordResetBinding fragmentPasswordResetBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.setLifecycleOwner(getViewLifecycleOwner());
        FragmentPasswordResetBinding fragmentPasswordResetBinding2 = this.binding;
        if (fragmentPasswordResetBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentPasswordResetBinding2 = null;
        }
        fragmentPasswordResetBinding2.setPasswordViewModel(this.passwordViewModel);
        FragmentPasswordResetBinding fragmentPasswordResetBinding3 = this.binding;
        if (fragmentPasswordResetBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentPasswordResetBinding = fragmentPasswordResetBinding3;
        }
        View root = fragmentPasswordResetBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m51768n0();
    }

    /* renamed from: p0 */
    public final void m51769p0() {
        FragmentPasswordResetBinding fragmentPasswordResetBinding = null;
        if (this.passwordViewModel.getIsNewPasswordVisible()) {
            FragmentPasswordResetBinding fragmentPasswordResetBinding2 = this.binding;
            if (fragmentPasswordResetBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentPasswordResetBinding2 = null;
            }
            fragmentPasswordResetBinding2.newPasswordEdit.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
            FragmentPasswordResetBinding fragmentPasswordResetBinding3 = this.binding;
            if (fragmentPasswordResetBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentPasswordResetBinding = fragmentPasswordResetBinding3;
            }
            fragmentPasswordResetBinding.showNewPasswordButton.setImageResource(C10651R.drawable.icon_visible);
            return;
        }
        FragmentPasswordResetBinding fragmentPasswordResetBinding4 = this.binding;
        if (fragmentPasswordResetBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentPasswordResetBinding4 = null;
        }
        fragmentPasswordResetBinding4.newPasswordEdit.setTransformationMethod(PasswordTransformationMethod.getInstance());
        FragmentPasswordResetBinding fragmentPasswordResetBinding5 = this.binding;
        if (fragmentPasswordResetBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentPasswordResetBinding = fragmentPasswordResetBinding5;
        }
        fragmentPasswordResetBinding.showNewPasswordButton.setImageResource(C10651R.drawable.icon_invisible);
    }

    /* renamed from: q0 */
    public final void m51770q0() {
        FragmentPasswordResetBinding fragmentPasswordResetBinding = null;
        if (this.passwordViewModel.getIsConfirmPasswordVisible()) {
            FragmentPasswordResetBinding fragmentPasswordResetBinding2 = this.binding;
            if (fragmentPasswordResetBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentPasswordResetBinding2 = null;
            }
            fragmentPasswordResetBinding2.confirmPasswordEdit.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
            FragmentPasswordResetBinding fragmentPasswordResetBinding3 = this.binding;
            if (fragmentPasswordResetBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentPasswordResetBinding = fragmentPasswordResetBinding3;
            }
            fragmentPasswordResetBinding.showConfirmPasswordButton.setImageResource(C10651R.drawable.icon_visible);
            return;
        }
        FragmentPasswordResetBinding fragmentPasswordResetBinding4 = this.binding;
        if (fragmentPasswordResetBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentPasswordResetBinding4 = null;
        }
        fragmentPasswordResetBinding4.confirmPasswordEdit.setTransformationMethod(PasswordTransformationMethod.getInstance());
        FragmentPasswordResetBinding fragmentPasswordResetBinding5 = this.binding;
        if (fragmentPasswordResetBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentPasswordResetBinding = fragmentPasswordResetBinding5;
        }
        fragmentPasswordResetBinding.showConfirmPasswordButton.setImageResource(C10651R.drawable.icon_invisible);
    }

    /* renamed from: r0 */
    public final void m51771r0() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            PasswordResetFragmentArgs fromBundle = PasswordResetFragmentArgs.fromBundle(arguments);
            Intrinsics.checkNotNullExpressionValue(fromBundle, "fromBundle(...)");
            PasswordResetViewModel passwordResetViewModel = this.passwordViewModel;
            String purpose = fromBundle.getPurpose();
            Intrinsics.checkNotNullExpressionValue(purpose, "getPurpose(...)");
            passwordResetViewModel.setPurpose(purpose);
            PasswordResetViewModel passwordResetViewModel2 = this.passwordViewModel;
            String socialAccount = fromBundle.getSocialAccount();
            Intrinsics.checkNotNullExpressionValue(socialAccount, "getSocialAccount(...)");
            passwordResetViewModel2.setSocialAccount(socialAccount);
            PasswordResetViewModel passwordResetViewModel3 = this.passwordViewModel;
            String token = fromBundle.getToken();
            Intrinsics.checkNotNullExpressionValue(token, "getToken(...)");
            passwordResetViewModel3.setToken(token);
        }
    }

    /* renamed from: s0 */
    public final void m51772s0() {
        List listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(AccountVerifyPurpose.PURPOSE_PASSWORD_RECOVER);
        if (!listOf.contains(this.passwordViewModel.getPurpose())) {
            Intent intent = new Intent(requireContext(), (Class<?>) LoginActivity.class);
            intent.putExtra(LoginFragment.KEY_LOGIN_TYPE, 6);
            startActivity(intent);
        }
        requireActivity().finish();
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.user_tip_password_reset_success, false, 2, (Object) null);
    }
}
