package com.onyx.galaxy.note.settings.p047ui.fragment;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
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
import com.couchbase.lite.internal.core.C4Replicator;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.event.CloudAuthEvent;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.AuthResult;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.event.LoginAccountChanged;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.p043ui.LoginActivity;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentSettingsCloudBackUpBinding;
import com.onyx.galaxy.note.p048ui.view.ManualSwitchCompat;
import com.onyx.galaxy.note.settings.action.PrepareBackupNoteAction;
import com.onyx.galaxy.note.settings.data.PermissionRequestConst;
import com.onyx.galaxy.note.settings.p047ui.dialog.CloudRestoreFileListDialog;
import com.onyx.galaxy.note.settings.p047ui.fragment.SettingsCloudBackupFragment;
import com.onyx.galaxy.note.settings.utils.PermissionActionUtils;
import com.onyx.galaxy.note.settings.viewmodel.SettingsCloudBackupViewModel;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Arrays;
import java.util.Iterator;
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
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000y\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\b*\u0001;\u0018\u0000 A2\u00020\u0001:\u0001AB\u0007¢\u0006\u0004\b?\u0010@J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0011H\u0002J!\u0010\u0014\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0011H\u0002J\u0018\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u000fH\u0002J\b\u0010\u001b\u001a\u00020\u000fH\u0002J\u0012\u0010\u001e\u001a\u00020\u00022\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016J$\u0010$\u001a\u00020#2\u0006\u0010 \u001a\u00020\u001f2\b\u0010\"\u001a\u0004\u0018\u00010!2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016J\u0010\u0010'\u001a\u00020\u00022\u0006\u0010&\u001a\u00020%H\u0007J\u001a\u0010)\u001a\u00020\u00022\u0006\u0010(\u001a\u00020#2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016J\u0010\u0010+\u001a\u00020\u00022\u0006\u0010&\u001a\u00020*H\u0007R\u001b\u00101\u001a\u00020,8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u001b\u00106\u001a\u0002028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b3\u0010.\u001a\u0004\b4\u00105R\u0014\u0010:\u001a\u0002078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u0014\u0010>\u001a\u00020;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=¨\u0006B"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "E0", "R0", "G0", "T0", "Y0", "z0", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", CouchFieldKey.KEY_PROVIDER, "A0", "V0", "U0", "Lio/reactivex/rxjava3/core/Observable;", "", "y0", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "W0", "isAuth", "X0", "(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/Boolean;)V", "D0", "Landroid/widget/TextView;", "textView", C4Replicator.REPLICATOR_OPTION_AUTHENTICATION, "Z0", "x0", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;", NotificationCompat.CATEGORY_EVENT, "onAccountChange", "view", "onViewCreated", "Lcom/onyx/android/sdk/cloudstorage/event/CloudAuthEvent;", "receiveCloudAuthEvent", "Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;", "d1", "Lkotlin/Lazy;", "B0", "()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;", "binding", "Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;", "e1", "C0", "()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;", "viewModel", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "f1", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "com/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$refreshDriverReceiver$1", "g1", "Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$refreshDriverReceiver$1;", "refreshDriverReceiver", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSettingsCloudBackupFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsCloudBackupFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,409:1\n106#2,15:410\n256#3,2:425\n288#4,2:427\n*S KotlinDebug\n*F\n+ 1 SettingsCloudBackupFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment\n*L\n70#1:410,15\n268#1:425,2\n378#1:427,2\n*E\n"})
/* loaded from: classes17.dex */
public final class SettingsCloudBackupFragment extends BaseFragment {

    @NotNull
    public static final String TAG = "SettingsCloudBackupFragment";

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewModel;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    /* renamed from: g1, reason: from kotlin metadata */
    @NotNull
    public final SettingsCloudBackupFragment$refreshDriverReceiver$1 refreshDriverReceiver;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Provider.values().length];
            try {
                iArr[Provider.BAIDU_YUN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Provider.GOOGLE_DRIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Provider.ONE_DRIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudBackupFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12694a implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f61667a;

        public C12694a(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f61667a = function;
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
            return this.f61667a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f61667a.invoke(obj);
        }
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudBackupFragment$refreshDriverReceiver$1] */
    public SettingsCloudBackupFragment() {
        Lazy lazy;
        final Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentSettingsCloudBackUpBinding>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudBackupFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentSettingsCloudBackUpBinding invoke() {
                return FragmentSettingsCloudBackUpBinding.inflate(SettingsCloudBackupFragment.this.getLayoutInflater());
            }
        });
        this.binding = lazy;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudBackupFragment$special$$inlined$viewModels$default$1
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
        lazy2 = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudBackupFragment$special$$inlined$viewModels$default$2
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
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(SettingsCloudBackupViewModel.class), new Function0<ViewModelStore>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudBackupFragment$special$$inlined$viewModels$default$3
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
        }, new Function0<CreationExtras>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudBackupFragment$special$$inlined$viewModels$default$4
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudBackupFragment$special$$inlined$viewModels$default$5
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
        this.compositeDisposable = new CompositeDisposable();
        this.refreshDriverReceiver = new BroadcastReceiver() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudBackupFragment$refreshDriverReceiver$1
            @Override // android.content.BroadcastReceiver
            public void onReceive(@Nullable Context context, @Nullable Intent intent) {
                SettingsCloudBackupFragment.this.m50878E0();
            }
        };
    }

    /* renamed from: F0 */
    public static final void m50850F0(SettingsCloudBackupFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50880R0();
    }

    /* renamed from: H0 */
    public static final void m50851H0(SettingsCloudBackupFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50877D0(Provider.BAIDU_YUN);
    }

    /* renamed from: I0 */
    public static final void m50852I0(SettingsCloudBackupFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50877D0(Provider.GOOGLE_DRIVE);
    }

    /* renamed from: J0 */
    public static final void m50853J0(SettingsCloudBackupFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50877D0(Provider.ONE_DRIVE);
    }

    /* renamed from: K0 */
    public static final void m50854K0(SettingsCloudBackupFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50876C0().configureWifiOnly(false);
    }

    /* renamed from: L0 */
    public static final void m50855L0(SettingsCloudBackupFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50876C0().configureWifiOnly(true);
    }

    /* renamed from: M0 */
    public static final void m50856M0(SettingsCloudBackupFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50884W0(Provider.BAIDU_YUN);
    }

    /* renamed from: N0 */
    public static final void m50857N0(SettingsCloudBackupFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50884W0(Provider.GOOGLE_DRIVE);
    }

    /* renamed from: O0 */
    public static final void m50858O0(SettingsCloudBackupFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50884W0(Provider.ONE_DRIVE);
    }

    /* renamed from: P0 */
    public static final void m50859P0(final SettingsCloudBackupFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            this$0.m50883V0();
        } else {
            if (!this$0.m50876C0().hasBindDrive()) {
                ToastUtils.INSTANCE.show(C10651R.string.cloud_backup_no_bind_hint, true);
                return;
            }
            FragmentActivity requireActivity = this$0.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
            RxjavaKt.doOnNextIfTrue(new PrepareBackupNoteAction(requireActivity).build(), new Consumer() { // from class: com.sunia.HTREnginev2.iim
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Object obj) {
                    SettingsCloudBackupFragment.m50860Q0(SettingsCloudBackupFragment.this, ((Boolean) obj).booleanValue());
                }
            }).subscribe();
        }
    }

    /* renamed from: Q0 */
    public static final void m50860Q0(SettingsCloudBackupFragment this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50890z0();
    }

    /* renamed from: S0 */
    public static final void m50861S0(SettingsCloudBackupFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.m50876C0().hasBindDrive()) {
            this$0.m50876C0().configureAutoBackup(z);
        } else {
            compoundButton.setChecked(false);
            ToastUtils.INSTANCE.show(C10651R.string.cloud_backup_no_bind_hint, true);
        }
    }

    /* renamed from: A0 */
    public final void m50874A0(BaseCloudStorageProvider provider) {
        CloudRestoreFileListDialog.INSTANCE.newInstance(provider.getProviderType()).show(getChildFragmentManager(), CloudRestoreFileListDialog.TAG);
    }

    /* renamed from: B0 */
    public final FragmentSettingsCloudBackUpBinding m50875B0() {
        return (FragmentSettingsCloudBackUpBinding) this.binding.getValue();
    }

    /* renamed from: C0 */
    public final SettingsCloudBackupViewModel m50876C0() {
        return (SettingsCloudBackupViewModel) this.viewModel.getValue();
    }

    /* renamed from: D0 */
    public final void m50877D0(Provider provider) {
        String str;
        Object obj;
        if (m50888x0()) {
            if (!AccountDataBundle.INSTANCE.isAlreadyLogin()) {
                m50883V0();
                return;
            }
            Iterator<T> it2 = m50876C0().getAuthProvider().iterator();
            while (true) {
                str = null;
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                } else {
                    obj = it2.next();
                    if (((BaseCloudStorageProvider) obj).getProviderType() == provider) {
                        break;
                    }
                }
            }
            BaseCloudStorageProvider baseCloudStorageProvider = (BaseCloudStorageProvider) obj;
            if (baseCloudStorageProvider != null) {
                m50874A0(baseCloudStorageProvider);
                return;
            }
            String string = ResManager.INSTANCE.getString(C10651R.string.cloud_backup_bind_format_hint);
            if (string != null) {
                Provider.Companion companion = Provider.INSTANCE;
                Context requireContext = requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                str = String.format(string, Arrays.copyOf(new Object[]{companion.getNameByProvider(requireContext, provider)}, 1));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            }
            ToastUtils.INSTANCE.show((CharSequence) String.valueOf(str), true);
        }
    }

    /* renamed from: E0 */
    public final void m50878E0() {
        Disposable subscribe = m50876C0().checkNetDiskAuth().doFinally(new Action() { // from class: com.sunia.HTREnginev2.fim
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SettingsCloudBackupFragment.m50850F0(SettingsCloudBackupFragment.this);
            }
        }).subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
        if (m50876C0().isEnableAutoBackup()) {
            SettingsCloudBackupViewModel m50876C0 = m50876C0();
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            m50876C0.configureAutoBackup(ContextKt.hasStoragePermissionByConfig(requireContext));
        }
        m50876C0().isAutoBackup().observe(getViewLifecycleOwner(), new C12694a(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudBackupFragment$initData$1
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
                FragmentSettingsCloudBackUpBinding m50875B0;
                m50875B0 = SettingsCloudBackupFragment.this.m50875B0();
                ManualSwitchCompat manualSwitchCompat = m50875B0.switchAutoBackup;
                Intrinsics.checkNotNull(bool);
                manualSwitchCompat.setChecked(bool.booleanValue());
            }
        }));
        m50876C0().isAuthBaidu().observe(getViewLifecycleOwner(), new C12694a(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudBackupFragment$initData$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Boolean bool) {
                FragmentSettingsCloudBackUpBinding m50875B0;
                if (bool == null) {
                    return;
                }
                SettingsCloudBackupFragment settingsCloudBackupFragment = SettingsCloudBackupFragment.this;
                m50875B0 = settingsCloudBackupFragment.m50875B0();
                TintTextView tvBaiduBindState = m50875B0.tvBaiduBindState;
                Intrinsics.checkNotNullExpressionValue(tvBaiduBindState, "tvBaiduBindState");
                settingsCloudBackupFragment.m50887Z0(tvBaiduBindState, bool.booleanValue());
            }
        }));
        m50876C0().isAuthGoogleDrive().observe(getViewLifecycleOwner(), new C12694a(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudBackupFragment$initData$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Boolean bool) {
                FragmentSettingsCloudBackUpBinding m50875B0;
                if (bool == null) {
                    return;
                }
                SettingsCloudBackupFragment settingsCloudBackupFragment = SettingsCloudBackupFragment.this;
                m50875B0 = settingsCloudBackupFragment.m50875B0();
                TintTextView tvGoogleBindState = m50875B0.tvGoogleBindState;
                Intrinsics.checkNotNullExpressionValue(tvGoogleBindState, "tvGoogleBindState");
                settingsCloudBackupFragment.m50887Z0(tvGoogleBindState, bool.booleanValue());
            }
        }));
        m50876C0().isAuthOneDrive().observe(getViewLifecycleOwner(), new C12694a(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudBackupFragment$initData$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Boolean bool) {
                FragmentSettingsCloudBackUpBinding m50875B0;
                if (bool == null) {
                    return;
                }
                SettingsCloudBackupFragment settingsCloudBackupFragment = SettingsCloudBackupFragment.this;
                m50875B0 = settingsCloudBackupFragment.m50875B0();
                TintTextView tvOnedriveBindState = m50875B0.tvOnedriveBindState;
                Intrinsics.checkNotNullExpressionValue(tvOnedriveBindState, "tvOnedriveBindState");
                settingsCloudBackupFragment.m50887Z0(tvOnedriveBindState, bool.booleanValue());
            }
        }));
    }

    /* renamed from: G0 */
    public final void m50879G0() {
        m50875B0().flWifiAndMobile.flWifiAndMobileContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.kim
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsCloudBackupFragment.m50854K0(SettingsCloudBackupFragment.this, view);
            }
        });
        m50875B0().flWifiAndMobile.flWifiOnlyContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.lim
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsCloudBackupFragment.m50855L0(SettingsCloudBackupFragment.this, view);
            }
        });
        TintTextView tvBaiduBindState = m50875B0().tvBaiduBindState;
        Intrinsics.checkNotNullExpressionValue(tvBaiduBindState, "tvBaiduBindState");
        ViewKt.click$default(tvBaiduBindState, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.mim
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsCloudBackupFragment.m50856M0(SettingsCloudBackupFragment.this, view);
            }
        }, 1, null);
        TintTextView tvGoogleBindState = m50875B0().tvGoogleBindState;
        Intrinsics.checkNotNullExpressionValue(tvGoogleBindState, "tvGoogleBindState");
        ViewKt.click$default(tvGoogleBindState, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.nim
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsCloudBackupFragment.m50857N0(SettingsCloudBackupFragment.this, view);
            }
        }, 1, null);
        TintTextView tvOnedriveBindState = m50875B0().tvOnedriveBindState;
        Intrinsics.checkNotNullExpressionValue(tvOnedriveBindState, "tvOnedriveBindState");
        ViewKt.click$default(tvOnedriveBindState, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.oim
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsCloudBackupFragment.m50858O0(SettingsCloudBackupFragment.this, view);
            }
        }, 1, null);
        TintTextView tvBackupNow = m50875B0().tvBackupNow;
        Intrinsics.checkNotNullExpressionValue(tvBackupNow, "tvBackupNow");
        ViewKt.click$default(tvBackupNow, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.pim
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsCloudBackupFragment.m50859P0(SettingsCloudBackupFragment.this, view);
            }
        }, 1, null);
        TintTextView tvBaiduImport = m50875B0().tvBaiduImport;
        Intrinsics.checkNotNullExpressionValue(tvBaiduImport, "tvBaiduImport");
        ViewKt.click$default(tvBaiduImport, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.qim
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsCloudBackupFragment.m50851H0(SettingsCloudBackupFragment.this, view);
            }
        }, 1, null);
        TintTextView tvGoogleImport = m50875B0().tvGoogleImport;
        Intrinsics.checkNotNullExpressionValue(tvGoogleImport, "tvGoogleImport");
        ViewKt.click$default(tvGoogleImport, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.gim
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsCloudBackupFragment.m50852I0(SettingsCloudBackupFragment.this, view);
            }
        }, 1, null);
        TintTextView tvOnedriveImport = m50875B0().tvOnedriveImport;
        Intrinsics.checkNotNullExpressionValue(tvOnedriveImport, "tvOnedriveImport");
        ViewKt.click$default(tvOnedriveImport, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.him
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsCloudBackupFragment.m50853J0(SettingsCloudBackupFragment.this, view);
            }
        }, 1, null);
    }

    /* renamed from: R0 */
    public final void m50880R0() {
        ManualSwitchCompat manualSwitchCompat = m50875B0().switchAutoBackup;
        manualSwitchCompat.setClickCallback(new Function0<Boolean>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudBackupFragment$initSwitch$1$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                if (!AccountDataBundle.INSTANCE.isAlreadyLogin()) {
                    SettingsCloudBackupFragment.this.m50883V0();
                    return Boolean.FALSE;
                }
                Context requireContext = SettingsCloudBackupFragment.this.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                if (!ContextKt.hasStoragePermissionByConfig(requireContext)) {
                    SettingsCloudBackupFragment.this.m50889y0();
                    return Boolean.FALSE;
                }
                return Boolean.TRUE;
            }
        });
        manualSwitchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.jim
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsCloudBackupFragment.m50861S0(SettingsCloudBackupFragment.this, compoundButton, z);
            }
        });
    }

    /* renamed from: T0 */
    public final void m50881T0() {
        m50886Y0();
    }

    /* renamed from: U0 */
    public final void m50882U0() {
        FragmentKt.requireActivitySafety$default(this, null, new Function1<Activity, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudBackupFragment$login$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Activity activity) {
                invoke2(activity);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Activity it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                ContextKt.startActivitySafely(it2, new Intent(it2, (Class<?>) LoginActivity.class));
            }
        }, 1, null);
    }

    /* renamed from: V0 */
    public final void m50883V0() {
        FragmentKt.requireContextSafety(this, new Function1<Context, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudBackupFragment$showSyncLoginDialog$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Context context) {
                invoke2(context);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Context it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                CommonDialog.Builder cancelable = new CommonDialog.Builder(it2).setTitle(C10651R.string.hint).setMessage(C10651R.string.network_disk_backup_login_content).setConfirmText(C10651R.string.cloud_sync_login_confirm).setCancelText(C10651R.string.cancel).setCancelable(false);
                final SettingsCloudBackupFragment settingsCloudBackupFragment = SettingsCloudBackupFragment.this;
                cancelable.setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsCloudBackupFragment$showSyncLoginDialog$1.1
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
                        SettingsCloudBackupFragment.this.m50882U0();
                    }
                }).create().show();
            }
        });
    }

    /* renamed from: W0 */
    public final void m50884W0(Provider provider) {
        if (!AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            m50883V0();
            return;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[provider.ordinal()];
        if (i == 1) {
            m50885X0(provider, m50876C0().isAuthBaidu().getValue());
        } else if (i == 2) {
            m50885X0(provider, m50876C0().isAuthGoogleDrive().getValue());
        } else {
            if (i != 3) {
                return;
            }
            m50885X0(provider, m50876C0().isAuthOneDrive().getValue());
        }
    }

    /* renamed from: X0 */
    public final void m50885X0(Provider provider, Boolean isAuth) {
        Disposable subscribe;
        if (Intrinsics.areEqual(isAuth, Boolean.TRUE)) {
            subscribe = m50876C0().deleteNetDiskAuth(provider).subscribe();
            Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        } else {
            SettingsCloudBackupViewModel m50876C0 = m50876C0();
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            subscribe = m50876C0.oAuthDrive(requireContext, provider).subscribe();
            Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        }
        this.compositeDisposable.add(subscribe);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001b  */
    /* renamed from: Y0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m50886Y0() {
        /*
            r5 = this;
            com.onyx.android.sdk.data.common.sync.MMKVBackup r0 = com.onyx.android.sdk.data.common.sync.MMKVBackup.INSTANCE
            com.onyx.android.sdk.data.utils.StringOption r0 = r0.getCloudBackupLastTime()
            java.lang.String r0 = r0.get()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L17
            boolean r3 = kotlin.text.StringsKt.isBlank(r0)
            if (r3 == 0) goto L15
            goto L17
        L15:
            r3 = r1
            goto L18
        L17:
            r3 = r2
        L18:
            if (r3 == 0) goto L1b
            return
        L1b:
            android.content.Context r3 = r5.requireContext()
            int r4 = com.onyx.galaxy.note.C10651R.string.last_backup_time
            java.lang.String r3 = r3.getString(r4)
            java.lang.String r4 = "getString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            com.onyx.galaxy.note.databinding.FragmentSettingsCloudBackUpBinding r4 = r5.m50875B0()
            com.onyx.android.sdk.theme.widgets.TintTextView r4 = r4.tvLastCloudBackTime
            java.lang.Object[] r0 = new java.lang.Object[]{r0}
            java.lang.Object[] r0 = java.util.Arrays.copyOf(r0, r2)
            java.lang.String r0 = java.lang.String.format(r3, r0)
            java.lang.String r2 = "format(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            r4.setText(r0)
            com.onyx.galaxy.note.databinding.FragmentSettingsCloudBackUpBinding r5 = r5.m50875B0()
            com.onyx.android.sdk.theme.widgets.TintTextView r5 = r5.tvLastCloudBackTime
            java.lang.String r0 = "tvLastCloudBackTime"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)
            r5.setVisibility(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.settings.p047ui.fragment.SettingsCloudBackupFragment.m50886Y0():void");
    }

    /* renamed from: Z0 */
    public final void m50887Z0(TextView textView, boolean auth) {
        textView.setTextColor(ThemeUtils.getColorById(auth ? C7996R.color.theme_text_color_03 : C7996R.color.theme_primary_color_01));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAccountChange(@NotNull LoginAccountChanged event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m50876C0().checkNetDiskAuth().subscribe();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063269, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        m50875B0().setLifecycleOwner(getViewLifecycleOwner());
        m50875B0().setViewModel(m50876C0());
        View root = m50875B0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m50878E0();
        m50881T0();
        m50879G0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void receiveCloudAuthEvent(@NotNull CloudAuthEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Disposable subscribe = m50876C0().checkNetDiskAuth().subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
        if (Intrinsics.areEqual(event.getTag(), TAG)) {
            AuthResult authResult = event.getAuthResult();
            if (authResult == null) {
                ToastUtils.INSTANCE.show(C10651R.string.cloud_backup_bind_fail_hint, true);
            } else if (authResult.getIsSuccess()) {
                ToastUtils.INSTANCE.show(C10651R.string.cloud_backup_bind_success_hint, true);
            } else {
                ToastUtils.INSTANCE.show(C10651R.string.cloud_backup_bind_fail_hint, true);
            }
        }
    }

    /* renamed from: x0 */
    public final boolean m50888x0() {
        NetworkUtils networkUtils = NetworkUtils.INSTANCE;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        boolean isNetworkConnected = networkUtils.isNetworkConnected(requireContext);
        if (!isNetworkConnected) {
            ToastUtils.INSTANCE.show(C10651R.string.network_error_hint, true);
        }
        return isNetworkConnected;
    }

    /* renamed from: y0 */
    public final Observable<Boolean> m50889y0() {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        return permissionActionUtils.requestStoragePermissionAction(requireActivity, resManager.getStringSafely(permissionRequestConst.getPERMISSION_CLOUD_BACKUP_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_CLOUD_BACKUP_INTENT_NAME())).build();
    }

    /* renamed from: z0 */
    public final void m50890z0() {
        if (m50888x0()) {
            FragmentKt.requireContextSafety(this, new SettingsCloudBackupFragment$cloudBackup$1(this));
        }
    }
}
