package com.onyx.galaxy.note.usercenter.p049ui;

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
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.data.VerifyCodeBundle;
import com.onyx.galaxy.note.account.event.VerifyCodeNotifyEvent;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentBindEmailBinding;
import com.onyx.galaxy.note.usercenter.p049ui.BindEmailFragment;
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
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\"\u0010#J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J$\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0007J\b\u0010\u0012\u001a\u00020\u0004H\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0002J\b\u0010\u0014\u001a\u00020\u0004H\u0002J\b\u0010\u0015\u001a\u00020\u0004H\u0002J\b\u0010\u0016\u001a\u00020\u0004H\u0002J\b\u0010\u0017\u001a\u00020\u0004H\u0002J\b\u0010\u0018\u001a\u00020\u0004H\u0002J\b\u0010\u0019\u001a\u00020\u0004H\u0002R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006$"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "onDestroy", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;", NotificationCompat.CATEGORY_EVENT, "onVerifyCodeWaitTimeUpdate", "x0", "p0", "w0", "q0", "v0", "A0", "z0", "y0", "Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;", "d1", "Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;", "binding", "Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;", "e1", "Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;", "verifyCodeViewModel", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBindEmailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BindEmailFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/BindEmailFragment\n+ 2 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,183:1\n214#2:184\n214#2:185\n*S KotlinDebug\n*F\n+ 1 BindEmailFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/BindEmailFragment\n*L\n137#1:184\n157#1:185\n*E\n"})
/* loaded from: classes17.dex */
public final class BindEmailFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    public FragmentBindEmailBinding binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final VerifyCodeViewModel verifyCodeViewModel = new VerifyCodeViewModel();

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.BindEmailFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12858a<T> implements Consumer {
        public C12858a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.user_title_bind_success, false, 2, (Object) null);
            BindEmailFragment.this.m51590z0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.BindEmailFragment$b */
    /* loaded from: classes9.dex */
    public static final class C12859b<T> implements Consumer {
        public C12859b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.user_title_bind_success, false, 2, (Object) null);
            BindEmailFragment.this.m51590z0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.BindEmailFragment$c */
    /* loaded from: classes9.dex */
    public static final class C12860c implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f62378a;

        public C12860c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f62378a = function;
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
            return this.f62378a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f62378a.invoke(obj);
        }
    }

    /* renamed from: r0 */
    public static final void m51579r0(BindEmailFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    /* renamed from: s0 */
    public static final void m51580s0(BindEmailFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    /* renamed from: t0 */
    public static final void m51581t0(BindEmailFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.verifyCodeViewModel.isRebindMode()) {
            this$0.m51583A0();
        } else {
            this$0.m51586v0();
        }
    }

    /* renamed from: u0 */
    public static final void m51582u0(BindEmailFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        VerifyCodeViewModel verifyCodeViewModel = this$0.verifyCodeViewModel;
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        verifyCodeViewModel.sendVerifyCodeWithSubscribe(requireActivity);
    }

    /* renamed from: A0 */
    public final void m51583A0() {
        RebindPhoneOrEmailArgs rebindPhoneOrEmailArgs = new RebindPhoneOrEmailArgs();
        rebindPhoneOrEmailArgs.setAccountType("email");
        rebindPhoneOrEmailArgs.setOldAccount(this.verifyCodeViewModel.getOldSocialAccount());
        rebindPhoneOrEmailArgs.setOldVerifiedCode(this.verifyCodeViewModel.getOldVerifyCode());
        rebindPhoneOrEmailArgs.setNewAccount(this.verifyCodeViewModel.getSocialAccount().getValue());
        rebindPhoneOrEmailArgs.setNewVerifiedCode(this.verifyCodeViewModel.getVerifyCode().getValue());
        rebindPhoneOrEmailArgs.setNewAreaCode(AreaCodeUtil.INSTANCE.getPrefixedAreaCode(this.verifyCodeViewModel.getAreaCode().getValue()));
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<Object> doOnNext = new RebindPhoneOrEmailAction(rebindPhoneOrEmailArgs).build().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12859b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<Object> doOnError = doOnNext.doOnError(new Consumer() { // from class: com.onyx.galaxy.note.usercenter.ui.BindEmailFragment$rebindSocialAccount$$inlined$handleTimeoutError$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Throwable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OnyxErrorHandler.INSTANCE.showTimeoutMessage(it2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnError, null, null, 3, null);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063258, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentBindEmailBinding inflate = FragmentBindEmailBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        FragmentBindEmailBinding fragmentBindEmailBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.setLifecycleOwner(getViewLifecycleOwner());
        FragmentBindEmailBinding fragmentBindEmailBinding2 = this.binding;
        if (fragmentBindEmailBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBindEmailBinding2 = null;
        }
        fragmentBindEmailBinding2.setVerifyCodeViewModel(this.verifyCodeViewModel);
        FragmentBindEmailBinding fragmentBindEmailBinding3 = this.binding;
        if (fragmentBindEmailBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentBindEmailBinding = fragmentBindEmailBinding3;
        }
        View root = fragmentBindEmailBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        VerifyCodeBundle verifyCodeBundle = VerifyCodeBundle.INSTANCE;
        EventBusHolderKt.ensureUnRegister(verifyCodeBundle.getEventBus(), this);
        String simpleName = BindEmailFragment.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        verifyCodeBundle.release(simpleName);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVerifyCodeWaitTimeUpdate(@NotNull VerifyCodeNotifyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (Intrinsics.areEqual(event.getKey(), BindEmailFragment.class.getSimpleName())) {
            this.verifyCodeViewModel.getVerifyCodeWaitTime().postValue(Integer.valueOf((int) event.getLeftTime()));
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m51587w0();
        m51585q0();
    }

    /* renamed from: p0 */
    public final void m51584p0() {
        this.verifyCodeViewModel.getVerifyCodeSendStatus().observe(this, new C12860c(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.BindEmailFragment$addFragmentEvents$1
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
                FragmentBindEmailBinding fragmentBindEmailBinding;
                FragmentBindEmailBinding fragmentBindEmailBinding2;
                if (num != null && num.intValue() == 3) {
                    VerifyCodeBundle verifyCodeBundle = VerifyCodeBundle.INSTANCE;
                    verifyCodeViewModel = BindEmailFragment.this.verifyCodeViewModel;
                    String verifyCodeTag = verifyCodeViewModel.getVerifyCodeTag();
                    verifyCodeViewModel2 = BindEmailFragment.this.verifyCodeViewModel;
                    VerifyCodeBundle.addTimer$default(verifyCodeBundle, verifyCodeTag, verifyCodeViewModel2.getResendWaitTime(), false, 4, null);
                    fragmentBindEmailBinding = BindEmailFragment.this.binding;
                    FragmentBindEmailBinding fragmentBindEmailBinding3 = null;
                    if (fragmentBindEmailBinding == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        fragmentBindEmailBinding = null;
                    }
                    fragmentBindEmailBinding.verifyCodeEdit.setEnabled(true);
                    fragmentBindEmailBinding2 = BindEmailFragment.this.binding;
                    if (fragmentBindEmailBinding2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        fragmentBindEmailBinding3 = fragmentBindEmailBinding2;
                    }
                    fragmentBindEmailBinding3.verifyCodeEdit.requestFocus();
                }
            }
        }));
    }

    /* renamed from: q0 */
    public final void m51585q0() {
        FragmentBindEmailBinding fragmentBindEmailBinding = this.binding;
        FragmentBindEmailBinding fragmentBindEmailBinding2 = null;
        if (fragmentBindEmailBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBindEmailBinding = null;
        }
        fragmentBindEmailBinding.emailEdit.requestFocus();
        FragmentBindEmailBinding fragmentBindEmailBinding3 = this.binding;
        if (fragmentBindEmailBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBindEmailBinding3 = null;
        }
        fragmentBindEmailBinding3.backButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.xq
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BindEmailFragment.m51579r0(BindEmailFragment.this, view);
            }
        });
        FragmentBindEmailBinding fragmentBindEmailBinding4 = this.binding;
        if (fragmentBindEmailBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBindEmailBinding4 = null;
        }
        fragmentBindEmailBinding4.skipButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.yq
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BindEmailFragment.m51580s0(BindEmailFragment.this, view);
            }
        });
        FragmentBindEmailBinding fragmentBindEmailBinding5 = this.binding;
        if (fragmentBindEmailBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBindEmailBinding5 = null;
        }
        fragmentBindEmailBinding5.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.zq
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BindEmailFragment.m51581t0(BindEmailFragment.this, view);
            }
        });
        FragmentBindEmailBinding fragmentBindEmailBinding6 = this.binding;
        if (fragmentBindEmailBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentBindEmailBinding2 = fragmentBindEmailBinding6;
        }
        fragmentBindEmailBinding2.verifyCodeButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ar
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BindEmailFragment.m51582u0(BindEmailFragment.this, view);
            }
        });
    }

    /* renamed from: v0 */
    public final void m51586v0() {
        BindPhoneOrEmailArgs bindPhoneOrEmailArgs = new BindPhoneOrEmailArgs();
        bindPhoneOrEmailArgs.setBoundAccountType("email");
        bindPhoneOrEmailArgs.setVerifiedAccount(this.verifyCodeViewModel.getSocialAccount().getValue());
        bindPhoneOrEmailArgs.setCode(this.verifyCodeViewModel.getVerifyCode().getValue());
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<Object> doOnNext = new BindPhoneOrEmailAction(bindPhoneOrEmailArgs).build().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12858a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<Object> doOnError = doOnNext.doOnError(new Consumer() { // from class: com.onyx.galaxy.note.usercenter.ui.BindEmailFragment$bindSocialAccount$$inlined$handleTimeoutError$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Throwable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OnyxErrorHandler.INSTANCE.showTimeoutMessage(it2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnError, null, null, 3, null);
    }

    /* renamed from: w0 */
    public final void m51587w0() {
        String purpose = this.verifyCodeViewModel.getPurpose();
        FragmentBindEmailBinding fragmentBindEmailBinding = null;
        if (Intrinsics.areEqual(purpose, AccountVerifyPurpose.PURPOSE_BIND_EMAIL_AFTER_LOGIN)) {
            FragmentBindEmailBinding fragmentBindEmailBinding2 = this.binding;
            if (fragmentBindEmailBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentBindEmailBinding2 = null;
            }
            ViewKt.setViewVisibleOrInvisible(fragmentBindEmailBinding2.backButton, false);
            FragmentBindEmailBinding fragmentBindEmailBinding3 = this.binding;
            if (fragmentBindEmailBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentBindEmailBinding = fragmentBindEmailBinding3;
            }
            ViewKt.setViewVisibleOrInvisible(fragmentBindEmailBinding.skipButton, true);
            return;
        }
        if (Intrinsics.areEqual(purpose, AccountVerifyPurpose.PURPOSE_BIND_EMAIL_BEFORE_VERIFY)) {
            FragmentBindEmailBinding fragmentBindEmailBinding4 = this.binding;
            if (fragmentBindEmailBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentBindEmailBinding4 = null;
            }
            ViewKt.setViewVisibleOrInvisible(fragmentBindEmailBinding4.backButton, true);
            FragmentBindEmailBinding fragmentBindEmailBinding5 = this.binding;
            if (fragmentBindEmailBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentBindEmailBinding = fragmentBindEmailBinding5;
            }
            ViewKt.setViewVisibleOrInvisible(fragmentBindEmailBinding.skipButton, false);
        }
    }

    /* renamed from: x0 */
    public final void m51588x0() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            BindEmailFragmentArgs fromBundle = BindEmailFragmentArgs.fromBundle(arguments);
            Intrinsics.checkNotNullExpressionValue(fromBundle, "fromBundle(...)");
            VerifyCodeViewModel verifyCodeViewModel = this.verifyCodeViewModel;
            String purpose = fromBundle.getPurpose();
            Intrinsics.checkNotNullExpressionValue(purpose, "getPurpose(...)");
            verifyCodeViewModel.setPurpose(purpose);
            this.verifyCodeViewModel.setVerifyType(2);
            VerifyCodeViewModel verifyCodeViewModel2 = this.verifyCodeViewModel;
            String oldSocialAccount = fromBundle.getOldSocialAccount();
            Intrinsics.checkNotNullExpressionValue(oldSocialAccount, "getOldSocialAccount(...)");
            verifyCodeViewModel2.setOldSocialAccount(oldSocialAccount);
            VerifyCodeViewModel verifyCodeViewModel3 = this.verifyCodeViewModel;
            String oldVerifyCode = fromBundle.getOldVerifyCode();
            Intrinsics.checkNotNullExpressionValue(oldVerifyCode, "getOldVerifyCode(...)");
            verifyCodeViewModel3.setOldVerifyCode(oldVerifyCode);
            VerifyCodeViewModel verifyCodeViewModel4 = this.verifyCodeViewModel;
            String simpleName = BindEmailFragment.class.getSimpleName();
            Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
            verifyCodeViewModel4.setVerifyCodeTag(simpleName);
        }
    }

    /* renamed from: y0 */
    public final void m51589y0() {
        NavController findNavController = FragmentKt.findNavController(this);
        NavDirections bindEmailToAccountCenter = BindEmailFragmentDirections.bindEmailToAccountCenter();
        Intrinsics.checkNotNullExpressionValue(bindEmailToAccountCenter, "bindEmailToAccountCenter(...)");
        findNavController.navigate(bindEmailToAccountCenter);
    }

    /* renamed from: z0 */
    public final void m51590z0() {
        String purpose = this.verifyCodeViewModel.getPurpose();
        switch (purpose.hashCode()) {
            case -1541145695:
                if (!purpose.equals(AccountVerifyPurpose.PURPOSE_BIND_EMAIL_AFTER_LOGIN)) {
                    return;
                }
                com.onyx.android.sdk.base.extension.FragmentKt.finishActivity(this);
                return;
            case -934944528:
                if (!purpose.equals(AccountVerifyPurpose.PURPOSE_REBIND)) {
                    return;
                }
                break;
            case 3023933:
                if (!purpose.equals("bind")) {
                    return;
                }
                break;
            case 1135703764:
                if (!purpose.equals(AccountVerifyPurpose.PURPOSE_BIND_EMAIL_BEFORE_VERIFY)) {
                    return;
                }
                com.onyx.android.sdk.base.extension.FragmentKt.finishActivity(this);
                return;
            default:
                return;
        }
        m51589y0();
    }
}
