package com.onyx.galaxy.note.usercenter.viewmodel;

import android.content.Context;
import android.content.Intent;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.NavController;
import androidx.navigation.NavDirections;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.account.bean.AuthResultArgs;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.p039ui.DoubleOptionDialog;
import com.onyx.android.sdk.replicator.account.action.LogoutOnyxAccountAction;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.action.MicrosoftLogOffAction;
import com.onyx.galaxy.note.account.hilt.IAccountAuthEntryPoint;
import com.onyx.galaxy.note.account.interfaces.IAccountAuth;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.p048ui.dialog.MessageDialogAction;
import com.onyx.galaxy.note.usercenter.p049ui.LogOffAgreementFragmentDirections;
import com.sun.org.apache.bcel.internal.Constants;
import dagger.hilt.android.EntryPointAccessors;
import dagger.hilt.android.lifecycle.HiltViewModel;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import javax.inject.Inject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@HiltViewModel
@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0006\u0010\t\u001a\u00020\u0004J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u000eR\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "Landroidx/fragment/app/Fragment;", "fragment", "", "requestMicrosoftAuth", "Landroid/content/Intent;", "data", "handleMicrosoftLogOff", "disposeActions", "e", C6997f.f39671c, "Lio/reactivex/rxjava3/disposables/Disposable;", "i", "Lio/reactivex/rxjava3/disposables/Disposable;", "requestMicrosoftAuthDispose", "j", "microsoftLogOffDisposable", "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;", C4921e.f26537n, "Lkotlin/Lazy;", "d", "()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;", "microsoftAccountAuth", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class MicrosoftVerifyViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Disposable requestMicrosoftAuthDispose;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public Disposable microsoftLogOffDisposable;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Lazy microsoftAccountAuth = LazyKt.lazy(new Function0<IAccountAuth>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.MicrosoftVerifyViewModel$microsoftAccountAuth$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final IAccountAuth invoke() {
            return ((IAccountAuthEntryPoint) EntryPointAccessors.fromApplication(ResManager.INSTANCE.getAppContext(), IAccountAuthEntryPoint.class)).getAccountAuthCreator().create(LoginAuthConst.MICROSOFT_AUTH).getAccountAuth();
        }
    });

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.MicrosoftVerifyViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12954a<T, R> implements Function {

        /* renamed from: e */
        public static final C12954a<T, R> f62624e = new C12954a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull AuthResultArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new MicrosoftLogOffAction(it2.getIdToken()).build();
        }
    }

    @SourceDebugExtension({"SMAP\nMicrosoftVerifyViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MicrosoftVerifyViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$logOffMicrosoft$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,104:1\n1#2:105\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.MicrosoftVerifyViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C12955b<T> implements Consumer {

        /* renamed from: e */
        public static final C12955b<T> f62625e = new C12955b<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable t) {
            Intrinsics.checkNotNullParameter(t, "t");
            String localizedMessage = t.getLocalizedMessage();
            if (localizedMessage != null) {
                ToastUtils.INSTANCE.show((CharSequence) localizedMessage, true);
            }
        }
    }

    @SourceDebugExtension({"SMAP\nMicrosoftVerifyViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MicrosoftVerifyViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$logOffMicrosoft$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,104:1\n1#2:105\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.MicrosoftVerifyViewModel$c */
    /* loaded from: classes9.dex */
    public static final class C12956c<T, R> implements Function {

        /* renamed from: e */
        public static final C12956c<T, R> f62626e = new C12956c<>();

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends LogoutOnyxAccountAction> m51936a(boolean z) {
            LogoutOnyxAccountAction logoutOnyxAccountAction = new LogoutOnyxAccountAction();
            logoutOnyxAccountAction.setSkipCloudLogout(true);
            return logoutOnyxAccountAction.build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m51936a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.MicrosoftVerifyViewModel$d */
    /* loaded from: classes9.dex */
    public static final class C12957d<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Fragment f62628f;

        public C12957d(Fragment fragment) {
            this.f62628f = fragment;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LogoutOnyxAccountAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MicrosoftVerifyViewModel.this.m51933f(this.f62628f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.MicrosoftVerifyViewModel$e */
    /* loaded from: classes9.dex */
    public static final class C12958e<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Fragment f62629e;

        public C12958e(Fragment fragment) {
            this.f62629e = fragment;
        }

        /* renamed from: a */
        public final void m51938a(boolean z) {
            FragmentKt.finishActivity(this.f62629e);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m51938a(((Boolean) obj).booleanValue());
        }
    }

    @Inject
    public MicrosoftVerifyViewModel() {
    }

    /* renamed from: d */
    public final IAccountAuth m51931d() {
        return (IAccountAuth) this.microsoftAccountAuth.getValue();
    }

    public final void disposeActions() {
        Disposable disposable = this.requestMicrosoftAuthDispose;
        if (disposable != null) {
            disposable.dispose();
        }
        Disposable disposable2 = this.microsoftLogOffDisposable;
        if (disposable2 != null) {
            disposable2.dispose();
        }
    }

    /* renamed from: e */
    public final void m51932e(Fragment fragment, Intent data) {
        Disposable disposable = this.microsoftLogOffDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        IAccountAuth m51931d = m51931d();
        Context requireContext = fragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        RxBaseAction<AuthResultArgs> createAuthResultAction = m51931d.createAuthResultAction(requireContext, data);
        if (createAuthResultAction == null) {
            this.microsoftLogOffDisposable = null;
        } else {
            this.microsoftLogOffDisposable = createAuthResultAction.build().flatMap(C12954a.f62624e).doOnError(C12955b.f62625e).flatMap(C12956c.f62626e).subscribe(new C12957d(fragment));
        }
    }

    /* renamed from: f */
    public final void m51933f(Fragment fragment) {
        FragmentActivity requireActivity = fragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        new MessageDialogAction(requireActivity, C10651R.string.user_title_logoff_success, C10651R.string.user_tip_logoff_thanks).build().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12958e(fragment)).subscribe();
    }

    public final void handleMicrosoftLogOff(@NotNull final Fragment fragment, @Nullable final Intent data) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        DoubleOptionDialog.Companion companion = DoubleOptionDialog.INSTANCE;
        FragmentActivity requireActivity = fragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        DoubleOptionDialog createWithConfirmWarningIconStyle = companion.createWithConfirmWarningIconStyle(requireActivity);
        createWithConfirmWarningIconStyle.setMask(0.7f);
        createWithConfirmWarningIconStyle.setMessageTextRes(C10651R.string.user_tip_logoff_warning);
        createWithConfirmWarningIconStyle.setLeftButtonTitleRes(C10651R.string.user_title_continue_use);
        createWithConfirmWarningIconStyle.setRightButtonTitleRes(C10651R.string.user_title_confirm_logoff);
        createWithConfirmWarningIconStyle.setOnLeftButtonClick(new Function0<Unit>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.MicrosoftVerifyViewModel$handleMicrosoftLogOff$1$1
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
                NavController findNavController = androidx.navigation.fragment.FragmentKt.findNavController(Fragment.this);
                NavDirections accountCenter = LogOffAgreementFragmentDirections.toAccountCenter();
                Intrinsics.checkNotNullExpressionValue(accountCenter, "toAccountCenter(...)");
                findNavController.navigate(accountCenter);
            }
        });
        createWithConfirmWarningIconStyle.setOnRightButtonClick(new Function0<Unit>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.MicrosoftVerifyViewModel$handleMicrosoftLogOff$1$2
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
                MicrosoftVerifyViewModel.this.m51932e(fragment, data);
            }
        });
        createWithConfirmWarningIconStyle.show();
    }

    public final void requestMicrosoftAuth(@NotNull Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        IAccountAuth m51931d = m51931d();
        Context requireContext = fragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        RxBaseAction<Boolean> createRequestAuth = m51931d.createRequestAuth(fragment, ContextExtKt.createLoadingDialog(requireContext), 1002);
        this.requestMicrosoftAuthDispose = createRequestAuth != null ? RxBaseAction.execute$default(createRequestAuth, null, null, null, 7, null) : null;
    }
}
