package com.onyx.galaxy.note.usercenter.p049ui;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.annotation.StringRes;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavController;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.extension.FileKt;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.account.action.NetworkCheckAction;
import com.onyx.android.sdk.data.account.action.ReloadAccountAction;
import com.onyx.android.sdk.data.account.action.UpdateAccountAction;
import com.onyx.android.sdk.data.account.action.UpdateAvatarAction;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.android.sdk.data.account.bean.UpdateAccountInfoBean;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.event.StatisticsStoolbarPageAdd;
import com.onyx.android.sdk.matisse.Matisse;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.account.action.LogoutOnyxAccountAction;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.action.common.UriToFileAction;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.dialog.ContentInputDialog;
import com.onyx.galaxy.note.common.action.TakePhotoAction;
import com.onyx.galaxy.note.common.data.AppConfigManager;
import com.onyx.galaxy.note.common.extension.MatisseKt;
import com.onyx.galaxy.note.databinding.FragmentAccountCenterBinding;
import com.onyx.galaxy.note.p048ui.dialog.ConfirmDialogAction;
import com.onyx.galaxy.note.p048ui.dialog.MessageDialogAction;
import com.onyx.galaxy.note.p048ui.sticker.ShowConfirmDialogAction;
import com.onyx.galaxy.note.usercenter.p049ui.AccountCenterFragment;
import com.onyx.galaxy.note.usercenter.p049ui.AccountCenterFragmentDirections;
import com.onyx.galaxy.note.usercenter.popup.AvatarSelectPopup;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountCenterViewModel;
import com.onyx.galaxy.note.usercenter.viewmodel.HuaweiVerifyViewModel;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.v6l;
import dagger.hilt.android.AndroidEntryPoint;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.io.File;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\\\u0010]J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\b\u0010\u0012\u001a\u00020\u0002H\u0002J\b\u0010\u0013\u001a\u00020\u0002H\u0002J\b\u0010\u0014\u001a\u00020\u0002H\u0002J\b\u0010\u0015\u001a\u00020\u0002H\u0002J\b\u0010\u0016\u001a\u00020\u0002H\u0002J\b\u0010\u0017\u001a\u00020\u0002H\u0002J\b\u0010\u0018\u001a\u00020\u0002H\u0002J\b\u0010\u0019\u001a\u00020\u0002H\u0002J\b\u0010\u001a\u001a\u00020\u0002H\u0002J\b\u0010\u001b\u001a\u00020\u0002H\u0002J\b\u0010\u001c\u001a\u00020\u0002H\u0002J\b\u0010\u001d\u001a\u00020\u0002H\u0002J\u0010\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000fH\u0002J \u0010%\u001a\u00020\u00022\b\b\u0001\u0010!\u001a\u00020 2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020#0\"H\u0002J\b\u0010&\u001a\u00020\u0002H\u0002J\b\u0010'\u001a\u00020\u0002H\u0002J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010)\u001a\u00020(H\u0002J\u0012\u0010-\u001a\u00020\u00022\b\u0010,\u001a\u0004\u0018\u00010+H\u0002J\u0012\u00100\u001a\u00020\u00022\b\u0010/\u001a\u0004\u0018\u00010.H\u0016J\b\u00101\u001a\u00020\u0002H\u0016J\b\u00102\u001a\u00020\u0002H\u0016J\u001a\u00108\u001a\u0002072\u0006\u00104\u001a\u0002032\b\u00106\u001a\u0004\u0018\u000105H\u0016J\"\u0010<\u001a\u00020\u00022\u0006\u00109\u001a\u00020 2\u0006\u0010:\u001a\u00020 2\b\u0010;\u001a\u0004\u0018\u00010(H\u0016R\u001a\u0010B\u001a\u00020=8\u0010X\u0090D¢\u0006\f\n\u0004\b>\u0010?\u001a\u0004\b@\u0010AR\u0016\u0010F\u001a\u00020C8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bD\u0010ER\u001b\u0010L\u001a\u00020G8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010KR\u001b\u0010Q\u001a\u00020M8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bN\u0010I\u001a\u0004\bO\u0010PR\u0016\u0010U\u001a\u00020R8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bS\u0010TR\u0016\u0010W\u001a\u00020R8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bV\u0010TR\u001c\u0010[\u001a\b\u0012\u0004\u0012\u00020+0X8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bY\u0010Z¨\u0006^"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "C0", "p0", "q0", "L0", "O0", "N0", "R0", "z0", "W0", "P0", "Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;", "dialog", "", "name", "F0", "s0", "E0", "D0", "x0", "v0", "K0", "t0", "J0", "w0", "U0", "u0", "S0", AccountVerifyPurpose.KEY_PURPOSE, "Q0", "", "messageResId", "Lio/reactivex/rxjava3/functions/Consumer;", "", "doOnNext", "y0", "M0", "H0", "Landroid/content/Intent;", v6l.f87196g, "I0", "Landroid/net/Uri;", "uri", "G0", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "onResume", "onDestroy", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "root", "Landroid/view/View;", "setContentView", "requestCode", "resultCode", "data", "onActivityResult", "", "i1", Constants.HASIDCALL_INDEX_SIG, "getReloadLayoutOnConfigurationChanged$note_overseasRelease", Constants.BOOLEAN_VALUE_SIG, "reloadLayoutOnConfigurationChanged", "Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;", "j1", "Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;", "binding", "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;", "k1", "Lkotlin/Lazy;", "A0", "()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;", "accountViewModel", "Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;", "l1", "B0", "()Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;", "huaweiViewModel", "Ljava/io/File;", "m1", "Ljava/io/File;", StatisticsStoolbarPageAdd.PAGE_ADD_FROM_PHOTO, "n1", "avatar", "Landroidx/activity/result/ActivityResultLauncher;", "o1", "Landroidx/activity/result/ActivityResultLauncher;", "takePhotoLauncher", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@AndroidEntryPoint
@SourceDebugExtension({"SMAP\nAccountCenterFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountCenterFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,434:1\n106#2,15:435\n214#3:450\n214#3:451\n1#4:452\n*S KotlinDebug\n*F\n+ 1 AccountCenterFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment\n*L\n77#1:435,15\n216#1:450\n255#1:451\n*E\n"})
/* loaded from: classes17.dex */
public final class AccountCenterFragment extends Hilt_AccountCenterFragment {

    /* renamed from: i1, reason: from kotlin metadata */
    public final boolean reloadLayoutOnConfigurationChanged = true;

    /* renamed from: j1, reason: from kotlin metadata */
    public FragmentAccountCenterBinding binding;

    /* renamed from: k1, reason: from kotlin metadata */
    @NotNull
    public final Lazy accountViewModel;

    /* renamed from: l1, reason: from kotlin metadata */
    @NotNull
    public final Lazy huaweiViewModel;

    /* renamed from: m1, reason: from kotlin metadata */
    public File photo;

    /* renamed from: n1, reason: from kotlin metadata */
    public File avatar;

    /* renamed from: o1, reason: from kotlin metadata */
    public ActivityResultLauncher<Uri> takePhotoLauncher;

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12843a<T> implements Predicate {

        /* renamed from: e */
        public static final C12843a<T> f62338e = new C12843a<>();

        /* renamed from: a */
        public final boolean m51544a(boolean z) {
            return z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m51544a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$b */
    /* loaded from: classes9.dex */
    public static final class C12844b<T> implements Consumer {
        public C12844b() {
        }

        /* renamed from: a */
        public final void m51545a(boolean z) {
            AccountCenterFragment.this.m51517E0();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m51545a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$c */
    /* loaded from: classes9.dex */
    public static final class C12845c<T> implements Predicate {

        /* renamed from: e */
        public static final C12845c<T> f62340e = new C12845c<>();

        /* renamed from: a */
        public final boolean m51546a(boolean z) {
            return z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m51546a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$d */
    /* loaded from: classes9.dex */
    public static final class C12846d<T> implements Consumer {
        public C12846d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LogoutOnyxAccountAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FragmentKt.finishActivity(AccountCenterFragment.this);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$e */
    /* loaded from: classes9.dex */
    public static final class C12847e<T, R> implements Function {

        /* renamed from: e */
        public static final C12847e<T, R> f62342e = new C12847e<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateAccountInfoBean updateAccountInfoBean = new UpdateAccountInfoBean();
            updateAccountInfoBean.m72199setNickname(it2);
            return new UpdateAccountAction(updateAccountInfoBean).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$f */
    /* loaded from: classes9.dex */
    public static final class C12848f<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ ContentInputDialog f62344f;

        public C12848f(ContentInputDialog contentInputDialog) {
            this.f62344f = contentInputDialog;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AccountCenterFragment.this.m51513A0().notifyChange();
            this.f62344f.dismiss();
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$g */
    /* loaded from: classes9.dex */
    public /* synthetic */ class C12849g implements ActivityResultCallback, FunctionAdapter {
        public C12849g() {
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void onActivityResult(@NotNull Intent p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            AccountCenterFragment.this.m51521I0(p0);
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof ActivityResultCallback) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final kotlin.Function<?> getFunctionDelegate() {
            return new FunctionReferenceImpl(1, AccountCenterFragment.this, AccountCenterFragment.class, "onPhotoTaken", "onPhotoTaken(Landroid/content/Intent;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$h */
    /* loaded from: classes9.dex */
    public static final class C12850h<T> implements Consumer {
        public C12850h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AccountCenterFragment.this.m51543z0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$i */
    /* loaded from: classes9.dex */
    public static final class C12851i<T> implements Consumer {
        public C12851i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AccountCenterFragment.this.m51513A0().notifyChange();
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$j */
    /* loaded from: classes9.dex */
    public static final class C12852j implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f62348a;

        public C12852j(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f62348a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final kotlin.Function<?> getFunctionDelegate() {
            return this.f62348a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f62348a.invoke(obj);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$k */
    /* loaded from: classes9.dex */
    public static final class C12853k<T> implements Consumer {
        public C12853k() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AccountCenterFragment.this.m51513A0().notifyChange();
        }
    }

    public AccountCenterFragment() {
        Lazy lazy;
        final Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<AccountCenterViewModel>() { // from class: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$accountViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AccountCenterViewModel invoke() {
                FragmentActivity requireActivity = AccountCenterFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (AccountCenterViewModel) new ViewModelProvider(requireActivity).get(AccountCenterViewModel.class);
            }
        });
        this.accountViewModel = lazy;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Fragment invoke() {
                return Fragment.this;
            }
        };
        lazy2 = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) Function0.this.invoke();
            }
        });
        final Function0 function02 = null;
        this.huaweiViewModel = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(HuaweiVerifyViewModel.class), new Function0<ViewModelStore>() { // from class: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewModelStore invoke() {
                ViewModelStoreOwner m4782b;
                m4782b = FragmentViewModelLazyKt.m4782b(Lazy.this);
                return m4782b.getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$special$$inlined$viewModels$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CreationExtras invoke() {
                ViewModelStoreOwner m4782b;
                CreationExtras creationExtras;
                Function0 function03 = Function0.this;
                if (function03 != null && (creationExtras = (CreationExtras) function03.invoke()) != null) {
                    return creationExtras;
                }
                m4782b = FragmentViewModelLazyKt.m4782b(lazy2);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = m4782b instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) m4782b : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewModelProvider.Factory invoke() {
                ViewModelStoreOwner m4782b;
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                m4782b = FragmentViewModelLazyKt.m4782b(lazy2);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = m4782b instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) m4782b : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = Fragment.this.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "defaultViewModelProviderFactory");
                return defaultViewModelProviderFactory2;
            }
        });
    }

    /* renamed from: T0 */
    public static final void m51507T0(AccountCenterFragment this$0, Object it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m51529Q0("unbind");
    }

    /* renamed from: V0 */
    public static final void m51508V0(AccountCenterFragment this$0, Object it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        AccountCenterFragmentDirections.AccountCenterToWechatVerify accountCenterToWechatVerify = AccountCenterFragmentDirections.accountCenterToWechatVerify("unbind");
        Intrinsics.checkNotNullExpressionValue(accountCenterToWechatVerify, "accountCenterToWechatVerify(...)");
        androidx.navigation.fragment.FragmentKt.findNavController(this$0).navigate(accountCenterToWechatVerify);
    }

    /* renamed from: r0 */
    public static final void m51512r0(AccountCenterFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    /* renamed from: A0 */
    public final AccountCenterViewModel m51513A0() {
        return (AccountCenterViewModel) this.accountViewModel.getValue();
    }

    /* renamed from: B0 */
    public final HuaweiVerifyViewModel m51514B0() {
        return (HuaweiVerifyViewModel) this.huaweiViewModel.getValue();
    }

    /* renamed from: C0 */
    public final void m51515C0() {
        AppConfigManager appConfigManager = AppConfigManager.INSTANCE;
        FragmentAccountCenterBinding fragmentAccountCenterBinding = null;
        boolean z = false;
        boolean z2 = AppConfigManager.isSupportLoginType$default(appConfigManager, 5, null, 2, null) || AppConfigManager.isSupportLoginType$default(appConfigManager, 4, null, 2, null);
        boolean isSupportLoginType$default = AppConfigManager.isSupportLoginType$default(appConfigManager, 1, null, 2, null);
        boolean isSupportLoginType$default2 = AppConfigManager.isSupportLoginType$default(appConfigManager, 2, null, 2, null);
        boolean isSupportLoginType$default3 = AppConfigManager.isSupportLoginType$default(appConfigManager, 3, null, 2, null);
        FragmentAccountCenterBinding fragmentAccountCenterBinding2 = this.binding;
        if (fragmentAccountCenterBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAccountCenterBinding2 = null;
        }
        ViewKt.setViewVisibleOrGone(fragmentAccountCenterBinding2.scrollLayout.wechatLayout, z2);
        FragmentAccountCenterBinding fragmentAccountCenterBinding3 = this.binding;
        if (fragmentAccountCenterBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAccountCenterBinding3 = null;
        }
        ViewKt.setViewVisibleOrGone(fragmentAccountCenterBinding3.scrollLayout.vWechatDivider, z2);
        FragmentAccountCenterBinding fragmentAccountCenterBinding4 = this.binding;
        if (fragmentAccountCenterBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAccountCenterBinding4 = null;
        }
        ViewKt.setViewVisibleOrGone(fragmentAccountCenterBinding4.scrollLayout.phoneLayout, isSupportLoginType$default);
        FragmentAccountCenterBinding fragmentAccountCenterBinding5 = this.binding;
        if (fragmentAccountCenterBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAccountCenterBinding5 = null;
        }
        ViewKt.setViewVisibleOrGone(fragmentAccountCenterBinding5.scrollLayout.vPhoneDivider, isSupportLoginType$default);
        FragmentAccountCenterBinding fragmentAccountCenterBinding6 = this.binding;
        if (fragmentAccountCenterBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAccountCenterBinding6 = null;
        }
        ViewKt.setViewVisibleOrGone(fragmentAccountCenterBinding6.scrollLayout.emailLayout, isSupportLoginType$default2);
        FragmentAccountCenterBinding fragmentAccountCenterBinding7 = this.binding;
        if (fragmentAccountCenterBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAccountCenterBinding7 = null;
        }
        TintView tintView = fragmentAccountCenterBinding7.scrollLayout.vEmailDivider;
        if (isSupportLoginType$default2 && isSupportLoginType$default3) {
            z = true;
        }
        ViewKt.setViewVisibleOrGone(tintView, z);
        FragmentAccountCenterBinding fragmentAccountCenterBinding8 = this.binding;
        if (fragmentAccountCenterBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentAccountCenterBinding = fragmentAccountCenterBinding8;
        }
        ViewKt.setViewVisibleOrGone(fragmentAccountCenterBinding.scrollLayout.huaweiLayout, isSupportLoginType$default3);
    }

    /* renamed from: D0 */
    public final void m51516D0() {
        androidx.navigation.fragment.FragmentKt.findNavController(this).navigate(C10651R.id.fragment_log_off_agreement);
    }

    /* renamed from: E0 */
    public final void m51517E0() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<LogoutOnyxAccountAction> doOnNext = new LogoutOnyxAccountAction().build().doOnNext(new C12846d());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000f  */
    /* renamed from: F0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m51518F0(final com.onyx.galaxy.note.category.view.dialog.ContentInputDialog r9, java.lang.String r10) {
        /*
            r8 = this;
            r0 = 0
            if (r10 == 0) goto Lc
            boolean r1 = kotlin.text.StringsKt.isBlank(r10)
            if (r1 == 0) goto La
            goto Lc
        La:
            r1 = r0
            goto Ld
        Lc:
            r1 = 1
        Ld:
            if (r1 == 0) goto L19
            com.onyx.android.sdk.base.utils.ToastUtils r8 = com.onyx.android.sdk.base.utils.ToastUtils.INSTANCE
            int r9 = com.onyx.galaxy.note.C10651R.string.user_tip_name_empty
            r10 = 2
            r1 = 0
            com.onyx.android.sdk.base.utils.ToastUtils.show$default(r8, r9, r0, r10, r1)
            return
        L19:
            com.onyx.android.sdk.data.common.error.OnyxErrorHandler r2 = com.onyx.android.sdk.data.common.error.OnyxErrorHandler.INSTANCE
            io.reactivex.rxjava3.core.Observable r10 = io.reactivex.rxjava3.core.Observable.just(r10)
            com.onyx.android.sdk.data.cluster.ClusterManager r0 = com.onyx.android.sdk.data.cluster.ClusterManager.INSTANCE
            io.reactivex.rxjava3.core.Scheduler r0 = r0.getCloudObserveOn()
            io.reactivex.rxjava3.core.Observable r10 = r10.observeOn(r0)
            com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$e<T, R> r0 = com.onyx.galaxy.note.usercenter.p049ui.AccountCenterFragment.C12847e.f62342e
            io.reactivex.rxjava3.core.Observable r10 = r10.flatMap(r0)
            io.reactivex.rxjava3.core.Scheduler r0 = io.reactivex.rxjava3.android.schedulers.AndroidSchedulers.mainThread()
            io.reactivex.rxjava3.core.Observable r10 = r10.observeOn(r0)
            com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$f r0 = new com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$f
            r0.<init>(r9)
            io.reactivex.rxjava3.core.Observable r8 = r10.doOnNext(r0)
            com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$modifyNickname$3 r10 = new com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$modifyNickname$3
            r10.<init>()
            io.reactivex.rxjava3.core.Observable r8 = r8.doOnError(r10)
            java.lang.String r9 = "doOnError(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r9)
            com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$modifyNickname$$inlined$handleTimeoutError$1<T> r10 = new io.reactivex.rxjava3.functions.Consumer() { // from class: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$modifyNickname$$inlined$handleTimeoutError$1
                static {
                    /*
                        com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$modifyNickname$$inlined$handleTimeoutError$1 r0 = new com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$modifyNickname$$inlined$handleTimeoutError$1
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$modifyNickname$$inlined$handleTimeoutError$1<T>) com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$modifyNickname$$inlined$handleTimeoutError$1.INSTANCE com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$modifyNickname$$inlined$handleTimeoutError$1
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.usercenter.p049ui.C12841x7fdefe4f.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.usercenter.p049ui.C12841x7fdefe4f.<init>():void");
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                public /* bridge */ /* synthetic */ void accept(java.lang.Object r1) {
                    /*
                        r0 = this;
                        java.lang.Throwable r1 = (java.lang.Throwable) r1
                        r0.accept(r1)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.usercenter.p049ui.C12841x7fdefe4f.accept(java.lang.Object):void");
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(@org.jetbrains.annotations.NotNull java.lang.Throwable r1) {
                    /*
                        r0 = this;
                        java.lang.String r0 = "it"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
                        com.onyx.android.sdk.data.common.error.OnyxErrorHandler r0 = com.onyx.android.sdk.data.common.error.OnyxErrorHandler.INSTANCE
                        r0.showTimeoutMessage(r1)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.usercenter.p049ui.C12841x7fdefe4f.accept(java.lang.Throwable):void");
                }
            }
            io.reactivex.rxjava3.core.Observable r3 = r8.doOnError(r10)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r9)
            r4 = 0
            r5 = 0
            r6 = 3
            r7 = 0
            com.onyx.android.sdk.data.common.error.OnyxErrorHandler.subscribeWithErrorHandler$default(r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.usercenter.p049ui.AccountCenterFragment.m51518F0(com.onyx.galaxy.note.category.view.dialog.ContentInputDialog, java.lang.String):void");
    }

    /* renamed from: G0 */
    public final void m51519G0(Uri uri) {
        if (uri == null) {
            return;
        }
        File file = this.photo;
        if (file == null) {
            Intrinsics.throwUninitializedPropertyAccessException(StatisticsStoolbarPageAdd.PAGE_ADD_FROM_PHOTO);
            file = null;
        }
        new UriToFileAction(uri, file).build().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12850h()).subscribe();
    }

    /* renamed from: H0 */
    public final void m51520H0() {
        String purpose = m51514B0().getPurpose();
        if (Intrinsics.areEqual(purpose, "bind")) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.user_tip_bind_success, false, 2, (Object) null);
            m51513A0().notifyChange();
        } else if (Intrinsics.areEqual(purpose, "unbind")) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.user_tip_unbind_success, false, 2, (Object) null);
            m51513A0().notifyChange();
        }
    }

    /* renamed from: I0 */
    public final void m51521I0(Intent intent) {
        if (intent.getData() != null) {
            m51543z0();
        }
    }

    /* renamed from: J0 */
    public final void m51522J0() {
        NavController findNavController = androidx.navigation.fragment.FragmentKt.findNavController(this);
        AccountCenterFragmentDirections.AccountCenterToUnbindEmail accountCenterToUnbindEmail = AccountCenterFragmentDirections.accountCenterToUnbindEmail(AccountVerifyPurpose.PURPOSE_REBIND);
        Intrinsics.checkNotNullExpressionValue(accountCenterToUnbindEmail, "accountCenterToUnbindEmail(...)");
        findNavController.navigate(accountCenterToUnbindEmail);
    }

    /* renamed from: K0 */
    public final void m51523K0() {
        NavController findNavController = androidx.navigation.fragment.FragmentKt.findNavController(this);
        AccountCenterFragmentDirections.AccountCenterToUnbindPhone accountCenterToUnbindPhone = AccountCenterFragmentDirections.accountCenterToUnbindPhone(AccountVerifyPurpose.PURPOSE_REBIND);
        Intrinsics.checkNotNullExpressionValue(accountCenterToUnbindPhone, "accountCenterToUnbindPhone(...)");
        findNavController.navigate(accountCenterToUnbindPhone);
    }

    /* renamed from: L0 */
    public final void m51524L0() {
        new ReloadAccountAction().build().doOnNext(new C12851i()).subscribe();
    }

    /* renamed from: M0 */
    public final void m51525M0() {
        OnyxAccountModel currentAccount = m51513A0().getCurrentAccount();
        if (currentAccount == null) {
            return;
        }
        if (StringKt.isNotBlank(currentAccount.getPhone()) || StringKt.isNotBlank(currentAccount.getEmail())) {
            NavController findNavController = androidx.navigation.fragment.FragmentKt.findNavController(this);
            AccountCenterFragmentDirections.AccountCenterToMixedVerify accountCenterToMixedVerify = AccountCenterFragmentDirections.accountCenterToMixedVerify(AccountVerifyPurpose.PURPOSE_PASSWORD_RESET);
            Intrinsics.checkNotNullExpressionValue(accountCenterToMixedVerify, "accountCenterToMixedVerify(...)");
            findNavController.navigate(accountCenterToMixedVerify);
            return;
        }
        int i = AppConfigManager.isSupportLoginType$default(AppConfigManager.INSTANCE, 1, null, 2, null) ? C10651R.string.user_tip_bind_before_set_password : C10651R.string.user_tip_bind_before_set_password_only_email;
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        RxBaseAction.execute$default(new MessageDialogAction(requireActivity, C8045R.string.tip, i), null, null, null, 7, null);
    }

    /* renamed from: N0 */
    public final void m51526N0() {
        this.photo = FileUtils.INSTANCE.getCacheFile(StatisticsStoolbarPageAdd.PAGE_ADD_FROM_PHOTO, UUIDUtils.INSTANCE.shortUUID(), "png");
        Matisse from = Matisse.from(this);
        Intrinsics.checkNotNullExpressionValue(from, "from(...)");
        MatisseKt.buildSelectionCreator(from).maxSelectable(1).forResult(1005);
    }

    /* renamed from: O0 */
    public final void m51527O0() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        AvatarSelectPopup avatarSelectPopup = new AvatarSelectPopup(requireActivity, new AccountCenterFragment$selectAvatarImage$1(this), new AccountCenterFragment$selectAvatarImage$2(this));
        FragmentAccountCenterBinding fragmentAccountCenterBinding = this.binding;
        if (fragmentAccountCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAccountCenterBinding = null;
        }
        LinearLayout exitLayout = fragmentAccountCenterBinding.exitLayout;
        Intrinsics.checkNotNullExpressionValue(exitLayout, "exitLayout");
        avatarSelectPopup.show(exitLayout);
    }

    /* renamed from: P0 */
    public final void m51528P0() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        final ContentInputDialog contentInputDialog = new ContentInputDialog(requireActivity);
        ResManager resManager = ResManager.INSTANCE;
        contentInputDialog.setTitle(resManager.getStringSafely(C10651R.string.user_title_modify_nickname));
        contentInputDialog.setSubTitle(resManager.getStringSafely(C10651R.string.user_title_nickname));
        OnyxAccountModel currentAccount = m51513A0().getCurrentAccount();
        String nickname = currentAccount != null ? currentAccount.getNickname() : null;
        if (nickname == null) {
            nickname = "";
        }
        contentInputDialog.setOriginText(nickname);
        contentInputDialog.setMaxLength(resManager.getInteger(C10651R.integer.user_nickname_max_length));
        contentInputDialog.setCloseOnFinish(false);
        contentInputDialog.addContentCallback(new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$showNameInputDialog$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                AccountCenterFragment.this.m51518F0(contentInputDialog, it2);
            }
        });
        contentInputDialog.setCancelable(false);
        contentInputDialog.show();
    }

    /* renamed from: Q0 */
    public final void m51529Q0(final String purpose) {
        NetworkCheckAction.Companion.checkNetwork$default(NetworkCheckAction.INSTANCE, new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$startAuthService$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z) {
                HuaweiVerifyViewModel m51514B0;
                HuaweiVerifyViewModel m51514B02;
                m51514B0 = AccountCenterFragment.this.m51514B0();
                m51514B0.setPurpose(purpose);
                m51514B02 = AccountCenterFragment.this.m51514B0();
                FragmentActivity requireActivity = AccountCenterFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                m51514B02.startAuthService(requireActivity);
            }
        }, null, null, true, 6, null);
    }

    /* renamed from: R0 */
    public final void m51530R0() {
        ActivityResultLauncher<Uri> activityResultLauncher;
        this.photo = FileUtils.INSTANCE.getCacheFile(StatisticsStoolbarPageAdd.PAGE_ADD_FROM_PHOTO, UUIDUtils.INSTANCE.shortUUID(), "png");
        ActivityResultLauncher<Uri> activityResultLauncher2 = this.takePhotoLauncher;
        File file = null;
        if (activityResultLauncher2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("takePhotoLauncher");
            activityResultLauncher = null;
        } else {
            activityResultLauncher = activityResultLauncher2;
        }
        TakePhotoAction takePhotoAction = new TakePhotoAction(this, activityResultLauncher, null, 4, null);
        File file2 = this.photo;
        if (file2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(StatisticsStoolbarPageAdd.PAGE_ADD_FROM_PHOTO);
        } else {
            file = file2;
        }
        takePhotoAction.setFile(file);
        RxBaseAction.execute$default(takePhotoAction, null, null, null, 7, null);
    }

    /* renamed from: S0 */
    public final void m51531S0() {
        m51542y0(C10651R.string.user_tip_huawei_unbind_warning, new Consumer() { // from class: com.sunia.HTREnginev2.v5
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                AccountCenterFragment.m51507T0(AccountCenterFragment.this, obj);
            }
        });
    }

    /* renamed from: U0 */
    public final void m51532U0() {
        m51542y0(C10651R.string.user_tip_wechat_unbind_warning, new Consumer() { // from class: com.sunia.HTREnginev2.u5
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                AccountCenterFragment.m51508V0(AccountCenterFragment.this, obj);
            }
        });
    }

    /* renamed from: W0 */
    public final void m51533W0() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        File file = this.avatar;
        if (file == null) {
            Intrinsics.throwUninitializedPropertyAccessException("avatar");
            file = null;
        }
        Observable<Object> doOnNext = new UpdateAvatarAction(file).build().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12853k());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<Object> doOnError = doOnNext.doOnError(new Consumer() { // from class: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$uploadAvatarImage$$inlined$handleTimeoutError$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Throwable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OnyxErrorHandler.INSTANCE.showTimeoutMessage(it2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnError, null, null, 3, null);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment
    /* renamed from: getReloadLayoutOnConfigurationChanged$note_overseasRelease, reason: from getter */
    public boolean getReloadLayoutOnConfigurationChanged() {
        return this.reloadLayoutOnConfigurationChanged;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        List<Uri> obtainResult;
        Object first;
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode == -1 && requestCode == 1005 && (obtainResult = Matisse.obtainResult(data)) != null) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) obtainResult);
            m51519G0((Uri) first);
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063259, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        m51514B0().unregisterHuaweiLauncher();
        super.onDestroy();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        m51524L0();
    }

    /* renamed from: p0 */
    public final void m51534p0() {
        m51513A0().getEvents().observe(this, new C12852j(new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$addFragmentEvents$1
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
                if (StringKt.isEmpty(str)) {
                    return;
                }
                Intrinsics.checkNotNull(str);
                switch (str.hashCode()) {
                    case -1811669713:
                        if (str.equals(UserCenterEvents.UNBIND_WECHAT)) {
                            AccountCenterFragment.this.m51532U0();
                            break;
                        }
                        break;
                    case -1673334534:
                        if (str.equals(UserCenterEvents.BIND_EMAIL)) {
                            AccountCenterFragment.this.m51537t0();
                            break;
                        }
                        break;
                    case -1663311156:
                        if (str.equals(UserCenterEvents.BIND_PHONE)) {
                            AccountCenterFragment.this.m51539v0();
                            break;
                        }
                        break;
                    case -435540379:
                        if (str.equals(UserCenterEvents.CANCEL_AGREEMENT)) {
                            AccountCenterFragment.this.m51541x0();
                            break;
                        }
                        break;
                    case -414835797:
                        if (str.equals(UserCenterEvents.RESET_PASSWORD)) {
                            AccountCenterFragment.this.m51525M0();
                            break;
                        }
                        break;
                    case -240474071:
                        if (str.equals(UserCenterEvents.BIND_HUAWEI)) {
                            AccountCenterFragment.this.m51538u0();
                            break;
                        }
                        break;
                    case 110404808:
                        if (str.equals(UserCenterEvents.CHANGE_AVATAR)) {
                            AccountCenterFragment.this.m51527O0();
                            break;
                        }
                        break;
                    case 174231912:
                        if (str.equals(UserCenterEvents.BIND_WECHAT)) {
                            AccountCenterFragment.this.m51540w0();
                            break;
                        }
                        break;
                    case 590941779:
                        if (str.equals(UserCenterEvents.MODIFY_NICKNAME)) {
                            AccountCenterFragment.this.m51528P0();
                            break;
                        }
                        break;
                    case 885921645:
                        if (str.equals(UserCenterEvents.REBIND_EMAIL)) {
                            AccountCenterFragment.this.m51522J0();
                            break;
                        }
                        break;
                    case 895945023:
                        if (str.equals(UserCenterEvents.REBIND_PHONE)) {
                            AccountCenterFragment.this.m51523K0();
                            break;
                        }
                        break;
                    case 1060984244:
                        if (str.equals(UserCenterEvents.LOG_OFF)) {
                            AccountCenterFragment.this.m51516D0();
                            break;
                        }
                        break;
                    case 1060984723:
                        if (str.equals(UserCenterEvents.LOG_OUT)) {
                            AccountCenterFragment.this.m51536s0();
                            break;
                        }
                        break;
                    case 2068591600:
                        if (str.equals(UserCenterEvents.UNBIND_HUAWEI)) {
                            AccountCenterFragment.this.m51531S0();
                            break;
                        }
                        break;
                }
                AccountCenterFragment.this.m51513A0().getEvents().setValue(null);
            }
        }));
        m51514B0().getEvents().observe(this, new C12852j(new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$addFragmentEvents$2
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
                HuaweiVerifyViewModel m51514B0;
                if (StringKt.isEmpty(str)) {
                    return;
                }
                Intrinsics.checkNotNull(str);
                if (Intrinsics.areEqual(str, UserCenterEvents.HUAWEI_VERIFY_SUCCESS)) {
                    AccountCenterFragment.this.m51520H0();
                }
                m51514B0 = AccountCenterFragment.this.m51514B0();
                m51514B0.markEventConsumed();
            }
        }));
        com.onyx.android.sdk.extension.FragmentKt.getNavigationResult$default(this, null, 1, null).observe(this, new C12852j(new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$addFragmentEvents$3
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
                AccountCenterFragment.this.m51533W0();
            }
        }));
    }

    /* renamed from: q0 */
    public final void m51535q0() {
        FragmentAccountCenterBinding fragmentAccountCenterBinding = this.binding;
        if (fragmentAccountCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAccountCenterBinding = null;
        }
        fragmentAccountCenterBinding.backButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.w5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AccountCenterFragment.m51512r0(AccountCenterFragment.this, view);
            }
        });
    }

    /* renamed from: s0 */
    public final void m51536s0() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        new ConfirmDialogAction(requireActivity, C10651R.string.user_title_log_out, C10651R.string.user_tip_logout).build().filter(C12843a.f62338e).doOnNext(new C12844b()).subscribe();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment
    @NotNull
    public View setContentView(@NotNull LayoutInflater inflater, @Nullable ViewGroup root) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentAccountCenterBinding inflate = FragmentAccountCenterBinding.inflate(inflater, root, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        FragmentAccountCenterBinding fragmentAccountCenterBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.setLifecycleOwner(getViewLifecycleOwner());
        FragmentAccountCenterBinding fragmentAccountCenterBinding2 = this.binding;
        if (fragmentAccountCenterBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAccountCenterBinding2 = null;
        }
        fragmentAccountCenterBinding2.setViewModel(m51513A0());
        m51535q0();
        m51515C0();
        FragmentAccountCenterBinding fragmentAccountCenterBinding3 = this.binding;
        if (fragmentAccountCenterBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentAccountCenterBinding = fragmentAccountCenterBinding3;
        }
        View root2 = fragmentAccountCenterBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root2, "getRoot(...)");
        return root2;
    }

    /* renamed from: t0 */
    public final void m51537t0() {
        NavController findNavController = androidx.navigation.fragment.FragmentKt.findNavController(this);
        AccountCenterFragmentDirections.AccountCenterToBindEmail accountCenterToBindEmail = AccountCenterFragmentDirections.accountCenterToBindEmail("bind");
        Intrinsics.checkNotNullExpressionValue(accountCenterToBindEmail, "accountCenterToBindEmail(...)");
        findNavController.navigate(accountCenterToBindEmail);
    }

    /* renamed from: u0 */
    public final void m51538u0() {
        m51529Q0("bind");
    }

    /* renamed from: v0 */
    public final void m51539v0() {
        NavController findNavController = androidx.navigation.fragment.FragmentKt.findNavController(this);
        AccountCenterFragmentDirections.AccountCenterToBindPhone accountCenterToBindPhone = AccountCenterFragmentDirections.accountCenterToBindPhone("bind");
        Intrinsics.checkNotNullExpressionValue(accountCenterToBindPhone, "accountCenterToBindPhone(...)");
        findNavController.navigate(accountCenterToBindPhone);
    }

    /* renamed from: w0 */
    public final void m51540w0() {
        NavController findNavController = androidx.navigation.fragment.FragmentKt.findNavController(this);
        AccountCenterFragmentDirections.AccountCenterToWechatVerify accountCenterToWechatVerify = AccountCenterFragmentDirections.accountCenterToWechatVerify("bind");
        Intrinsics.checkNotNullExpressionValue(accountCenterToWechatVerify, "accountCenterToWechatVerify(...)");
        findNavController.navigate(accountCenterToWechatVerify);
    }

    /* renamed from: x0 */
    public final void m51541x0() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new CommonDialog.Builder(requireContext).setWarning(true).setTitle(C10651R.string.hint).setMessage(C10651R.string.user_tip_cancel_agreement).setCancelText(C10651R.string.user_title_continue_use).setConfirmText(C10651R.string.user_title_cancel_agreement).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.AccountCenterFragment$cancelUserAgreement$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                invoke2(commonDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CommonDialog commonDialog, @NotNull String str) {
                Intrinsics.checkNotNullParameter(commonDialog, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
                AccountCenterFragment.this.m51516D0();
            }
        }).create().show();
    }

    /* renamed from: y0 */
    public final void m51542y0(@StringRes int messageResId, Consumer<Object> doOnNext) {
        if (m51513A0().getCountOfBondSocialAccount() <= 1) {
            FragmentActivity requireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
            RxBaseAction.execute$default(new MessageDialogAction(requireActivity, C8045R.string.tip, C10651R.string.user_bind_one_social_at_least), null, null, null, 7, null);
        } else {
            FragmentActivity requireActivity2 = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity2, "requireActivity(...)");
            new ShowConfirmDialogAction(requireActivity2, C7106R.string.tip, messageResId).build().filter(C12845c.f62340e).doOnNext(doOnNext).subscribe();
        }
    }

    /* renamed from: z0 */
    public final void m51543z0() {
        this.avatar = FileUtils.INSTANCE.getCacheFile(StatisticsStoolbarPageAdd.PAGE_ADD_FROM_PHOTO, UUIDUtils.INSTANCE.shortUUID(), "png");
        File file = this.photo;
        File file2 = null;
        if (file == null) {
            Intrinsics.throwUninitializedPropertyAccessException(StatisticsStoolbarPageAdd.PAGE_ADD_FROM_PHOTO);
            file = null;
        }
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        Uri providerUri = FileKt.toProviderUri(file, requireContext);
        NavController findNavController = androidx.navigation.fragment.FragmentKt.findNavController(this);
        File file3 = this.avatar;
        if (file3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("avatar");
        } else {
            file2 = file3;
        }
        AccountCenterFragmentDirections.AccountCenterToImageCrop accountCenterToImageCrop = AccountCenterFragmentDirections.accountCenterToImageCrop(providerUri, file2.getAbsolutePath());
        Intrinsics.checkNotNullExpressionValue(accountCenterToImageCrop, "accountCenterToImageCrop(...)");
        findNavController.navigate(accountCenterToImageCrop);
    }
}
