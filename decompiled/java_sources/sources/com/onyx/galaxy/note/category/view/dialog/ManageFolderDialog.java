package com.onyx.galaxy.note.category.view.dialog;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.NewTreeKt;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.FolderCreateFrom;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.AutoSizeDialog;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.utils.NoteTreeNodes;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.LoadNoteFolderTreeAction;
import com.onyx.galaxy.note.category.action.UpdateNoteAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.ManageContextTreeModifiedEvent;
import com.onyx.galaxy.note.category.event.OnCreateFolderEvent;
import com.onyx.galaxy.note.category.view.adapter.ManageFolderAdapter;
import com.onyx.galaxy.note.category.view.adapter.SearchFolderAdapter;
import com.onyx.galaxy.note.category.view.dialog.ManageFolderDialog;
import com.onyx.galaxy.note.category.view.dialog.ManageFolderDialog$checkEmptyDataObserver$2;
import com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback;
import com.onyx.galaxy.note.category.view.itemtouchcallback.ManageFolderHandlerImpl;
import com.onyx.galaxy.note.common.data.ManageFolderContext;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.AdapterDataModifiedObserver;
import com.onyx.galaxy.note.databinding.DialogManageFolderBinding;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000s\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\n*\u00012\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u0012\u0006\u0010\u001f\u001a\u00020\u001c\u0012\u0006\u0010#\u001a\u00020 ¢\u0006\u0004\b9\u0010:J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0007J\b\u0010\n\u001a\u00020\u0004H\u0002J\b\u0010\u000b\u001a\u00020\u0004H\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0003J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\fH\u0002J\b\u0010\u0017\u001a\u00020\u0016H\u0002R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u001b\u0010(\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b\u0019\u0010'R\u001b\u0010+\u001a\u00020)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010&\u001a\u0004\b%\u0010*R\u001b\u0010.\u001a\u00020,8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010&\u001a\u0004\b\u001d\u0010-R\u0014\u00101\u001a\u00020/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u00100R\u001b\u00105\u001a\u0002028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b3\u0010&\u001a\u0004\b!\u00104R\u0016\u00108\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107¨\u0006;"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "dismiss", "Lcom/onyx/galaxy/note/category/event/OnCreateFolderEvent;", NotificationCompat.CATEGORY_EVENT, "onCreateFolderEvent", "m", GoogleApiAvailabilityLight.f29016b, "", "title", "v", "", "isSearch", "w", "t", "x", "eventId", "s", "", "l", "Landroid/content/Context;", C6999h.f39688c, "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "i", "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "manageFolderContext", "Lcom/onyx/android/sdk/data/FolderCreateFrom;", "j", "Lcom/onyx/android/sdk/data/FolderCreateFrom;", "folderCreateFrom", "Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;", C4921e.f26537n, "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;", "adapter", "Lcom/onyx/galaxy/note/category/view/adapter/SearchFolderAdapter;", "()Lcom/onyx/galaxy/note/category/view/adapter/SearchFolderAdapter;", "searchAdapter", "Lcom/onyx/galaxy/note/databinding/DialogManageFolderBinding;", "()Lcom/onyx/galaxy/note/databinding/DialogManageFolderBinding;", "binding", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "com/onyx/galaxy/note/category/view/dialog/ManageFolderDialog$checkEmptyDataObserver$2$1", C4921e.f26528e, "()Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog$checkEmptyDataObserver$2$1;", "checkEmptyDataObserver", "p", Constants.HASIDCALL_INDEX_SIG, "isTreeChange", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/common/data/ManageFolderContext;Lcom/onyx/android/sdk/data/FolderCreateFrom;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nManageFolderDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManageFolderDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,225:1\n65#2,16:226\n93#2,3:242\n256#3,2:245\n256#3,2:247\n1#4:249\n*S KotlinDebug\n*F\n+ 1 ManageFolderDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog\n*L\n155#1:226,16\n155#1:242,3\n177#1:245,2\n178#1:247,2\n*E\n"})
/* loaded from: classes17.dex */
public final class ManageFolderDialog extends AutoSizeDialog {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final ManageFolderContext manageFolderContext;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final FolderCreateFrom folderCreateFrom;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Lazy adapter;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Lazy searchAdapter;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final Lazy checkEmptyDataObserver;

    /* renamed from: p, reason: from kotlin metadata */
    public boolean isTreeChange;

    /* renamed from: com.onyx.galaxy.note.category.view.dialog.ManageFolderDialog$a */
    /* loaded from: classes9.dex */
    public static final class C11443a<T> implements Consumer {
        public C11443a() {
        }

        /* renamed from: a */
        public final void m44427a(boolean z) {
            if (z) {
                ManageFolderDialog.this.dismiss();
            } else {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.manager_folder_save_failed, false, 2, (Object) null);
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m44427a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.view.dialog.ManageFolderDialog$b */
    /* loaded from: classes9.dex */
    public static final class C11444b<T> implements Consumer {
        public C11444b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TreeNode<NoteModelBean> rootNode) {
            Intrinsics.checkNotNullParameter(rootNode, "rootNode");
            rootNode.expandChildren();
            ManageFolderDialog.this.manageFolderContext.setRootNode(rootNode);
            ManageFolderDialog.this.m44420m();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ManageFolderDialog(@NotNull Context context, @NotNull ManageFolderContext manageFolderContext, @NotNull FolderCreateFrom folderCreateFrom) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(manageFolderContext, "manageFolderContext");
        Intrinsics.checkNotNullParameter(folderCreateFrom, "folderCreateFrom");
        this.context = context;
        this.manageFolderContext = manageFolderContext;
        this.folderCreateFrom = folderCreateFrom;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ManageFolderAdapter>() { // from class: com.onyx.galaxy.note.category.view.dialog.ManageFolderDialog$adapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ManageFolderAdapter invoke() {
                return new ManageFolderAdapter(ManageFolderDialog.this.manageFolderContext);
            }
        });
        this.adapter = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<SearchFolderAdapter>() { // from class: com.onyx.galaxy.note.category.view.dialog.ManageFolderDialog$searchAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SearchFolderAdapter invoke() {
                return new SearchFolderAdapter();
            }
        });
        this.searchAdapter = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<DialogManageFolderBinding>() { // from class: com.onyx.galaxy.note.category.view.dialog.ManageFolderDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogManageFolderBinding invoke() {
                Context context2;
                context2 = ManageFolderDialog.this.context;
                return DialogManageFolderBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy3;
        this.compositeDisposable = new CompositeDisposable();
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<ManageFolderDialog$checkEmptyDataObserver$2.C114451>() { // from class: com.onyx.galaxy.note.category.view.dialog.ManageFolderDialog$checkEmptyDataObserver$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.onyx.galaxy.note.category.view.dialog.ManageFolderDialog$checkEmptyDataObserver$2$1] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final C114451 invoke() {
                final ManageFolderDialog manageFolderDialog = ManageFolderDialog.this;
                return new AdapterDataModifiedObserver() { // from class: com.onyx.galaxy.note.category.view.dialog.ManageFolderDialog$checkEmptyDataObserver$2.1
                    @Override // com.onyx.galaxy.note.common.view.AdapterDataModifiedObserver
                    public void onDataChanged() {
                        DialogManageFolderBinding m44416i;
                        ManageFolderAdapter m44415h;
                        m44416i = ManageFolderDialog.this.m44416i();
                        TintConstraintLayout root = m44416i.includeEmptyView.getRoot();
                        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
                        m44415h = ManageFolderDialog.this.m44415h();
                        root.setVisibility(m44415h.getItems().isEmpty() ? 0 : 8);
                    }
                };
            }
        });
        this.checkEmptyDataObserver = lazy4;
    }

    /* renamed from: o */
    public static final boolean m44410o(ManageFolderDialog this$0, ItemTouchHelper itemTouchHelper, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(itemTouchHelper, "$itemTouchHelper");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        RecyclerView.ViewHolder findViewHolderForAdapterPosition = this$0.m44416i().f56456rv.findViewHolderForAdapterPosition(i);
        if (findViewHolderForAdapterPosition == null) {
            return true;
        }
        itemTouchHelper.startDrag(findViewHolderForAdapterPosition);
        return true;
    }

    /* renamed from: p */
    public static final void m44411p(ManageFolderDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44422s(OnyxStatisticConstant.ID_MANAGE_FOLDER_DIALOG_DONE_CLICK);
        this$0.m44423t();
    }

    /* renamed from: q */
    public static final void m44412q(ManageFolderDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44422s(OnyxStatisticConstant.ID_MANAGE_FOLDER_DIALOG_CANCEL_CLICK);
        this$0.manageFolderContext.getSaveModelMap().clear();
        this$0.dismiss();
    }

    /* renamed from: r */
    public static final void m44413r(ManageFolderDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        new CreateFolderDialog(this$0.context, NoteTreeBundle.INSTANCE.getFolderRootNote(), this$0.folderCreateFrom).show();
    }

    /* renamed from: u */
    public static final void m44414u(ManageFolderDialog this$0, final List saveNodeList) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(saveNodeList, "$saveNodeList");
        NoteTreeNodes.INSTANCE.setSaved(this$0.manageFolderContext.getRootNode(), new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.dialog.ManageFolderDialog$saveNoteList$disposable$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(saveNodeList.contains(it2.getData()));
            }
        });
    }

    @Override // com.onyx.android.sdk.p039ui.AutoSizeDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        if (this.isTreeChange) {
            this.manageFolderContext.refreshOldParentId();
            DocCollectionBundle.INSTANCE.postEvent(new ManageContextTreeModifiedEvent());
        }
        m44415h().unregisterAdapterDataObserver(m44417j());
        this.compositeDisposable.clear();
        DocCollectionBundle.INSTANCE.ensureUnRegister(this);
    }

    /* renamed from: h */
    public final ManageFolderAdapter m44415h() {
        return (ManageFolderAdapter) this.adapter.getValue();
    }

    /* renamed from: i */
    public final DialogManageFolderBinding m44416i() {
        return (DialogManageFolderBinding) this.binding.getValue();
    }

    /* renamed from: j */
    public final ManageFolderDialog$checkEmptyDataObserver$2.C114451 m44417j() {
        return (ManageFolderDialog$checkEmptyDataObserver$2.C114451) this.checkEmptyDataObserver.getValue();
    }

    /* renamed from: k */
    public final SearchFolderAdapter m44418k() {
        return (SearchFolderAdapter) this.searchAdapter.getValue();
    }

    /* renamed from: l */
    public final int m44419l() {
        return this.folderCreateFrom == FolderCreateFrom.HOME_FUNC_FOLDER_MOVE_MANGE_CREATE ? 1008 : 1009;
    }

    /* renamed from: m */
    public final void m44420m() {
        m44415h().initList();
    }

    /* renamed from: n */
    public final void m44421n() {
        m44415h().registerAdapterDataObserver(m44417j());
        m44416i().f56456rv.setAdapter(m44415h());
        final ManageFolderAdapter m44415h = m44415h();
        final ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new DragTouchCallback(m44415h(), new ManageFolderHandlerImpl(m44415h) { // from class: com.onyx.galaxy.note.category.view.dialog.ManageFolderDialog$initView$manageFolderHandlerImpl$1
            @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.ManageFolderHandlerImpl, com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
            public void onMergeData(int fromPosition, int toPosition) {
                super.onMergeData(fromPosition, toPosition);
                ManageFolderDialog.this.isTreeChange = true;
            }

            @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.ManageFolderHandlerImpl, com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
            public void swap(int fromPosition, int toPosition) {
                super.swap(fromPosition, toPosition);
                ManageFolderDialog.this.isTreeChange = true;
            }
        }, false, true, false));
        itemTouchHelper.attachToRecyclerView(m44416i().f56456rv);
        m44415h().addOnItemChildLongClickListener(C10651R.id.cls_content, new BaseQuickAdapter.OnItemChildLongClickListener() { // from class: com.sunia.HTREnginev2.o7j
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildLongClickListener
            public final boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                boolean m44410o;
                m44410o = ManageFolderDialog.m44410o(ManageFolderDialog.this, itemTouchHelper, baseQuickAdapter, view, i);
                return m44410o;
            }
        });
        m44416i().rvSearch.setAdapter(m44418k());
        TintTextView tvOk = m44416i().tvOk;
        Intrinsics.checkNotNullExpressionValue(tvOk, "tvOk");
        ViewKt.click$default(tvOk, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.p7j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ManageFolderDialog.m44411p(ManageFolderDialog.this, view);
            }
        }, 1, null);
        TintTextView tvCancel = m44416i().tvCancel;
        Intrinsics.checkNotNullExpressionValue(tvCancel, "tvCancel");
        ViewKt.click$default(tvCancel, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.q7j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ManageFolderDialog.m44412q(ManageFolderDialog.this, view);
            }
        }, 1, null);
        TintTextView tvCreate = m44416i().tvCreate;
        Intrinsics.checkNotNullExpressionValue(tvCreate, "tvCreate");
        ViewKt.click$default(tvCreate, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.r7j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ManageFolderDialog.m44413r(ManageFolderDialog.this, view);
            }
        }, 1, null);
        MaxLengthInputTextEdit tieName = m44416i().tieName;
        Intrinsics.checkNotNullExpressionValue(tieName, "tieName");
        tieName.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.category.view.dialog.ManageFolderDialog$initView$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
                ManageFolderDialog.this.m44424v(String.valueOf(s));
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
            }
        });
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063303, this, savedInstanceState);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCreateFolderEvent(@NotNull OnCreateFolderEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m44426x();
    }

    /* renamed from: s */
    public final void m44422s(String eventId) {
        Map<String, ? extends Object> mapOf;
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(m44419l())));
        statisticsBundle.reportEvent(eventId, mapOf);
    }

    /* renamed from: t */
    public final void m44423t() {
        final List mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.manageFolderContext.getSaveModelMap().values());
        if (mutableList.isEmpty()) {
            dismiss();
            return;
        }
        Disposable subscribe = new UpdateNoteAction(mutableList, false, false, 6, null).build().doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.n7j
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ManageFolderDialog.m44414u(ManageFolderDialog.this, mutableList);
            }
        }).subscribe(new C11443a());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    @SuppressLint({"SetTextI18n"})
    /* renamed from: v */
    public final void m44424v(final String title) {
        if (StringKt.isEmpty(title)) {
            m44425w(false);
            return;
        }
        m44418k().submitList(TreeNode.findNodes$default(this.manageFolderContext.getRootNode(), new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.dialog.ManageFolderDialog$search$nodes$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it2) {
                boolean contains;
                Intrinsics.checkNotNullParameter(it2, "it");
                String title2 = it2.getData().getTitle();
                boolean z = false;
                if (title2 != null) {
                    contains = StringsKt__StringsKt.contains((CharSequence) title2, (CharSequence) title, true);
                    if (contains) {
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
            }
        }, null, NewTreeKt.STRATEGY_DEPTH_FIRST, 2, null));
        m44425w(true);
    }

    /* renamed from: w */
    public final void m44425w(boolean isSearch) {
        Group groupList = m44416i().groupList;
        Intrinsics.checkNotNullExpressionValue(groupList, "groupList");
        groupList.setVisibility(isSearch ^ true ? 0 : 8);
        Group groupSearchList = m44416i().groupSearchList;
        Intrinsics.checkNotNullExpressionValue(groupSearchList, "groupSearchList");
        groupSearchList.setVisibility(isSearch ? 0 : 8);
    }

    /* renamed from: x */
    public final void m44426x() {
        Disposable subscribe = new LoadNoteFolderTreeAction().build().subscribe(new C11444b());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }
}
