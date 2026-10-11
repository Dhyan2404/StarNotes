package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelProvider;
import com.onyx.android.sdk.base.extension.DataBindingKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.event.CloseKeyBoardEvent;
import com.onyx.galaxy.note.account.event.HidePasswordEvent;
import com.onyx.galaxy.note.account.event.ShowPasswordEvent;
import com.onyx.galaxy.note.account.event.VerifySuccessEvent;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.LayoutAccountVerifyPasswordBinding;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPasswordViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\f\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0002R\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0019\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "", "onResume", "n0", "", NotificationCompat.CATEGORY_EVENT, "m0", "Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;", "d1", "Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;", "binding", "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;", "e1", "Lkotlin/Lazy;", "l0", "()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;", "passwordViewModel", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class AccountVerifyPasswordFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    public LayoutAccountVerifyPasswordBinding binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy passwordViewModel;

    public AccountVerifyPasswordFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<AccountVerifyPasswordViewModel>() { // from class: com.onyx.galaxy.note.usercenter.ui.AccountVerifyPasswordFragment$passwordViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AccountVerifyPasswordViewModel invoke() {
                FragmentActivity requireActivity = AccountVerifyPasswordFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (AccountVerifyPasswordViewModel) new ViewModelProvider(requireActivity).get(AccountVerifyPasswordViewModel.class);
            }
        });
        this.passwordViewModel = lazy;
    }

    /* renamed from: l0 */
    public final AccountVerifyPasswordViewModel m51566l0() {
        return (AccountVerifyPasswordViewModel) this.passwordViewModel.getValue();
    }

    /* renamed from: m0 */
    public final void m51567m0(Object event) {
        if (event instanceof VerifySuccessEvent) {
            GlobalBundle.INSTANCE.postEvent(event);
            m51566l0().reset();
            return;
        }
        LayoutAccountVerifyPasswordBinding layoutAccountVerifyPasswordBinding = null;
        if (event instanceof HidePasswordEvent) {
            LayoutAccountVerifyPasswordBinding layoutAccountVerifyPasswordBinding2 = this.binding;
            if (layoutAccountVerifyPasswordBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                layoutAccountVerifyPasswordBinding2 = null;
            }
            layoutAccountVerifyPasswordBinding2.passwordEdit.setTransformationMethod(PasswordTransformationMethod.getInstance());
            LayoutAccountVerifyPasswordBinding layoutAccountVerifyPasswordBinding3 = this.binding;
            if (layoutAccountVerifyPasswordBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                layoutAccountVerifyPasswordBinding3 = null;
            }
            layoutAccountVerifyPasswordBinding3.hidePasswordButton.setImageResource(C10651R.drawable.icon_invisible);
            LayoutAccountVerifyPasswordBinding layoutAccountVerifyPasswordBinding4 = this.binding;
            if (layoutAccountVerifyPasswordBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                layoutAccountVerifyPasswordBinding = layoutAccountVerifyPasswordBinding4;
            }
            TintEditText passwordEdit = layoutAccountVerifyPasswordBinding.passwordEdit;
            Intrinsics.checkNotNullExpressionValue(passwordEdit, "passwordEdit");
            ViewKt.moveCursorToEnd(passwordEdit);
            return;
        }
        if (!(event instanceof ShowPasswordEvent)) {
            if (event instanceof CloseKeyBoardEvent) {
                LayoutAccountVerifyPasswordBinding layoutAccountVerifyPasswordBinding5 = this.binding;
                if (layoutAccountVerifyPasswordBinding5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    layoutAccountVerifyPasswordBinding5 = null;
                }
                ViewKt.hideInputKeyboard(layoutAccountVerifyPasswordBinding5.usernameEdit);
                LayoutAccountVerifyPasswordBinding layoutAccountVerifyPasswordBinding6 = this.binding;
                if (layoutAccountVerifyPasswordBinding6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    layoutAccountVerifyPasswordBinding = layoutAccountVerifyPasswordBinding6;
                }
                ViewKt.hideInputKeyboard(layoutAccountVerifyPasswordBinding.passwordEdit);
                return;
            }
            return;
        }
        LayoutAccountVerifyPasswordBinding layoutAccountVerifyPasswordBinding7 = this.binding;
        if (layoutAccountVerifyPasswordBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutAccountVerifyPasswordBinding7 = null;
        }
        layoutAccountVerifyPasswordBinding7.passwordEdit.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
        LayoutAccountVerifyPasswordBinding layoutAccountVerifyPasswordBinding8 = this.binding;
        if (layoutAccountVerifyPasswordBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutAccountVerifyPasswordBinding8 = null;
        }
        layoutAccountVerifyPasswordBinding8.hidePasswordButton.setImageResource(C10651R.drawable.icon_visible);
        LayoutAccountVerifyPasswordBinding layoutAccountVerifyPasswordBinding9 = this.binding;
        if (layoutAccountVerifyPasswordBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutAccountVerifyPasswordBinding = layoutAccountVerifyPasswordBinding9;
        }
        TintEditText passwordEdit2 = layoutAccountVerifyPasswordBinding.passwordEdit;
        Intrinsics.checkNotNullExpressionValue(passwordEdit2, "passwordEdit");
        ViewKt.moveCursorToEnd(passwordEdit2);
    }

    /* renamed from: n0 */
    public final void m51568n0() {
        MutableLiveData<Object> event = m51566l0().getEvent();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        DataBindingKt.observeOnce(event, viewLifecycleOwner, new AccountVerifyPasswordFragment$initLayout$1(this));
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        LayoutAccountVerifyPasswordBinding inflate = LayoutAccountVerifyPasswordBinding.inflate(getLayoutInflater(), container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        LayoutAccountVerifyPasswordBinding layoutAccountVerifyPasswordBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.setLifecycleOwner(getViewLifecycleOwner());
        LayoutAccountVerifyPasswordBinding layoutAccountVerifyPasswordBinding2 = this.binding;
        if (layoutAccountVerifyPasswordBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutAccountVerifyPasswordBinding2 = null;
        }
        layoutAccountVerifyPasswordBinding2.setPasswordViewModel(m51566l0());
        LayoutAccountVerifyPasswordBinding layoutAccountVerifyPasswordBinding3 = this.binding;
        if (layoutAccountVerifyPasswordBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutAccountVerifyPasswordBinding3 = null;
        }
        layoutAccountVerifyPasswordBinding3.executePendingBindings();
        m51568n0();
        LayoutAccountVerifyPasswordBinding layoutAccountVerifyPasswordBinding4 = this.binding;
        if (layoutAccountVerifyPasswordBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutAccountVerifyPasswordBinding = layoutAccountVerifyPasswordBinding4;
        }
        View root = layoutAccountVerifyPasswordBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        LayoutAccountVerifyPasswordBinding layoutAccountVerifyPasswordBinding = this.binding;
        if (layoutAccountVerifyPasswordBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutAccountVerifyPasswordBinding = null;
        }
        layoutAccountVerifyPasswordBinding.getRoot().requestLayout();
    }
}
