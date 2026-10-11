package com.onyx.galaxy.note.usercenter.p049ui;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.navigation.NavController;
import androidx.navigation.NavDirections;
import androidx.navigation.fragment.FragmentKt;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.account.action.BindPhoneOrEmailAction;
import com.onyx.android.sdk.data.account.action.RebindPhoneOrEmailAction;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.android.sdk.data.account.bean.BindPhoneOrEmailArgs;
import com.onyx.android.sdk.data.account.bean.RebindPhoneOrEmailArgs;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.utils.AreaCodeUtil;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.data.VerifyCodeBundle;
import com.onyx.galaxy.note.account.event.VerifyCodeNotifyEvent;
import com.onyx.galaxy.note.account.model.AreaCodeModel;
import com.onyx.galaxy.note.account.view.dialog.AreaCodeDialog;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.data.AppConfigManager;
import com.onyx.galaxy.note.databinding.FragmentBindPhoneBinding;
import com.onyx.galaxy.note.usercenter.p049ui.BindPhoneFragment;
import com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b+\u0010,J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J$\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0007J\b\u0010\u0012\u001a\u00020\u0004H\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0002J\b\u0010\u0014\u001a\u00020\u0004H\u0002J\b\u0010\u0015\u001a\u00020\u0004H\u0002J\b\u0010\u0016\u001a\u00020\u0004H\u0002J\b\u0010\u0017\u001a\u00020\u0004H\u0002J\b\u0010\u0018\u001a\u00020\u0004H\u0002J\b\u0010\u0019\u001a\u00020\u0004H\u0002J\u0010\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\b\u0010\u001d\u001a\u00020\u0004H\u0002J\b\u0010\u001e\u001a\u00020\u0004H\u0002R\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010&\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010*\u001a\u00020'8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006-"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/ui/BindPhoneFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "onDestroy", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;", NotificationCompat.CATEGORY_EVENT, "onVerifyCodeWaitTimeUpdate", "B0", "r0", "A0", "s0", "H0", "G0", "z0", "F0", "Lcom/onyx/galaxy/note/account/model/AreaCodeModel;", "model", "D0", "E0", "C0", "Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;", "d1", "Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;", "binding", "Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;", "e1", "Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;", "verifyCodeViewModel", "Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;", "f1", "Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;", "areaCodeDialog", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBindPhoneFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BindPhoneFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/BindPhoneFragment\n+ 2 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,234:1\n214#2:235\n214#2:236\n*S KotlinDebug\n*F\n+ 1 BindPhoneFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/BindPhoneFragment\n*L\n179#1:235\n198#1:236\n*E\n"})
/* loaded from: classes17.dex */
public final class BindPhoneFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    public FragmentBindPhoneBinding binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final VerifyCodeViewModel verifyCodeViewModel = new VerifyCodeViewModel();

    /* renamed from: f1, reason: from kotlin metadata */
    public AreaCodeDialog areaCodeDialog;

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.BindPhoneFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12864a<T> implements Consumer {
        public C12864a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BindPhoneFragment.this.m51608E0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.BindPhoneFragment$b */
    /* loaded from: classes9.dex */
    public static final class C12865b<T> implements Consumer {
        public C12865b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BindPhoneFragment.this.m51608E0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.BindPhoneFragment$c */
    /* loaded from: classes9.dex */
    public static final class C12866c implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f62386a;

        public C12866c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f62386a = function;
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
            return this.f62386a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f62386a.invoke(obj);
        }
    }

    /* renamed from: t0 */
    public static final void m51598t0(BindPhoneFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    /* renamed from: u0 */
    public static final void m51599u0(BindPhoneFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (AppConfigManager.INSTANCE.hasPhoneLaw()) {
            this$0.m51611H0();
            return;
        }
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    /* renamed from: v0 */
    public static final void m51600v0(BindPhoneFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51610G0();
    }

    /* renamed from: w0 */
    public static final void m51601w0(BindPhoneFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51610G0();
    }

    /* renamed from: x0 */
    public static final void m51602x0(BindPhoneFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.verifyCodeViewModel.isRebindMode()) {
            this$0.m51609F0();
        } else {
            this$0.m51614z0();
        }
    }

    /* renamed from: y0 */
    public static final void m51603y0(BindPhoneFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        VerifyCodeViewModel verifyCodeViewModel = this$0.verifyCodeViewModel;
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        verifyCodeViewModel.sendVerifyCodeWithSubscribe(requireActivity);
    }

    /* renamed from: A0 */
    public final void m51604A0() {
        if (Intrinsics.areEqual(this.verifyCodeViewModel.getPurpose(), AccountVerifyPurpose.PURPOSE_BIND_PHONE_AFTER_LOGIN)) {
            FragmentBindPhoneBinding fragmentBindPhoneBinding = this.binding;
            FragmentBindPhoneBinding fragmentBindPhoneBinding2 = null;
            if (fragmentBindPhoneBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentBindPhoneBinding = null;
            }
            ViewKt.setViewVisibleOrInvisible(fragmentBindPhoneBinding.backButton, false);
            FragmentBindPhoneBinding fragmentBindPhoneBinding3 = this.binding;
            if (fragmentBindPhoneBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentBindPhoneBinding2 = fragmentBindPhoneBinding3;
            }
            ViewKt.setViewVisibleOrInvisible(fragmentBindPhoneBinding2.skipButton, true);
        }
    }

    /* renamed from: B0 */
    public final void m51605B0() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            BindPhoneFragmentArgs fromBundle = BindPhoneFragmentArgs.fromBundle(arguments);
            Intrinsics.checkNotNullExpressionValue(fromBundle, "fromBundle(...)");
            VerifyCodeViewModel verifyCodeViewModel = this.verifyCodeViewModel;
            String purpose = fromBundle.getPurpose();
            Intrinsics.checkNotNullExpressionValue(purpose, "getPurpose(...)");
            verifyCodeViewModel.setPurpose(purpose);
            this.verifyCodeViewModel.setVerifyType(1);
            VerifyCodeViewModel verifyCodeViewModel2 = this.verifyCodeViewModel;
            String oldSocialAccount = fromBundle.getOldSocialAccount();
            Intrinsics.checkNotNullExpressionValue(oldSocialAccount, "getOldSocialAccount(...)");
            verifyCodeViewModel2.setOldSocialAccount(oldSocialAccount);
            VerifyCodeViewModel verifyCodeViewModel3 = this.verifyCodeViewModel;
            String oldVerifyCode = fromBundle.getOldVerifyCode();
            Intrinsics.checkNotNullExpressionValue(oldVerifyCode, "getOldVerifyCode(...)");
            verifyCodeViewModel3.setOldVerifyCode(oldVerifyCode);
            VerifyCodeViewModel verifyCodeViewModel4 = this.verifyCodeViewModel;
            String simpleName = BindPhoneFragment.class.getSimpleName();
            Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
            verifyCodeViewModel4.setVerifyCodeTag(simpleName);
        }
    }

    /* renamed from: C0 */
    public final void m51606C0() {
        NavController findNavController = FragmentKt.findNavController(this);
        NavDirections bindPhoneToAccountCenter = BindPhoneFragmentDirections.bindPhoneToAccountCenter();
        Intrinsics.checkNotNullExpressionValue(bindPhoneToAccountCenter, "bindPhoneToAccountCenter(...)");
        findNavController.navigate(bindPhoneToAccountCenter);
    }

    /* renamed from: D0 */
    public final void m51607D0(AreaCodeModel model) {
        this.verifyCodeViewModel.getAreaCode().postValue(model.getCode());
        AreaCodeDialog areaCodeDialog = this.areaCodeDialog;
        if (areaCodeDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("areaCodeDialog");
            areaCodeDialog = null;
        }
        areaCodeDialog.dismiss();
    }

    /* renamed from: E0 */
    public final void m51608E0() {
        String purpose = this.verifyCodeViewModel.getPurpose();
        int hashCode = purpose.hashCode();
        if (hashCode == -2125020557) {
            if (purpose.equals(AccountVerifyPurpose.PURPOSE_BIND_PHONE_AFTER_LOGIN)) {
                com.onyx.android.sdk.base.extension.FragmentKt.finishActivity(this);
            }
        } else {
            if (hashCode == -934944528) {
                if (purpose.equals(AccountVerifyPurpose.PURPOSE_REBIND)) {
                    ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.user_tip_rebind_success, false, 2, (Object) null);
                    m51606C0();
                    return;
                }
                return;
            }
            if (hashCode == 3023933 && purpose.equals("bind")) {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.user_tip_bind_success, false, 2, (Object) null);
                m51606C0();
            }
        }
    }

    /* renamed from: F0 */
    public final void m51609F0() {
        RebindPhoneOrEmailArgs rebindPhoneOrEmailArgs = new RebindPhoneOrEmailArgs();
        rebindPhoneOrEmailArgs.setAccountType("phone");
        rebindPhoneOrEmailArgs.setOldAccount(this.verifyCodeViewModel.getOldSocialAccount());
        rebindPhoneOrEmailArgs.setOldVerifiedCode(this.verifyCodeViewModel.getOldVerifyCode());
        rebindPhoneOrEmailArgs.setNewAccount(this.verifyCodeViewModel.getSocialAccount().getValue());
        rebindPhoneOrEmailArgs.setNewVerifiedCode(this.verifyCodeViewModel.getVerifyCode().getValue());
        rebindPhoneOrEmailArgs.setNewAreaCode(AreaCodeUtil.INSTANCE.getPrefixedAreaCode(this.verifyCodeViewModel.getAreaCode().getValue()));
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<Object> doOnNext = new RebindPhoneOrEmailAction(rebindPhoneOrEmailArgs).build().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12865b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<Object> doOnError = doOnNext.doOnError(new Consumer() { // from class: com.onyx.galaxy.note.usercenter.ui.BindPhoneFragment$rebindSocialAccount$$inlined$handleTimeoutError$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Throwable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OnyxErrorHandler.INSTANCE.showTimeoutMessage(it2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnError, null, null, 3, null);
    }

    /* renamed from: G0 */
    public final void m51610G0() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        BindPhoneFragment$selectAreaCode$1 bindPhoneFragment$selectAreaCode$1 = new BindPhoneFragment$selectAreaCode$1(this);
        String value = this.verifyCodeViewModel.getAreaCode().getValue();
        Intrinsics.checkNotNull(value);
        AreaCodeDialog areaCodeDialog = new AreaCodeDialog(requireContext, bindPhoneFragment$selectAreaCode$1, value);
        this.areaCodeDialog = areaCodeDialog;
        areaCodeDialog.show();
    }

    /* renamed from: H0 */
    public final void m51611H0() {
        if (this.verifyCodeViewModel.getIsReconfirmed()) {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        new CommonDialog.Builder(requireActivity).setWarning(true).setTitle(C7106R.string.tip).setMessage(C10651R.string.user_tip_reconfirm_before_skip).setConfirmText(C10651R.string.user_title_continue_skip).setCancelText(C10651R.string.user_title_goto_bind).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.BindPhoneFragment$skipWithReconfirm$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                invoke2(commonDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CommonDialog dialog, @NotNull String text) {
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(text, "text");
                FragmentActivity activity2 = BindPhoneFragment.this.getActivity();
                if (activity2 != null) {
                    activity2.finish();
                }
            }
        }).setCancelable(false).create().show();
        this.verifyCodeViewModel.setReconfirmed(true);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063257, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentBindPhoneBinding inflate = FragmentBindPhoneBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        FragmentBindPhoneBinding fragmentBindPhoneBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.setLifecycleOwner(getViewLifecycleOwner());
        FragmentBindPhoneBinding fragmentBindPhoneBinding2 = this.binding;
        if (fragmentBindPhoneBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBindPhoneBinding2 = null;
        }
        fragmentBindPhoneBinding2.setVerifyCodeViewModel(this.verifyCodeViewModel);
        FragmentBindPhoneBinding fragmentBindPhoneBinding3 = this.binding;
        if (fragmentBindPhoneBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentBindPhoneBinding = fragmentBindPhoneBinding3;
        }
        View root = fragmentBindPhoneBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        VerifyCodeBundle verifyCodeBundle = VerifyCodeBundle.INSTANCE;
        EventBusHolderKt.ensureUnRegister(verifyCodeBundle.getEventBus(), this);
        String simpleName = BindPhoneFragment.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        verifyCodeBundle.release(simpleName);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVerifyCodeWaitTimeUpdate(@NotNull VerifyCodeNotifyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (Intrinsics.areEqual(event.getKey(), BindPhoneFragment.class.getSimpleName())) {
            this.verifyCodeViewModel.getVerifyCodeWaitTime().postValue(Integer.valueOf((int) event.getLeftTime()));
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m51604A0();
        m51613s0();
    }

    /* renamed from: r0 */
    public final void m51612r0() {
        this.verifyCodeViewModel.getVerifyCodeSendStatus().observe(this, new C12866c(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.BindPhoneFragment$addFragmentEvents$1
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
                FragmentBindPhoneBinding fragmentBindPhoneBinding;
                FragmentBindPhoneBinding fragmentBindPhoneBinding2;
                if (num != null && num.intValue() == 3) {
                    VerifyCodeBundle verifyCodeBundle = VerifyCodeBundle.INSTANCE;
                    verifyCodeViewModel = BindPhoneFragment.this.verifyCodeViewModel;
                    String verifyCodeTag = verifyCodeViewModel.getVerifyCodeTag();
                    verifyCodeViewModel2 = BindPhoneFragment.this.verifyCodeViewModel;
                    VerifyCodeBundle.addTimer$default(verifyCodeBundle, verifyCodeTag, verifyCodeViewModel2.getResendWaitTime(), false, 4, null);
                    fragmentBindPhoneBinding = BindPhoneFragment.this.binding;
                    FragmentBindPhoneBinding fragmentBindPhoneBinding3 = null;
                    if (fragmentBindPhoneBinding == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        fragmentBindPhoneBinding = null;
                    }
                    fragmentBindPhoneBinding.verifyCodeEdit.setEnabled(true);
                    fragmentBindPhoneBinding2 = BindPhoneFragment.this.binding;
                    if (fragmentBindPhoneBinding2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        fragmentBindPhoneBinding3 = fragmentBindPhoneBinding2;
                    }
                    fragmentBindPhoneBinding3.verifyCodeEdit.requestFocus();
                }
            }
        }));
    }

    /* renamed from: s0 */
    public final void m51613s0() {
        FragmentBindPhoneBinding fragmentBindPhoneBinding = this.binding;
        FragmentBindPhoneBinding fragmentBindPhoneBinding2 = null;
        if (fragmentBindPhoneBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBindPhoneBinding = null;
        }
        fragmentBindPhoneBinding.phoneEdit.requestFocus();
        FragmentBindPhoneBinding fragmentBindPhoneBinding3 = this.binding;
        if (fragmentBindPhoneBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBindPhoneBinding3 = null;
        }
        fragmentBindPhoneBinding3.backButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.cr
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BindPhoneFragment.m51598t0(BindPhoneFragment.this, view);
            }
        });
        FragmentBindPhoneBinding fragmentBindPhoneBinding4 = this.binding;
        if (fragmentBindPhoneBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBindPhoneBinding4 = null;
        }
        fragmentBindPhoneBinding4.skipButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.dr
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BindPhoneFragment.m51599u0(BindPhoneFragment.this, view);
            }
        });
        FragmentBindPhoneBinding fragmentBindPhoneBinding5 = this.binding;
        if (fragmentBindPhoneBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBindPhoneBinding5 = null;
        }
        fragmentBindPhoneBinding5.areaCodeText.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.er
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BindPhoneFragment.m51600v0(BindPhoneFragment.this, view);
            }
        });
        FragmentBindPhoneBinding fragmentBindPhoneBinding6 = this.binding;
        if (fragmentBindPhoneBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBindPhoneBinding6 = null;
        }
        fragmentBindPhoneBinding6.areaCodeSelector.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.fr
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BindPhoneFragment.m51601w0(BindPhoneFragment.this, view);
            }
        });
        FragmentBindPhoneBinding fragmentBindPhoneBinding7 = this.binding;
        if (fragmentBindPhoneBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBindPhoneBinding7 = null;
        }
        fragmentBindPhoneBinding7.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.gr
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BindPhoneFragment.m51602x0(BindPhoneFragment.this, view);
            }
        });
        FragmentBindPhoneBinding fragmentBindPhoneBinding8 = this.binding;
        if (fragmentBindPhoneBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentBindPhoneBinding2 = fragmentBindPhoneBinding8;
        }
        fragmentBindPhoneBinding2.verifyCodeButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hr
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BindPhoneFragment.m51603y0(BindPhoneFragment.this, view);
            }
        });
    }

    /* renamed from: z0 */
    public final void m51614z0() {
        BindPhoneOrEmailArgs bindPhoneOrEmailArgs = new BindPhoneOrEmailArgs();
        bindPhoneOrEmailArgs.setBoundAccountType("phone");
        bindPhoneOrEmailArgs.setVerifiedAccount(this.verifyCodeViewModel.getSocialAccount().getValue());
        bindPhoneOrEmailArgs.setAreaCode(this.verifyCodeViewModel.getAreaCode().getValue());
        bindPhoneOrEmailArgs.setCode(this.verifyCodeViewModel.getVerifyCode().getValue());
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<Object> doOnNext = new BindPhoneOrEmailAction(bindPhoneOrEmailArgs).build().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12864a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<Object> doOnError = doOnNext.doOnError(new Consumer() { // from class: com.onyx.galaxy.note.usercenter.ui.BindPhoneFragment$bindSocialAccount$$inlined$handleTimeoutError$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Throwable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OnyxErrorHandler.INSTANCE.showTimeoutMessage(it2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnError, null, null, 3, null);
    }
}
