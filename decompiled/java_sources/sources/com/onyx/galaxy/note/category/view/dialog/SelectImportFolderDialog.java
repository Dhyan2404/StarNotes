package com.onyx.galaxy.note.category.view.dialog;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.C1126e;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.NewTreeKt;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.AutoSizeDialog;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.category.view.adapter.SearchFolderAdapter;
import com.onyx.galaxy.note.category.view.adapter.SelectFolderAdapter;
import com.onyx.galaxy.note.category.view.dialog.SelectImportFolderDialog;
import com.onyx.galaxy.note.category.view.dialog.SelectImportFolderDialog$checkEmptyDataObserver$2;
import com.onyx.galaxy.note.common.data.ManageFolderContext;
import com.onyx.galaxy.note.common.view.AdapterDataModifiedObserver;
import com.onyx.galaxy.note.databinding.DialogSelectImportFolderLocationBinding;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000]\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001(\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u0010\u0015\u001a\u00020\u0010\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0016¢\u0006\u0004\b/\u00100J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0002R\u0017\u0010\u0015\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001d\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u001b\u0010 \u001a\u00020\u001c8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u001b\u0010#\u001a\u00020!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\u001d\u001a\u0004\b\u0017\u0010\"R\u001b\u0010'\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010\u001d\u001a\u0004\b\u0011\u0010&R\u001b\u0010,\u001a\u00020(8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010\u001d\u001a\u0004\b*\u0010+¨\u00061"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/dialog/SelectImportFolderDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "dismiss", C4921e.f26537n, "r", "", "title", "p", "", "isSearch", "q", "j", "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", C6999h.f39688c, "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "getManageFolderContext", "()Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "manageFolderContext", "Lkotlin/Function0;", "i", "Lkotlin/jvm/functions/Function0;", "getConfirmCallback", "()Lkotlin/jvm/functions/Function0;", "confirmCallback", "Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;", "binding", "Lcom/onyx/galaxy/note/category/view/adapter/SelectFolderAdapter;", "()Lcom/onyx/galaxy/note/category/view/adapter/SelectFolderAdapter;", "selectAdapter", "Lcom/onyx/galaxy/note/category/view/adapter/SearchFolderAdapter;", "l", "()Lcom/onyx/galaxy/note/category/view/adapter/SearchFolderAdapter;", "searchAdapter", "com/onyx/galaxy/note/category/view/dialog/SelectImportFolderDialog$checkEmptyDataObserver$2$1", "m", C6998g.f39679a, "()Lcom/onyx/galaxy/note/category/view/dialog/SelectImportFolderDialog$checkEmptyDataObserver$2$1;", "checkEmptyDataObserver", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/common/data/ManageFolderContext;Lkotlin/jvm/functions/Function0;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectImportFolderDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectImportFolderDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/SelectImportFolderDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,119:1\n65#2,16:120\n93#2,3:136\n*S KotlinDebug\n*F\n+ 1 SelectImportFolderDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/SelectImportFolderDialog\n*L\n70#1:120,16\n70#1:136,3\n*E\n"})
/* loaded from: classes17.dex */
public final class SelectImportFolderDialog extends AutoSizeDialog {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ManageFolderContext manageFolderContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Function0<Unit> confirmCallback;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Lazy selectAdapter;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Lazy searchAdapter;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final Lazy checkEmptyDataObserver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectImportFolderDialog(@NotNull final Context context, @NotNull ManageFolderContext manageFolderContext, @NotNull Function0<Unit> confirmCallback) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(manageFolderContext, "manageFolderContext");
        Intrinsics.checkNotNullParameter(confirmCallback, "confirmCallback");
        this.manageFolderContext = manageFolderContext;
        this.confirmCallback = confirmCallback;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogSelectImportFolderLocationBinding>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectImportFolderDialog$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogSelectImportFolderLocationBinding invoke() {
                return DialogSelectImportFolderLocationBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<SelectFolderAdapter>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectImportFolderDialog$selectAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SelectFolderAdapter invoke() {
                return new SelectFolderAdapter(SelectImportFolderDialog.this.getManageFolderContext());
            }
        });
        this.selectAdapter = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<SearchFolderAdapter>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectImportFolderDialog$searchAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SearchFolderAdapter invoke() {
                return new SearchFolderAdapter();
            }
        });
        this.searchAdapter = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<SelectImportFolderDialog$checkEmptyDataObserver$2.C114531>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectImportFolderDialog$checkEmptyDataObserver$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.onyx.galaxy.note.category.view.dialog.SelectImportFolderDialog$checkEmptyDataObserver$2$1] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final C114531 invoke() {
                final SelectImportFolderDialog selectImportFolderDialog = SelectImportFolderDialog.this;
                return new AdapterDataModifiedObserver() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectImportFolderDialog$checkEmptyDataObserver$2.1
                    @Override // com.onyx.galaxy.note.common.view.AdapterDataModifiedObserver
                    public void onDataChanged() {
                        SelectFolderAdapter m44485i;
                        m44485i = SelectImportFolderDialog.this.m44485i();
                        boolean isEmpty = m44485i.getItems().isEmpty();
                        TintConstraintLayout root = SelectImportFolderDialog.this.getBinding().includeEmptyView.getRoot();
                        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
                        root.setVisibility(isEmpty ? 0 : 8);
                    }
                };
            }
        });
        this.checkEmptyDataObserver = lazy4;
    }

    /* renamed from: l */
    public static final void m44479l(SelectImportFolderDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: m */
    public static final void m44480m(SelectImportFolderDialog this$0, View view) {
        NoteModelBean data;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ManageFolderContext manageFolderContext = this$0.manageFolderContext;
        TreeNode<NoteModelBean> findNode = manageFolderContext.getRootNode().findNode(manageFolderContext.getSelectNoteId());
        String title = (findNode == null || (data = findNode.getData()) == null) ? null : data.getTitle();
        if (title == null) {
            title = "";
        }
        manageFolderContext.setSelectedFolderName(title);
        manageFolderContext.setOldParentId(manageFolderContext.getSelectNoteId());
        this$0.confirmCallback.invoke();
        this$0.dismiss();
    }

    /* renamed from: n */
    public static final void m44481n(SelectFolderAdapter this_apply, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this_apply.handleSelect(this_apply.getItems().get(i));
    }

    /* renamed from: o */
    public static final void m44482o(SearchFolderAdapter this_apply, SelectImportFolderDialog this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        TreeNode<NoteModelBean> treeNode = this_apply.getItems().get(i);
        this$0.m44485i().onlyExpandSelection(treeNode);
        if (!Intrinsics.areEqual(treeNode.getData().getUniqueId(), this$0.manageFolderContext.getSelectNoteId())) {
            this$0.m44485i().handleSelect(treeNode);
        }
        this$0.getBinding().rvSelect.smoothScrollToPosition(this$0.m44485i().getItems().indexOf(treeNode));
        this$0.m44490r();
    }

    @Override // com.onyx.android.sdk.p039ui.AutoSizeDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        m44485i().unregisterAdapterDataObserver(m44483g());
    }

    /* renamed from: g */
    public final SelectImportFolderDialog$checkEmptyDataObserver$2.C114531 m44483g() {
        return (SelectImportFolderDialog$checkEmptyDataObserver$2.C114531) this.checkEmptyDataObserver.getValue();
    }

    @NotNull
    public final DialogSelectImportFolderLocationBinding getBinding() {
        return (DialogSelectImportFolderLocationBinding) this.binding.getValue();
    }

    @NotNull
    public final Function0<Unit> getConfirmCallback() {
        return this.confirmCallback;
    }

    @NotNull
    public final ManageFolderContext getManageFolderContext() {
        return this.manageFolderContext;
    }

    /* renamed from: h */
    public final SearchFolderAdapter m44484h() {
        return (SearchFolderAdapter) this.searchAdapter.getValue();
    }

    /* renamed from: i */
    public final SelectFolderAdapter m44485i() {
        return (SelectFolderAdapter) this.selectAdapter.getValue();
    }

    /* renamed from: j */
    public final void m44486j() {
        m44485i().initList();
    }

    /* renamed from: k */
    public final void m44487k() {
        TreeNode<NoteModelBean> findNode;
        setCancelable(false);
        TintTextView tvCancel = getBinding().tvCancel;
        Intrinsics.checkNotNullExpressionValue(tvCancel, "tvCancel");
        ViewKt.click$default(tvCancel, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hem
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectImportFolderDialog.m44479l(SelectImportFolderDialog.this, view);
            }
        }, 1, null);
        TintTextView tvOk = getBinding().tvOk;
        Intrinsics.checkNotNullExpressionValue(tvOk, "tvOk");
        ViewKt.click$default(tvOk, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.iem
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectImportFolderDialog.m44480m(SelectImportFolderDialog.this, view);
            }
        }, 1, null);
        final SelectFolderAdapter m44485i = m44485i();
        m44485i.registerAdapterDataObserver(m44483g());
        getBinding().rvSelect.setAdapter(m44485i);
        if (StringKt.isNotEmpty(this.manageFolderContext.getSelectNoteId()) && (findNode = this.manageFolderContext.getRootNode().findNode(this.manageFolderContext.getSelectNoteId())) != null) {
            m44485i.onlyExpandSelection(findNode);
            getBinding().rvSelect.smoothScrollToPosition(Math.max(m44485i().getItems().indexOf(findNode), 0));
        }
        ItemClickUtilsKt.setOnDebouncedItemClick$default(m44485i, 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.jem
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SelectImportFolderDialog.m44481n(SelectFolderAdapter.this, baseQuickAdapter, view, i);
            }
        }, 1, null);
        MaxLengthInputTextEdit tieName = getBinding().tieName;
        Intrinsics.checkNotNullExpressionValue(tieName, "tieName");
        tieName.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectImportFolderDialog$initView$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
                SelectImportFolderDialog.this.m44488p(String.valueOf(s));
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
            }
        });
        final SearchFolderAdapter m44484h = m44484h();
        getBinding().rvSearch.setAdapter(m44484h);
        ItemClickUtilsKt.setOnDebouncedItemClick$default(m44484h, 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.kem
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SelectImportFolderDialog.m44482o(SearchFolderAdapter.this, this, baseQuickAdapter, view, i);
            }
        }, 1, null);
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063300, this, savedInstanceState);
    }

    /* renamed from: p */
    public final void m44488p(final String title) {
        if (StringKt.isEmpty(title)) {
            m44489q(false);
            return;
        }
        m44484h().submitList(TreeNode.findNodes$default(this.manageFolderContext.getRootNode(), new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectImportFolderDialog$search$nodes$1
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
        m44489q(true);
    }

    /* renamed from: q */
    public final void m44489q(boolean isSearch) {
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().rvSearch, isSearch);
    }

    /* renamed from: r */
    public final void m44490r() {
        getBinding().tieName.setText("");
    }
}
