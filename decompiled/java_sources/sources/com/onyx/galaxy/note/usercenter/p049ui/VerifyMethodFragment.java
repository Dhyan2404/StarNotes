package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.navigation.NavGraphViewModelLazyKt;
import androidx.navigation.fragment.FragmentKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.data.account.bean.AccountVerifyMethods;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentVerifyMethodBinding;
import com.onyx.galaxy.note.usercenter.p049ui.VerifyMethodFragment;
import com.onyx.galaxy.note.usercenter.p049ui.VerifyMethodFragmentDirections;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountCenterViewModel;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b$\u0010%J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u000e\u001a\u00020\u0004H\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0002R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010#\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010 ¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/ui/VerifyMethodFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "z0", "r0", "D0", "C0", "A0", "B0", "Lcom/onyx/galaxy/note/databinding/FragmentVerifyMethodBinding;", "d1", "Lcom/onyx/galaxy/note/databinding/FragmentVerifyMethodBinding;", "binding", "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;", "e1", "Lkotlin/Lazy;", "y0", "()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;", "viewModel", "", "f1", Constants.STRING_SIG, "selectedMethod", "g1", AccountVerifyPurpose.KEY_PURPOSE, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nVerifyMethodFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VerifyMethodFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/VerifyMethodFragment\n+ 2 NavGraphViewModelLazy.kt\nandroidx/navigation/NavGraphViewModelLazyKt\n*L\n1#1,137:1\n105#2,15:138\n*S KotlinDebug\n*F\n+ 1 VerifyMethodFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/VerifyMethodFragment\n*L\n21#1:138,15\n*E\n"})
/* loaded from: classes17.dex */
public final class VerifyMethodFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    public FragmentVerifyMethodBinding binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewModel;

    /* renamed from: f1, reason: from kotlin metadata */
    @Nullable
    public String selectedMethod;

    /* renamed from: g1, reason: from kotlin metadata */
    @NotNull
    public String purpose;

    public VerifyMethodFragment() {
        final Lazy lazy;
        final int i = C10651R.id.nav_graph_user_center;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<NavBackStackEntry>() { // from class: com.onyx.galaxy.note.usercenter.ui.VerifyMethodFragment$special$$inlined$navGraphViewModels$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NavBackStackEntry invoke() {
                return FragmentKt.findNavController(Fragment.this).getBackStackEntry(i);
            }
        });
        final Function0 function0 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(AccountCenterViewModel.class), new Function0<ViewModelStore>() { // from class: com.onyx.galaxy.note.usercenter.ui.VerifyMethodFragment$special$$inlined$navGraphViewModels$default$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewModelStore invoke() {
                NavBackStackEntry m5170b;
                m5170b = NavGraphViewModelLazyKt.m5170b(Lazy.this);
                return m5170b.getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: com.onyx.galaxy.note.usercenter.ui.VerifyMethodFragment$special$$inlined$navGraphViewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CreationExtras invoke() {
                NavBackStackEntry m5170b;
                CreationExtras creationExtras;
                Function0 function02 = Function0.this;
                if (function02 != null && (creationExtras = (CreationExtras) function02.invoke()) != null) {
                    return creationExtras;
                }
                m5170b = NavGraphViewModelLazyKt.m5170b(lazy);
                return m5170b.getDefaultViewModelCreationExtras();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.onyx.galaxy.note.usercenter.ui.VerifyMethodFragment$special$$inlined$navGraphViewModels$default$4
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewModelProvider.Factory invoke() {
                NavBackStackEntry m5170b;
                m5170b = NavGraphViewModelLazyKt.m5170b(Lazy.this);
                return m5170b.getDefaultViewModelProviderFactory();
            }
        });
        this.purpose = "none";
    }

    /* renamed from: s0 */
    public static final void m51847s0(VerifyMethodFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    /* renamed from: t0 */
    public static final void m51848t0(VerifyMethodFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51855C0();
    }

    /* renamed from: u0 */
    public static final void m51849u0(VerifyMethodFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.selectedMethod = AccountVerifyMethods.PHONE;
        this$0.m51856D0();
    }

    /* renamed from: v0 */
    public static final void m51850v0(VerifyMethodFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.selectedMethod = AccountVerifyMethods.EMAIL;
        this$0.m51856D0();
    }

    /* renamed from: w0 */
    public static final void m51851w0(VerifyMethodFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.selectedMethod = AccountVerifyMethods.WECHAT;
        this$0.m51856D0();
    }

    /* renamed from: x0 */
    public static final void m51852x0(VerifyMethodFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.selectedMethod = AccountVerifyMethods.HUAWEI;
        this$0.m51856D0();
    }

    /* renamed from: A0 */
    public final void m51853A0() {
        NavController findNavController = FragmentKt.findNavController(this);
        String str = this.selectedMethod;
        if (str != null) {
            switch (str.hashCode()) {
                case -2122609145:
                    str.equals(AccountVerifyMethods.HUAWEI);
                    return;
                case -1707903162:
                    if (str.equals(AccountVerifyMethods.WECHAT)) {
                        VerifyMethodFragmentDirections.VerifyMethodToWechatVerify verifyMethodToWechatVerify = VerifyMethodFragmentDirections.verifyMethodToWechatVerify("destroy");
                        Intrinsics.checkNotNullExpressionValue(verifyMethodToWechatVerify, "verifyMethodToWechatVerify(...)");
                        findNavController.navigate(verifyMethodToWechatVerify);
                        return;
                    }
                    return;
                case 67066748:
                    if (str.equals(AccountVerifyMethods.EMAIL)) {
                        findNavController.navigate(C10651R.id.fragment_log_off_by_email);
                        return;
                    }
                    return;
                case 77090126:
                    if (str.equals(AccountVerifyMethods.PHONE)) {
                        findNavController.navigate(C10651R.id.fragment_log_off_by_phone);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: B0 */
    public final void m51854B0() {
        NavController findNavController = FragmentKt.findNavController(this);
        String str = this.selectedMethod;
        if (Intrinsics.areEqual(str, AccountVerifyMethods.PHONE)) {
            VerifyMethodFragmentDirections.VerifyMethodToPhoneVerify verifyMethodToPhoneVerify = VerifyMethodFragmentDirections.verifyMethodToPhoneVerify(AccountVerifyPurpose.PURPOSE_PASSWORD_RESET);
            Intrinsics.checkNotNullExpressionValue(verifyMethodToPhoneVerify, "verifyMethodToPhoneVerify(...)");
            findNavController.navigate(verifyMethodToPhoneVerify);
        } else if (Intrinsics.areEqual(str, AccountVerifyMethods.EMAIL)) {
            VerifyMethodFragmentDirections.VerifyMethodToEmailVerify verifyMethodToEmailVerify = VerifyMethodFragmentDirections.verifyMethodToEmailVerify(AccountVerifyPurpose.PURPOSE_PASSWORD_RESET);
            Intrinsics.checkNotNullExpressionValue(verifyMethodToEmailVerify, "verifyMethodToEmailVerify(...)");
            findNavController.navigate(verifyMethodToEmailVerify);
        }
    }

    /* renamed from: C0 */
    public final void m51855C0() {
        String str = this.purpose;
        if (Intrinsics.areEqual(str, "destroy")) {
            m51853A0();
        } else if (Intrinsics.areEqual(str, AccountVerifyPurpose.PURPOSE_PASSWORD_RESET)) {
            m51854B0();
        }
    }

    /* renamed from: D0 */
    public final void m51856D0() {
        OnyxAccountModel currentAccount = m51858y0().getCurrentAccount();
        if (currentAccount == null) {
            return;
        }
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding = this.binding;
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding2 = null;
        if (fragmentVerifyMethodBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding = null;
        }
        fragmentVerifyMethodBinding.passwordLayout.setEnabled(false);
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding3 = this.binding;
        if (fragmentVerifyMethodBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding3 = null;
        }
        fragmentVerifyMethodBinding3.passwordText.setEnabled(false);
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding4 = this.binding;
        if (fragmentVerifyMethodBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding4 = null;
        }
        fragmentVerifyMethodBinding4.phoneLayout.setEnabled(currentAccount.getPhone() != null);
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding5 = this.binding;
        if (fragmentVerifyMethodBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding5 = null;
        }
        fragmentVerifyMethodBinding5.phoneText.setEnabled(currentAccount.getPhone() != null);
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding6 = this.binding;
        if (fragmentVerifyMethodBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding6 = null;
        }
        fragmentVerifyMethodBinding6.emailLayout.setEnabled(currentAccount.getEmail() != null);
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding7 = this.binding;
        if (fragmentVerifyMethodBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding7 = null;
        }
        fragmentVerifyMethodBinding7.emailText.setEnabled(currentAccount.getEmail() != null);
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding8 = this.binding;
        if (fragmentVerifyMethodBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding8 = null;
        }
        fragmentVerifyMethodBinding8.wechatLayout.setEnabled(currentAccount.getWechat() != null);
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding9 = this.binding;
        if (fragmentVerifyMethodBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding9 = null;
        }
        fragmentVerifyMethodBinding9.wechatText.setEnabled(currentAccount.getWechat() != null);
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding10 = this.binding;
        if (fragmentVerifyMethodBinding10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding10 = null;
        }
        fragmentVerifyMethodBinding10.huaweiLayout.setEnabled(false);
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding11 = this.binding;
        if (fragmentVerifyMethodBinding11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding11 = null;
        }
        fragmentVerifyMethodBinding11.huaweiText.setEnabled(false);
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding12 = this.binding;
        if (fragmentVerifyMethodBinding12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding12 = null;
        }
        fragmentVerifyMethodBinding12.nextButton.setEnabled(this.selectedMethod != null);
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding13 = this.binding;
        if (fragmentVerifyMethodBinding13 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding13 = null;
        }
        fragmentVerifyMethodBinding13.passwordText.setSelected(Intrinsics.areEqual(this.selectedMethod, AccountVerifyMethods.PASSWORD));
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding14 = this.binding;
        if (fragmentVerifyMethodBinding14 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding14 = null;
        }
        fragmentVerifyMethodBinding14.phoneText.setSelected(Intrinsics.areEqual(this.selectedMethod, AccountVerifyMethods.PHONE));
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding15 = this.binding;
        if (fragmentVerifyMethodBinding15 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding15 = null;
        }
        fragmentVerifyMethodBinding15.emailText.setSelected(Intrinsics.areEqual(this.selectedMethod, AccountVerifyMethods.EMAIL));
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding16 = this.binding;
        if (fragmentVerifyMethodBinding16 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding16 = null;
        }
        fragmentVerifyMethodBinding16.wechatText.setSelected(Intrinsics.areEqual(this.selectedMethod, AccountVerifyMethods.WECHAT));
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding17 = this.binding;
        if (fragmentVerifyMethodBinding17 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding17 = null;
        }
        fragmentVerifyMethodBinding17.huaweiText.setSelected(Intrinsics.areEqual(this.selectedMethod, AccountVerifyMethods.HUAWEI));
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding18 = this.binding;
        if (fragmentVerifyMethodBinding18 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding18 = null;
        }
        TintImageView tintImageView = fragmentVerifyMethodBinding18.passwordImage;
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding19 = this.binding;
        if (fragmentVerifyMethodBinding19 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding19 = null;
        }
        ViewKt.setViewVisibleOrInvisible(tintImageView, fragmentVerifyMethodBinding19.passwordText.isSelected());
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding20 = this.binding;
        if (fragmentVerifyMethodBinding20 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding20 = null;
        }
        TintImageView tintImageView2 = fragmentVerifyMethodBinding20.phoneImage;
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding21 = this.binding;
        if (fragmentVerifyMethodBinding21 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding21 = null;
        }
        ViewKt.setViewVisibleOrInvisible(tintImageView2, fragmentVerifyMethodBinding21.phoneText.isSelected());
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding22 = this.binding;
        if (fragmentVerifyMethodBinding22 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding22 = null;
        }
        TintImageView tintImageView3 = fragmentVerifyMethodBinding22.emailImage;
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding23 = this.binding;
        if (fragmentVerifyMethodBinding23 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding23 = null;
        }
        ViewKt.setViewVisibleOrInvisible(tintImageView3, fragmentVerifyMethodBinding23.emailText.isSelected());
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding24 = this.binding;
        if (fragmentVerifyMethodBinding24 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding24 = null;
        }
        TintImageView tintImageView4 = fragmentVerifyMethodBinding24.wechatImage;
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding25 = this.binding;
        if (fragmentVerifyMethodBinding25 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding25 = null;
        }
        ViewKt.setViewVisibleOrInvisible(tintImageView4, fragmentVerifyMethodBinding25.wechatText.isSelected());
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding26 = this.binding;
        if (fragmentVerifyMethodBinding26 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding26 = null;
        }
        TintImageView tintImageView5 = fragmentVerifyMethodBinding26.huaweiImage;
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding27 = this.binding;
        if (fragmentVerifyMethodBinding27 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentVerifyMethodBinding2 = fragmentVerifyMethodBinding27;
        }
        ViewKt.setViewVisibleOrInvisible(tintImageView5, fragmentVerifyMethodBinding2.huaweiText.isSelected());
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063241, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentVerifyMethodBinding inflate = FragmentVerifyMethodBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.setLifecycleOwner(getViewLifecycleOwner());
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding2 = this.binding;
        if (fragmentVerifyMethodBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentVerifyMethodBinding = fragmentVerifyMethodBinding2;
        }
        View root = fragmentVerifyMethodBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m51859z0();
        m51857r0();
    }

    /* renamed from: r0 */
    public final void m51857r0() {
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding = this.binding;
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding2 = null;
        if (fragmentVerifyMethodBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding = null;
        }
        fragmentVerifyMethodBinding.backButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.s0o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VerifyMethodFragment.m51847s0(VerifyMethodFragment.this, view);
            }
        });
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding3 = this.binding;
        if (fragmentVerifyMethodBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding3 = null;
        }
        fragmentVerifyMethodBinding3.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.t0o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VerifyMethodFragment.m51848t0(VerifyMethodFragment.this, view);
            }
        });
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding4 = this.binding;
        if (fragmentVerifyMethodBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding4 = null;
        }
        fragmentVerifyMethodBinding4.phoneLayout.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.u0o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VerifyMethodFragment.m51849u0(VerifyMethodFragment.this, view);
            }
        });
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding5 = this.binding;
        if (fragmentVerifyMethodBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding5 = null;
        }
        fragmentVerifyMethodBinding5.emailLayout.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.v0o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VerifyMethodFragment.m51850v0(VerifyMethodFragment.this, view);
            }
        });
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding6 = this.binding;
        if (fragmentVerifyMethodBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVerifyMethodBinding6 = null;
        }
        fragmentVerifyMethodBinding6.wechatLayout.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.w0o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VerifyMethodFragment.m51851w0(VerifyMethodFragment.this, view);
            }
        });
        FragmentVerifyMethodBinding fragmentVerifyMethodBinding7 = this.binding;
        if (fragmentVerifyMethodBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentVerifyMethodBinding2 = fragmentVerifyMethodBinding7;
        }
        fragmentVerifyMethodBinding2.huaweiLayout.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.x0o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VerifyMethodFragment.m51852x0(VerifyMethodFragment.this, view);
            }
        });
    }

    /* renamed from: y0 */
    public final AccountCenterViewModel m51858y0() {
        return (AccountCenterViewModel) this.viewModel.getValue();
    }

    /* renamed from: z0 */
    public final void m51859z0() {
        m51856D0();
    }
}
