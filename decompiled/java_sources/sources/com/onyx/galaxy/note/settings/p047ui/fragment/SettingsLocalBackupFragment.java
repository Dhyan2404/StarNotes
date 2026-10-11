package com.onyx.galaxy.note.settings.p047ui.fragment;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
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
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.common.sync.MMKVBackup;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.filepicker.DocumentBean;
import com.onyx.android.sdk.filepicker.FilePickerBuilder;
import com.onyx.android.sdk.filepicker.FilePickerUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.p042ui.data.BackupFilePaths;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentSettingsLocalBackUpBinding;
import com.onyx.galaxy.note.editor.action.importfiles.ObtainDocumentListAction;
import com.onyx.galaxy.note.p048ui.view.ManualSwitchCompat;
import com.onyx.galaxy.note.settings.action.PrepareBackupNoteAction;
import com.onyx.galaxy.note.settings.data.BackupPathBean;
import com.onyx.galaxy.note.settings.data.PermissionRequestConst;
import com.onyx.galaxy.note.settings.p047ui.adapter.BackupPathAdapter;
import com.onyx.galaxy.note.settings.p047ui.fragment.SettingsLocalBackupFragment;
import com.onyx.galaxy.note.settings.utils.PermissionActionUtils;
import com.onyx.galaxy.note.settings.viewmodel.SettingsLocalBackupViveModel;
import com.onyx.galaxy.note.utils.FilePickerExtKt;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Predicate;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b7\u00108J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\"\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0002J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0003J\b\u0010\u0018\u001a\u00020\u0004H\u0002J\b\u0010\u0019\u001a\u00020\u0004H\u0002J\u0016\u0010\u001d\u001a\u00020\u00042\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002J\u000e\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eH\u0002J\b\u0010!\u001a\u00020\u0004H\u0002J\b\u0010\"\u001a\u00020\u0004H\u0002R\u001b\u0010(\u001a\u00020#8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u001b\u0010-\u001a\u00020)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010%\u001a\u0004\b+\u0010,R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u001b\u00106\u001a\u0002028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b3\u0010%\u001a\u0004\b4\u00105¨\u00069"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "x0", "", "path", "s0", "E0", "z0", "", "Landroid/net/Uri;", "uris", "w0", "Lio/reactivex/rxjava3/core/Observable;", "", "r0", "q0", "F0", "Lcom/onyx/galaxy/note/databinding/FragmentSettingsLocalBackUpBinding;", "d1", "Lkotlin/Lazy;", "u0", "()Lcom/onyx/galaxy/note/databinding/FragmentSettingsLocalBackUpBinding;", "binding", "Lcom/onyx/galaxy/note/settings/viewmodel/SettingsLocalBackupViveModel;", "e1", "v0", "()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsLocalBackupViveModel;", "viewModel", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "f1", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "Lcom/onyx/galaxy/note/settings/ui/adapter/BackupPathAdapter;", "g1", "t0", "()Lcom/onyx/galaxy/note/settings/ui/adapter/BackupPathAdapter;", "adapter", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSettingsLocalBackupFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsLocalBackupFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,248:1\n106#2,15:249\n1549#3:264\n1620#3,3:265\n256#4,2:268\n*S KotlinDebug\n*F\n+ 1 SettingsLocalBackupFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment\n*L\n59#1:249,15\n99#1:264\n99#1:265,3\n232#1:268,2\n*E\n"})
/* loaded from: classes17.dex */
public final class SettingsLocalBackupFragment extends BaseFragment {

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
    public final Lazy adapter;

    /* renamed from: com.onyx.galaxy.note.settings.ui.fragment.SettingsLocalBackupFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12718a<T> implements Predicate {

        /* renamed from: e */
        public static final C12718a<T> f61719e = new C12718a<>();

        /* renamed from: a */
        public final boolean m51025a(boolean z) {
            return z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m51025a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.ui.fragment.SettingsLocalBackupFragment$b */
    /* loaded from: classes9.dex */
    public static final class C12719b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ String f61721f;

        public C12719b(String str) {
            this.f61721f = str;
        }

        /* renamed from: a */
        public final void m51026a(boolean z) {
            SettingsLocalBackupFragment.this.m51018s0(this.f61721f);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m51026a(((Boolean) obj).booleanValue());
        }
    }

    @SourceDebugExtension({"SMAP\nSettingsLocalBackupFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsLocalBackupFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$onActivityResult$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,248:1\n1549#2:249\n1620#2,3:250\n*S KotlinDebug\n*F\n+ 1 SettingsLocalBackupFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$onActivityResult$1\n*L\n242#1:249\n242#1:250,3\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.settings.ui.fragment.SettingsLocalBackupFragment$c */
    /* loaded from: classes9.dex */
    public static final class C12720c<T> implements Consumer {
        public C12720c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<DocumentBean> it2) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(it2, "it");
            SettingsLocalBackupFragment settingsLocalBackupFragment = SettingsLocalBackupFragment.this;
            List<DocumentBean> list = it2;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it3 = list.iterator();
            while (it3.hasNext()) {
                arrayList.add(((DocumentBean) it3.next()).getPath());
            }
            settingsLocalBackupFragment.m51022w0(arrayList);
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.ui.fragment.SettingsLocalBackupFragment$d */
    /* loaded from: classes9.dex */
    public static final class C12721d implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f61723a;

        public C12721d(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f61723a = function;
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
            return this.f61723a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f61723a.invoke(obj);
        }
    }

    public SettingsLocalBackupFragment() {
        Lazy lazy;
        final Lazy lazy2;
        Lazy lazy3;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentSettingsLocalBackUpBinding>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsLocalBackupFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentSettingsLocalBackUpBinding invoke() {
                return FragmentSettingsLocalBackUpBinding.inflate(SettingsLocalBackupFragment.this.getLayoutInflater());
            }
        });
        this.binding = lazy;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsLocalBackupFragment$special$$inlined$viewModels$default$1
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
        lazy2 = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsLocalBackupFragment$special$$inlined$viewModels$default$2
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
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(SettingsLocalBackupViveModel.class), new Function0<ViewModelStore>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsLocalBackupFragment$special$$inlined$viewModels$default$3
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
        }, new Function0<CreationExtras>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsLocalBackupFragment$special$$inlined$viewModels$default$4
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsLocalBackupFragment$special$$inlined$viewModels$default$5
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
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<BackupPathAdapter>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsLocalBackupFragment$adapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BackupPathAdapter invoke() {
                return new BackupPathAdapter();
            }
        });
        this.adapter = lazy3;
    }

    /* renamed from: A0 */
    public static final void m51004A0(SettingsLocalBackupFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51021v0().configureAutoBackup(z);
    }

    /* renamed from: B0 */
    public static final void m51005B0(final SettingsLocalBackupFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        RxjavaKt.doOnNextIfTrue(new PrepareBackupNoteAction(requireActivity).build(), new Consumer() { // from class: com.sunia.HTREnginev2.wjm
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SettingsLocalBackupFragment.m51006C0(SettingsLocalBackupFragment.this, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    /* renamed from: C0 */
    public static final void m51006C0(SettingsLocalBackupFragment this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51016q0();
    }

    /* renamed from: D0 */
    public static final void m51007D0(final SettingsLocalBackupFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51017r0().doOnNext(new Consumer() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsLocalBackupFragment$initListener$3$1
            /* renamed from: a */
            public final void m51030a(boolean z) {
                if (z) {
                    FilePickerBuilder maxSelectCount = FilePickerExtKt.setCommonConfig(FilePickerBuilder.INSTANCE.getInstance()).onlyNote().setTitle(C10651R.string.import_backup).multiEnable(true).setPickerFilesDir(new File(BackupFilePaths.INSTANCE.getBackupDirPath())).enableFilterDocType(false).setMaxSelectCount(FilePickerUtils.INSTANCE.importLocalBackupMaxCount());
                    final SettingsLocalBackupFragment settingsLocalBackupFragment = SettingsLocalBackupFragment.this;
                    FilePickerBuilder.pickFile$default(maxSelectCount, (Fragment) settingsLocalBackupFragment, false, 2010, (Function2) new Function2<ArrayList<DocumentBean>, WeakReference<Activity>, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsLocalBackupFragment$initListener$3$1.1
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(ArrayList<DocumentBean> arrayList, WeakReference<Activity> weakReference) {
                            invoke2(arrayList, weakReference);
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(@NotNull ArrayList<DocumentBean> files, @NotNull WeakReference<Activity> weakReference) {
                            int collectionSizeOrDefault;
                            Intrinsics.checkNotNullParameter(files, "files");
                            Intrinsics.checkNotNullParameter(weakReference, "<anonymous parameter 1>");
                            if (!files.isEmpty()) {
                                SettingsLocalBackupFragment settingsLocalBackupFragment2 = SettingsLocalBackupFragment.this;
                                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(files, 10);
                                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                                Iterator<T> it2 = files.iterator();
                                while (it2.hasNext()) {
                                    arrayList.add(((DocumentBean) it2.next()).getPath());
                                }
                                settingsLocalBackupFragment2.m51022w0(arrayList);
                            }
                        }
                    }, 2, (Object) null);
                }
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            public /* bridge */ /* synthetic */ void accept(Object obj) {
                m51030a(((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    /* renamed from: y0 */
    public static final void m51013y0(SettingsLocalBackupFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        BackupPathBean item = this$0.m51019t0().getItem(i);
        Intrinsics.checkNotNull(item);
        String path = item.getPath();
        if (Intrinsics.areEqual(path, BackupFilePaths.INSTANCE.getBackupDirPath())) {
            return;
        }
        this$0.m51017r0().filter(C12718a.f61719e).doOnNext(new C12719b(path)).subscribe();
    }

    /* renamed from: E0 */
    public final void m51014E0() {
        m51015F0();
    }

    /* renamed from: F0 */
    public final void m51015F0() {
        String ifEmpty = StringKt.ifEmpty(MMKVBackup.INSTANCE.getLocalBackupLastTime().get(), new Function0<String>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsLocalBackupFragment$updateLastTime$timeStr$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                String string = SettingsLocalBackupFragment.this.getString(C10651R.string.none);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                return string;
            }
        });
        String string = requireContext().getString(C10651R.string.last_backup_time);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        TintTextView tintTextView = m51020u0().tvLastLocalBackTime;
        String format = String.format(string, Arrays.copyOf(new Object[]{ifEmpty}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        tintTextView.setText(format);
        TintTextView tvLastLocalBackTime = m51020u0().tvLastLocalBackTime;
        Intrinsics.checkNotNullExpressionValue(tvLastLocalBackTime, "tvLastLocalBackTime");
        tvLastLocalBackTime.setVisibility(0);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 2010) {
            OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
            Observable<List<? extends DocumentBean>> doOnNext = new ObtainDocumentListAction(data).build().doOnNext(new C12720c());
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063266, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        m51020u0().setLifecycleOwner(getViewLifecycleOwner());
        m51020u0().setViewModel(m51021v0());
        View root = m51020u0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m51014E0();
        m51024z0();
        m51023x0();
    }

    /* renamed from: q0 */
    public final void m51016q0() {
        FragmentKt.requireContextSafety(this, new SettingsLocalBackupFragment$backup$1(this));
    }

    /* renamed from: r0 */
    public final Observable<Boolean> m51017r0() {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        return permissionActionUtils.requestStoragePermissionAction(requireActivity, resManager.getStringSafely(permissionRequestConst.getPERMISSION_LOCAL_BACKUP_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_LOCAL_BACKUP_INTENT_NAME())).build();
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: s0 */
    public final void m51018s0(String path) {
        BackupFilePaths.INSTANCE.configBackupPath(path);
        m51019t0().notifyDataSetChanged();
    }

    /* renamed from: t0 */
    public final BackupPathAdapter m51019t0() {
        return (BackupPathAdapter) this.adapter.getValue();
    }

    /* renamed from: u0 */
    public final FragmentSettingsLocalBackUpBinding m51020u0() {
        return (FragmentSettingsLocalBackUpBinding) this.binding.getValue();
    }

    /* renamed from: v0 */
    public final SettingsLocalBackupViveModel m51021v0() {
        return (SettingsLocalBackupViveModel) this.viewModel.getValue();
    }

    /* renamed from: w0 */
    public final void m51022w0(List<? extends Uri> uris) {
        FragmentKt.requireContextSafety(this, new SettingsLocalBackupFragment$import$1(uris, this));
    }

    /* renamed from: x0 */
    public final void m51023x0() {
        int collectionSizeOrDefault;
        if (m51021v0().isEnableAutoBackup()) {
            SettingsLocalBackupViveModel m51021v0 = m51021v0();
            FragmentActivity requireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
            m51021v0.configureAutoBackup(ContextKt.hasStoragePermissionByConfig(requireActivity));
        }
        m51021v0().isAutoBackup().observe(getViewLifecycleOwner(), new C12721d(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsLocalBackupFragment$initData$1
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
                FragmentSettingsLocalBackUpBinding m51020u0;
                m51020u0 = SettingsLocalBackupFragment.this.m51020u0();
                ManualSwitchCompat manualSwitchCompat = m51020u0.switchAutoBackup;
                Intrinsics.checkNotNull(bool);
                manualSwitchCompat.setChecked(bool.booleanValue());
            }
        }));
        List<String> backupPaths = BackupFilePaths.INSTANCE.getBackupPaths();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(backupPaths, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = backupPaths.iterator();
        while (it2.hasNext()) {
            arrayList.add(new BackupPathBean((String) it2.next()));
        }
        ItemClickUtilsKt.setOnDebouncedItemClick$default(m51019t0(), 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.xjm
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SettingsLocalBackupFragment.m51013y0(SettingsLocalBackupFragment.this, baseQuickAdapter, view, i);
            }
        }, 1, null);
        m51019t0().submitList(arrayList);
        m51020u0().rvPath.setAdapter(m51019t0());
    }

    /* renamed from: z0 */
    public final void m51024z0() {
        ManualSwitchCompat manualSwitchCompat = m51020u0().switchAutoBackup;
        manualSwitchCompat.setClickCallback(new Function0<Boolean>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsLocalBackupFragment$initListener$1$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                Context requireContext = SettingsLocalBackupFragment.this.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                boolean hasStoragePermissionByConfig = ContextKt.hasStoragePermissionByConfig(requireContext);
                if (!hasStoragePermissionByConfig) {
                    SettingsLocalBackupFragment.this.m51017r0();
                }
                return Boolean.valueOf(hasStoragePermissionByConfig);
            }
        });
        manualSwitchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.tjm
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsLocalBackupFragment.m51004A0(SettingsLocalBackupFragment.this, compoundButton, z);
            }
        });
        TintTextView tvBackupNow = m51020u0().tvBackupNow;
        Intrinsics.checkNotNullExpressionValue(tvBackupNow, "tvBackupNow");
        ViewKt.click$default(tvBackupNow, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ujm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsLocalBackupFragment.m51005B0(SettingsLocalBackupFragment.this, view);
            }
        }, 1, null);
        TintTextView tvImportBackup = m51020u0().tvImportBackup;
        Intrinsics.checkNotNullExpressionValue(tvImportBackup, "tvImportBackup");
        ViewKt.click$default(tvImportBackup, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vjm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsLocalBackupFragment.m51007D0(SettingsLocalBackupFragment.this, view);
            }
        }, 1, null);
    }
}
