package com.onyx.galaxy.note.settings.p047ui.fragment;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
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
import androidx.navigation.fragment.FragmentKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.QuickAdapterHelper;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.onyx.android.sdk.base.common.error.BaseError;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.data.utils.StringOption;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.device.bean.ScreenDisplayType;
import com.onyx.android.sdk.extension.ActivityKt;
import com.onyx.android.sdk.matisse.Matisse;
import com.onyx.android.sdk.matisse.SelectionCreator;
import com.onyx.android.sdk.p039ui.ExclusiveEmojiFilter;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.extension.MatisseKt;
import com.onyx.galaxy.note.common.view.LoadingDialog;
import com.onyx.galaxy.note.databinding.FragmentSettingsHelpAndFeedbackBinding;
import com.onyx.galaxy.note.settings.data.PermissionRequestConst;
import com.onyx.galaxy.note.settings.p047ui.adapter.FeedbackPickPictureFooterAdapter;
import com.onyx.galaxy.note.settings.p047ui.adapter.FeedbackPictureAdapter;
import com.onyx.galaxy.note.settings.p047ui.adapter.FeedbackTypeAdapter;
import com.onyx.galaxy.note.settings.p047ui.fragment.SettingsHelpAndFeedbackFragment;
import com.onyx.galaxy.note.settings.utils.PermissionActionUtils;
import com.onyx.galaxy.note.settings.viewmodel.SettingsHelpAndFeedbackViewModel;
import com.permissionx.guolindev.PermissionX;
import com.permissionx.guolindev.callback.RequestCallback;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 R2\u00020\u0001:\u0001RB\u0007¢\u0006\u0004\bP\u0010QJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002J\u0016\u0010\u0013\u001a\u00020\u00022\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u0011H\u0002J\b\u0010\u0014\u001a\u00020\u0002H\u0002J\u0012\u0010\u0017\u001a\u00020\u00022\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016J$\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016J\u001a\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001c2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016J\"\u0010$\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\r2\u0006\u0010!\u001a\u00020\r2\b\u0010#\u001a\u0004\u0018\u00010\"H\u0017J\u0010\u0010'\u001a\u00020\u00022\u0006\u0010&\u001a\u00020%H\u0016R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u001b\u00101\u001a\u00020,8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u001b\u00106\u001a\u0002028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b3\u0010.\u001a\u0004\b4\u00105R\u0014\u0010:\u001a\u0002078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u0014\u0010>\u001a\u00020;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=R\u001b\u0010C\u001a\u00020?8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b@\u0010.\u001a\u0004\bA\u0010BR\u001b\u0010G\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bD\u0010.\u001a\u0004\bE\u0010FR\u0014\u0010K\u001a\u00020H8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bI\u0010JR\u0016\u0010O\u001a\u00020L8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bM\u0010N¨\u0006S"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "L0", "I0", "v0", "M0", "Q0", "O0", "D0", "G0", "Landroid/widget/TextView;", "tv", "", "strRes", "A0", "B0", "Lkotlin/Function0;", "task", "t0", "P0", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "d1", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;", "e1", "Lkotlin/Lazy;", "z0", "()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;", "viewModel", "Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackTypeAdapter;", "f1", "y0", "()Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackTypeAdapter;", "typeAdapter", "Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPictureAdapter;", "g1", "Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPictureAdapter;", "pictureAdapter", "Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPickPictureFooterAdapter;", "h1", "Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPickPictureFooterAdapter;", "footerAdapter", "Lcom/chad/library/adapter4/QuickAdapterHelper;", "i1", "w0", "()Lcom/chad/library/adapter4/QuickAdapterHelper;", "adapterHelper", "j1", "x0", "()I", "maxPictureCount", "Lcom/onyx/android/sdk/data/utils/StringOption;", "k1", "Lcom/onyx/android/sdk/data/utils/StringOption;", "emailOp", "Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;", "l1", "Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;", "binding", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSettingsHelpAndFeedbackFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsHelpAndFeedbackFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,326:1\n106#2,15:327\n65#3,16:342\n93#3,3:358\n65#3,16:361\n93#3,3:377\n37#4,2:380\n*S KotlinDebug\n*F\n+ 1 SettingsHelpAndFeedbackFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment\n*L\n70#1:327,15\n143#1:342,16\n143#1:358,3\n148#1:361,16\n148#1:377,3\n306#1:380,2\n*E\n"})
/* loaded from: classes17.dex */
public final class SettingsHelpAndFeedbackFragment extends BaseFragment {

    @NotNull
    public static final String USER_FEEDBACK_EMAIL = "user_feedback_email";

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable = new CompositeDisposable();

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewModel;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final Lazy typeAdapter;

    /* renamed from: g1, reason: from kotlin metadata */
    @NotNull
    public final FeedbackPictureAdapter pictureAdapter;

    /* renamed from: h1, reason: from kotlin metadata */
    @NotNull
    public final FeedbackPickPictureFooterAdapter footerAdapter;

    /* renamed from: i1, reason: from kotlin metadata */
    @NotNull
    public final Lazy adapterHelper;

    /* renamed from: j1, reason: from kotlin metadata */
    @NotNull
    public final Lazy maxPictureCount;

    /* renamed from: k1, reason: from kotlin metadata */
    @NotNull
    public final StringOption emailOp;

    /* renamed from: l1, reason: from kotlin metadata */
    public FragmentSettingsHelpAndFeedbackBinding binding;

    /* renamed from: com.onyx.galaxy.note.settings.ui.fragment.SettingsHelpAndFeedbackFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12710a implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f61711a;

        public C12710a(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f61711a = function;
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
            return this.f61711a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f61711a.invoke(obj);
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.ui.fragment.SettingsHelpAndFeedbackFragment$b */
    /* loaded from: classes9.dex */
    public static final class C12711b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ LoadingDialog f61712e;

        public C12711b(LoadingDialog loadingDialog) {
            this.f61712e = loadingDialog;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f61712e.show();
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.ui.fragment.SettingsHelpAndFeedbackFragment$c */
    /* loaded from: classes9.dex */
    public static final class C12712c<T> implements Consumer {
        public C12712c() {
        }

        /* renamed from: a */
        public final void m51003a(boolean z) {
            if (!z) {
                ToastUtils.INSTANCE.show(C10651R.string.feedback_submit_error, true);
                return;
            }
            SettingsHelpAndFeedbackFragment.this.m51001z0().cleanSubmitData();
            SettingsHelpAndFeedbackFragment.this.m51000y0().checkType(0);
            FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding = SettingsHelpAndFeedbackFragment.this.binding;
            if (fragmentSettingsHelpAndFeedbackBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentSettingsHelpAndFeedbackBinding = null;
            }
            fragmentSettingsHelpAndFeedbackBinding.edtMemo.getText().clear();
            ToastUtils.INSTANCE.show(C10651R.string.feedback_submit_succeed, true);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m51003a(((Boolean) obj).booleanValue());
        }
    }

    public SettingsHelpAndFeedbackFragment() {
        final Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsHelpAndFeedbackFragment$special$$inlined$viewModels$default$1
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
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsHelpAndFeedbackFragment$special$$inlined$viewModels$default$2
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
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(SettingsHelpAndFeedbackViewModel.class), new Function0<ViewModelStore>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsHelpAndFeedbackFragment$special$$inlined$viewModels$default$3
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
        }, new Function0<CreationExtras>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsHelpAndFeedbackFragment$special$$inlined$viewModels$default$4
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
                m4782b = FragmentViewModelLazyKt.m4782b(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = m4782b instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) m4782b : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsHelpAndFeedbackFragment$special$$inlined$viewModels$default$5
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
                m4782b = FragmentViewModelLazyKt.m4782b(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = m4782b instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) m4782b : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = Fragment.this.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "defaultViewModelProviderFactory");
                return defaultViewModelProviderFactory2;
            }
        });
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<FeedbackTypeAdapter>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsHelpAndFeedbackFragment$typeAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FeedbackTypeAdapter invoke() {
                Context requireContext = SettingsHelpAndFeedbackFragment.this.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                return new FeedbackTypeAdapter(requireContext);
            }
        });
        this.typeAdapter = lazy2;
        this.pictureAdapter = new FeedbackPictureAdapter();
        this.footerAdapter = new FeedbackPickPictureFooterAdapter();
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<QuickAdapterHelper>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsHelpAndFeedbackFragment$adapterHelper$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final QuickAdapterHelper invoke() {
                FeedbackPictureAdapter feedbackPictureAdapter;
                feedbackPictureAdapter = SettingsHelpAndFeedbackFragment.this.pictureAdapter;
                return new QuickAdapterHelper.Builder(feedbackPictureAdapter).build();
            }
        });
        this.adapterHelper = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsHelpAndFeedbackFragment$maxPictureCount$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(SettingsHelpAndFeedbackFragment.this.requireContext().getResources().getInteger(C10651R.integer.feedback_max_upload_picture));
            }
        });
        this.maxPictureCount = lazy4;
        this.emailOp = new StringOption(MMKVUtils.INSTANCE.get(), USER_FEEDBACK_EMAIL, null, 4, null);
    }

    /* renamed from: C0 */
    public static final void m50970C0(SettingsHelpAndFeedbackFragment this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Matisse from = Matisse.from(this$0);
        Intrinsics.checkNotNullExpressionValue(from, "from(...)");
        SelectionCreator buildSelectionCreator = MatisseKt.buildSelectionCreator(from);
        int m50999x0 = this$0.m50999x0();
        List<Uri> value = this$0.m51001z0().getPictureList().getValue();
        Intrinsics.checkNotNull(value);
        buildSelectionCreator.maxSelectable(m50999x0 - value.size()).forResult(1003);
    }

    /* renamed from: E0 */
    public static final void m50971E0(SettingsHelpAndFeedbackFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m50987B0();
    }

    /* renamed from: F0 */
    public static final void m50972F0(SettingsHelpAndFeedbackFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        SettingsHelpAndFeedbackViewModel m51001z0 = this$0.m51001z0();
        Uri item = this$0.pictureAdapter.getItem(i);
        Intrinsics.checkNotNull(item);
        m51001z0.removePicture(item);
        this$0.m50998w0().addAfterAdapter(this$0.footerAdapter);
    }

    /* renamed from: H0 */
    public static final void m50973H0(SettingsHelpAndFeedbackFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m51000y0().checkType(i);
    }

    /* renamed from: J0 */
    public static final void m50974J0(SettingsHelpAndFeedbackFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentKt.findNavController(this$0).popBackStack();
    }

    /* renamed from: K0 */
    public static final void m50975K0(SettingsHelpAndFeedbackFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50992M0();
    }

    /* renamed from: N0 */
    public static final void m50976N0(LoadingDialog dialog) {
        Intrinsics.checkNotNullParameter(dialog, "$dialog");
        dialog.dismiss();
    }

    /* renamed from: u0 */
    public static final void m50985u0(Function0 task, SettingsHelpAndFeedbackFragment this$0, List requestList, boolean z, List list, List list2) {
        Intrinsics.checkNotNullParameter(task, "$task");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(requestList, "$requestList");
        Intrinsics.checkNotNullParameter(list, "<anonymous parameter 1>");
        Intrinsics.checkNotNullParameter(list2, "<anonymous parameter 2>");
        if (z) {
            task.invoke();
            return;
        }
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        String[] strArr = (String[]) requestList.toArray(new String[0]);
        ActivityKt.shouldShowGuideToPermissionSettings(requireActivity, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    /* renamed from: A0 */
    public final void m50986A0(TextView tv, int strRes) {
        boolean isBlank;
        int lastIndex;
        String string = requireContext().getString(strRes);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        isBlank = StringsKt__StringsJVMKt.isBlank(string);
        if (isBlank) {
            return;
        }
        int colorById = ThemeUtils.getColorById(C7996R.color.theme_primary_color_01);
        SpannableString spannableString = new SpannableString(string);
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(colorById);
        lastIndex = StringsKt__StringsKt.getLastIndex(string);
        spannableString.setSpan(foregroundColorSpan, lastIndex, string.length(), 17);
        tv.setText(spannableString);
    }

    /* renamed from: B0 */
    public final void m50987B0() {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        RxjavaKt.doOnNextIfTrue(permissionActionUtils.requestImagePermission(requireContext, resManager.getStringSafely(permissionRequestConst.getPERMISSION_UPLOAD_PICTURES_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_UPLOAD_PICTURES_INTENT_NAME())).build(), new Consumer() { // from class: com.sunia.HTREnginev2.rjm
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SettingsHelpAndFeedbackFragment.m50970C0(SettingsHelpAndFeedbackFragment.this, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    /* renamed from: D0 */
    public final void m50988D0() {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(requireContext(), 0, false);
        ItemClickUtilsKt.setOnDebouncedItemClick$default(this.footerAdapter, 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.ojm
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SettingsHelpAndFeedbackFragment.m50971E0(SettingsHelpAndFeedbackFragment.this, baseQuickAdapter, view, i);
            }
        }, 1, null);
        this.pictureAdapter.addOnItemChildClickListener(C10651R.id.iv_delete, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.pjm
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SettingsHelpAndFeedbackFragment.m50972F0(SettingsHelpAndFeedbackFragment.this, baseQuickAdapter, view, i);
            }
        });
        FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding = this.binding;
        FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding2 = null;
        if (fragmentSettingsHelpAndFeedbackBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentSettingsHelpAndFeedbackBinding = null;
        }
        fragmentSettingsHelpAndFeedbackBinding.rvPicture.setLayoutManager(linearLayoutManager);
        FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding3 = this.binding;
        if (fragmentSettingsHelpAndFeedbackBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentSettingsHelpAndFeedbackBinding2 = fragmentSettingsHelpAndFeedbackBinding3;
        }
        fragmentSettingsHelpAndFeedbackBinding2.rvPicture.setAdapter(m50998w0().getMAdapter());
    }

    /* renamed from: G0 */
    public final void m50989G0() {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(requireContext(), 0, false);
        ItemClickUtilsKt.setOnDebouncedItemClick$default(m51000y0(), 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.njm
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SettingsHelpAndFeedbackFragment.m50973H0(SettingsHelpAndFeedbackFragment.this, baseQuickAdapter, view, i);
            }
        }, 1, null);
        FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding = this.binding;
        FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding2 = null;
        if (fragmentSettingsHelpAndFeedbackBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentSettingsHelpAndFeedbackBinding = null;
        }
        fragmentSettingsHelpAndFeedbackBinding.rvType.setLayoutManager(linearLayoutManager);
        FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding3 = this.binding;
        if (fragmentSettingsHelpAndFeedbackBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentSettingsHelpAndFeedbackBinding2 = fragmentSettingsHelpAndFeedbackBinding3;
        }
        fragmentSettingsHelpAndFeedbackBinding2.rvType.setAdapter(m51000y0());
    }

    /* renamed from: I0 */
    public final void m50990I0() {
        FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding = this.binding;
        FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding2 = null;
        if (fragmentSettingsHelpAndFeedbackBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentSettingsHelpAndFeedbackBinding = null;
        }
        fragmentSettingsHelpAndFeedbackBinding.ivBack.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ljm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsHelpAndFeedbackFragment.m50974J0(SettingsHelpAndFeedbackFragment.this, view);
            }
        });
        FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding3 = this.binding;
        if (fragmentSettingsHelpAndFeedbackBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentSettingsHelpAndFeedbackBinding3 = null;
        }
        TintTextView tvType = fragmentSettingsHelpAndFeedbackBinding3.tvType;
        Intrinsics.checkNotNullExpressionValue(tvType, "tvType");
        m50986A0(tvType, C10651R.string.feedback_type);
        FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding4 = this.binding;
        if (fragmentSettingsHelpAndFeedbackBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentSettingsHelpAndFeedbackBinding4 = null;
        }
        TintTextView tvMemo = fragmentSettingsHelpAndFeedbackBinding4.tvMemo;
        Intrinsics.checkNotNullExpressionValue(tvMemo, "tvMemo");
        m50986A0(tvMemo, C10651R.string.feedback_memo);
        FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding5 = this.binding;
        if (fragmentSettingsHelpAndFeedbackBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentSettingsHelpAndFeedbackBinding5 = null;
        }
        TintTextView tvEmail = fragmentSettingsHelpAndFeedbackBinding5.tvEmail;
        Intrinsics.checkNotNullExpressionValue(tvEmail, "tvEmail");
        m50986A0(tvEmail, C10651R.string.feedback_email);
        m50989G0();
        m50988D0();
        m50995Q0();
        m50993O0();
        FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding6 = this.binding;
        if (fragmentSettingsHelpAndFeedbackBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentSettingsHelpAndFeedbackBinding6 = null;
        }
        fragmentSettingsHelpAndFeedbackBinding6.edtMemo.setFilters(new ExclusiveEmojiFilter[]{new ExclusiveEmojiFilter()});
        FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding7 = this.binding;
        if (fragmentSettingsHelpAndFeedbackBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentSettingsHelpAndFeedbackBinding7 = null;
        }
        TintEditText edtMemo = fragmentSettingsHelpAndFeedbackBinding7.edtMemo;
        Intrinsics.checkNotNullExpressionValue(edtMemo, "edtMemo");
        edtMemo.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsHelpAndFeedbackFragment$initView$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
                SettingsHelpAndFeedbackFragment.this.m51001z0().getMemo().setValue(s != null ? s.toString() : null);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
            }
        });
        FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding8 = this.binding;
        if (fragmentSettingsHelpAndFeedbackBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentSettingsHelpAndFeedbackBinding8 = null;
        }
        fragmentSettingsHelpAndFeedbackBinding8.edtEmail.setFilters(new ExclusiveEmojiFilter[]{new ExclusiveEmojiFilter()});
        FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding9 = this.binding;
        if (fragmentSettingsHelpAndFeedbackBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentSettingsHelpAndFeedbackBinding9 = null;
        }
        TintEditText edtEmail = fragmentSettingsHelpAndFeedbackBinding9.edtEmail;
        Intrinsics.checkNotNullExpressionValue(edtEmail, "edtEmail");
        edtEmail.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsHelpAndFeedbackFragment$initView$$inlined$addTextChangedListener$default$2
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
                SettingsHelpAndFeedbackFragment.this.m51001z0().getEmail().setValue(s != null ? s.toString() : null);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
            }
        });
        FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding10 = this.binding;
        if (fragmentSettingsHelpAndFeedbackBinding10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentSettingsHelpAndFeedbackBinding10 = null;
        }
        fragmentSettingsHelpAndFeedbackBinding10.tvSubmit.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.mjm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsHelpAndFeedbackFragment.m50975K0(SettingsHelpAndFeedbackFragment.this, view);
            }
        });
        m50997v0();
        FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding11 = this.binding;
        if (fragmentSettingsHelpAndFeedbackBinding11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentSettingsHelpAndFeedbackBinding2 = fragmentSettingsHelpAndFeedbackBinding11;
        }
        View root = fragmentSettingsHelpAndFeedbackBinding2.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        ViewKt.adjustSizeOfImeCompat(root);
    }

    /* renamed from: L0 */
    public final void m50991L0() {
        m51001z0().getPictureList().observe(getViewLifecycleOwner(), new C12710a(new Function1<List<Uri>, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsHelpAndFeedbackFragment$initViewModel$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<Uri> list) {
                invoke2(list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<Uri> list) {
                FeedbackPictureAdapter feedbackPictureAdapter;
                feedbackPictureAdapter = SettingsHelpAndFeedbackFragment.this.pictureAdapter;
                feedbackPictureAdapter.submitList(list);
                SettingsHelpAndFeedbackFragment.this.m50995Q0();
                SettingsHelpAndFeedbackFragment.this.m50993O0();
            }
        }));
    }

    /* renamed from: M0 */
    public final void m50992M0() {
        if (!m51001z0().checkMemo()) {
            ToastUtils.INSTANCE.show(C10651R.string.feedback_memo_input_hint, true);
            return;
        }
        if (!StringKt.isNotBlank(m51001z0().getEmail().getValue())) {
            ToastUtils.INSTANCE.show(C10651R.string.feedback_email_input_hint, true);
            return;
        }
        if (!m51001z0().checkEmail()) {
            ToastUtils.INSTANCE.show(C10651R.string.feedback_email_error_hint, true);
            return;
        }
        StringOption stringOption = this.emailOp;
        String value = m51001z0().getEmail().getValue();
        Intrinsics.checkNotNull(value);
        stringOption.put(value);
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        final LoadingDialog createLoadingDialog = ContextExtKt.createLoadingDialog(requireContext);
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        SettingsHelpAndFeedbackViewModel m51001z0 = m51001z0();
        Context requireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext(...)");
        Observable<Boolean> doOnNext = m51001z0.submit(requireContext2).doOnSubscribe(new C12711b(createLoadingDialog)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.sjm
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SettingsHelpAndFeedbackFragment.m50976N0(LoadingDialog.this);
            }
        }).doOnNext(new C12712c());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        this.compositeDisposable.add(OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, new Function1<OnyxException, Boolean>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsHelpAndFeedbackFragment$submit$disposable$4
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull OnyxException it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                boolean areEqual = Intrinsics.areEqual(it2.getType(), BaseError.UNDEFINED);
                if (areEqual) {
                    ToastUtils.INSTANCE.show(C10651R.string.feedback_submit_error, true);
                }
                return Boolean.valueOf(areEqual);
            }
        }, 1, null));
    }

    /* renamed from: O0 */
    public final void m50993O0() {
        List<Uri> value = m51001z0().getPictureList().getValue();
        Intrinsics.checkNotNull(value);
        if (value.size() >= m50999x0()) {
            m50998w0().removeAdapter(this.footerAdapter);
        }
        List<Uri> value2 = m51001z0().getPictureList().getValue();
        Intrinsics.checkNotNull(value2);
        if (value2.size() <= 0) {
            m50998w0().addAfterAdapter(this.footerAdapter);
        }
    }

    /* renamed from: P0 */
    public final void m50994P0() {
        Number valueOf = DeviceFactory.INSTANCE.getScreenDevice().getScreenInfo().getScreenDisplayType() == ScreenDisplayType.PHONE ? -1 : Float.valueOf(ResManager.INSTANCE.getDimension(C7384R.dimen.dp_400));
        FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding = this.binding;
        if (fragmentSettingsHelpAndFeedbackBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentSettingsHelpAndFeedbackBinding = null;
        }
        fragmentSettingsHelpAndFeedbackBinding.tvSubmit.getLayoutParams().width = valueOf.intValue();
    }

    /* renamed from: Q0 */
    public final void m50995Q0() {
        Resources resources = requireContext().getResources();
        int i = C10651R.string.feedback_upload_picture;
        List<Uri> value = m51001z0().getPictureList().getValue();
        Intrinsics.checkNotNull(value);
        String string = resources.getString(i, Integer.valueOf(value.size()), Integer.valueOf(m50999x0()));
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding = this.binding;
        if (fragmentSettingsHelpAndFeedbackBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentSettingsHelpAndFeedbackBinding = null;
        }
        fragmentSettingsHelpAndFeedbackBinding.tvUploadPic.setText(string);
    }

    @Override // androidx.fragment.app.Fragment
    @Deprecated(message = "Deprecated in Java")
    public void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        if (resultCode == -1 && requestCode == 1003) {
            ArrayList arrayList = new ArrayList();
            List<Uri> value = m51001z0().getPictureList().getValue();
            Intrinsics.checkNotNull(value);
            arrayList.addAll(value);
            List<Uri> obtainResult = Matisse.obtainResult(data);
            Intrinsics.checkNotNullExpressionValue(obtainResult, "obtainResult(...)");
            arrayList.addAll(obtainResult);
            m51001z0().getPictureList().setValue(arrayList);
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        m50994P0();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063267, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentSettingsHelpAndFeedbackBinding inflate = FragmentSettingsHelpAndFeedbackBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.setLifecycleOwner(getViewLifecycleOwner());
        FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding2 = this.binding;
        if (fragmentSettingsHelpAndFeedbackBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentSettingsHelpAndFeedbackBinding = fragmentSettingsHelpAndFeedbackBinding2;
        }
        View root = fragmentSettingsHelpAndFeedbackBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m50991L0();
        m50990I0();
    }

    /* renamed from: t0 */
    public final void m50996t0(final Function0<Unit> task) {
        final ArrayList arrayList = new ArrayList();
        if (BuildKt.isApiLevelAbove(33)) {
            arrayList.add("android.permission.READ_MEDIA_IMAGES");
            arrayList.add("android.permission.READ_MEDIA_VIDEO");
        } else {
            arrayList.add("android.permission.READ_EXTERNAL_STORAGE");
        }
        PermissionX.init(this).permissions(arrayList).request(new RequestCallback() { // from class: com.sunia.HTREnginev2.qjm
            @Override // com.permissionx.guolindev.callback.RequestCallback
            public final void onResult(boolean z, List list, List list2) {
                SettingsHelpAndFeedbackFragment.m50985u0(Function0.this, this, arrayList, z, list, list2);
            }
        });
    }

    /* renamed from: v0 */
    public final void m50997v0() {
        FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding = null;
        if (StringKt.isNotBlank(this.emailOp.get())) {
            FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding2 = this.binding;
            if (fragmentSettingsHelpAndFeedbackBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentSettingsHelpAndFeedbackBinding = fragmentSettingsHelpAndFeedbackBinding2;
            }
            fragmentSettingsHelpAndFeedbackBinding.edtEmail.setText(this.emailOp.get());
            return;
        }
        AccountDataBundle accountDataBundle = AccountDataBundle.INSTANCE;
        if (accountDataBundle.isAlreadyLogin() && accountDataBundle.hasEmail()) {
            FragmentSettingsHelpAndFeedbackBinding fragmentSettingsHelpAndFeedbackBinding3 = this.binding;
            if (fragmentSettingsHelpAndFeedbackBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentSettingsHelpAndFeedbackBinding3 = null;
            }
            TintEditText tintEditText = fragmentSettingsHelpAndFeedbackBinding3.edtEmail;
            OnyxAccountModel onyxAccount = accountDataBundle.getOnyxAccount();
            tintEditText.setText(onyxAccount != null ? onyxAccount.getEmail() : null);
        }
    }

    /* renamed from: w0 */
    public final QuickAdapterHelper m50998w0() {
        return (QuickAdapterHelper) this.adapterHelper.getValue();
    }

    /* renamed from: x0 */
    public final int m50999x0() {
        return ((Number) this.maxPictureCount.getValue()).intValue();
    }

    /* renamed from: y0 */
    public final FeedbackTypeAdapter m51000y0() {
        return (FeedbackTypeAdapter) this.typeAdapter.getValue();
    }

    /* renamed from: z0 */
    public final SettingsHelpAndFeedbackViewModel m51001z0() {
        return (SettingsHelpAndFeedbackViewModel) this.viewModel.getValue();
    }
}
