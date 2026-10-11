package com.onyx.galaxy.note.usercenter.p049ui;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.AccountVerifyArgs;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.extension.TabLayoutKt;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.account.data.VerifyCodeBundle;
import com.onyx.galaxy.note.account.event.VerifySuccessEvent;
import com.onyx.galaxy.note.databinding.DialogAccountVerifyBinding;
import com.onyx.galaxy.note.usercenter.adapter.AccountVerifyFragmentAdapter;
import com.onyx.galaxy.note.usercenter.p049ui.AccountVerifyFragment;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyEmailViewModel;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyHuaweiViewModel;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPasswordViewModel;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPhoneViewModel;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyViewModel;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyWechatViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.subjects.Subject;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b-\u0010.J&\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J$\u0010\u0013\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010J\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0011J\u0010\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0016H\u0007J\b\u0010\u0019\u001a\u00020\nH\u0002J\b\u0010\u001a\u001a\u00020\nH\u0002J\b\u0010\u001b\u001a\u00020\nH\u0002J\u0010\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\b\u0010\u001f\u001a\u00020\nH\u0002R\u001c\u0010$\u001a\b\u0012\u0004\u0012\u00020!0 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b*\u0010+¨\u0006/"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyFragment;", "Landroidx/fragment/app/DialogFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "", "onDestroyView", "Landroid/content/Context;", "uiContext", "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", "verifyArgs", "Lio/reactivex/rxjava3/subjects/Subject;", "", "eventPublisher", "show", "ret", "close", "Lcom/onyx/galaxy/note/account/event/VerifySuccessEvent;", NotificationCompat.CATEGORY_EVENT, "onVerifySuccessEvent", "v0", "x0", "u0", "Landroidx/lifecycle/ViewModelStoreOwner;", "storeOwner", "t0", "z0", "", "", "z1", "Ljava/util/List;", "methods", "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyViewModel;", "A1", "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyViewModel;", "viewModel", "Lcom/onyx/galaxy/note/databinding/DialogAccountVerifyBinding;", "B1", "Lcom/onyx/galaxy/note/databinding/DialogAccountVerifyBinding;", "binding", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAccountVerifyFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountVerifyFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/AccountVerifyFragment\n+ 2 DataBinding.kt\ncom/onyx/android/sdk/base/extension/DataBindingKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,167:1\n64#2:168\n64#2:174\n64#2:175\n64#2:176\n64#2:177\n64#2:178\n64#2:179\n64#2:180\n64#2:181\n64#2:182\n64#2:183\n64#2:184\n1864#3,3:169\n1855#3,2:172\n*S KotlinDebug\n*F\n+ 1 AccountVerifyFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/AccountVerifyFragment\n*L\n61#1:168\n98#1:174\n99#1:175\n100#1:176\n101#1:177\n102#1:178\n128#1:179\n129#1:180\n130#1:181\n131#1:182\n132#1:183\n142#1:184\n77#1:169,3\n88#1:172,2\n*E\n"})
/* loaded from: classes9.dex */
public final class AccountVerifyFragment extends DialogFragment {

    /* renamed from: A1, reason: from kotlin metadata */
    public AccountVerifyViewModel viewModel;

    /* renamed from: B1, reason: from kotlin metadata */
    public DialogAccountVerifyBinding binding;

    /* renamed from: z1, reason: from kotlin metadata */
    @NotNull
    public List<String> methods;

    public AccountVerifyFragment() {
        List<String> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.methods = emptyList;
    }

    /* renamed from: w0 */
    public static final void m51556w0(AccountVerifyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.close(false);
    }

    /* renamed from: y0 */
    public static final void m51557y0(AccountVerifyFragment this$0, TabLayout.Tab tab, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(tab, "tab");
        DialogAccountVerifyBinding dialogAccountVerifyBinding = this$0.binding;
        if (dialogAccountVerifyBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogAccountVerifyBinding = null;
        }
        dialogAccountVerifyBinding.viewPager.setCurrentItem(i);
    }

    public final void close(boolean ret) {
        VerifyCodeBundle verifyCodeBundle = VerifyCodeBundle.INSTANCE;
        verifyCodeBundle.release(verifyCodeBundle.getKEY_PHONE_VERIFY());
        verifyCodeBundle.release(verifyCodeBundle.getKEY_EMAIL_VERIFY());
        dismissAllowingStateLoss();
        AccountVerifyViewModel accountVerifyViewModel = this.viewModel;
        AccountVerifyViewModel accountVerifyViewModel2 = null;
        if (accountVerifyViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
            accountVerifyViewModel = null;
        }
        accountVerifyViewModel.getEventPublisher().onNext(Boolean.valueOf(ret));
        AccountVerifyViewModel accountVerifyViewModel3 = this.viewModel;
        if (accountVerifyViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        } else {
            accountVerifyViewModel2 = accountVerifyViewModel3;
        }
        accountVerifyViewModel2.reset();
        m51562z0();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        DialogAccountVerifyBinding inflate = DialogAccountVerifyBinding.inflate(getLayoutInflater(), container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        m51560v0();
        m51559u0();
        m51561x0();
        DialogAccountVerifyBinding dialogAccountVerifyBinding = this.binding;
        if (dialogAccountVerifyBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogAccountVerifyBinding = null;
        }
        return dialogAccountVerifyBinding.getRoot();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        GlobalBundle.INSTANCE.unregister(this);
        super.onDestroyView();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVerifySuccessEvent(@NotNull VerifySuccessEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        close(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void show(@NotNull Context uiContext, @NotNull AccountVerifyArgs verifyArgs, @NotNull Subject<Boolean> eventPublisher) {
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(verifyArgs, "verifyArgs");
        Intrinsics.checkNotNullParameter(eventPublisher, "eventPublisher");
        ViewModelStoreOwner viewModelStoreOwner = uiContext instanceof ViewModelStoreOwner ? (ViewModelStoreOwner) uiContext : null;
        if (viewModelStoreOwner == null) {
            return;
        }
        AccountVerifyViewModel accountVerifyViewModel = (AccountVerifyViewModel) new ViewModelProvider(viewModelStoreOwner).get(AccountVerifyViewModel.class);
        this.viewModel = accountVerifyViewModel;
        if (accountVerifyViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
            accountVerifyViewModel = null;
        }
        accountVerifyViewModel.setVerifyArgs(verifyArgs);
        AccountVerifyViewModel accountVerifyViewModel2 = this.viewModel;
        if (accountVerifyViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
            accountVerifyViewModel2 = null;
        }
        AccountDataBundle accountDataBundle = AccountDataBundle.INSTANCE;
        accountVerifyViewModel2.setAccount(accountDataBundle.getOnyxAccount());
        AccountVerifyViewModel accountVerifyViewModel3 = this.viewModel;
        if (accountVerifyViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
            accountVerifyViewModel3 = null;
        }
        accountVerifyViewModel3.setEventPublisher(eventPublisher);
        AccountVerifyViewModel accountVerifyViewModel4 = this.viewModel;
        if (accountVerifyViewModel4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
            accountVerifyViewModel4 = null;
        }
        accountDataBundle.updateSupportedVerifyMethods(accountVerifyViewModel4.getVerifyArgs());
        m51558t0(viewModelStoreOwner);
        AppCompatActivity appCompatActivity = uiContext instanceof AppCompatActivity ? (AppCompatActivity) uiContext : null;
        if (appCompatActivity == null) {
            return;
        }
        FragmentTransaction beginTransaction = appCompatActivity.getSupportFragmentManager().beginTransaction();
        Intrinsics.checkNotNullExpressionValue(beginTransaction, "beginTransaction(...)");
        beginTransaction.add(this, AccountVerifyFragment.class.getSimpleName());
        beginTransaction.commitAllowingStateLoss();
    }

    /* renamed from: t0 */
    public final void m51558t0(ViewModelStoreOwner storeOwner) {
        AccountVerifyPasswordViewModel accountVerifyPasswordViewModel = (AccountVerifyPasswordViewModel) new ViewModelProvider(storeOwner).get(AccountVerifyPasswordViewModel.class);
        AccountVerifyPhoneViewModel accountVerifyPhoneViewModel = (AccountVerifyPhoneViewModel) new ViewModelProvider(storeOwner).get(AccountVerifyPhoneViewModel.class);
        AccountVerifyEmailViewModel accountVerifyEmailViewModel = (AccountVerifyEmailViewModel) new ViewModelProvider(storeOwner).get(AccountVerifyEmailViewModel.class);
        AccountVerifyWechatViewModel accountVerifyWechatViewModel = (AccountVerifyWechatViewModel) new ViewModelProvider(storeOwner).get(AccountVerifyWechatViewModel.class);
        AccountVerifyHuaweiViewModel accountVerifyHuaweiViewModel = (AccountVerifyHuaweiViewModel) new ViewModelProvider(storeOwner).get(AccountVerifyHuaweiViewModel.class);
        AccountVerifyViewModel accountVerifyViewModel = this.viewModel;
        if (accountVerifyViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
            accountVerifyViewModel = null;
        }
        if (accountVerifyViewModel.getVerifyArgs().getEnablePasswordMethod()) {
            AccountVerifyViewModel accountVerifyViewModel2 = this.viewModel;
            if (accountVerifyViewModel2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                accountVerifyViewModel2 = null;
            }
            accountVerifyPasswordViewModel.setVerifyArgs(accountVerifyViewModel2.getVerifyArgs());
            accountVerifyPasswordViewModel.getUsername().setValue(AccountDataBundle.INSTANCE.getPrimaryUsername());
        }
        AccountVerifyViewModel accountVerifyViewModel3 = this.viewModel;
        if (accountVerifyViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
            accountVerifyViewModel3 = null;
        }
        if (accountVerifyViewModel3.getVerifyArgs().getEnablePhoneMethod()) {
            AccountVerifyViewModel accountVerifyViewModel4 = this.viewModel;
            if (accountVerifyViewModel4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                accountVerifyViewModel4 = null;
            }
            accountVerifyPhoneViewModel.setVerifyArgs(accountVerifyViewModel4.getVerifyArgs());
            MutableLiveData<String> phone = accountVerifyPhoneViewModel.getPhone();
            AccountVerifyViewModel accountVerifyViewModel5 = this.viewModel;
            if (accountVerifyViewModel5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                accountVerifyViewModel5 = null;
            }
            OnyxAccountModel onyxAccountModel = accountVerifyViewModel5.getCom.onyx.android.sdk.data.account.bean.LoginAuthConst.ACCOUNT_AUTH java.lang.String();
            String phone2 = onyxAccountModel != null ? onyxAccountModel.getPhone() : null;
            if (phone2 == null) {
                phone2 = "";
            }
            phone.setValue(phone2);
            accountVerifyPhoneViewModel.initAreaCode();
        }
        AccountVerifyViewModel accountVerifyViewModel6 = this.viewModel;
        if (accountVerifyViewModel6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
            accountVerifyViewModel6 = null;
        }
        if (accountVerifyViewModel6.getVerifyArgs().getEnableEmailMethod()) {
            AccountVerifyViewModel accountVerifyViewModel7 = this.viewModel;
            if (accountVerifyViewModel7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                accountVerifyViewModel7 = null;
            }
            accountVerifyEmailViewModel.setVerifyArgs(accountVerifyViewModel7.getVerifyArgs());
            MutableLiveData<String> email = accountVerifyEmailViewModel.getEmail();
            AccountVerifyViewModel accountVerifyViewModel8 = this.viewModel;
            if (accountVerifyViewModel8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                accountVerifyViewModel8 = null;
            }
            OnyxAccountModel onyxAccountModel2 = accountVerifyViewModel8.getCom.onyx.android.sdk.data.account.bean.LoginAuthConst.ACCOUNT_AUTH java.lang.String();
            String email2 = onyxAccountModel2 != null ? onyxAccountModel2.getEmail() : null;
            if (email2 == null) {
                email2 = "";
            }
            email.setValue(email2);
        }
        AccountVerifyViewModel accountVerifyViewModel9 = this.viewModel;
        if (accountVerifyViewModel9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
            accountVerifyViewModel9 = null;
        }
        if (accountVerifyViewModel9.getVerifyArgs().getEnableWechatMethod()) {
            AccountVerifyViewModel accountVerifyViewModel10 = this.viewModel;
            if (accountVerifyViewModel10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                accountVerifyViewModel10 = null;
            }
            accountVerifyWechatViewModel.setVerifyArgs(accountVerifyViewModel10.getVerifyArgs());
            MutableLiveData<String> email3 = accountVerifyEmailViewModel.getEmail();
            AccountVerifyViewModel accountVerifyViewModel11 = this.viewModel;
            if (accountVerifyViewModel11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                accountVerifyViewModel11 = null;
            }
            OnyxAccountModel onyxAccountModel3 = accountVerifyViewModel11.getCom.onyx.android.sdk.data.account.bean.LoginAuthConst.ACCOUNT_AUTH java.lang.String();
            String email4 = onyxAccountModel3 != null ? onyxAccountModel3.getEmail() : null;
            if (email4 == null) {
                email4 = "";
            }
            email3.setValue(email4);
        }
        AccountVerifyViewModel accountVerifyViewModel12 = this.viewModel;
        if (accountVerifyViewModel12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
            accountVerifyViewModel12 = null;
        }
        if (accountVerifyViewModel12.getVerifyArgs().getEnableHuaweiMethod()) {
            AccountVerifyViewModel accountVerifyViewModel13 = this.viewModel;
            if (accountVerifyViewModel13 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                accountVerifyViewModel13 = null;
            }
            accountVerifyHuaweiViewModel.setVerifyArgs(accountVerifyViewModel13.getVerifyArgs());
            MutableLiveData<String> email5 = accountVerifyEmailViewModel.getEmail();
            AccountVerifyViewModel accountVerifyViewModel14 = this.viewModel;
            if (accountVerifyViewModel14 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                accountVerifyViewModel14 = null;
            }
            OnyxAccountModel onyxAccountModel4 = accountVerifyViewModel14.getCom.onyx.android.sdk.data.account.bean.LoginAuthConst.ACCOUNT_AUTH java.lang.String();
            String email6 = onyxAccountModel4 != null ? onyxAccountModel4.getEmail() : null;
            email5.setValue(email6 != null ? email6 : "");
        }
    }

    /* renamed from: u0 */
    public final void m51559u0() {
        AccountVerifyViewModel accountVerifyViewModel = this.viewModel;
        DialogAccountVerifyBinding dialogAccountVerifyBinding = null;
        if (accountVerifyViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
            accountVerifyViewModel = null;
        }
        List<String> supportedMethods = accountVerifyViewModel.getVerifyArgs().getSupportedMethods();
        this.methods = supportedMethods;
        for (String str : supportedMethods) {
            DialogAccountVerifyBinding dialogAccountVerifyBinding2 = this.binding;
            if (dialogAccountVerifyBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogAccountVerifyBinding2 = null;
            }
            TabLayout.Tab newTab = dialogAccountVerifyBinding2.tabLayout.newTab();
            Intrinsics.checkNotNullExpressionValue(newTab, "newTab(...)");
            AccountVerifyViewModel accountVerifyViewModel2 = this.viewModel;
            if (accountVerifyViewModel2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                accountVerifyViewModel2 = null;
            }
            newTab.setText(accountVerifyViewModel2.getTabTitles().get(str));
            newTab.setTag(str);
            DialogAccountVerifyBinding dialogAccountVerifyBinding3 = this.binding;
            if (dialogAccountVerifyBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogAccountVerifyBinding3 = null;
            }
            dialogAccountVerifyBinding3.tabLayout.addTab(newTab, false);
        }
        DialogAccountVerifyBinding dialogAccountVerifyBinding4 = this.binding;
        if (dialogAccountVerifyBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogAccountVerifyBinding = dialogAccountVerifyBinding4;
        }
        TintTabLayoutView tabLayout = dialogAccountVerifyBinding.tabLayout;
        Intrinsics.checkNotNullExpressionValue(tabLayout, "tabLayout");
        TabLayoutKt.selectTabByTag(tabLayout, AccountDataBundle.INSTANCE.getPrimaryVerifyMethod());
    }

    /* renamed from: v0 */
    public final void m51560v0() {
        Window window;
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        this.viewModel = (AccountVerifyViewModel) new ViewModelProvider(requireActivity).get(AccountVerifyViewModel.class);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCancelable(false);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        DialogAccountVerifyBinding dialogAccountVerifyBinding = this.binding;
        DialogAccountVerifyBinding dialogAccountVerifyBinding2 = null;
        if (dialogAccountVerifyBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogAccountVerifyBinding = null;
        }
        TintTextView tintTextView = dialogAccountVerifyBinding.titleText;
        AccountVerifyViewModel accountVerifyViewModel = this.viewModel;
        if (accountVerifyViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
            accountVerifyViewModel = null;
        }
        tintTextView.setText(accountVerifyViewModel.getVerifyArgs().getVerificationTitle());
        DialogAccountVerifyBinding dialogAccountVerifyBinding3 = this.binding;
        if (dialogAccountVerifyBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogAccountVerifyBinding2 = dialogAccountVerifyBinding3;
        }
        TintTextView cancelButton = dialogAccountVerifyBinding2.cancelButton;
        Intrinsics.checkNotNullExpressionValue(cancelButton, "cancelButton");
        ViewKt.click$default(cancelButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.y5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AccountVerifyFragment.m51556w0(AccountVerifyFragment.this, view);
            }
        }, 1, null);
        GlobalBundle.INSTANCE.register(this);
    }

    /* renamed from: x0 */
    public final void m51561x0() {
        DialogAccountVerifyBinding dialogAccountVerifyBinding = this.binding;
        if (dialogAccountVerifyBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogAccountVerifyBinding = null;
        }
        int i = 0;
        dialogAccountVerifyBinding.viewPager.setUserInputEnabled(false);
        DialogAccountVerifyBinding dialogAccountVerifyBinding2 = this.binding;
        if (dialogAccountVerifyBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogAccountVerifyBinding2 = null;
        }
        dialogAccountVerifyBinding2.viewPager.setAdapter(new AccountVerifyFragmentAdapter(this, this.methods));
        DialogAccountVerifyBinding dialogAccountVerifyBinding3 = this.binding;
        if (dialogAccountVerifyBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogAccountVerifyBinding3 = null;
        }
        TintTabLayoutView tintTabLayoutView = dialogAccountVerifyBinding3.tabLayout;
        DialogAccountVerifyBinding dialogAccountVerifyBinding4 = this.binding;
        if (dialogAccountVerifyBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogAccountVerifyBinding4 = null;
        }
        new TabLayoutMediator(tintTabLayoutView, dialogAccountVerifyBinding4.viewPager, false, false, new TabLayoutMediator.TabConfigurationStrategy() { // from class: com.sunia.HTREnginev2.z5
            @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
            public final void onConfigureTab(TabLayout.Tab tab, int i2) {
                AccountVerifyFragment.m51557y0(AccountVerifyFragment.this, tab, i2);
            }
        }).attach();
        for (Object obj : this.methods) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            DialogAccountVerifyBinding dialogAccountVerifyBinding5 = this.binding;
            if (dialogAccountVerifyBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogAccountVerifyBinding5 = null;
            }
            TabLayout.Tab tabAt = dialogAccountVerifyBinding5.tabLayout.getTabAt(i);
            String str = this.methods.get(i);
            AccountVerifyViewModel accountVerifyViewModel = this.viewModel;
            if (accountVerifyViewModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                accountVerifyViewModel = null;
            }
            String str2 = accountVerifyViewModel.getTabTitles().get(str);
            if (tabAt != null) {
                tabAt.setTag(str);
            }
            if (tabAt != null) {
                tabAt.setText(str2);
            }
            i = i2;
        }
    }

    /* renamed from: z0 */
    public final void m51562z0() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        AccountVerifyPasswordViewModel accountVerifyPasswordViewModel = (AccountVerifyPasswordViewModel) new ViewModelProvider(requireActivity).get(AccountVerifyPasswordViewModel.class);
        AccountVerifyPhoneViewModel accountVerifyPhoneViewModel = (AccountVerifyPhoneViewModel) new ViewModelProvider(requireActivity).get(AccountVerifyPhoneViewModel.class);
        AccountVerifyEmailViewModel accountVerifyEmailViewModel = (AccountVerifyEmailViewModel) new ViewModelProvider(requireActivity).get(AccountVerifyEmailViewModel.class);
        AccountVerifyWechatViewModel accountVerifyWechatViewModel = (AccountVerifyWechatViewModel) new ViewModelProvider(requireActivity).get(AccountVerifyWechatViewModel.class);
        AccountVerifyHuaweiViewModel accountVerifyHuaweiViewModel = (AccountVerifyHuaweiViewModel) new ViewModelProvider(requireActivity).get(AccountVerifyHuaweiViewModel.class);
        accountVerifyPasswordViewModel.reset();
        accountVerifyPhoneViewModel.reset();
        accountVerifyEmailViewModel.reset();
        accountVerifyWechatViewModel.reset();
        accountVerifyHuaweiViewModel.reset();
    }
}
