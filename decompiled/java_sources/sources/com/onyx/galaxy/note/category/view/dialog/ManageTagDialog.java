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
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.TagCreateFrom;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.AutoSizeDialog;
import com.onyx.android.sdk.p039ui.TouchModeMaxLengthInputTextEdit;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBeanList;
import com.onyx.android.sdk.replicator.note.utils.NoteTagNodes;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.events.app.UpdateTagEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.LoadTagTreeAction;
import com.onyx.galaxy.note.category.action.SaveTagAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.OnCreateMultipleSubTagEvent;
import com.onyx.galaxy.note.category.event.OnCreateTagEvent;
import com.onyx.galaxy.note.category.view.CreateTagInputFilter;
import com.onyx.galaxy.note.category.view.adapter.ManageTagAdapter;
import com.onyx.galaxy.note.category.view.adapter.SearchTagAdapter;
import com.onyx.galaxy.note.category.view.dialog.ManageTagDialog;
import com.onyx.galaxy.note.category.view.dialog.ManageTagDialog$checkEmptyDataObserver$2;
import com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback;
import com.onyx.galaxy.note.category.view.itemtouchcallback.ManageTagHandlerImpl;
import com.onyx.galaxy.note.common.data.ManageTagContext;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.AdapterDataModifiedObserver;
import com.onyx.galaxy.note.databinding.DialogManageTagBinding;
import com.onyx.galaxy.note.p048ui.ext.EditextExtKt;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
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

@Metadata(m61527d1 = {"\u0000u\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\b\u0007*\u00016\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u0012\u0006\u0010\u001f\u001a\u00020\u001c\u0012\u0006\u0010#\u001a\u00020 ¢\u0006\u0004\b:\u0010;J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\nH\u0007J\b\u0010\f\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0003J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\b\u0010\u0014\u001a\u00020\u0004H\u0002J\b\u0010\u0015\u001a\u00020\u0004H\u0002J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u000eH\u0002R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u001b\u0010(\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b\u0019\u0010'R\u001b\u0010+\u001a\u00020)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010&\u001a\u0004\b%\u0010*R\u001b\u0010.\u001a\u00020,8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010&\u001a\u0004\b\u001d\u0010-R\u0014\u00102\u001a\u00020/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00105\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u001b\u00109\u001a\u0002068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u0010&\u001a\u0004\b!\u00108¨\u0006<"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "dismiss", "Lcom/onyx/galaxy/note/category/event/OnCreateTagEvent;", NotificationCompat.CATEGORY_EVENT, "onCreateTagEvent", "Lcom/onyx/galaxy/note/category/event/OnCreateMultipleSubTagEvent;", "onCreateMultipleSubTagEvent", "l", "m", "", "title", "u", "", "isSearch", "v", "s", "w", "eventId", "r", "Landroid/content/Context;", C6999h.f39688c, "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "i", "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "manageTagContext", "Lcom/onyx/android/sdk/data/TagCreateFrom;", "j", "Lcom/onyx/android/sdk/data/TagCreateFrom;", "tagCreateFrom", "Lcom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter;", C4921e.f26537n, "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter;", "adapter", "Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;", "()Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;", "searchAdapter", "Lcom/onyx/galaxy/note/databinding/DialogManageTagBinding;", "()Lcom/onyx/galaxy/note/databinding/DialogManageTagBinding;", "binding", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", GoogleApiAvailabilityLight.f29016b, "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", C4921e.f26528e, Constants.HASIDCALL_INDEX_SIG, "isListChange", "com/onyx/galaxy/note/category/view/dialog/ManageTagDialog$checkEmptyDataObserver$2$1", "p", "()Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog$checkEmptyDataObserver$2$1;", "checkEmptyDataObserver", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/common/data/ManageTagContext;Lcom/onyx/android/sdk/data/TagCreateFrom;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nManageTagDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManageTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/ManageTagDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,234:1\n65#2,16:235\n93#2,3:251\n256#3,2:254\n256#3,2:256\n*S KotlinDebug\n*F\n+ 1 ManageTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/ManageTagDialog\n*L\n170#1:235,16\n170#1:251,3\n193#1:254,2\n194#1:256,2\n*E\n"})
/* loaded from: classes17.dex */
public final class ManageTagDialog extends AutoSizeDialog {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final ManageTagContext manageTagContext;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final TagCreateFrom tagCreateFrom;

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
    public boolean isListChange;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final Lazy checkEmptyDataObserver;

    /* renamed from: com.onyx.galaxy.note.category.view.dialog.ManageTagDialog$a */
    /* loaded from: classes9.dex */
    public static final class C11447a<T> implements Consumer {
        public C11447a() {
        }

        /* renamed from: a */
        public final void m44450a(boolean z) {
            if (!z) {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.manager_folder_save_failed, false, 2, (Object) null);
            } else {
                ManageTagDialog.this.isListChange = true;
                ManageTagDialog.this.dismiss();
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m44450a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.view.dialog.ManageTagDialog$b */
    /* loaded from: classes9.dex */
    public static final class C11448b<T> implements Consumer {
        public C11448b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TreeNode<NoteTagBean> rootNode) {
            Intrinsics.checkNotNullParameter(rootNode, "rootNode");
            rootNode.expandChildren();
            ManageTagDialog.this.manageTagContext.setRootNode(rootNode);
            ManageTagDialog.this.m44439h().initList();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ManageTagDialog(@NotNull Context context, @NotNull ManageTagContext manageTagContext, @NotNull TagCreateFrom tagCreateFrom) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(manageTagContext, "manageTagContext");
        Intrinsics.checkNotNullParameter(tagCreateFrom, "tagCreateFrom");
        this.context = context;
        this.manageTagContext = manageTagContext;
        this.tagCreateFrom = tagCreateFrom;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ManageTagAdapter>() { // from class: com.onyx.galaxy.note.category.view.dialog.ManageTagDialog$adapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ManageTagAdapter invoke() {
                return new ManageTagAdapter(ManageTagDialog.this.manageTagContext);
            }
        });
        this.adapter = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<SearchTagAdapter>() { // from class: com.onyx.galaxy.note.category.view.dialog.ManageTagDialog$searchAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SearchTagAdapter invoke() {
                return new SearchTagAdapter();
            }
        });
        this.searchAdapter = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<DialogManageTagBinding>() { // from class: com.onyx.galaxy.note.category.view.dialog.ManageTagDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogManageTagBinding invoke() {
                Context context2;
                context2 = ManageTagDialog.this.context;
                return DialogManageTagBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy3;
        this.compositeDisposable = new CompositeDisposable();
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<ManageTagDialog$checkEmptyDataObserver$2.C114491>() { // from class: com.onyx.galaxy.note.category.view.dialog.ManageTagDialog$checkEmptyDataObserver$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.onyx.galaxy.note.category.view.dialog.ManageTagDialog$checkEmptyDataObserver$2$1] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final C114491 invoke() {
                final ManageTagDialog manageTagDialog = ManageTagDialog.this;
                return new AdapterDataModifiedObserver() { // from class: com.onyx.galaxy.note.category.view.dialog.ManageTagDialog$checkEmptyDataObserver$2.1
                    @Override // com.onyx.galaxy.note.common.view.AdapterDataModifiedObserver
                    public void onDataChanged() {
                        DialogManageTagBinding m44440i;
                        m44440i = ManageTagDialog.this.m44440i();
                        TintConstraintLayout root = m44440i.includeEmptyView.getRoot();
                        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
                        root.setVisibility(ManageTagDialog.this.m44439h().getItems().isEmpty() ? 0 : 8);
                    }
                };
            }
        });
        this.checkEmptyDataObserver = lazy4;
    }

    /* renamed from: n */
    public static final boolean m44434n(ManageTagDialog this$0, ItemTouchHelper itemTouchHelper, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(itemTouchHelper, "$itemTouchHelper");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        RecyclerView.ViewHolder findViewHolderForAdapterPosition = this$0.m44440i().f56462rv.findViewHolderForAdapterPosition(i);
        if (findViewHolderForAdapterPosition == null) {
            return true;
        }
        itemTouchHelper.startDrag(findViewHolderForAdapterPosition);
        return true;
    }

    /* renamed from: o */
    public static final void m44435o(ManageTagDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44445r(OnyxStatisticConstant.ID_TAG_MANAGE_DIALOG_DONE_CLICK);
        this$0.m44446s();
    }

    /* renamed from: p */
    public static final void m44436p(ManageTagDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44445r(OnyxStatisticConstant.ID_TAG_MANAGE_DIALOG_CANCEL_CLICK);
        this$0.m44446s();
    }

    /* renamed from: q */
    public static final void m44437q(ManageTagDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        new CreateTagDialog(this$0.context, NoteTreeBundle.INSTANCE.getTagRootNote(), this$0.tagCreateFrom).show();
    }

    /* renamed from: t */
    public static final void m44438t(ManageTagDialog this$0, final NoteTagBeanList saveTagList) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(saveTagList, "$saveTagList");
        NoteTagNodes.INSTANCE.setSaved(this$0.manageTagContext.getRootNode(), new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.dialog.ManageTagDialog$saveTagList$disposable$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteTagBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(NoteTagBeanList.this.contains((Object) it2.getData()));
            }
        });
    }

    @Override // com.onyx.android.sdk.p039ui.AutoSizeDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        if (this.isListChange) {
            this.manageTagContext.refreshOldParentId();
            EditorBundleKt.postEvent(DocCollectionBundle.INSTANCE.docManagerBundle(), new UpdateTagEvent());
        }
        this.compositeDisposable.clear();
        m44439h().unregisterAdapterDataObserver(m44441j());
        DocCollectionBundle.INSTANCE.ensureUnRegister(this);
    }

    /* renamed from: h */
    public final ManageTagAdapter m44439h() {
        return (ManageTagAdapter) this.adapter.getValue();
    }

    /* renamed from: i */
    public final DialogManageTagBinding m44440i() {
        return (DialogManageTagBinding) this.binding.getValue();
    }

    /* renamed from: j */
    public final ManageTagDialog$checkEmptyDataObserver$2.C114491 m44441j() {
        return (ManageTagDialog$checkEmptyDataObserver$2.C114491) this.checkEmptyDataObserver.getValue();
    }

    /* renamed from: k */
    public final SearchTagAdapter m44442k() {
        return (SearchTagAdapter) this.searchAdapter.getValue();
    }

    /* renamed from: l */
    public final void m44443l() {
        m44439h().initList();
    }

    /* renamed from: m */
    public final void m44444m() {
        m44439h().registerAdapterDataObserver(m44441j());
        m44440i().f56462rv.setAdapter(m44439h());
        final ManageTagAdapter m44439h = m44439h();
        final ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new DragTouchCallback(m44439h(), new ManageTagHandlerImpl(m44439h) { // from class: com.onyx.galaxy.note.category.view.dialog.ManageTagDialog$initView$manageTagHandlerImpl$1
            @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.ManageTagHandlerImpl, com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
            public void onMergeData(int fromPosition, int toPosition) {
                super.onMergeData(fromPosition, toPosition);
                ManageTagDialog.this.isListChange = true;
            }

            @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.ManageTagHandlerImpl, com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
            public void swap(int fromPosition, int toPosition) {
                super.swap(fromPosition, toPosition);
                ManageTagDialog.this.isListChange = true;
            }
        }, false, true, false));
        itemTouchHelper.attachToRecyclerView(m44440i().f56462rv);
        m44439h().addOnItemChildLongClickListener(C10651R.id.cls_content, new BaseQuickAdapter.OnItemChildLongClickListener() { // from class: com.sunia.HTREnginev2.y7j
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildLongClickListener
            public final boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                boolean m44434n;
                m44434n = ManageTagDialog.m44434n(ManageTagDialog.this, itemTouchHelper, baseQuickAdapter, view, i);
                return m44434n;
            }
        });
        m44439h().setRemoveCallback(new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.view.dialog.ManageTagDialog$initView$2
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
                ManageTagDialog.this.isListChange = true;
            }
        });
        m44440i().rvSearch.setAdapter(m44442k());
        TintTextView tvOk = m44440i().tvOk;
        Intrinsics.checkNotNullExpressionValue(tvOk, "tvOk");
        ViewKt.click$default(tvOk, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.z7j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ManageTagDialog.m44435o(ManageTagDialog.this, view);
            }
        }, 1, null);
        TintTextView tvCancel = m44440i().tvCancel;
        Intrinsics.checkNotNullExpressionValue(tvCancel, "tvCancel");
        ViewKt.click$default(tvCancel, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.a8j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ManageTagDialog.m44436p(ManageTagDialog.this, view);
            }
        }, 1, null);
        TintTextView tvCreateTag = m44440i().tvCreateTag;
        Intrinsics.checkNotNullExpressionValue(tvCreateTag, "tvCreateTag");
        ViewKt.click$default(tvCreateTag, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.b8j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ManageTagDialog.m44437q(ManageTagDialog.this, view);
            }
        }, 1, null);
        TouchModeMaxLengthInputTextEdit touchModeMaxLengthInputTextEdit = m44440i().tieName;
        Intrinsics.checkNotNull(touchModeMaxLengthInputTextEdit);
        EditextExtKt.addInputFilter(touchModeMaxLengthInputTextEdit, new CreateTagInputFilter());
        touchModeMaxLengthInputTextEdit.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.category.view.dialog.ManageTagDialog$initView$lambda$6$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
                ManageTagDialog.this.m44447u(String.valueOf(text));
            }
        });
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063302, this, savedInstanceState);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCreateMultipleSubTagEvent(@NotNull OnCreateMultipleSubTagEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m44449w();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCreateTagEvent(@NotNull OnCreateTagEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m44449w();
    }

    /* renamed from: r */
    public final void m44445r(String eventId) {
        Map<String, ? extends Object> mapOf;
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(OnyxStatisticConstant.INSTANCE.getTriggerFromByTagCreateFrom(this.tagCreateFrom))));
        statisticsBundle.reportEvent(eventId, mapOf);
    }

    /* renamed from: s */
    public final void m44446s() {
        final NoteTagBeanList noteTagBeanList = new NoteTagBeanList();
        noteTagBeanList.addAll(this.manageTagContext.getSaveModelMap().values());
        if (noteTagBeanList.isEmpty()) {
            dismiss();
        }
        Disposable subscribe = new SaveTagAction(noteTagBeanList).build().doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.x7j
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ManageTagDialog.m44438t(ManageTagDialog.this, noteTagBeanList);
            }
        }).subscribe(new C11447a());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    @SuppressLint({"SetTextI18n"})
    /* renamed from: u */
    public final void m44447u(final String title) {
        if (title.length() == 0) {
            m44448v(false);
        } else {
            m44442k().submitList(TreeNode.findNodes$default(this.manageTagContext.getRootNode(), new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.dialog.ManageTagDialog$search$nodes$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull TreeNode<NoteTagBean> it2) {
                    boolean contains;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    contains = StringsKt__StringsKt.contains((CharSequence) it2.getData().getContent(), (CharSequence) title, true);
                    return Boolean.valueOf(contains);
                }
            }, null, NewTreeKt.STRATEGY_DEPTH_FIRST, 2, null));
            m44448v(true);
        }
    }

    /* renamed from: v */
    public final void m44448v(boolean isSearch) {
        Group groupList = m44440i().groupList;
        Intrinsics.checkNotNullExpressionValue(groupList, "groupList");
        groupList.setVisibility(isSearch ^ true ? 0 : 8);
        Group groupSearchList = m44440i().groupSearchList;
        Intrinsics.checkNotNullExpressionValue(groupSearchList, "groupSearchList");
        groupSearchList.setVisibility(isSearch ? 0 : 8);
    }

    /* renamed from: w */
    public final void m44449w() {
        Disposable subscribe = new LoadTagTreeAction().build().subscribe(new C11448b());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }
}
