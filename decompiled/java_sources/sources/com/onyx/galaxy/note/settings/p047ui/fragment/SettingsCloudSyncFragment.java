package com.onyx.galaxy.note.settings.p047ui.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
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
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.common.data.CloudStorageStatusBean;
import com.onyx.android.sdk.data.common.sync.MMKVBackup;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.p043ui.LoginActivity;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.databinding.FragmentSettingsCloudBinding;
import com.onyx.galaxy.note.p048ui.view.ManualSwitchCompat;
import com.onyx.galaxy.note.settings.p047ui.fragment.SettingsCloudSyncFragment;
import com.onyx.galaxy.note.settings.viewmodel.SettingsCloudSyncViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.Arrays;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\"\u0010#J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\r\u001a\u00020\u000bH\u0002J\b\u0010\u000e\u001a\u00020\u000bH\u0002J#\u0010\u0012\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0014\u001a\u00020\u000bH\u0002J\b\u0010\u0015\u001a\u00020\u000bH\u0002J\b\u0010\u0016\u001a\u00020\u000bH\u0002R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001b\u0010!\u001a\u00020\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u0019\u001a\u0004\b\u001f\u0010 ¨\u0006$"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "view", "", "onViewCreated", "r0", "x0", "", "total", "used", "z0", "(Ljava/lang/Long;Ljava/lang/Long;)V", "A0", "s0", "y0", "Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;", "d1", "Lkotlin/Lazy;", "p0", "()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;", "binding", "Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;", "e1", "q0", "()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;", "viewModel", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSettingsCloudSyncFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsCloudSyncFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,129:1\n106#2,15:130\n*S KotlinDebug\n*F\n+ 1 SettingsCloudSyncFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment\n*L\n26#1:130,15\n*E\n"})
/* loaded from: classes9.dex */
public final class SettingsCloudSyncFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewModel;

    /* renamed from: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudSyncFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12698a implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f61674a;

        public C12698a(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f61674a = function;
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
            return this.f61674a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f61674a.invoke(obj);
        }
    }

    public SettingsCloudSyncFragment() {
        Lazy lazy;
        final Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentSettingsCloudBinding>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudSyncFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentSettingsCloudBinding invoke() {
                return FragmentSettingsCloudBinding.inflate(SettingsCloudSyncFragment.this.getLayoutInflater());
            }
        });
        this.binding = lazy;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudSyncFragment$special$$inlined$viewModels$default$1
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
        lazy2 = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudSyncFragment$special$$inlined$viewModels$default$2
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
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(SettingsCloudSyncViewModel.class), new Function0<ViewModelStore>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudSyncFragment$special$$inlined$viewModels$default$3
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
        }, new Function0<CreationExtras>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudSyncFragment$special$$inlined$viewModels$default$4
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudSyncFragment$special$$inlined$viewModels$default$5
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

    /* renamed from: t0 */
    public static final void m50898t0(SettingsCloudSyncFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50904q0().configureWifiOnly(true);
    }

    /* renamed from: u0 */
    public static final void m50899u0(SettingsCloudSyncFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50904q0().configureWifiOnly(false);
    }

    /* renamed from: v0 */
    public static final void m50900v0(View view) {
    }

    /* renamed from: w0 */
    public static final void m50901w0(SettingsCloudSyncFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50904q0().configureAutoSync(z);
    }

    /* renamed from: A0 */
    public final void m50902A0() {
        String str = MMKVBackup.INSTANCE.getCloudSyncLastTime().get();
        if (StringKt.isNotBlank(str)) {
            String string = requireContext().getString(C10651R.string.last_backup_time);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            TintTextView tintTextView = m50903p0().tvLastModify;
            String format = String.format(string, Arrays.copyOf(new Object[]{str}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(...)");
            tintTextView.setText(format);
            ViewKt.setViewVisibleOrInvisible(m50903p0().tvLastModify, true);
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        m50903p0().setLifecycleOwner(getViewLifecycleOwner());
        m50903p0().setViewModel(m50904q0());
        View root = m50903p0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m50906s0();
        m50907x0();
        m50905r0();
    }

    /* renamed from: p0 */
    public final FragmentSettingsCloudBinding m50903p0() {
        return (FragmentSettingsCloudBinding) this.binding.getValue();
    }

    /* renamed from: q0 */
    public final SettingsCloudSyncViewModel m50904q0() {
        return (SettingsCloudSyncViewModel) this.viewModel.getValue();
    }

    /* renamed from: r0 */
    public final void m50905r0() {
        OnyxAccountModel onyxAccount = AccountDataBundle.INSTANCE.getOnyxAccount();
        m50909z0(onyxAccount != null ? Long.valueOf(onyxAccount.getStorageLimit()) : null, onyxAccount != null ? Long.valueOf(onyxAccount.getStorageUsed()) : null);
        m50904q0().getCloudStorageStatus();
    }

    /* renamed from: s0 */
    public final void m50906s0() {
        m50903p0().flWifiAndMobile.flWifiOnlyContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.rim
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsCloudSyncFragment.m50898t0(SettingsCloudSyncFragment.this, view);
            }
        });
        m50903p0().flWifiAndMobile.flWifiAndMobileContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.sim
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsCloudSyncFragment.m50899u0(SettingsCloudSyncFragment.this, view);
            }
        });
        m50903p0().tvGetMoreSpace.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.tim
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsCloudSyncFragment.m50900v0(view);
            }
        });
        ManualSwitchCompat manualSwitchCompat = m50903p0().switchAutoSync;
        manualSwitchCompat.setClickCallback(new Function0<Boolean>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudSyncFragment$initListener$4$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                boolean isAlreadyLogin = AccountDataBundle.INSTANCE.isAlreadyLogin();
                if (!isAlreadyLogin) {
                    SettingsCloudSyncFragment.this.m50908y0();
                }
                return Boolean.valueOf(isAlreadyLogin);
            }
        });
        manualSwitchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.uim
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsCloudSyncFragment.m50901w0(SettingsCloudSyncFragment.this, compoundButton, z);
            }
        });
    }

    /* renamed from: x0 */
    public final void m50907x0() {
        m50904q0().isAutoSync().observe(getViewLifecycleOwner(), new C12698a(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudSyncFragment$initViewModel$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool) {
                FragmentSettingsCloudBinding m50903p0;
                m50903p0 = SettingsCloudSyncFragment.this.m50903p0();
                ManualSwitchCompat manualSwitchCompat = m50903p0.switchAutoSync;
                Intrinsics.checkNotNull(bool);
                manualSwitchCompat.setChecked(bool.booleanValue());
            }
        }));
        m50904q0().getCloudStorageStatusBean().observe(getViewLifecycleOwner(), new C12698a(new Function1<CloudStorageStatusBean, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudSyncFragment$initViewModel$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(CloudStorageStatusBean cloudStorageStatusBean) {
                invoke2(cloudStorageStatusBean);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable CloudStorageStatusBean cloudStorageStatusBean) {
                if (cloudStorageStatusBean != null) {
                    SettingsCloudSyncFragment.this.m50909z0(Long.valueOf(cloudStorageStatusBean.getTotalSize()), Long.valueOf(cloudStorageStatusBean.getUsedSize()));
                }
            }
        }));
    }

    /* renamed from: y0 */
    public final void m50908y0() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new CommonDialog.Builder(requireContext).setTitle(C10651R.string.hint).setMessage(C10651R.string.cloud_sync_login_content).setConfirmText(C10651R.string.cloud_sync_login_confirm).setCancelText(C10651R.string.cancel).setCancelable(false).setWarning(true).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudSyncFragment$showSyncLoginDialog$1
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
                FragmentActivity requireActivity = SettingsCloudSyncFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                ContextExtKt.startActivity(requireActivity, LoginActivity.class);
            }
        }).create().show();
    }

    /* renamed from: z0 */
    public final void m50909z0(Long total, Long used) {
        String string = getString(C10651R.string.default_cloud_space_total);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = getString(C10651R.string.default_cloud_space_use);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        if (total != null) {
            string = FileUtils.INSTANCE.getFileSize(total.longValue());
        }
        if (used != null) {
            string2 = FileUtils.INSTANCE.getFileSize(used.longValue());
        }
        TintTextView tintTextView = m50903p0().tvCloudSpaceLeft;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String string3 = getResources().getString(C10651R.string.cloud_space_left);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        String format = String.format(string3, Arrays.copyOf(new Object[]{string2, string}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        tintTextView.setText(format);
        m50902A0();
    }
}
