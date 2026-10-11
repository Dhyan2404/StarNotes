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
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.NewTreeKt;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.AutoSizeDialog;
import com.onyx.android.sdk.p039ui.TouchModeMaxLengthInputTextEdit;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.category.view.CreateTagInputFilter;
import com.onyx.galaxy.note.category.view.adapter.SearchTagAdapter;
import com.onyx.galaxy.note.category.view.adapter.SelectMultiTagAdapter;
import com.onyx.galaxy.note.category.view.dialog.SelectImportTagDialog;
import com.onyx.galaxy.note.category.view.dialog.SelectImportTagDialog$checkEmptyDataObserver$2;
import com.onyx.galaxy.note.common.data.ManageTagContext;
import com.onyx.galaxy.note.common.view.AdapterDataModifiedObserver;
import com.onyx.galaxy.note.databinding.DialogSelectImportTagBinding;
import com.onyx.galaxy.note.p048ui.ext.EditextExtKt;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0007*\u0001-\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\t0\u0019\u0012\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00040\u001c¢\u0006\u0004\b1\u00102J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001a\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\t0\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u001aR\u001a\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00040\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u001dR\u001b\u0010#\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\u0016\u0010\"R\u001b\u0010'\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010!\u001a\u0004\b\u0012\u0010&R\u001b\u0010,\u001a\u00020(8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010!\u001a\u0004\b*\u0010+R\u001b\u00100\u001a\u00020-8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010!\u001a\u0004\b.\u0010/¨\u00063"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "dismiss", "j", C4921e.f26537n, "", "title", C4921e.f26528e, "r", "", "isSearch", "q", "p", "Landroid/content/Context;", C6999h.f39688c, "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "i", "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "manageTagContext", "", "Ljava/util/List;", "selectedTagIds", "Lkotlin/Function0;", "Lkotlin/jvm/functions/Function0;", "confirmCallback", "Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;", "l", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;", "selectAdapter", "Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;", "m", "()Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;", "searchAdapter", "Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;", GoogleApiAvailabilityLight.f29016b, C6997f.f39671c, "()Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;", "binding", "com/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog$checkEmptyDataObserver$2$1", C6998g.f39679a, "()Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog$checkEmptyDataObserver$2$1;", "checkEmptyDataObserver", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/common/data/ManageTagContext;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectImportTagDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectImportTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,121:1\n1603#2,9:122\n1855#2:131\n1856#2:133\n1612#2:134\n350#2,7:154\n1#3:132\n65#4,16:135\n93#4,3:151\n*S KotlinDebug\n*F\n+ 1 SelectImportTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog\n*L\n62#1:122,9\n62#1:131\n62#1:133\n62#1:134\n75#1:154,7\n62#1:132\n82#1:135,16\n82#1:151,3\n*E\n"})
/* loaded from: classes17.dex */
public final class SelectImportTagDialog extends AutoSizeDialog {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final ManageTagContext manageTagContext;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<String> selectedTagIds;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Function0<Unit> confirmCallback;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Lazy selectAdapter;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final Lazy searchAdapter;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final Lazy checkEmptyDataObserver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectImportTagDialog(@NotNull Context context, @NotNull ManageTagContext manageTagContext, @NotNull List<String> selectedTagIds, @NotNull Function0<Unit> confirmCallback) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(manageTagContext, "manageTagContext");
        Intrinsics.checkNotNullParameter(selectedTagIds, "selectedTagIds");
        Intrinsics.checkNotNullParameter(confirmCallback, "confirmCallback");
        this.context = context;
        this.manageTagContext = manageTagContext;
        this.selectedTagIds = selectedTagIds;
        this.confirmCallback = confirmCallback;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<SelectMultiTagAdapter>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectImportTagDialog$selectAdapter$2

            @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
            /* renamed from: com.onyx.galaxy.note.category.view.dialog.SelectImportTagDialog$selectAdapter$2$1 */
            /* loaded from: classes9.dex */
            public /* synthetic */ class C114561 extends FunctionReferenceImpl implements Function0<Unit> {
                public C114561(Object obj) {
                    super(0, obj, SelectImportTagDialog.class, "selectionChangedCallback", "selectionChangedCallback()V", 0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    ((SelectImportTagDialog) this.receiver).m44516p();
                }
            }

            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SelectMultiTagAdapter invoke() {
                List list;
                ManageTagContext manageTagContext2;
                list = SelectImportTagDialog.this.selectedTagIds;
                manageTagContext2 = SelectImportTagDialog.this.manageTagContext;
                return new SelectMultiTagAdapter(list, manageTagContext2, new C114561(SelectImportTagDialog.this));
            }
        });
        this.selectAdapter = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<SearchTagAdapter>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectImportTagDialog$searchAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SearchTagAdapter invoke() {
                return new SearchTagAdapter();
            }
        });
        this.searchAdapter = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<DialogSelectImportTagBinding>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectImportTagDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogSelectImportTagBinding invoke() {
                Context context2;
                context2 = SelectImportTagDialog.this.context;
                return DialogSelectImportTagBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<SelectImportTagDialog$checkEmptyDataObserver$2.C114551>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectImportTagDialog$checkEmptyDataObserver$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.onyx.galaxy.note.category.view.dialog.SelectImportTagDialog$checkEmptyDataObserver$2$1] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final C114551 invoke() {
                final SelectImportTagDialog selectImportTagDialog = SelectImportTagDialog.this;
                return new AdapterDataModifiedObserver() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectImportTagDialog$checkEmptyDataObserver$2.1
                    @Override // com.onyx.galaxy.note.common.view.AdapterDataModifiedObserver
                    public void onDataChanged() {
                        DialogSelectImportTagBinding m44509f;
                        SelectMultiTagAdapter m44512i;
                        m44509f = SelectImportTagDialog.this.m44509f();
                        TintConstraintLayout root = m44509f.includeEmptyView.getRoot();
                        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
                        m44512i = SelectImportTagDialog.this.m44512i();
                        root.setVisibility(m44512i.getItems().isEmpty() ? 0 : 8);
                    }
                };
            }
        });
        this.checkEmptyDataObserver = lazy4;
    }

    /* renamed from: l */
    public static final void m44506l(SelectImportTagDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: m */
    public static final void m44507m(SelectImportTagDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.manageTagContext.saveSelectedTags(this$0.m44512i().getSelectedTagIds());
        this$0.confirmCallback.invoke();
        this$0.dismiss();
    }

    /* renamed from: n */
    public static final void m44508n(SearchTagAdapter this_apply, SelectImportTagDialog this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        List<TreeNode<NoteTagBean>> listOf;
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        TreeNode<NoteTagBean> treeNode = this_apply.getItems().get(i);
        SelectMultiTagAdapter m44512i = this$0.m44512i();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(treeNode);
        m44512i.onlyExpandSelection(listOf);
        this$0.m44512i().handleSelect(treeNode.getData().getUniqueId());
        Iterator<TreeNode<NoteTagBean>> it2 = this$0.m44512i().getItems().iterator();
        int i2 = 0;
        while (true) {
            if (!it2.hasNext()) {
                i2 = -1;
                break;
            } else if (Intrinsics.areEqual(it2.next().getData().getUniqueId(), treeNode.getData().getUniqueId())) {
                break;
            } else {
                i2++;
            }
        }
        this$0.m44509f().rvSelect.smoothScrollToPosition(i2);
        this$0.m44518r();
    }

    @Override // com.onyx.android.sdk.p039ui.AutoSizeDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        m44512i().unregisterAdapterDataObserver(m44510g());
    }

    /* renamed from: f */
    public final DialogSelectImportTagBinding m44509f() {
        return (DialogSelectImportTagBinding) this.binding.getValue();
    }

    /* renamed from: g */
    public final SelectImportTagDialog$checkEmptyDataObserver$2.C114551 m44510g() {
        return (SelectImportTagDialog$checkEmptyDataObserver$2.C114551) this.checkEmptyDataObserver.getValue();
    }

    /* renamed from: h */
    public final SearchTagAdapter m44511h() {
        return (SearchTagAdapter) this.searchAdapter.getValue();
    }

    /* renamed from: i */
    public final SelectMultiTagAdapter m44512i() {
        return (SelectMultiTagAdapter) this.selectAdapter.getValue();
    }

    /* renamed from: j */
    public final void m44513j() {
        m44512i().submitTreeNodes();
    }

    /* renamed from: k */
    public final void m44514k() {
        Object first;
        TintTextView tvCancel = m44509f().tvCancel;
        Intrinsics.checkNotNullExpressionValue(tvCancel, "tvCancel");
        ViewKt.click$default(tvCancel, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.pem
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectImportTagDialog.m44506l(SelectImportTagDialog.this, view);
            }
        }, 1, null);
        TintTextView tvOk = m44509f().tvOk;
        Intrinsics.checkNotNullExpressionValue(tvOk, "tvOk");
        ViewKt.click$default(tvOk, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.qem
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectImportTagDialog.m44507m(SelectImportTagDialog.this, view);
            }
        }, 1, null);
        SelectMultiTagAdapter m44512i = m44512i();
        m44512i.registerAdapterDataObserver(m44510g());
        m44509f().rvSelect.setAdapter(m44512i);
        if (CollectionKt.isNonBlank(this.manageTagContext.getSelectedTagIds())) {
            List<String> selectedTagIds = this.manageTagContext.getSelectedTagIds();
            ArrayList arrayList = new ArrayList();
            Iterator<T> it2 = selectedTagIds.iterator();
            while (it2.hasNext()) {
                TreeNode<NoteTagBean> findNode = this.manageTagContext.getRootNode().findNode((String) it2.next());
                if (findNode != null) {
                    arrayList.add(findNode);
                }
            }
            if (!arrayList.isEmpty()) {
                m44512i.onlyExpandSelection(arrayList);
                TintRecycleView tintRecycleView = m44509f().rvSelect;
                List<TreeNode<NoteTagBean>> items = m44512i().getItems();
                first = CollectionsKt___CollectionsKt.first((List<? extends Object>) arrayList);
                tintRecycleView.smoothScrollToPosition(Math.max(items.indexOf(first), 0));
            }
        }
        final SearchTagAdapter m44511h = m44511h();
        m44509f().rvSearch.setAdapter(m44511h);
        ItemClickUtilsKt.setOnDebouncedItemClick$default(m44511h, 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.rem
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SelectImportTagDialog.m44508n(SearchTagAdapter.this, this, baseQuickAdapter, view, i);
            }
        }, 1, null);
        TouchModeMaxLengthInputTextEdit touchModeMaxLengthInputTextEdit = m44509f().tieName;
        Intrinsics.checkNotNull(touchModeMaxLengthInputTextEdit);
        EditextExtKt.addInputFilter(touchModeMaxLengthInputTextEdit, new CreateTagInputFilter());
        touchModeMaxLengthInputTextEdit.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectImportTagDialog$initView$lambda$8$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
                SelectImportTagDialog.this.m44515o(String.valueOf(text));
            }
        });
        m44516p();
    }

    /* renamed from: o */
    public final void m44515o(final String title) {
        if (title.length() == 0) {
            m44517q(false);
        } else {
            m44511h().submitList(TreeNode.findNodes$default(this.manageTagContext.getRootNode(), new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectImportTagDialog$search$nodes$1
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
            m44517q(true);
        }
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063298, this, savedInstanceState);
    }

    /* renamed from: p */
    public final void m44516p() {
    }

    /* renamed from: q */
    public final void m44517q(boolean isSearch) {
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(m44509f().rvSearch, isSearch);
    }

    /* renamed from: r */
    public final void m44518r() {
        m44509f().tieName.setText("");
    }
}
