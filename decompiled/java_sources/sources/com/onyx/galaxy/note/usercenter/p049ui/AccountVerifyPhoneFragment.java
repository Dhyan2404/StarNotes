package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelProvider;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.extension.DataBindingKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.account.data.VerifyCodeBundle;
import com.onyx.galaxy.note.account.event.CloseKeyBoardEvent;
import com.onyx.galaxy.note.account.event.EnableVerificationCodeEditEvent;
import com.onyx.galaxy.note.account.event.VerifySuccessEvent;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.LayoutAccountVerifyPhoneBinding;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPhoneViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\f\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u00020\nH\u0002J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001b\u0010\u001a\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPhoneFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "", "onDestroyView", "onResume", "n0", "", NotificationCompat.CATEGORY_EVENT, "m0", "Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;", "d1", "Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;", "binding", "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;", "e1", "Lkotlin/Lazy;", "l0", "()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;", "phoneViewModel", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class AccountVerifyPhoneFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    public LayoutAccountVerifyPhoneBinding binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy phoneViewModel;

    public AccountVerifyPhoneFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<AccountVerifyPhoneViewModel>() { // from class: com.onyx.galaxy.note.usercenter.ui.AccountVerifyPhoneFragment$phoneViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AccountVerifyPhoneViewModel invoke() {
                FragmentActivity requireActivity = AccountVerifyPhoneFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (AccountVerifyPhoneViewModel) new ViewModelProvider(requireActivity).get(AccountVerifyPhoneViewModel.class);
            }
        });
        this.phoneViewModel = lazy;
    }

    /* renamed from: l0 */
    public final AccountVerifyPhoneViewModel m51569l0() {
        return (AccountVerifyPhoneViewModel) this.phoneViewModel.getValue();
    }

    /* renamed from: m0 */
    public final void m51570m0(Object event) {
        if (event instanceof VerifySuccessEvent) {
            GlobalBundle.INSTANCE.postEvent(event);
            m51569l0().reset();
            return;
        }
        LayoutAccountVerifyPhoneBinding layoutAccountVerifyPhoneBinding = null;
        if (!(event instanceof CloseKeyBoardEvent)) {
            if (event instanceof EnableVerificationCodeEditEvent) {
                LayoutAccountVerifyPhoneBinding layoutAccountVerifyPhoneBinding2 = this.binding;
                if (layoutAccountVerifyPhoneBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    layoutAccountVerifyPhoneBinding = layoutAccountVerifyPhoneBinding2;
                }
                layoutAccountVerifyPhoneBinding.verificationCodeEdit.requestFocus();
                return;
            }
            return;
        }
        LayoutAccountVerifyPhoneBinding layoutAccountVerifyPhoneBinding3 = this.binding;
        if (layoutAccountVerifyPhoneBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutAccountVerifyPhoneBinding3 = null;
        }
        ViewKt.hideInputKeyboard(layoutAccountVerifyPhoneBinding3.phoneEdit);
        LayoutAccountVerifyPhoneBinding layoutAccountVerifyPhoneBinding4 = this.binding;
        if (layoutAccountVerifyPhoneBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutAccountVerifyPhoneBinding = layoutAccountVerifyPhoneBinding4;
        }
        ViewKt.hideInputKeyboard(layoutAccountVerifyPhoneBinding.verificationCodeEdit);
    }

    /* renamed from: n0 */
    public final void m51571n0() {
        MutableLiveData<Object> event = m51569l0().getEvent();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        DataBindingKt.observeOnce(event, viewLifecycleOwner, new AccountVerifyPhoneFragment$initLayout$1(this));
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        LayoutAccountVerifyPhoneBinding inflate = LayoutAccountVerifyPhoneBinding.inflate(getLayoutInflater(), container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        LayoutAccountVerifyPhoneBinding layoutAccountVerifyPhoneBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.setLifecycleOwner(getViewLifecycleOwner());
        LayoutAccountVerifyPhoneBinding layoutAccountVerifyPhoneBinding2 = this.binding;
        if (layoutAccountVerifyPhoneBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutAccountVerifyPhoneBinding2 = null;
        }
        layoutAccountVerifyPhoneBinding2.setPhoneViewModel(m51569l0());
        LayoutAccountVerifyPhoneBinding layoutAccountVerifyPhoneBinding3 = this.binding;
        if (layoutAccountVerifyPhoneBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutAccountVerifyPhoneBinding3 = null;
        }
        layoutAccountVerifyPhoneBinding3.executePendingBindings();
        m51571n0();
        EventBusHolderKt.ensureRegister(VerifyCodeBundle.INSTANCE.getEventBus(), m51569l0());
        LayoutAccountVerifyPhoneBinding layoutAccountVerifyPhoneBinding4 = this.binding;
        if (layoutAccountVerifyPhoneBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutAccountVerifyPhoneBinding = layoutAccountVerifyPhoneBinding4;
        }
        View root = layoutAccountVerifyPhoneBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        EventBusHolderKt.ensureUnRegister(VerifyCodeBundle.INSTANCE.getEventBus(), m51569l0());
        super.onDestroyView();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        LayoutAccountVerifyPhoneBinding layoutAccountVerifyPhoneBinding = this.binding;
        if (layoutAccountVerifyPhoneBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutAccountVerifyPhoneBinding = null;
        }
        layoutAccountVerifyPhoneBinding.getRoot().requestLayout();
    }
}
