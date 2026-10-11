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
import com.onyx.galaxy.note.account.action.GoogleLogOffAction;
import com.onyx.galaxy.note.account.hilt.IAccountAuthEntryPoint;
import com.onyx.galaxy.note.account.interfaces.IAccountAuth;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.p048ui.dialog.MessageDialogAction;
import com.onyx.galaxy.note.usercenter.p049ui.LogOffAgreementFragmentDirections;
import com.sun.org.apache.bcel.internal.Constants;
import dagger.hilt.android.EntryPointAccessors;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0006\u0010\t\u001a\u00020\u0004J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u000eR\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/viewmodel/GoogleVerifyViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "Landroidx/fragment/app/Fragment;", "fragment", "", "requestGoogleAuth", "Landroid/content/Intent;", "data", "handleGoogleLogOff", "disposeActions", "e", C6997f.f39671c, "Lio/reactivex/rxjava3/disposables/Disposable;", "i", "Lio/reactivex/rxjava3/disposables/Disposable;", "requestGoogleAuthDispose", "j", "googleLogOffDisposable", "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;", C4921e.f26537n, "Lkotlin/Lazy;", "d", "()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;", "googleAccountAuth", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class GoogleVerifyViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Disposable requestGoogleAuthDispose;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public Disposable googleLogOffDisposable;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Lazy googleAccountAuth;

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.GoogleVerifyViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12946a<T, R> implements Function {

        /* renamed from: e */
        public static final C12946a<T, R> f62605e = new C12946a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull AuthResultArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new GoogleLogOffAction(it2.getIdToken()).build();
        }
    }

    @SourceDebugExtension({"SMAP\nGoogleVerifyViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleVerifyViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/GoogleVerifyViewModel$logOffGoogle$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,106:1\n1#2:107\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.GoogleVerifyViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C12947b<T> implements Consumer {

        /* renamed from: e */
        public static final C12947b<T> f62606e = new C12947b<>();

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

    @SourceDebugExtension({"SMAP\nGoogleVerifyViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleVerifyViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/GoogleVerifyViewModel$logOffGoogle$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,106:1\n1#2:107\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.GoogleVerifyViewModel$c */
    /* loaded from: classes9.dex */
    public static final class C12948c<T, R> implements Function {

        /* renamed from: e */
        public static final C12948c<T, R> f62607e = new C12948c<>();

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends LogoutOnyxAccountAction> m51920a(boolean z) {
            LogoutOnyxAccountAction logoutOnyxAccountAction = new LogoutOnyxAccountAction();
            logoutOnyxAccountAction.setSkipCloudLogout(true);
            return logoutOnyxAccountAction.build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m51920a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.GoogleVerifyViewModel$d */
    /* loaded from: classes9.dex */
    public static final class C12949d<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Fragment f62609f;

        public C12949d(Fragment fragment) {
            this.f62609f = fragment;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LogoutOnyxAccountAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GoogleVerifyViewModel.this.m51917f(this.f62609f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.GoogleVerifyViewModel$e */
    /* loaded from: classes9.dex */
    public static final class C12950e<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Fragment f62610e;

        public C12950e(Fragment fragment) {
            this.f62610e = fragment;
        }

        /* renamed from: a */
        public final void m51922a(boolean z) {
            FragmentKt.finishActivity(this.f62610e);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m51922a(((Boolean) obj).booleanValue());
        }
    }

    public GoogleVerifyViewModel() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<IAccountAuth>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.GoogleVerifyViewModel$googleAccountAuth$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final IAccountAuth invoke() {
                return ((IAccountAuthEntryPoint) EntryPointAccessors.fromApplication(ResManager.INSTANCE.getAppContext(), IAccountAuthEntryPoint.class)).getAccountAuthCreator().create(LoginAuthConst.GOOGLE_AUTH).getAccountAuth();
            }
        });
        this.googleAccountAuth = lazy;
    }

    /* renamed from: d */
    public final IAccountAuth m51915d() {
        return (IAccountAuth) this.googleAccountAuth.getValue();
    }

    public final void disposeActions() {
        Disposable disposable = this.requestGoogleAuthDispose;
        if (disposable != null) {
            disposable.dispose();
        }
        Disposable disposable2 = this.googleLogOffDisposable;
        if (disposable2 != null) {
            disposable2.dispose();
        }
    }

    /* renamed from: e */
    public final void m51916e(Fragment fragment, Intent data) {
        Disposable disposable = this.googleLogOffDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        IAccountAuth m51915d = m51915d();
        Context requireContext = fragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        RxBaseAction<AuthResultArgs> createAuthResultAction = m51915d.createAuthResultAction(requireContext, data);
        if (createAuthResultAction == null) {
            this.googleLogOffDisposable = null;
        } else {
            this.googleLogOffDisposable = createAuthResultAction.build().flatMap(C12946a.f62605e).doOnError(C12947b.f62606e).flatMap(C12948c.f62607e).subscribe(new C12949d(fragment));
        }
    }

    /* renamed from: f */
    public final void m51917f(Fragment fragment) {
        FragmentActivity requireActivity = fragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        new MessageDialogAction(requireActivity, C10651R.string.user_title_logoff_success, C10651R.string.user_tip_logoff_thanks).build().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12950e(fragment)).subscribe();
    }

    public final void handleGoogleLogOff(@NotNull final Fragment fragment, @Nullable final Intent data) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        DoubleOptionDialog.Companion companion = DoubleOptionDialog.INSTANCE;
        FragmentActivity requireActivity = fragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        DoubleOptionDialog createWithConfirmWarningIconStyle = companion.createWithConfirmWarningIconStyle(requireActivity);
        createWithConfirmWarningIconStyle.setMask(0.7f);
        createWithConfirmWarningIconStyle.setMessageTextRes(C10651R.string.user_tip_logoff_warning);
        createWithConfirmWarningIconStyle.setLeftButtonTitleRes(C10651R.string.user_title_continue_use);
        createWithConfirmWarningIconStyle.setRightButtonTitleRes(C10651R.string.user_title_confirm_logoff);
        createWithConfirmWarningIconStyle.setOnLeftButtonClick(new Function0<Unit>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.GoogleVerifyViewModel$handleGoogleLogOff$1$1
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
        createWithConfirmWarningIconStyle.setOnRightButtonClick(new Function0<Unit>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.GoogleVerifyViewModel$handleGoogleLogOff$1$2
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
                GoogleVerifyViewModel.this.m51916e(fragment, data);
            }
        });
        createWithConfirmWarningIconStyle.show();
    }

    public final void requestGoogleAuth(@NotNull Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        IAccountAuth m51915d = m51915d();
        Context requireContext = fragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        RxBaseAction<Boolean> createRequestAuth = m51915d.createRequestAuth(fragment, ContextExtKt.createLoadingDialog(requireContext), 1001);
        this.requestGoogleAuthDispose = createRequestAuth != null ? RxBaseAction.execute$default(createRequestAuth, null, null, null, 7, null) : null;
    }
}
