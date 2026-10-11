package com.onyx.galaxy.note.settings.p047ui.dialog;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.KeyboardUtils;
import com.blankj.utilcode.util.LogUtils;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.data.NoteImportArgs;
import com.onyx.android.sdk.universal.p042ui.data.RestoreContext;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.view.LoadingDialog;
import com.onyx.galaxy.note.databinding.DialogSettingsDriveBinding;
import com.onyx.galaxy.note.settings.p047ui.adapter.CloudRestoreFileListAdapter;
import com.onyx.galaxy.note.settings.p047ui.dialog.CloudRestoreFileListDialog;
import com.onyx.galaxy.note.settings.viewmodel.CloudRestoreFileViewModel;
import com.onyx.galaxy.note.settings.viewmodel.CloudRestoreFileViewModelFactory;
import com.sagittarius.p050v6.C13086AB;
import com.scwang.smart.refresh.footer.ClassicsFooter;
import com.scwang.smart.refresh.header.ClassicsHeader;
import com.scwang.smart.refresh.layout.SmartRefreshLayout;
import com.scwang.smart.refresh.layout.api.RefreshLayout;
import com.scwang.smart.refresh.layout.listener.OnLoadMoreListener;
import com.scwang.smart.refresh.layout.listener.OnRefreshListener;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.math3.dfp.Dfp;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 42\u00020\u0001:\u00014B\u0007¢\u0006\u0004\b2\u00103J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0003J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0002J\u0012\u0010\u0011\u001a\u00020\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00182\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016R\u001b\u0010!\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u001b\u0010$\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u001e\u001a\u0004\b#\u0010 R\u001b\u0010)\u001a\u00020%8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\u001e\u001a\u0004\b'\u0010(R\u0016\u0010-\u001a\u00020*8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b/\u00100¨\u00065"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;", "Landroidx/fragment/app/DialogFragment;", "", "U0", "H0", "I0", "K0", "G0", "Z0", "V0", "Y0", "W0", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "F0", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "onStart", "onDestroy", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;", "z1", "Lkotlin/Lazy;", "C0", "()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;", "adapter", "A1", "D0", "searchAdapter", "Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;", "B1", "E0", "()Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;", "viewModel", "Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;", "C1", "Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;", "binding", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "D1", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", CouchFieldKey.KEY_PROVIDER, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class CloudRestoreFileListDialog extends DialogFragment {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: E1 */
    @NotNull
    public static final String f61634E1 = "args_param_provider";

    @NotNull
    public static final String TAG = "CloudRestoreFileListDialog";

    /* renamed from: A1, reason: from kotlin metadata */
    @NotNull
    public final Lazy searchAdapter;

    /* renamed from: B1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewModel;

    /* renamed from: C1, reason: from kotlin metadata */
    public DialogSettingsDriveBinding binding;

    /* renamed from: D1, reason: from kotlin metadata */
    public Provider provider;

    /* renamed from: z1, reason: from kotlin metadata */
    @NotNull
    public final Lazy adapter;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$Companion;", "", "()V", "ARGS_PARAM_PROVIDER", "", "TAG", Dfp.f108018r, "Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CloudRestoreFileListDialog newInstance(@NotNull Provider provider) {
            Intrinsics.checkNotNullParameter(provider, "provider");
            Bundle bundle = new Bundle();
            bundle.putSerializable(CloudRestoreFileListDialog.f61634E1, provider);
            CloudRestoreFileListDialog cloudRestoreFileListDialog = new CloudRestoreFileListDialog();
            cloudRestoreFileListDialog.setArguments(bundle);
            return cloudRestoreFileListDialog;
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.ui.dialog.CloudRestoreFileListDialog$a */
    /* loaded from: classes9.dex */
    public static final class C12677a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<CloudFileBean> f61640e;

        public C12677a(List<CloudFileBean> list) {
            this.f61640e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RestoreContext apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RestoreContext restoreContext = new RestoreContext(NoteImportArgs.INSTANCE.create(this.f61640e));
            restoreContext.setCloudProvider(it2);
            return restoreContext;
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.ui.dialog.CloudRestoreFileListDialog$b */
    /* loaded from: classes9.dex */
    public static final class C12678b<T> implements Consumer {
        public C12678b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RestoreContext it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Context requireContext = CloudRestoreFileListDialog.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            new CloudRestoreDialog(requireContext, it2).show();
            CloudRestoreFileListDialog.this.dismiss();
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.ui.dialog.CloudRestoreFileListDialog$c */
    /* loaded from: classes9.dex */
    public static final class C12679c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ LoadingDialog f61642e;

        public C12679c(LoadingDialog loadingDialog) {
            this.f61642e = loadingDialog;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f61642e.show();
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.ui.dialog.CloudRestoreFileListDialog$d */
    /* loaded from: classes9.dex */
    public static final class C12680d<T> implements Consumer {

        /* renamed from: e */
        public static final C12680d<T> f61643e = new C12680d<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.INSTANCE.show(C10651R.string.dialog_settings_drive_failed, true);
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.ui.dialog.CloudRestoreFileListDialog$e */
    /* loaded from: classes9.dex */
    public static final class C12681e<T> implements Consumer {
        public C12681e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            String stackTraceToString;
            Intrinsics.checkNotNullParameter(it2, "it");
            String simpleName = CloudRestoreFileListDialog.this.getClass().getSimpleName();
            StringBuilder sb = new StringBuilder();
            sb.append("getInitDataList() error:");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(it2);
            sb.append(stackTraceToString);
            LogUtils.eTag(simpleName, sb.toString());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.ui.dialog.CloudRestoreFileListDialog$f */
    /* loaded from: classes9.dex */
    public static final class C12682f<T> implements Consumer {
        public C12682f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CloudFileListResult result) {
            Intrinsics.checkNotNullParameter(result, "result");
            DialogSettingsDriveBinding dialogSettingsDriveBinding = null;
            if (!result.isSuccessful()) {
                DialogSettingsDriveBinding dialogSettingsDriveBinding2 = CloudRestoreFileListDialog.this.binding;
                if (dialogSettingsDriveBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    dialogSettingsDriveBinding = dialogSettingsDriveBinding2;
                }
                dialogSettingsDriveBinding.sfl.finishRefresh(false);
                return;
            }
            CloudRestoreFileListDialog.this.m50806Y0();
            DialogSettingsDriveBinding dialogSettingsDriveBinding3 = CloudRestoreFileListDialog.this.binding;
            if (dialogSettingsDriveBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                dialogSettingsDriveBinding = dialogSettingsDriveBinding3;
            }
            dialogSettingsDriveBinding.sfl.finishRefresh(true);
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.ui.dialog.CloudRestoreFileListDialog$g */
    /* loaded from: classes9.dex */
    public static final class C12683g<T> implements Consumer {
        public C12683g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            String stackTraceToString;
            Intrinsics.checkNotNullParameter(it2, "it");
            String simpleName = CloudRestoreFileListDialog.this.getClass().getSimpleName();
            StringBuilder sb = new StringBuilder();
            sb.append("loadMoreDataList() error:");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(it2);
            sb.append(stackTraceToString);
            LogUtils.eTag(simpleName, sb.toString());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.ui.dialog.CloudRestoreFileListDialog$h */
    /* loaded from: classes9.dex */
    public static final class C12684h<T> implements Consumer {
        public C12684h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CloudFileListResult result) {
            Intrinsics.checkNotNullParameter(result, "result");
            if (result.isSuccessful()) {
                CloudRestoreFileListDialog.this.m50806Y0();
                CloudRestoreFileListDialog.this.m50798F0(result);
                return;
            }
            DialogSettingsDriveBinding dialogSettingsDriveBinding = CloudRestoreFileListDialog.this.binding;
            if (dialogSettingsDriveBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogSettingsDriveBinding = null;
            }
            dialogSettingsDriveBinding.sfl.finishLoadMore(false);
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.ui.dialog.CloudRestoreFileListDialog$i */
    /* loaded from: classes9.dex */
    public static final class C12685i implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f61648a;

        public C12685i(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f61648a = function;
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
            return this.f61648a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f61648a.invoke(obj);
        }
    }

    public CloudRestoreFileListDialog() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<CloudRestoreFileListAdapter>() { // from class: com.onyx.galaxy.note.settings.ui.dialog.CloudRestoreFileListDialog$adapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CloudRestoreFileListAdapter invoke() {
                return new CloudRestoreFileListAdapter();
            }
        });
        this.adapter = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<CloudRestoreFileListAdapter>() { // from class: com.onyx.galaxy.note.settings.ui.dialog.CloudRestoreFileListDialog$searchAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CloudRestoreFileListAdapter invoke() {
                return new CloudRestoreFileListAdapter();
            }
        });
        this.searchAdapter = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<CloudRestoreFileViewModel>() { // from class: com.onyx.galaxy.note.settings.ui.dialog.CloudRestoreFileListDialog$viewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CloudRestoreFileViewModel invoke() {
                Provider provider;
                CloudRestoreFileListDialog cloudRestoreFileListDialog = CloudRestoreFileListDialog.this;
                provider = CloudRestoreFileListDialog.this.provider;
                if (provider == null) {
                    Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
                    provider = null;
                }
                return (CloudRestoreFileViewModel) new ViewModelProvider(cloudRestoreFileListDialog, new CloudRestoreFileViewModelFactory(provider)).get(CloudRestoreFileViewModel.class);
            }
        });
        this.viewModel = lazy3;
    }

    /* renamed from: J0 */
    public static final void m50775J0(LoadingDialog dialog) {
        Intrinsics.checkNotNullParameter(dialog, "$dialog");
        dialog.dismiss();
    }

    /* renamed from: L0 */
    public static final void m50776L0(CloudRestoreFileListDialog this$0, RefreshLayout it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m50805W0();
    }

    /* renamed from: M0 */
    public static final void m50777M0(CloudRestoreFileListDialog this$0, RefreshLayout it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m50804V0();
    }

    /* renamed from: N0 */
    public static final boolean m50778N0(TextView textView, int i, KeyEvent keyEvent) {
        KeyboardUtils.hideSoftInput(textView);
        return true;
    }

    /* renamed from: O0 */
    public static final void m50779O0(CloudRestoreFileListDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: P0 */
    public static final void m50780P0(CloudRestoreFileListDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        DialogSettingsDriveBinding dialogSettingsDriveBinding = this$0.binding;
        if (dialogSettingsDriveBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogSettingsDriveBinding = null;
        }
        dialogSettingsDriveBinding.edtSearch.setText("");
    }

    /* renamed from: Q0 */
    public static final void m50781Q0(CloudRestoreFileListDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50807Z0();
    }

    /* renamed from: R0 */
    public static final void m50782R0(CloudRestoreFileListDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50799G0();
    }

    /* renamed from: S0 */
    public static final void m50783S0(CloudRestoreFileListDialog this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m50795C0().toggleSelect(i);
        DialogSettingsDriveBinding dialogSettingsDriveBinding = this$0.binding;
        DialogSettingsDriveBinding dialogSettingsDriveBinding2 = null;
        if (dialogSettingsDriveBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogSettingsDriveBinding = null;
        }
        dialogSettingsDriveBinding.btnImport.setEnabled(!this$0.m50795C0().getSelectList().isEmpty());
        List<CloudFileBean> value = this$0.m50797E0().getList().getValue();
        if (value != null && this$0.m50795C0().getSelectList().size() == value.size()) {
            DialogSettingsDriveBinding dialogSettingsDriveBinding3 = this$0.binding;
            if (dialogSettingsDriveBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                dialogSettingsDriveBinding2 = dialogSettingsDriveBinding3;
            }
            dialogSettingsDriveBinding2.tvSelectAll.setText(ResManager.INSTANCE.getString(C10651R.string.un_select_all));
            return;
        }
        DialogSettingsDriveBinding dialogSettingsDriveBinding4 = this$0.binding;
        if (dialogSettingsDriveBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogSettingsDriveBinding2 = dialogSettingsDriveBinding4;
        }
        dialogSettingsDriveBinding2.tvSelectAll.setText(ResManager.INSTANCE.getString(C10651R.string.select_all));
    }

    /* renamed from: T0 */
    public static final void m50784T0(CloudRestoreFileListDialog this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m50796D0().toggleSelect(i);
        DialogSettingsDriveBinding dialogSettingsDriveBinding = this$0.binding;
        if (dialogSettingsDriveBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogSettingsDriveBinding = null;
        }
        dialogSettingsDriveBinding.btnImport.setEnabled(!this$0.m50796D0().getSelectList().isEmpty());
    }

    /* renamed from: X0 */
    public static final void m50785X0(CloudRestoreFileListDialog this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50801I0();
    }

    /* renamed from: C0 */
    public final CloudRestoreFileListAdapter m50795C0() {
        return (CloudRestoreFileListAdapter) this.adapter.getValue();
    }

    /* renamed from: D0 */
    public final CloudRestoreFileListAdapter m50796D0() {
        return (CloudRestoreFileListAdapter) this.searchAdapter.getValue();
    }

    /* renamed from: E0 */
    public final CloudRestoreFileViewModel m50797E0() {
        return (CloudRestoreFileViewModel) this.viewModel.getValue();
    }

    /* renamed from: F0 */
    public final void m50798F0(CloudFileListResult result) {
        Provider provider = this.provider;
        DialogSettingsDriveBinding dialogSettingsDriveBinding = null;
        if (provider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            provider = null;
        }
        if (result.hasMoreData(provider)) {
            DialogSettingsDriveBinding dialogSettingsDriveBinding2 = this.binding;
            if (dialogSettingsDriveBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                dialogSettingsDriveBinding = dialogSettingsDriveBinding2;
            }
            dialogSettingsDriveBinding.sfl.finishLoadMore(true);
            return;
        }
        DialogSettingsDriveBinding dialogSettingsDriveBinding3 = this.binding;
        if (dialogSettingsDriveBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogSettingsDriveBinding = dialogSettingsDriveBinding3;
        }
        dialogSettingsDriveBinding.sfl.setNoMoreData(true);
    }

    /* renamed from: G0 */
    public final void m50799G0() {
        ArrayList arrayList = new ArrayList();
        if (StringKt.isNotBlank(m50797E0().getSearchKeyword().getValue())) {
            arrayList.addAll(m50796D0().getSelectList());
        } else {
            arrayList.addAll(m50795C0().getSelectList());
        }
        if (!arrayList.isEmpty()) {
            m50797E0().ensureCloudStorageProvider().observeOn(AndroidSchedulers.mainThread()).map(new C12677a(arrayList)).doOnNext(new C12678b()).subscribe();
        }
    }

    /* renamed from: H0 */
    public final void m50800H0() {
        m50797E0().getList().observe(this, new C12685i(new Function1<List<CloudFileBean>, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.dialog.CloudRestoreFileListDialog$initData$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<CloudFileBean> list) {
                invoke2(list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<CloudFileBean> list) {
                CloudRestoreFileListAdapter m50795C0;
                DialogSettingsDriveBinding dialogSettingsDriveBinding = CloudRestoreFileListDialog.this.binding;
                if (dialogSettingsDriveBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogSettingsDriveBinding = null;
                }
                CommonEmptyView emptyView = dialogSettingsDriveBinding.emptyView;
                Intrinsics.checkNotNullExpressionValue(emptyView, "emptyView");
                emptyView.setVisibility(list.isEmpty() ? 0 : 8);
                m50795C0 = CloudRestoreFileListDialog.this.m50795C0();
                m50795C0.submitList(list);
            }
        }));
        m50797E0().getSearchList().observe(this, new C12685i(new Function1<List<CloudFileBean>, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.dialog.CloudRestoreFileListDialog$initData$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<CloudFileBean> list) {
                invoke2(list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<CloudFileBean> list) {
                CloudRestoreFileListAdapter m50796D0;
                m50796D0 = CloudRestoreFileListDialog.this.m50796D0();
                m50796D0.submitList(list);
            }
        }));
        m50797E0().getSearchKeyword().observe(this, new C12685i(new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.dialog.CloudRestoreFileListDialog$initData$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable String str) {
                CloudRestoreFileListAdapter m50796D0;
                CloudRestoreFileListAdapter m50795C0;
                CloudRestoreFileListAdapter m50795C02;
                CloudRestoreFileListAdapter m50795C03;
                CloudRestoreFileListAdapter m50795C04;
                CloudRestoreFileListAdapter m50796D02;
                boolean isNotBlank = StringKt.isNotBlank(str);
                DialogSettingsDriveBinding dialogSettingsDriveBinding = CloudRestoreFileListDialog.this.binding;
                DialogSettingsDriveBinding dialogSettingsDriveBinding2 = null;
                if (dialogSettingsDriveBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogSettingsDriveBinding = null;
                }
                SmartRefreshLayout sfl = dialogSettingsDriveBinding.sfl;
                Intrinsics.checkNotNullExpressionValue(sfl, "sfl");
                sfl.setVisibility(isNotBlank ^ true ? 0 : 8);
                DialogSettingsDriveBinding dialogSettingsDriveBinding3 = CloudRestoreFileListDialog.this.binding;
                if (dialogSettingsDriveBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogSettingsDriveBinding3 = null;
                }
                RecyclerView rvSearch = dialogSettingsDriveBinding3.rvSearch;
                Intrinsics.checkNotNullExpressionValue(rvSearch, "rvSearch");
                rvSearch.setVisibility(isNotBlank ? 0 : 8);
                DialogSettingsDriveBinding dialogSettingsDriveBinding4 = CloudRestoreFileListDialog.this.binding;
                if (dialogSettingsDriveBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogSettingsDriveBinding4 = null;
                }
                TintImageView ivDelete = dialogSettingsDriveBinding4.ivDelete;
                Intrinsics.checkNotNullExpressionValue(ivDelete, "ivDelete");
                ivDelete.setVisibility(isNotBlank ? 0 : 8);
                DialogSettingsDriveBinding dialogSettingsDriveBinding5 = CloudRestoreFileListDialog.this.binding;
                if (dialogSettingsDriveBinding5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogSettingsDriveBinding5 = null;
                }
                TintTextView tvSelectAll = dialogSettingsDriveBinding5.tvSelectAll;
                Intrinsics.checkNotNullExpressionValue(tvSelectAll, "tvSelectAll");
                tvSelectAll.setVisibility(isNotBlank ^ true ? 0 : 8);
                if (isNotBlank) {
                    DialogSettingsDriveBinding dialogSettingsDriveBinding6 = CloudRestoreFileListDialog.this.binding;
                    if (dialogSettingsDriveBinding6 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        dialogSettingsDriveBinding6 = null;
                    }
                    dialogSettingsDriveBinding6.tvSelectAll.setText(ResManager.INSTANCE.getString(C10651R.string.select_all));
                    m50795C03 = CloudRestoreFileListDialog.this.m50795C0();
                    m50795C03.getSelectList().clear();
                    m50795C04 = CloudRestoreFileListDialog.this.m50795C0();
                    m50795C04.notifyDataSetChanged();
                    DialogSettingsDriveBinding dialogSettingsDriveBinding7 = CloudRestoreFileListDialog.this.binding;
                    if (dialogSettingsDriveBinding7 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        dialogSettingsDriveBinding2 = dialogSettingsDriveBinding7;
                    }
                    TintTextView tintTextView = dialogSettingsDriveBinding2.btnImport;
                    m50796D02 = CloudRestoreFileListDialog.this.m50796D0();
                    tintTextView.setEnabled(!m50796D02.getSelectList().isEmpty());
                    return;
                }
                m50796D0 = CloudRestoreFileListDialog.this.m50796D0();
                m50796D0.getSelectList().clear();
                m50795C0 = CloudRestoreFileListDialog.this.m50795C0();
                m50795C0.notifyDataSetChanged();
                DialogSettingsDriveBinding dialogSettingsDriveBinding8 = CloudRestoreFileListDialog.this.binding;
                if (dialogSettingsDriveBinding8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    dialogSettingsDriveBinding2 = dialogSettingsDriveBinding8;
                }
                TintTextView tintTextView2 = dialogSettingsDriveBinding2.btnImport;
                m50795C02 = CloudRestoreFileListDialog.this.m50795C0();
                tintTextView2.setEnabled(!m50795C02.getSelectList().isEmpty());
            }
        }));
        CloudRestoreFileViewModel m50797E0 = m50797E0();
        DialogSettingsDriveBinding dialogSettingsDriveBinding = this.binding;
        if (dialogSettingsDriveBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogSettingsDriveBinding = null;
        }
        TintEditText edtSearch = dialogSettingsDriveBinding.edtSearch;
        Intrinsics.checkNotNullExpressionValue(edtSearch, "edtSearch");
        m50797E0.searchOnTextChange(edtSearch);
    }

    /* renamed from: I0 */
    public final void m50801I0() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        final LoadingDialog createLoadingDialog = ContextExtKt.createLoadingDialog(requireActivity);
        Disposable subscribe = m50797E0().loadInitDataList().doOnSubscribe(new C12679c(createLoadingDialog)).doOnError(C12680d.f61643e).doFinally(new Action() { // from class: com.sunia.HTREnginev2.tvd
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                CloudRestoreFileListDialog.m50775J0(LoadingDialog.this);
            }
        }).subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        m50797E0().getCompositeDisposable().add(subscribe);
    }

    /* renamed from: K0 */
    public final void m50802K0() {
        DialogSettingsDriveBinding dialogSettingsDriveBinding = this.binding;
        DialogSettingsDriveBinding dialogSettingsDriveBinding2 = null;
        if (dialogSettingsDriveBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogSettingsDriveBinding = null;
        }
        dialogSettingsDriveBinding.btnBack.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vvd
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CloudRestoreFileListDialog.m50779O0(CloudRestoreFileListDialog.this, view);
            }
        });
        DialogSettingsDriveBinding dialogSettingsDriveBinding3 = this.binding;
        if (dialogSettingsDriveBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogSettingsDriveBinding3 = null;
        }
        dialogSettingsDriveBinding3.ivDelete.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.wvd
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CloudRestoreFileListDialog.m50780P0(CloudRestoreFileListDialog.this, view);
            }
        });
        DialogSettingsDriveBinding dialogSettingsDriveBinding4 = this.binding;
        if (dialogSettingsDriveBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogSettingsDriveBinding4 = null;
        }
        dialogSettingsDriveBinding4.tvSelectAll.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.xvd
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CloudRestoreFileListDialog.m50781Q0(CloudRestoreFileListDialog.this, view);
            }
        });
        DialogSettingsDriveBinding dialogSettingsDriveBinding5 = this.binding;
        if (dialogSettingsDriveBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogSettingsDriveBinding5 = null;
        }
        dialogSettingsDriveBinding5.btnImport.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.yvd
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CloudRestoreFileListDialog.m50782R0(CloudRestoreFileListDialog.this, view);
            }
        });
        m50795C0().setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.zvd
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                CloudRestoreFileListDialog.m50783S0(CloudRestoreFileListDialog.this, baseQuickAdapter, view, i);
            }
        });
        m50796D0().setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.awd
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                CloudRestoreFileListDialog.m50784T0(CloudRestoreFileListDialog.this, baseQuickAdapter, view, i);
            }
        });
        DialogSettingsDriveBinding dialogSettingsDriveBinding6 = this.binding;
        if (dialogSettingsDriveBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogSettingsDriveBinding6 = null;
        }
        SmartRefreshLayout smartRefreshLayout = dialogSettingsDriveBinding6.sfl;
        smartRefreshLayout.setRefreshHeader(new ClassicsHeader(requireContext()));
        smartRefreshLayout.setRefreshFooter(new ClassicsFooter(requireContext()));
        smartRefreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: com.sunia.HTREnginev2.bwd
            @Override // com.scwang.smart.refresh.layout.listener.OnRefreshListener
            public final void onRefresh(RefreshLayout refreshLayout) {
                CloudRestoreFileListDialog.m50777M0(CloudRestoreFileListDialog.this, refreshLayout);
            }
        });
        smartRefreshLayout.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.sunia.HTREnginev2.cwd
            @Override // com.scwang.smart.refresh.layout.listener.OnLoadMoreListener
            public final void onLoadMore(RefreshLayout refreshLayout) {
                CloudRestoreFileListDialog.m50776L0(CloudRestoreFileListDialog.this, refreshLayout);
            }
        });
        DialogSettingsDriveBinding dialogSettingsDriveBinding7 = this.binding;
        if (dialogSettingsDriveBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogSettingsDriveBinding2 = dialogSettingsDriveBinding7;
        }
        dialogSettingsDriveBinding2.edtSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.sunia.HTREnginev2.dwd
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean m50778N0;
                m50778N0 = CloudRestoreFileListDialog.m50778N0(textView, i, keyEvent);
                return m50778N0;
            }
        });
    }

    /* renamed from: U0 */
    public final void m50803U0() {
        DialogSettingsDriveBinding dialogSettingsDriveBinding = this.binding;
        DialogSettingsDriveBinding dialogSettingsDriveBinding2 = null;
        if (dialogSettingsDriveBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogSettingsDriveBinding = null;
        }
        dialogSettingsDriveBinding.f56538rv.setAdapter(m50795C0());
        DialogSettingsDriveBinding dialogSettingsDriveBinding3 = this.binding;
        if (dialogSettingsDriveBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogSettingsDriveBinding3 = null;
        }
        dialogSettingsDriveBinding3.rvSearch.setAdapter(m50796D0());
        String string = requireContext().getString(C10651R.string.dialog_settings_drive_title);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        Provider.Companion companion = Provider.INSTANCE;
        Context applicationContext = requireContext().getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        Provider provider = this.provider;
        if (provider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            provider = null;
        }
        String nameByProvider = companion.getNameByProvider(applicationContext, provider);
        DialogSettingsDriveBinding dialogSettingsDriveBinding4 = this.binding;
        if (dialogSettingsDriveBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogSettingsDriveBinding2 = dialogSettingsDriveBinding4;
        }
        TintTextView tintTextView = dialogSettingsDriveBinding2.tvTitle;
        String format = String.format(string, Arrays.copyOf(new Object[]{nameByProvider}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        tintTextView.setText(format);
    }

    /* renamed from: V0 */
    public final void m50804V0() {
        Disposable subscribe = m50797E0().loadInitDataList().doOnError(new C12681e()).subscribe(new C12682f());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        m50797E0().getCompositeDisposable().add(subscribe);
    }

    /* renamed from: W0 */
    public final void m50805W0() {
        Disposable subscribe = m50797E0().loadMoreDataList().doOnError(new C12683g()).subscribe(new C12684h());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        m50797E0().getCompositeDisposable().add(subscribe);
    }

    /* renamed from: Y0 */
    public final void m50806Y0() {
        DialogSettingsDriveBinding dialogSettingsDriveBinding = this.binding;
        DialogSettingsDriveBinding dialogSettingsDriveBinding2 = null;
        if (dialogSettingsDriveBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogSettingsDriveBinding = null;
        }
        dialogSettingsDriveBinding.tvSelectAll.setText(ResManager.INSTANCE.getString(C10651R.string.select_all));
        m50795C0().getSelectList().clear();
        m50795C0().notifyDataSetChanged();
        DialogSettingsDriveBinding dialogSettingsDriveBinding3 = this.binding;
        if (dialogSettingsDriveBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogSettingsDriveBinding2 = dialogSettingsDriveBinding3;
        }
        dialogSettingsDriveBinding2.btnImport.setEnabled(false);
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: Z0 */
    public final void m50807Z0() {
        List<CloudFileBean> value = m50797E0().getList().getValue();
        boolean z = false;
        if (value != null && value.size() == m50795C0().getSelectList().size()) {
            z = true;
        }
        DialogSettingsDriveBinding dialogSettingsDriveBinding = null;
        if (z) {
            DialogSettingsDriveBinding dialogSettingsDriveBinding2 = this.binding;
            if (dialogSettingsDriveBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogSettingsDriveBinding2 = null;
            }
            dialogSettingsDriveBinding2.tvSelectAll.setText(ResManager.INSTANCE.getString(C10651R.string.select_all));
            m50795C0().getSelectList().clear();
        } else {
            DialogSettingsDriveBinding dialogSettingsDriveBinding3 = this.binding;
            if (dialogSettingsDriveBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogSettingsDriveBinding3 = null;
            }
            dialogSettingsDriveBinding3.tvSelectAll.setText(ResManager.INSTANCE.getString(C10651R.string.un_select_all));
            m50795C0().getSelectList().clear();
            CollectionKt.addAll(m50795C0().getSelectList(), m50797E0().getList().getValue());
        }
        m50795C0().notifyDataSetChanged();
        DialogSettingsDriveBinding dialogSettingsDriveBinding4 = this.binding;
        if (dialogSettingsDriveBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogSettingsDriveBinding = dialogSettingsDriveBinding4;
        }
        dialogSettingsDriveBinding.btnImport.setEnabled(!m50795C0().getSelectList().isEmpty());
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063273, this, savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        Dialog dialog = getDialog();
        Intrinsics.checkNotNull(dialog);
        Window window = dialog.getWindow();
        Intrinsics.checkNotNull(window);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.layoutInDisplayCutoutMode = 1;
        window.setAttributes(attributes);
        DialogSettingsDriveBinding inflate = DialogSettingsDriveBinding.inflate(inflater, container, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m50797E0().dispose();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        Window window = dialog != null ? dialog.getWindow() : null;
        if (getDialog() == null || window == null) {
            return;
        }
        window.setLayout(-1, -1);
        window.setBackgroundDrawable(new ColorDrawable(0));
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m50803U0();
        m50802K0();
        m50800H0();
        DialogSettingsDriveBinding dialogSettingsDriveBinding = this.binding;
        if (dialogSettingsDriveBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogSettingsDriveBinding = null;
        }
        dialogSettingsDriveBinding.getRoot().post(new Runnable() { // from class: com.sunia.HTREnginev2.uvd
            @Override // java.lang.Runnable
            public final void run() {
                CloudRestoreFileListDialog.m50785X0(CloudRestoreFileListDialog.this);
            }
        });
    }
}
