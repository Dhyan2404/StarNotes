package com.onyx.galaxy.note.usercenter.p049ui;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.navigation.NavController;
import androidx.navigation.NavDirections;
import com.google.android.material.tabs.TabLayout;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.utils.AreaCodeUtil;
import com.onyx.android.sdk.extension.TabLayoutKt;
import com.onyx.android.sdk.p039ui.DoubleOptionDialog;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.data.VerifyCodeBundle;
import com.onyx.galaxy.note.account.model.AreaCodeModel;
import com.onyx.galaxy.note.account.view.dialog.AreaCodeDialog;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentMixedVerifyBinding;
import com.onyx.galaxy.note.p048ui.dialog.MessageDialogAction;
import com.onyx.galaxy.note.usercenter.p049ui.MixedVerifyFragment;
import com.onyx.galaxy.note.usercenter.p049ui.MixedVerifyFragmentDirections;
import com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b9\u0010:J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0007H\u0002J\b\u0010\u0016\u001a\u00020\u0002H\u0002J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0007H\u0002J\b\u0010\u0018\u001a\u00020\u0002H\u0002J\u0012\u0010\u001b\u001a\u00020\u00022\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010\u001c\u001a\u00020\u0002H\u0016J$\u0010!\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u001d2\b\u0010 \u001a\u0004\u0018\u00010\u001f2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016J\u001a\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020\u00122\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016R\u0016\u0010'\u001a\u00020$8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010.\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u0014\u00100\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u0010-R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00108\u001a\u0002058\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b6\u00107¨\u0006;"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/ui/MixedVerifyFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "E0", "s0", "D0", "t0", "Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;", "viewModel", "B0", "C0", "K0", "Lcom/onyx/galaxy/note/account/model/AreaCodeModel;", "model", "I0", "Lcom/google/android/material/tabs/TabLayout$Tab;", "tab", "M0", "Landroid/view/View;", gon.f71305w, "L0", "J0", "H0", "G0", "F0", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "onDestroy", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "onCreateView", "view", "onViewCreated", "Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;", "d1", "Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;", "binding", "", "e1", Constants.STRING_SIG, AccountVerifyPurpose.KEY_PURPOSE, "f1", "Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;", "phoneViewModel", "g1", "emailViewModel", "", "h1", "I", "selectedTabIndex", "Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;", "i1", "Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;", "areaCodeDialog", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMixedVerifyFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MixedVerifyFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/MixedVerifyFragment\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,300:1\n41#2,5:301\n41#2,5:306\n32#2,5:311\n32#2,5:316\n*S KotlinDebug\n*F\n+ 1 MixedVerifyFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/MixedVerifyFragment\n*L\n99#1:301,5\n145#1:306,5\n146#1:311,5\n149#1:316,5\n*E\n"})
/* loaded from: classes17.dex */
public final class MixedVerifyFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    public FragmentMixedVerifyBinding binding;

    /* renamed from: e1, reason: from kotlin metadata */
    public String purpose;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final VerifyCodeViewModel phoneViewModel = new VerifyCodeViewModel();

    /* renamed from: g1, reason: from kotlin metadata */
    @NotNull
    public final VerifyCodeViewModel emailViewModel = new VerifyCodeViewModel();

    /* renamed from: h1, reason: from kotlin metadata */
    public int selectedTabIndex;

    /* renamed from: i1, reason: from kotlin metadata */
    public AreaCodeDialog areaCodeDialog;

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.MixedVerifyFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12882a<T> implements Consumer {
        public C12882a() {
        }

        /* renamed from: a */
        public final void m51763a(boolean z) {
            FragmentKt.finishActivity(MixedVerifyFragment.this);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m51763a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.MixedVerifyFragment$b */
    /* loaded from: classes9.dex */
    public static final class C12883b implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f62457a;

        public C12883b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f62457a = function;
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
            return this.f62457a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f62457a.invoke(obj);
        }
    }

    /* renamed from: A0 */
    public static final void m51735A0(MixedVerifyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51749B0(this$0.emailViewModel);
    }

    /* renamed from: u0 */
    public static final void m51743u0(MixedVerifyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    /* renamed from: v0 */
    public static final void m51744v0(MixedVerifyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51758K0();
    }

    /* renamed from: w0 */
    public static final void m51745w0(MixedVerifyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51758K0();
    }

    /* renamed from: x0 */
    public static final void m51746x0(MixedVerifyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        VerifyCodeViewModel verifyCodeViewModel = this$0.phoneViewModel;
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        verifyCodeViewModel.sendVerifyCodeWithSubscribe(requireActivity);
    }

    /* renamed from: y0 */
    public static final void m51747y0(MixedVerifyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51749B0(this$0.phoneViewModel);
    }

    /* renamed from: z0 */
    public static final void m51748z0(MixedVerifyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        VerifyCodeViewModel verifyCodeViewModel = this$0.emailViewModel;
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        verifyCodeViewModel.sendVerifyCodeWithSubscribe(requireActivity);
    }

    /* renamed from: B0 */
    public final void m51749B0(final VerifyCodeViewModel viewModel) {
        if (!Intrinsics.areEqual(viewModel.getPurpose(), "destroy")) {
            m51750C0(viewModel);
            return;
        }
        DoubleOptionDialog.Companion companion = DoubleOptionDialog.INSTANCE;
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        DoubleOptionDialog createWithConfirmWarningIconStyle = companion.createWithConfirmWarningIconStyle(requireActivity);
        createWithConfirmWarningIconStyle.setMask(0.7f);
        createWithConfirmWarningIconStyle.setMessageTextRes(C10651R.string.user_tip_logoff_warning);
        createWithConfirmWarningIconStyle.setLeftButtonTitleRes(C10651R.string.user_title_continue_use);
        createWithConfirmWarningIconStyle.setRightButtonTitleRes(C10651R.string.user_title_confirm_logoff);
        createWithConfirmWarningIconStyle.setOnLeftButtonClick(new Function0<Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.MixedVerifyFragment$askForContinue$1$1
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
                MixedVerifyFragment.this.m51753F0();
            }
        });
        createWithConfirmWarningIconStyle.setOnRightButtonClick(new Function0<Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.MixedVerifyFragment$askForContinue$1$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                MixedVerifyFragment.this.m51750C0(viewModel);
            }
        });
        createWithConfirmWarningIconStyle.show();
    }

    /* renamed from: C0 */
    public final void m51750C0(VerifyCodeViewModel viewModel) {
        String str = this.purpose;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException(AccountVerifyPurpose.KEY_PURPOSE);
            str = null;
        }
        int hashCode = str.hashCode();
        if (hashCode != -187786581) {
            if (hashCode != -88751168) {
                if (hashCode == 1557372922 && str.equals("destroy")) {
                    viewModel.logoffWithPhoneEmail();
                    return;
                }
                return;
            }
            if (!str.equals(AccountVerifyPurpose.PURPOSE_PASSWORD_RECOVER)) {
                return;
            }
        } else if (!str.equals(AccountVerifyPurpose.PURPOSE_PASSWORD_RESET)) {
            return;
        }
        viewModel.checkVerifyResult();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002e, code lost:
    
        if (r0.equals("destroy") == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0057, code lost:
    
        r0 = com.onyx.android.sdk.data.account.AccountDataBundle.INSTANCE.getOnyxAccount();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x005d, code lost:
    
        if (r0 == null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x005f, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0062, code lost:
    
        if (r3 == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0068, code lost:
    
        if (r0.getPhone() != null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006a, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006d, code lost:
    
        if (r3 == false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006f, code lost:
    
        r3 = r11.binding;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0071, code lost:
    
        if (r3 != null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0073, code lost:
    
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException("binding");
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0077, code lost:
    
        r3.tabLayout.removeTabAt(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0080, code lost:
    
        if (r0.getEmail() != null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0082, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0085, code lost:
    
        if (r0 == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0087, code lost:
    
        r0 = r11.binding;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0089, code lost:
    
        if (r0 != null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008b, code lost:
    
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException("binding");
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008f, code lost:
    
        r0.tabLayout.removeTabAt(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0084, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x006c, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0061, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0054, code lost:
    
        if (r0.equals(com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose.PURPOSE_PASSWORD_RESET) == false) goto L50;
     */
    /* renamed from: D0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m51751D0() {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.usercenter.p049ui.MixedVerifyFragment.m51751D0():void");
    }

    /* renamed from: E0 */
    public final void m51752E0() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            EmailVerifyFragmentArgs fromBundle = EmailVerifyFragmentArgs.fromBundle(arguments);
            Intrinsics.checkNotNullExpressionValue(fromBundle, "fromBundle(...)");
            String purpose = fromBundle.getPurpose();
            Intrinsics.checkNotNullExpressionValue(purpose, "getPurpose(...)");
            this.purpose = purpose;
            VerifyCodeViewModel verifyCodeViewModel = this.phoneViewModel;
            String purpose2 = fromBundle.getPurpose();
            Intrinsics.checkNotNullExpressionValue(purpose2, "getPurpose(...)");
            verifyCodeViewModel.setPurpose(purpose2);
            this.phoneViewModel.setVerifyType(1);
            this.phoneViewModel.setVerifyCodeTag(MixedVerifyFragment.class.getSimpleName() + ":1");
            VerifyCodeViewModel verifyCodeViewModel2 = this.emailViewModel;
            String purpose3 = fromBundle.getPurpose();
            Intrinsics.checkNotNullExpressionValue(purpose3, "getPurpose(...)");
            verifyCodeViewModel2.setPurpose(purpose3);
            this.emailViewModel.setVerifyType(2);
            this.emailViewModel.setVerifyCodeTag(MixedVerifyFragment.class.getSimpleName() + ":2");
            OnyxAccountModel onyxAccount = AccountDataBundle.INSTANCE.getOnyxAccount();
            String trimmedAreaCode = AreaCodeUtil.INSTANCE.getTrimmedAreaCode(onyxAccount != null ? onyxAccount.getAreaCode() : null);
            if (onyxAccount != null) {
                MutableLiveData<String> socialAccount = this.phoneViewModel.getSocialAccount();
                String phone = onyxAccount.getPhone();
                if (phone == null) {
                    phone = "";
                }
                socialAccount.setValue(phone);
                MutableLiveData<String> socialAccount2 = this.emailViewModel.getSocialAccount();
                String email = onyxAccount.getEmail();
                socialAccount2.setValue(email != null ? email : "");
            }
            if (StringKt.isNotBlank(trimmedAreaCode)) {
                this.phoneViewModel.getAreaCode().setValue(trimmedAreaCode);
                this.emailViewModel.getAreaCode().setValue(trimmedAreaCode);
            }
        }
    }

    /* renamed from: F0 */
    public final void m51753F0() {
        NavController findNavController = androidx.navigation.fragment.FragmentKt.findNavController(this);
        NavDirections mixedVerifyToAccountCenter = MixedVerifyFragmentDirections.mixedVerifyToAccountCenter();
        Intrinsics.checkNotNullExpressionValue(mixedVerifyToAccountCenter, "mixedVerifyToAccountCenter(...)");
        findNavController.navigate(mixedVerifyToAccountCenter);
    }

    /* renamed from: G0 */
    public final void m51754G0(VerifyCodeViewModel model) {
        NavController findNavController = androidx.navigation.fragment.FragmentKt.findNavController(this);
        String purpose = model.getPurpose();
        String value = model.getSocialAccount().getValue();
        Intrinsics.checkNotNull(value);
        String value2 = model.getVerifyCode().getValue();
        Intrinsics.checkNotNull(value2);
        MixedVerifyFragmentDirections.MixedVerifyToPasswordReset mixedVerifyToPasswordReset = MixedVerifyFragmentDirections.mixedVerifyToPasswordReset(purpose, value, value2, model.getToken());
        Intrinsics.checkNotNullExpressionValue(mixedVerifyToPasswordReset, "mixedVerifyToPasswordReset(...)");
        findNavController.navigate(mixedVerifyToPasswordReset);
    }

    /* renamed from: H0 */
    public final void m51755H0() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        new MessageDialogAction(requireActivity, C10651R.string.user_title_logoff_success, C10651R.string.user_tip_logoff_thanks).build().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12882a()).subscribe();
    }

    /* renamed from: I0 */
    public final void m51756I0(AreaCodeModel model) {
        this.phoneViewModel.getAreaCode().postValue(model.getCode());
        this.phoneViewModel.notifyPropertyChanged(10);
        AreaCodeDialog areaCodeDialog = this.areaCodeDialog;
        if (areaCodeDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("areaCodeDialog");
            areaCodeDialog = null;
        }
        areaCodeDialog.dismiss();
    }

    /* renamed from: J0 */
    public final void m51757J0(VerifyCodeViewModel model) {
        String str = this.purpose;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException(AccountVerifyPurpose.KEY_PURPOSE);
            str = null;
        }
        if (Intrinsics.areEqual(str, AccountVerifyPurpose.PURPOSE_PASSWORD_RESET) ? true : Intrinsics.areEqual(str, AccountVerifyPurpose.PURPOSE_PASSWORD_RECOVER)) {
            m51754G0(model);
        }
    }

    /* renamed from: K0 */
    public final void m51758K0() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        MixedVerifyFragment$selectAreaCode$1 mixedVerifyFragment$selectAreaCode$1 = new MixedVerifyFragment$selectAreaCode$1(this);
        String value = this.phoneViewModel.getAreaCode().getValue();
        Intrinsics.checkNotNull(value);
        AreaCodeDialog areaCodeDialog = new AreaCodeDialog(requireContext, mixedVerifyFragment$selectAreaCode$1, value);
        this.areaCodeDialog = areaCodeDialog;
        areaCodeDialog.show();
    }

    /* renamed from: L0 */
    public final void m51759L0(View layout) {
        FragmentMixedVerifyBinding fragmentMixedVerifyBinding = this.binding;
        FragmentMixedVerifyBinding fragmentMixedVerifyBinding2 = null;
        if (fragmentMixedVerifyBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMixedVerifyBinding = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentMixedVerifyBinding.phoneVerifyLayout.getRoot(), false);
        FragmentMixedVerifyBinding fragmentMixedVerifyBinding3 = this.binding;
        if (fragmentMixedVerifyBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentMixedVerifyBinding2 = fragmentMixedVerifyBinding3;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentMixedVerifyBinding2.emailVerifyLayout.getRoot(), false);
        ViewKt.setViewVisibleOrInvisible(layout, true);
    }

    /* renamed from: M0 */
    public final void m51760M0(TabLayout.Tab tab) {
        CharSequence contentDescription = tab.getContentDescription();
        ResManager resManager = ResManager.INSTANCE;
        FragmentMixedVerifyBinding fragmentMixedVerifyBinding = null;
        if (Intrinsics.areEqual(contentDescription, resManager.getStringSafely(C10651R.string.user_title_phone))) {
            FragmentMixedVerifyBinding fragmentMixedVerifyBinding2 = this.binding;
            if (fragmentMixedVerifyBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentMixedVerifyBinding = fragmentMixedVerifyBinding2;
            }
            View root = fragmentMixedVerifyBinding.phoneVerifyLayout.getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
            m51759L0(root);
            return;
        }
        if (Intrinsics.areEqual(contentDescription, resManager.getStringSafely(C10651R.string.user_title_email))) {
            FragmentMixedVerifyBinding fragmentMixedVerifyBinding3 = this.binding;
            if (fragmentMixedVerifyBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentMixedVerifyBinding = fragmentMixedVerifyBinding3;
            }
            View root2 = fragmentMixedVerifyBinding.emailVerifyLayout.getRoot();
            Intrinsics.checkNotNullExpressionValue(root2, "getRoot(...)");
            m51759L0(root2);
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063248, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentMixedVerifyBinding inflate = FragmentMixedVerifyBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        FragmentMixedVerifyBinding fragmentMixedVerifyBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.setLifecycleOwner(getViewLifecycleOwner());
        FragmentMixedVerifyBinding fragmentMixedVerifyBinding2 = this.binding;
        if (fragmentMixedVerifyBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMixedVerifyBinding2 = null;
        }
        fragmentMixedVerifyBinding2.setPhoneViewModel(this.phoneViewModel);
        FragmentMixedVerifyBinding fragmentMixedVerifyBinding3 = this.binding;
        if (fragmentMixedVerifyBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMixedVerifyBinding3 = null;
        }
        fragmentMixedVerifyBinding3.setEmailViewModel(this.emailViewModel);
        FragmentMixedVerifyBinding fragmentMixedVerifyBinding4 = this.binding;
        if (fragmentMixedVerifyBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentMixedVerifyBinding = fragmentMixedVerifyBinding4;
        }
        View root = fragmentMixedVerifyBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        VerifyCodeBundle verifyCodeBundle = VerifyCodeBundle.INSTANCE;
        EventBusHolderKt.ensureUnRegister(verifyCodeBundle.getEventBus(), this.phoneViewModel);
        EventBusHolderKt.ensureUnRegister(verifyCodeBundle.getEventBus(), this.emailViewModel);
        verifyCodeBundle.release(this.phoneViewModel.getVerifyCodeTag());
        verifyCodeBundle.release(this.emailViewModel.getVerifyCodeTag());
        super.onDestroy();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m51751D0();
        m51762t0();
    }

    /* renamed from: s0 */
    public final void m51761s0() {
        this.phoneViewModel.getVerifyCodeSendStatus().observe(this, new C12883b(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.MixedVerifyFragment$addFragmentEvents$1
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
                FragmentMixedVerifyBinding fragmentMixedVerifyBinding;
                FragmentMixedVerifyBinding fragmentMixedVerifyBinding2;
                if (num != null && num.intValue() == 3) {
                    VerifyCodeBundle verifyCodeBundle = VerifyCodeBundle.INSTANCE;
                    verifyCodeViewModel = MixedVerifyFragment.this.phoneViewModel;
                    String verifyCodeTag = verifyCodeViewModel.getVerifyCodeTag();
                    verifyCodeViewModel2 = MixedVerifyFragment.this.phoneViewModel;
                    VerifyCodeBundle.addTimer$default(verifyCodeBundle, verifyCodeTag, verifyCodeViewModel2.getResendWaitTime(), false, 4, null);
                    fragmentMixedVerifyBinding = MixedVerifyFragment.this.binding;
                    FragmentMixedVerifyBinding fragmentMixedVerifyBinding3 = null;
                    if (fragmentMixedVerifyBinding == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        fragmentMixedVerifyBinding = null;
                    }
                    fragmentMixedVerifyBinding.phoneVerifyLayout.verifyCodeEdit.setEnabled(true);
                    fragmentMixedVerifyBinding2 = MixedVerifyFragment.this.binding;
                    if (fragmentMixedVerifyBinding2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        fragmentMixedVerifyBinding3 = fragmentMixedVerifyBinding2;
                    }
                    fragmentMixedVerifyBinding3.phoneVerifyLayout.verifyCodeEdit.requestFocus();
                }
            }
        }));
        this.phoneViewModel.getVerifyCodeCheckResult().observe(this, new C12883b(new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.MixedVerifyFragment$addFragmentEvents$2
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
                VerifyCodeViewModel verifyCodeViewModel;
                if (Intrinsics.areEqual(str, UserCenterEvents.VERIFY_SUCCESS)) {
                    MixedVerifyFragment mixedVerifyFragment = MixedVerifyFragment.this;
                    verifyCodeViewModel = mixedVerifyFragment.phoneViewModel;
                    mixedVerifyFragment.m51757J0(verifyCodeViewModel);
                } else if (Intrinsics.areEqual(str, UserCenterEvents.LOGOFF_SUCCESS)) {
                    MixedVerifyFragment.this.m51755H0();
                }
            }
        }));
        this.emailViewModel.getVerifyCodeSendStatus().observe(this, new C12883b(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.MixedVerifyFragment$addFragmentEvents$3
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
                FragmentMixedVerifyBinding fragmentMixedVerifyBinding;
                FragmentMixedVerifyBinding fragmentMixedVerifyBinding2;
                if (num != null && num.intValue() == 3) {
                    VerifyCodeBundle verifyCodeBundle = VerifyCodeBundle.INSTANCE;
                    verifyCodeViewModel = MixedVerifyFragment.this.emailViewModel;
                    String verifyCodeTag = verifyCodeViewModel.getVerifyCodeTag();
                    verifyCodeViewModel2 = MixedVerifyFragment.this.phoneViewModel;
                    VerifyCodeBundle.addTimer$default(verifyCodeBundle, verifyCodeTag, verifyCodeViewModel2.getResendWaitTime(), false, 4, null);
                    fragmentMixedVerifyBinding = MixedVerifyFragment.this.binding;
                    FragmentMixedVerifyBinding fragmentMixedVerifyBinding3 = null;
                    if (fragmentMixedVerifyBinding == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        fragmentMixedVerifyBinding = null;
                    }
                    fragmentMixedVerifyBinding.emailVerifyLayout.verifyCodeEdit.setEnabled(true);
                    fragmentMixedVerifyBinding2 = MixedVerifyFragment.this.binding;
                    if (fragmentMixedVerifyBinding2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        fragmentMixedVerifyBinding3 = fragmentMixedVerifyBinding2;
                    }
                    fragmentMixedVerifyBinding3.emailVerifyLayout.verifyCodeEdit.requestFocus();
                }
            }
        }));
        this.emailViewModel.getVerifyCodeCheckResult().observe(this, new C12883b(new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.MixedVerifyFragment$addFragmentEvents$4
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
                VerifyCodeViewModel verifyCodeViewModel;
                if (Intrinsics.areEqual(str, UserCenterEvents.VERIFY_SUCCESS)) {
                    MixedVerifyFragment mixedVerifyFragment = MixedVerifyFragment.this;
                    verifyCodeViewModel = mixedVerifyFragment.emailViewModel;
                    mixedVerifyFragment.m51757J0(verifyCodeViewModel);
                } else if (Intrinsics.areEqual(str, UserCenterEvents.LOGOFF_SUCCESS)) {
                    MixedVerifyFragment.this.m51755H0();
                }
            }
        }));
    }

    /* renamed from: t0 */
    public final void m51762t0() {
        FragmentMixedVerifyBinding fragmentMixedVerifyBinding = this.binding;
        FragmentMixedVerifyBinding fragmentMixedVerifyBinding2 = null;
        if (fragmentMixedVerifyBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMixedVerifyBinding = null;
        }
        fragmentMixedVerifyBinding.backButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hoj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MixedVerifyFragment.m51743u0(MixedVerifyFragment.this, view);
            }
        });
        FragmentMixedVerifyBinding fragmentMixedVerifyBinding3 = this.binding;
        if (fragmentMixedVerifyBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMixedVerifyBinding3 = null;
        }
        fragmentMixedVerifyBinding3.tabLayout.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() { // from class: com.onyx.galaxy.note.usercenter.ui.MixedVerifyFragment$addViewEvents$2
            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabReselected(@Nullable TabLayout.Tab tab) {
                FragmentMixedVerifyBinding fragmentMixedVerifyBinding4;
                MixedVerifyFragment mixedVerifyFragment = MixedVerifyFragment.this;
                Intrinsics.checkNotNull(tab);
                mixedVerifyFragment.m51760M0(tab);
                MixedVerifyFragment mixedVerifyFragment2 = MixedVerifyFragment.this;
                fragmentMixedVerifyBinding4 = mixedVerifyFragment2.binding;
                if (fragmentMixedVerifyBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentMixedVerifyBinding4 = null;
                }
                mixedVerifyFragment2.selectedTabIndex = fragmentMixedVerifyBinding4.tabLayout.getSelectedTabPosition();
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabSelected(@Nullable TabLayout.Tab tab) {
                FragmentMixedVerifyBinding fragmentMixedVerifyBinding4;
                MixedVerifyFragment mixedVerifyFragment = MixedVerifyFragment.this;
                Intrinsics.checkNotNull(tab);
                mixedVerifyFragment.m51760M0(tab);
                MixedVerifyFragment mixedVerifyFragment2 = MixedVerifyFragment.this;
                fragmentMixedVerifyBinding4 = mixedVerifyFragment2.binding;
                if (fragmentMixedVerifyBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentMixedVerifyBinding4 = null;
                }
                mixedVerifyFragment2.selectedTabIndex = fragmentMixedVerifyBinding4.tabLayout.getSelectedTabPosition();
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabUnselected(@Nullable TabLayout.Tab tab) {
            }
        });
        FragmentMixedVerifyBinding fragmentMixedVerifyBinding4 = this.binding;
        if (fragmentMixedVerifyBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMixedVerifyBinding4 = null;
        }
        TintTabLayoutView tabLayout = fragmentMixedVerifyBinding4.tabLayout;
        Intrinsics.checkNotNullExpressionValue(tabLayout, "tabLayout");
        TabLayoutKt.selectTab(tabLayout, this.selectedTabIndex);
        FragmentMixedVerifyBinding fragmentMixedVerifyBinding5 = this.binding;
        if (fragmentMixedVerifyBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMixedVerifyBinding5 = null;
        }
        fragmentMixedVerifyBinding5.phoneVerifyLayout.areaCodeText.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ioj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MixedVerifyFragment.m51744v0(MixedVerifyFragment.this, view);
            }
        });
        FragmentMixedVerifyBinding fragmentMixedVerifyBinding6 = this.binding;
        if (fragmentMixedVerifyBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMixedVerifyBinding6 = null;
        }
        fragmentMixedVerifyBinding6.phoneVerifyLayout.areaCodeSelector.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.joj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MixedVerifyFragment.m51745w0(MixedVerifyFragment.this, view);
            }
        });
        FragmentMixedVerifyBinding fragmentMixedVerifyBinding7 = this.binding;
        if (fragmentMixedVerifyBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMixedVerifyBinding7 = null;
        }
        fragmentMixedVerifyBinding7.phoneVerifyLayout.verifyCodeButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.koj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MixedVerifyFragment.m51746x0(MixedVerifyFragment.this, view);
            }
        });
        FragmentMixedVerifyBinding fragmentMixedVerifyBinding8 = this.binding;
        if (fragmentMixedVerifyBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMixedVerifyBinding8 = null;
        }
        fragmentMixedVerifyBinding8.phoneVerifyLayout.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.loj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MixedVerifyFragment.m51747y0(MixedVerifyFragment.this, view);
            }
        });
        FragmentMixedVerifyBinding fragmentMixedVerifyBinding9 = this.binding;
        if (fragmentMixedVerifyBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMixedVerifyBinding9 = null;
        }
        fragmentMixedVerifyBinding9.emailVerifyLayout.verifyCodeButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.moj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MixedVerifyFragment.m51748z0(MixedVerifyFragment.this, view);
            }
        });
        FragmentMixedVerifyBinding fragmentMixedVerifyBinding10 = this.binding;
        if (fragmentMixedVerifyBinding10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentMixedVerifyBinding2 = fragmentMixedVerifyBinding10;
        }
        fragmentMixedVerifyBinding2.emailVerifyLayout.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.noj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MixedVerifyFragment.m51735A0(MixedVerifyFragment.this, view);
            }
        });
    }
}
