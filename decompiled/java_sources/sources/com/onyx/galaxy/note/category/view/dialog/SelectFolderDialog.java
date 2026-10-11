package com.onyx.galaxy.note.category.view.dialog;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.data.FolderCreateFrom;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.AutoSizeDialog;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.category.action.LoadNoteFolderTreeAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.ManageContextTreeModifiedEvent;
import com.onyx.galaxy.note.category.event.OnCreateFolderEvent;
import com.onyx.galaxy.note.category.event.OnDeleteNoteEvent;
import com.onyx.galaxy.note.category.event.OnSaveNoteEvent;
import com.onyx.galaxy.note.category.p044ui.FolderOpPopup;
import com.onyx.galaxy.note.category.p044ui.FragmentNoteFolderRoot;
import com.onyx.galaxy.note.category.p044ui.NoteListFragment;
import com.onyx.galaxy.note.category.view.adapter.SelectFolderAdapter;
import com.onyx.galaxy.note.category.view.dialog.SelectFolderDialog;
import com.onyx.galaxy.note.category.view.dialog.SelectFolderDialog$checkEmptyDataObserver$2;
import com.onyx.galaxy.note.common.data.ManageFolderContext;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.AdapterDataModifiedObserver;
import com.onyx.galaxy.note.databinding.DialogSelectFolderBinding;
import com.onyx.galaxy.note.settings.data.NoteConfigConst;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000}\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0006*\u00018\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0006\u0010 \u001a\u00020\u001e\u0012\u0006\u0010\"\u001a\u00020\u0017¢\u0006\u0004\b;\u0010<J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\nH\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\fH\u0007J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u000eH\u0007J\b\u0010\u0010\u001a\u00020\u0004H\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0003J\b\u0010\u0013\u001a\u00020\u0004H\u0002J\b\u0010\u0015\u001a\u00020\u0014H\u0002J\b\u0010\u0016\u001a\u00020\u0014H\u0002J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0002R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010 \u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u001fR\u0014\u0010\"\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010!R*\u0010+\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001b\u00100\u001a\u00020,8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b%\u0010/R\u001b\u00104\u001a\u0002018BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u0010.\u001a\u0004\b-\u00103R\u0014\u00107\u001a\u0002058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u00106R\u001b\u0010:\u001a\u0002088BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010.\u001a\u0004\b2\u00109¨\u0006="}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "dismiss", "Lcom/onyx/galaxy/note/category/event/ManageContextTreeModifiedEvent;", NotificationCompat.CATEGORY_EVENT, "onManageContextTreeModifiedEvent", "Lcom/onyx/galaxy/note/category/event/OnSaveNoteEvent;", "onSaveNoteEvent", "Lcom/onyx/galaxy/note/category/event/OnCreateFolderEvent;", "onCreateFolderEvent", "Lcom/onyx/galaxy/note/category/event/OnDeleteNoteEvent;", "onDeleteNoteEvent", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "w", "x", "Lcom/onyx/android/sdk/data/FolderCreateFrom;", "i", "j", "", "eventId", "v", "Landroid/content/Context;", C6999h.f39688c, "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "manageFolderContext", Constants.STRING_SIG, "from", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "", C4921e.f26537n, "Lio/reactivex/rxjava3/subjects/PublishSubject;", "getPublishSubject", "()Lio/reactivex/rxjava3/subjects/PublishSubject;", "setPublishSubject", "(Lio/reactivex/rxjava3/subjects/PublishSubject;)V", "publishSubject", "Lcom/onyx/galaxy/note/category/view/adapter/SelectFolderAdapter;", "l", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/category/view/adapter/SelectFolderAdapter;", "adapter", "Lcom/onyx/galaxy/note/databinding/DialogSelectFolderBinding;", "m", "()Lcom/onyx/galaxy/note/databinding/DialogSelectFolderBinding;", "binding", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "com/onyx/galaxy/note/category/view/dialog/SelectFolderDialog$checkEmptyDataObserver$2$1", "()Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog$checkEmptyDataObserver$2$1;", "checkEmptyDataObserver", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/common/data/ManageFolderContext;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectFolderDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectFolderDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,213:1\n256#2,2:214\n256#2,2:216\n256#2,2:218\n*S KotlinDebug\n*F\n+ 1 SelectFolderDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog\n*L\n127#1:214,2\n151#1:216,2\n132#1:218,2\n*E\n"})
/* loaded from: classes17.dex */
public final class SelectFolderDialog extends AutoSizeDialog {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final ManageFolderContext manageFolderContext;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final String from;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public PublishSubject<Boolean> publishSubject;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Lazy adapter;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final Lazy checkEmptyDataObserver;

    /* renamed from: com.onyx.galaxy.note.category.view.dialog.SelectFolderDialog$a */
    /* loaded from: classes9.dex */
    public static final class C11450a<T> implements Consumer {
        public C11450a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TreeNode<NoteModelBean> rootNode) {
            Intrinsics.checkNotNullParameter(rootNode, "rootNode");
            rootNode.expandChildren();
            SelectFolderDialog.this.manageFolderContext.setRootNode(rootNode);
            SelectFolderDialog.this.m44469n();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectFolderDialog(@NotNull Context context, @NotNull ManageFolderContext manageFolderContext, @NotNull String from) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(manageFolderContext, "manageFolderContext");
        Intrinsics.checkNotNullParameter(from, "from");
        this.context = context;
        this.manageFolderContext = manageFolderContext;
        this.from = from;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<SelectFolderAdapter>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectFolderDialog$adapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SelectFolderAdapter invoke() {
                return new SelectFolderAdapter(SelectFolderDialog.this.manageFolderContext);
            }
        });
        this.adapter = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<DialogSelectFolderBinding>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectFolderDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogSelectFolderBinding invoke() {
                Context context2;
                context2 = SelectFolderDialog.this.context;
                return DialogSelectFolderBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy2;
        this.compositeDisposable = new CompositeDisposable();
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<SelectFolderDialog$checkEmptyDataObserver$2.C114511>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectFolderDialog$checkEmptyDataObserver$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.onyx.galaxy.note.category.view.dialog.SelectFolderDialog$checkEmptyDataObserver$2$1] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final C114511 invoke() {
                final SelectFolderDialog selectFolderDialog = SelectFolderDialog.this;
                return new AdapterDataModifiedObserver() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectFolderDialog$checkEmptyDataObserver$2.1
                    @Override // com.onyx.galaxy.note.common.view.AdapterDataModifiedObserver
                    public void onDataChanged() {
                        SelectFolderAdapter m44466k;
                        DialogSelectFolderBinding m44467l;
                        m44466k = SelectFolderDialog.this.m44466k();
                        boolean isEmpty = m44466k.getItems().isEmpty();
                        m44467l = SelectFolderDialog.this.m44467l();
                        TintConstraintLayout root = m44467l.includeEmptyView.getRoot();
                        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
                        root.setVisibility(isEmpty ? 0 : 8);
                    }
                };
            }
        });
        this.checkEmptyDataObserver = lazy3;
    }

    /* renamed from: p */
    public static final void m44458p(SelectFolderDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44471v(OnyxStatisticConstant.ID_SELECT_FOLDER_DIALOG_DONE_CLICK);
        PublishSubject<Boolean> publishSubject = this$0.publishSubject;
        if (publishSubject != null) {
            publishSubject.onNext(Boolean.TRUE);
        }
    }

    /* renamed from: q */
    public static final void m44459q(SelectFolderDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44471v(OnyxStatisticConstant.ID_SELECT_FOLDER_DIALOG_CANCEL_CLICK);
        this$0.dismiss();
    }

    /* renamed from: r */
    public static final void m44460r(SelectFolderDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44471v(OnyxStatisticConstant.ID_SELECT_FOLDER_DIALOG_MANAGE_CLICK);
        new ManageFolderDialog(this$0.context, this$0.manageFolderContext, this$0.m44464i()).show();
    }

    /* renamed from: s */
    public static final void m44461s(SelectFolderDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44472w();
    }

    /* renamed from: t */
    public static final void m44462t(SelectFolderDialog this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m44466k().handleSelect(this$0.m44466k().getItems().get(i));
        TintImageView ivUnClassifyChecked = this$0.m44467l().ivUnClassifyChecked;
        Intrinsics.checkNotNullExpressionValue(ivUnClassifyChecked, "ivUnClassifyChecked");
        ivUnClassifyChecked.setVisibility(8);
    }

    /* renamed from: u */
    public static final void m44463u(SelectFolderDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        new CreateFolderDialog(this$0.context, NoteTreeBundle.INSTANCE.getFolderRootNote(), this$0.m44465j()).show();
    }

    @Override // com.onyx.android.sdk.p039ui.AutoSizeDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.compositeDisposable.clear();
        m44466k().unregisterAdapterDataObserver(m44468m());
        DocCollectionBundle.INSTANCE.ensureUnRegister(this);
    }

    @Nullable
    public final PublishSubject<Boolean> getPublishSubject() {
        return this.publishSubject;
    }

    /* renamed from: i */
    public final FolderCreateFrom m44464i() {
        String str = this.from;
        int hashCode = str.hashCode();
        if (hashCode != -1559074083) {
            return hashCode != -832831854 ? FolderCreateFrom.HOME_LIST_ITEM_MOVE_MANGE_CREATE : FolderCreateFrom.HOME_LIST_ITEM_MOVE_MANGE_CREATE;
        }
        if (str.equals(FolderOpPopup.TAG)) {
            return FolderCreateFrom.HOME_FUNC_FOLDER_MOVE_MANGE_CREATE;
        }
        return FolderCreateFrom.HOME_LIST_ITEM_MOVE_MANGE_CREATE;
    }

    /* renamed from: j */
    public final FolderCreateFrom m44465j() {
        String str = this.from;
        int hashCode = str.hashCode();
        if (hashCode != -1559074083) {
            return hashCode != -832831854 ? FolderCreateFrom.HOME_LIST_ITEM_MOVE_CREATE : FolderCreateFrom.HOME_LIST_ITEM_MOVE_CREATE;
        }
        if (str.equals(FolderOpPopup.TAG)) {
            return FolderCreateFrom.HOME_FUNC_FOLDER_MOVE_CREATE;
        }
        return FolderCreateFrom.HOME_LIST_ITEM_MOVE_CREATE;
    }

    /* renamed from: k */
    public final SelectFolderAdapter m44466k() {
        return (SelectFolderAdapter) this.adapter.getValue();
    }

    /* renamed from: l */
    public final DialogSelectFolderBinding m44467l() {
        return (DialogSelectFolderBinding) this.binding.getValue();
    }

    /* renamed from: m */
    public final SelectFolderDialog$checkEmptyDataObserver$2.C114511 m44468m() {
        return (SelectFolderDialog$checkEmptyDataObserver$2.C114511) this.checkEmptyDataObserver.getValue();
    }

    /* renamed from: n */
    public final void m44469n() {
        m44466k().initList();
    }

    /* renamed from: o */
    public final void m44470o() {
        m44466k().registerAdapterDataObserver(m44468m());
        m44467l().f56510rv.setAdapter(m44466k());
        TintTextView tvOk = m44467l().tvOk;
        Intrinsics.checkNotNullExpressionValue(tvOk, "tvOk");
        ViewKt.click$default(tvOk, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.bem
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectFolderDialog.m44458p(SelectFolderDialog.this, view);
            }
        }, 1, null);
        TintTextView tvCancel = m44467l().tvCancel;
        Intrinsics.checkNotNullExpressionValue(tvCancel, "tvCancel");
        ViewKt.click$default(tvCancel, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.cem
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectFolderDialog.m44459q(SelectFolderDialog.this, view);
            }
        }, 1, null);
        TintTextView tvManagerFolder = m44467l().tvManagerFolder;
        Intrinsics.checkNotNullExpressionValue(tvManagerFolder, "tvManagerFolder");
        ViewKt.click$default(tvManagerFolder, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.dem
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectFolderDialog.m44460r(SelectFolderDialog.this, view);
            }
        }, 1, null);
        Group groupUnClassified = m44467l().groupUnClassified;
        Intrinsics.checkNotNullExpressionValue(groupUnClassified, "groupUnClassified");
        groupUnClassified.setVisibility(this.manageFolderContext.getHasFolder() ^ true ? 0 : 8);
        TintFrameLayout flUnClassified = m44467l().flUnClassified;
        Intrinsics.checkNotNullExpressionValue(flUnClassified, "flUnClassified");
        ViewKt.click$default(flUnClassified, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.eem
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectFolderDialog.m44461s(SelectFolderDialog.this, view);
            }
        }, 1, null);
        ItemClickUtilsKt.setOnDebouncedItemClick$default(m44466k(), 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.fem
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SelectFolderDialog.m44462t(SelectFolderDialog.this, baseQuickAdapter, view, i);
            }
        }, 1, null);
        TintTextView tvCreate = m44467l().tvCreate;
        Intrinsics.checkNotNullExpressionValue(tvCreate, "tvCreate");
        ViewKt.click$default(tvCreate, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.gem
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectFolderDialog.m44463u(SelectFolderDialog.this, view);
            }
        }, 1, null);
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063301, this, savedInstanceState);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCreateFolderEvent(@NotNull OnCreateFolderEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m44473x();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteNoteEvent(@NotNull OnDeleteNoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m44473x();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onManageContextTreeModifiedEvent(@NotNull ManageContextTreeModifiedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m44473x();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSaveNoteEvent(@NotNull OnSaveNoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m44473x();
    }

    public final void setPublishSubject(@Nullable PublishSubject<Boolean> publishSubject) {
        this.publishSubject = publishSubject;
    }

    /* renamed from: v */
    public final void m44471v(String eventId) {
        Map<String, ? extends Object> mapOf;
        String str;
        String str2 = this.from;
        int hashCode = str2.hashCode();
        int i = 1004;
        if (hashCode != -1559074083) {
            if (hashCode == -832831854) {
                str = FragmentNoteFolderRoot.TAG;
            } else if (hashCode == 181233216) {
                str = NoteListFragment.TAG;
            }
            str2.equals(str);
        } else if (str2.equals(FolderOpPopup.TAG)) {
            i = 1003;
        }
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(i)));
        statisticsBundle.reportEvent(eventId, mapOf);
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: w */
    public final void m44472w() {
        if (Intrinsics.areEqual(this.manageFolderContext.getSelectNoteId(), NoteConfigConst.FOLDER_ROOT_ID)) {
            this.manageFolderContext.setSelectNoteId(null);
        } else {
            this.manageFolderContext.setSelectNoteId(NoteConfigConst.FOLDER_ROOT_ID);
        }
        TintImageView ivUnClassifyChecked = m44467l().ivUnClassifyChecked;
        Intrinsics.checkNotNullExpressionValue(ivUnClassifyChecked, "ivUnClassifyChecked");
        ivUnClassifyChecked.setVisibility(Intrinsics.areEqual(this.manageFolderContext.getSelectNoteId(), NoteConfigConst.FOLDER_ROOT_ID) ? 0 : 8);
        m44466k().notifyDataSetChanged();
    }

    /* renamed from: x */
    public final void m44473x() {
        Disposable subscribe = new LoadNoteFolderTreeAction().build().subscribe(new C11450a());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }
}
