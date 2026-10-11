package com.onyx.galaxy.note.settings.p047ui.dialog;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.DialogFragment;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.backup.LoadLocalRestoreFilesAction;
import com.onyx.android.sdk.universal.editor.action.backup.LocalRestoreAction;
import com.onyx.android.sdk.universal.editor.data.NoteImportArgs;
import com.onyx.android.sdk.universal.editor.events.app.RequestPermissionEvent;
import com.onyx.android.sdk.universal.editor.events.note.LocalRestoreFileRequestPermissionEvent;
import com.onyx.android.sdk.universal.p042ui.data.RestoreContext;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.databinding.DialogLocalRestoreFileBinding;
import com.onyx.galaxy.note.settings.p047ui.adapter.LocalRestoreFileListAdapter;
import com.onyx.galaxy.note.settings.p047ui.dialog.LocalRestoreFileListDialog;
import com.permissionx.guolindev.PermissionX;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 12\u00020\u0001:\u00011B\u0007¢\u0006\u0004\b/\u00100J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016J$\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0007J\b\u0010\u0013\u001a\u00020\u0004H\u0002J\b\u0010\u0014\u001a\u00020\u0004H\u0002J\b\u0010\u0015\u001a\u00020\u0004H\u0002J\b\u0010\u0016\u001a\u00020\u0004H\u0002J\b\u0010\u0017\u001a\u00020\u0004H\u0003J\u0012\u0010\u001a\u001a\u00020\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0002J\b\u0010\u001c\u001a\u00020\u001bH\u0002J\b\u0010\u001d\u001a\u00020\u0004H\u0003R\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u001c\u0010*\u001a\b\u0012\u0004\u0012\u00020'0&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b,\u0010-¨\u00062"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;", "Landroidx/fragment/app/DialogFragment;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "onStart", "onDestroy", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "Lcom/onyx/android/sdk/universal/editor/events/note/LocalRestoreFileRequestPermissionEvent;", NotificationCompat.CATEGORY_EVENT, "onLocalRestoreFileRequestPermissionEvent", "E0", "F0", "y0", "x0", "I0", "", "keyword", "H0", "", "w0", "G0", "Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;", "z1", "Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;", "adapter", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "A1", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "", "", "B1", "Ljava/util/List;", "list", "Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;", "C1", "Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;", "binding", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLocalRestoreFileListDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalRestoreFileListDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,219:1\n58#2,23:220\n93#2,3:243\n1549#3:246\n1620#3,3:247\n766#3:250\n857#3,2:251\n256#4,2:253\n*S KotlinDebug\n*F\n+ 1 LocalRestoreFileListDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog\n*L\n125#1:220,23\n125#1:243,3\n140#1:246\n140#1:247,3\n180#1:250\n180#1:251,2\n186#1:253,2\n*E\n"})
/* loaded from: classes17.dex */
public final class LocalRestoreFileListDialog extends DialogFragment {

    @NotNull
    public static final String TAG = "LocalRestoreFileListDialog";

    /* renamed from: B1, reason: from kotlin metadata */
    @NotNull
    public List<String> list;

    /* renamed from: C1, reason: from kotlin metadata */
    public DialogLocalRestoreFileBinding binding;

    /* renamed from: z1, reason: from kotlin metadata */
    @NotNull
    public final LocalRestoreFileListAdapter adapter = new LocalRestoreFileListAdapter();

    /* renamed from: A1, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable = new CompositeDisposable();

    /* renamed from: com.onyx.galaxy.note.settings.ui.dialog.LocalRestoreFileListDialog$a */
    /* loaded from: classes9.dex */
    public static final class C12687a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ LocalRestoreDialog f61658e;

        public C12687a(LocalRestoreDialog localRestoreDialog) {
            this.f61658e = localRestoreDialog;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f61658e.show();
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.ui.dialog.LocalRestoreFileListDialog$b */
    /* loaded from: classes9.dex */
    public static final class C12688b<T> implements Consumer {
        public C12688b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LocalRestoreFileListDialog.this.list = it2;
            LocalRestoreFileListDialog.this.adapter.submitList(LocalRestoreFileListDialog.this.list);
        }
    }

    public LocalRestoreFileListDialog() {
        List<String> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.list = emptyList;
    }

    /* renamed from: A0 */
    public static final void m50824A0(LocalRestoreFileListDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        DialogLocalRestoreFileBinding dialogLocalRestoreFileBinding = this$0.binding;
        if (dialogLocalRestoreFileBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogLocalRestoreFileBinding = null;
        }
        dialogLocalRestoreFileBinding.edtSearch.setText("");
    }

    /* renamed from: B0 */
    public static final void m50825B0(LocalRestoreFileListDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50838I0();
    }

    /* renamed from: C0 */
    public static final void m50826C0(LocalRestoreFileListDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50840x0();
    }

    /* renamed from: D0 */
    public static final void m50827D0(LocalRestoreFileListDialog this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.adapter.toggleSelect(i);
        DialogLocalRestoreFileBinding dialogLocalRestoreFileBinding = this$0.binding;
        DialogLocalRestoreFileBinding dialogLocalRestoreFileBinding2 = null;
        if (dialogLocalRestoreFileBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogLocalRestoreFileBinding = null;
        }
        dialogLocalRestoreFileBinding.btnImport.setEnabled(!this$0.adapter.getSelectList().isEmpty());
        if (this$0.adapter.getSelectList().size() == this$0.list.size()) {
            DialogLocalRestoreFileBinding dialogLocalRestoreFileBinding3 = this$0.binding;
            if (dialogLocalRestoreFileBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                dialogLocalRestoreFileBinding2 = dialogLocalRestoreFileBinding3;
            }
            dialogLocalRestoreFileBinding2.tvSelectAll.setText(ResManager.INSTANCE.getString(C10651R.string.un_select_all));
            return;
        }
        DialogLocalRestoreFileBinding dialogLocalRestoreFileBinding4 = this$0.binding;
        if (dialogLocalRestoreFileBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogLocalRestoreFileBinding2 = dialogLocalRestoreFileBinding4;
        }
        dialogLocalRestoreFileBinding2.tvSelectAll.setText(ResManager.INSTANCE.getString(C10651R.string.select_all));
    }

    /* renamed from: z0 */
    public static final void m50833z0(LocalRestoreFileListDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: E0 */
    public final void m50834E0() {
        DialogLocalRestoreFileBinding dialogLocalRestoreFileBinding = this.binding;
        if (dialogLocalRestoreFileBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogLocalRestoreFileBinding = null;
        }
        dialogLocalRestoreFileBinding.f56433rv.setAdapter(this.adapter);
    }

    /* renamed from: F0 */
    public final void m50835F0() {
        Disposable subscribe = new LoadLocalRestoreFilesAction().build().subscribe(new C12688b());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    @RequiresApi(30)
    /* renamed from: G0 */
    public final void m50836G0() {
        Intent data = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION").setData(Uri.parse("package:" + requireContext().getPackageName()));
        Intrinsics.checkNotNullExpressionValue(data, "setData(...)");
        requireContext().startActivity(data);
    }

    /* renamed from: H0 */
    public final void m50837H0(CharSequence keyword) {
        boolean contains$default;
        DialogLocalRestoreFileBinding dialogLocalRestoreFileBinding = null;
        if (StringKt.isNotBlank(keyword)) {
            List<String> list = this.list;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                String name = new File((String) obj).getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                contains$default = StringsKt__StringsKt.contains$default((CharSequence) name, keyword, false, 2, (Object) null);
                if (contains$default) {
                    arrayList.add(obj);
                }
            }
            this.adapter.submitList(arrayList);
        } else {
            this.adapter.submitList(this.list);
        }
        DialogLocalRestoreFileBinding dialogLocalRestoreFileBinding2 = this.binding;
        if (dialogLocalRestoreFileBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogLocalRestoreFileBinding = dialogLocalRestoreFileBinding2;
        }
        TintImageView ivDelete = dialogLocalRestoreFileBinding.ivDelete;
        Intrinsics.checkNotNullExpressionValue(ivDelete, "ivDelete");
        ivDelete.setVisibility(StringKt.isNotBlank(keyword) ? 0 : 8);
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: I0 */
    public final void m50838I0() {
        DialogLocalRestoreFileBinding dialogLocalRestoreFileBinding = null;
        if (this.list.size() == this.adapter.getSelectList().size()) {
            DialogLocalRestoreFileBinding dialogLocalRestoreFileBinding2 = this.binding;
            if (dialogLocalRestoreFileBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogLocalRestoreFileBinding2 = null;
            }
            dialogLocalRestoreFileBinding2.tvSelectAll.setText(ResManager.INSTANCE.getString(C10651R.string.select_all));
            this.adapter.getSelectList().clear();
        } else {
            DialogLocalRestoreFileBinding dialogLocalRestoreFileBinding3 = this.binding;
            if (dialogLocalRestoreFileBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogLocalRestoreFileBinding3 = null;
            }
            dialogLocalRestoreFileBinding3.tvSelectAll.setText(ResManager.INSTANCE.getString(C10651R.string.un_select_all));
            this.adapter.getSelectList().clear();
            this.adapter.getSelectList().addAll(this.list);
        }
        this.adapter.notifyDataSetChanged();
        DialogLocalRestoreFileBinding dialogLocalRestoreFileBinding4 = this.binding;
        if (dialogLocalRestoreFileBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogLocalRestoreFileBinding = dialogLocalRestoreFileBinding4;
        }
        dialogLocalRestoreFileBinding.btnImport.setEnabled(!this.adapter.getSelectList().isEmpty());
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063270, this, savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        if (BuildKt.isApiLevelAbove(28)) {
            Dialog dialog = getDialog();
            Intrinsics.checkNotNull(dialog);
            Window window = dialog.getWindow();
            Intrinsics.checkNotNull(window);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            window.setAttributes(attributes);
        }
        DialogLocalRestoreFileBinding inflate = DialogLocalRestoreFileBinding.inflate(inflater, container, true);
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
        GlobalBundle.INSTANCE.unregister(this);
        this.compositeDisposable.dispose();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onLocalRestoreFileRequestPermissionEvent(@NotNull LocalRestoreFileRequestPermissionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m50835F0();
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
        m50834E0();
        m50841y0();
        if (m50839w0()) {
            m50835F0();
        }
    }

    /* renamed from: w0 */
    public final boolean m50839w0() {
        boolean isExternalStorageManager;
        if (Build.VERSION.SDK_INT >= 30) {
            isExternalStorageManager = Environment.isExternalStorageManager();
            if (isExternalStorageManager) {
                return true;
            }
            m50836G0();
            return false;
        }
        if (PermissionX.isGranted(requireContext(), "android.permission.WRITE_EXTERNAL_STORAGE")) {
            return true;
        }
        GlobalBundle globalBundle = GlobalBundle.INSTANCE;
        RequestPermissionEvent requestPermissionEvent = new RequestPermissionEvent(new LocalRestoreFileRequestPermissionEvent());
        requestPermissionEvent.setPermissions("android.permission.WRITE_EXTERNAL_STORAGE");
        globalBundle.postEvent(requestPermissionEvent);
        return false;
    }

    /* renamed from: x0 */
    public final void m50840x0() {
        int collectionSizeOrDefault;
        List<String> selectList = this.adapter.getSelectList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(selectList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = selectList.iterator();
        while (it2.hasNext()) {
            arrayList.add(Uri.fromFile(new File((String) it2.next())));
        }
        if (arrayList.isEmpty()) {
            return;
        }
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        Disposable subscribe = new LocalRestoreAction(DocCollectionBundle.INSTANCE.docManagerBundle(), new RestoreContext(NoteImportArgs.Companion.create$default(NoteImportArgs.INSTANCE, arrayList, (String) null, (List) null, 6, (Object) null))).build().doOnSubscribe(new C12687a(new LocalRestoreDialog(requireContext, new Function0<Unit>() { // from class: com.onyx.galaxy.note.settings.ui.dialog.LocalRestoreFileListDialog$importNote$dialog$1
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
                CompositeDisposable compositeDisposable;
                compositeDisposable = LocalRestoreFileListDialog.this.compositeDisposable;
                compositeDisposable.clear();
                LocalRestoreFileListDialog.this.dismiss();
            }
        }))).subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: y0 */
    public final void m50841y0() {
        DialogLocalRestoreFileBinding dialogLocalRestoreFileBinding = this.binding;
        DialogLocalRestoreFileBinding dialogLocalRestoreFileBinding2 = null;
        if (dialogLocalRestoreFileBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogLocalRestoreFileBinding = null;
        }
        dialogLocalRestoreFileBinding.btnBack.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.u0j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LocalRestoreFileListDialog.m50833z0(LocalRestoreFileListDialog.this, view);
            }
        });
        DialogLocalRestoreFileBinding dialogLocalRestoreFileBinding3 = this.binding;
        if (dialogLocalRestoreFileBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogLocalRestoreFileBinding3 = null;
        }
        dialogLocalRestoreFileBinding3.ivDelete.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.v0j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LocalRestoreFileListDialog.m50824A0(LocalRestoreFileListDialog.this, view);
            }
        });
        DialogLocalRestoreFileBinding dialogLocalRestoreFileBinding4 = this.binding;
        if (dialogLocalRestoreFileBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogLocalRestoreFileBinding4 = null;
        }
        dialogLocalRestoreFileBinding4.tvSelectAll.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.w0j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LocalRestoreFileListDialog.m50825B0(LocalRestoreFileListDialog.this, view);
            }
        });
        DialogLocalRestoreFileBinding dialogLocalRestoreFileBinding5 = this.binding;
        if (dialogLocalRestoreFileBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogLocalRestoreFileBinding5 = null;
        }
        TintEditText edtSearch = dialogLocalRestoreFileBinding5.edtSearch;
        Intrinsics.checkNotNullExpressionValue(edtSearch, "edtSearch");
        edtSearch.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.settings.ui.dialog.LocalRestoreFileListDialog$initListener$$inlined$doAfterTextChanged$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
                LocalRestoreFileListDialog.this.m50837H0(StringKt.trim(s));
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
            }
        });
        DialogLocalRestoreFileBinding dialogLocalRestoreFileBinding6 = this.binding;
        if (dialogLocalRestoreFileBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogLocalRestoreFileBinding2 = dialogLocalRestoreFileBinding6;
        }
        dialogLocalRestoreFileBinding2.btnImport.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.x0j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LocalRestoreFileListDialog.m50826C0(LocalRestoreFileListDialog.this, view);
            }
        });
        this.adapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.y0j
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                LocalRestoreFileListDialog.m50827D0(LocalRestoreFileListDialog.this, baseQuickAdapter, view, i);
            }
        });
    }
}
