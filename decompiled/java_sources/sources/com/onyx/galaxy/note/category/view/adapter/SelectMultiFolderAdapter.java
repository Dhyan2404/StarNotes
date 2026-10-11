package com.onyx.galaxy.note.category.view.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.data.DelegatedValueProvider;
import com.onyx.android.sdk.base.data.NewTreeKt;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.adapter.SelectMultiFolderAdapter;
import com.onyx.galaxy.note.common.data.ManageFolderContext;
import com.onyx.galaxy.note.databinding.ItemSelectMultiFolderBinding;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 ,2\u001c\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004\u0012\b\u0012\u00060\u0005R\u00020\u00000\u0001:\u0002,-B1\u0012\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00140\u001b\u0012\u0006\u0010$\u001a\u00020!\u0012\u0012\b\u0002\u0010)\u001a\f\u0012\u0004\u0012\u00020\u00100%j\u0002`&¢\u0006\u0004\b*\u0010+J$\u0010\f\u001a\u00060\u0005R\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0014J2\u0010\u0011\u001a\u00020\u00102\n\u0010\r\u001a\u00060\u0005R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\n2\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\u0004\u0018\u0001`\u0004H\u0014J\u0006\u0010\u0012\u001a\u00020\u0010J\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013J\u0006\u0010\u0017\u001a\u00020\u0016J\u0006\u0010\u0018\u001a\u00020\u0016J\u001a\u0010\u001a\u001a\u00020\u00102\u0010\u0010\u0019\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0002R\u001d\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00140\u001b8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u001e\u0010)\u001a\f\u0012\u0004\u0012\u00020\u00100%j\u0002`&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006."}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", "Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter$ViewHolder;", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "holder", "position", "item", "", "onBindViewHolder", "submitTreeNodes", "", "", "getAllFolderIds", "", "isAllSelected", "isNothingSelected", "node", "p", "", "r", "Ljava/util/List;", "getSelectedFolderIds", "()Ljava/util/List;", "selectedFolderIds", "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "s", "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "manageFolderContext", "Lkotlin/Function0;", "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;", "t", "Lkotlin/jvm/functions/Function0;", "selectionChangedCallback", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Lcom/onyx/galaxy/note/common/data/ManageFolderContext;Lkotlin/jvm/functions/Function0;)V", "Companion", "ViewHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectMultiFolderAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectMultiFolderAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,119:1\n256#2,2:120\n1549#3:122\n1620#3,3:123\n97#4:126\n*S KotlinDebug\n*F\n+ 1 SelectMultiFolderAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter\n*L\n58#1:120,2\n106#1:122\n106#1:123,3\n32#1:126\n*E\n"})
/* loaded from: classes9.dex */
public final class SelectMultiFolderAdapter extends BaseQuickAdapter<TreeNode<NoteModelBean>, ViewHolder> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: u */
    @NotNull
    public static final String f55308u = "";

    /* renamed from: v */
    @NotNull
    public static final DelegatedValueProvider<Companion, String> f55309v = new DelegatedValueProvider() { // from class: com.onyx.galaxy.note.category.view.adapter.SelectMultiFolderAdapter$special$$inlined$delegate$1
        @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
        public RESULT getValue(CONTEXT context, @NotNull KProperty<?> kProperty) {
            return (RESULT) DelegatedValueProvider.DefaultImpls.getValue(this, context, kProperty);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
        public final String provideValue(CONTEXT context) {
            return ResManager.INSTANCE.getStringSafely(C10651R.string.no_classify);
        }
    };

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final List<String> selectedFolderIds;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final ManageFolderContext manageFolderContext;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Function0<Unit> selectionChangedCallback;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\b\u0010\u0006¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter$Companion;", "", "()V", "UNCLASSIFIED_FOLDER_ID", "", "getUNCLASSIFIED_FOLDER_ID", "()Ljava/lang/String;", "UNCLASSIFIED_FOLDER_NAME", "getUNCLASSIFIED_FOLDER_NAME", "UNCLASSIFIED_FOLDER_NAME$delegate", "Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {

        /* renamed from: a */
        public static final /* synthetic */ KProperty<Object>[] f55313a = {Reflection.property1(new PropertyReference1Impl(Companion.class, "UNCLASSIFIED_FOLDER_NAME", "getUNCLASSIFIED_FOLDER_NAME()Ljava/lang/String;", 0))};

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getUNCLASSIFIED_FOLDER_ID() {
            return SelectMultiFolderAdapter.f55308u;
        }

        @NotNull
        public final String getUNCLASSIFIED_FOLDER_NAME() {
            return (String) SelectMultiFolderAdapter.f55309v.getValue(this, f55313a[0]);
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemSelectMultiFolderBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemSelectMultiFolderBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemSelectMultiFolderBinding;", "binding", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter;Lcom/onyx/galaxy/note/databinding/ItemSelectMultiFolderBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public final class ViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemSelectMultiFolderBinding binding;

        /* renamed from: I */
        public final /* synthetic */ SelectMultiFolderAdapter f55315I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(@NotNull SelectMultiFolderAdapter selectMultiFolderAdapter, ItemSelectMultiFolderBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f55315I = selectMultiFolderAdapter;
            this.binding = binding;
        }

        @NotNull
        public final ItemSelectMultiFolderBinding getBinding() {
            return this.binding;
        }
    }

    public /* synthetic */ SelectMultiFolderAdapter(List list, ManageFolderContext manageFolderContext, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, manageFolderContext, (i & 4) != 0 ? new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.view.adapter.SelectMultiFolderAdapter.1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        } : function0);
    }

    /* renamed from: n */
    public static final void m44194n(SelectMultiFolderAdapter this$0, TreeNode treeNode, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44196p(treeNode);
    }

    /* renamed from: o */
    public static final void m44195o(boolean z, SelectMultiFolderAdapter this$0, String id, int i, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(id, "$id");
        if (z) {
            this$0.selectedFolderIds.remove(id);
        } else {
            CollectionKt.addIfNotContains(this$0.selectedFolderIds, id);
        }
        this$0.notifyItemChanged(i);
        this$0.selectionChangedCallback.invoke();
    }

    @NotNull
    public final List<String> getAllFolderIds() {
        int collectionSizeOrDefault;
        List<TreeNode<NoteModelBean>> findChildrenNodes = this.manageFolderContext.getRootNode().findChildrenNodes(NewTreeKt.STRATEGY_DEPTH_FIRST);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(findChildrenNodes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = findChildrenNodes.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NoteModelBean) ((TreeNode) it2.next()).getData()).getUniqueId());
        }
        return arrayList;
    }

    @NotNull
    public final List<String> getSelectedFolderIds() {
        return this.selectedFolderIds;
    }

    public final boolean isAllSelected() {
        return this.selectedFolderIds.containsAll(getAllFolderIds()) && this.selectedFolderIds.contains(f55308u);
    }

    public final boolean isNothingSelected() {
        return this.selectedFolderIds.isEmpty();
    }

    /* renamed from: p */
    public final void m44196p(TreeNode<NoteModelBean> node) {
        node.toggleExpand();
        submitTreeNodes();
    }

    public final void submitTreeNodes() {
        submitList(TreeNode.findNodes$default(this.manageFolderContext.getRootNode(), new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.adapter.SelectMultiFolderAdapter$submitTreeNodes$visibleNodes$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.isParentAllExpand() && !it2.isRootNode());
            }
        }, null, NewTreeKt.STRATEGY_DEPTH_FIRST, 2, null));
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull ViewHolder holder, final int position, @Nullable final TreeNode<NoteModelBean> item) {
        Drawable drawable;
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        TintTextView tintTextView = holder.getBinding().folderNameText;
        String title = item.getData().getTitle();
        if (title == null) {
            title = "";
        }
        tintTextView.setText(title);
        holder.getBinding().folderIconMask.setImageTintList(item.getData().getIconColorStateList());
        boolean z = item.getChildCount() > 0;
        TintImageView expandCollapseButton = holder.getBinding().expandCollapseButton;
        Intrinsics.checkNotNullExpressionValue(expandCollapseButton, "expandCollapseButton");
        expandCollapseButton.setVisibility(z ? 0 : 8);
        if (item.getExpand()) {
            drawable = ContextCompat.getDrawable(getContext(), C10651R.drawable.ic_arrow_down);
        } else {
            drawable = ContextCompat.getDrawable(getContext(), C10651R.drawable.ic_arrow_right);
        }
        holder.getBinding().expandCollapseButton.setImageDrawable(drawable);
        final String uniqueId = item.getData().getUniqueId();
        final boolean contains = this.selectedFolderIds.contains(uniqueId);
        holder.getBinding().selectButton.setSelected(contains);
        final int levelToRoot = (item.levelToRoot() - 1) * ((int) ResManager.INSTANCE.getDimension(C10651R.dimen.tree_node_item_indent));
        TintImageView folderIcon = holder.getBinding().folderIcon;
        Intrinsics.checkNotNullExpressionValue(folderIcon, "folderIcon");
        ViewKt.setLayoutMargin(folderIcon, new Function1<ViewGroup.MarginLayoutParams, Unit>() { // from class: com.onyx.galaxy.note.category.view.adapter.SelectMultiFolderAdapter$onBindViewHolder$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.MarginLayoutParams marginLayoutParams) {
                invoke2(marginLayoutParams);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ViewGroup.MarginLayoutParams setLayoutMargin) {
                Intrinsics.checkNotNullParameter(setLayoutMargin, "$this$setLayoutMargin");
                setLayoutMargin.leftMargin = levelToRoot;
            }
        });
        TintImageView folderIconMask = holder.getBinding().folderIconMask;
        Intrinsics.checkNotNullExpressionValue(folderIconMask, "folderIconMask");
        ViewKt.setLayoutMargin(folderIconMask, new Function1<ViewGroup.MarginLayoutParams, Unit>() { // from class: com.onyx.galaxy.note.category.view.adapter.SelectMultiFolderAdapter$onBindViewHolder$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.MarginLayoutParams marginLayoutParams) {
                invoke2(marginLayoutParams);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ViewGroup.MarginLayoutParams setLayoutMargin) {
                Intrinsics.checkNotNullParameter(setLayoutMargin, "$this$setLayoutMargin");
                setLayoutMargin.leftMargin = levelToRoot;
            }
        });
        TintImageView expandCollapseButton2 = holder.getBinding().expandCollapseButton;
        Intrinsics.checkNotNullExpressionValue(expandCollapseButton2, "expandCollapseButton");
        com.onyx.android.sdk.extension.ViewKt.click$default(expandCollapseButton2, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.tem
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectMultiFolderAdapter.m44194n(SelectMultiFolderAdapter.this, item, view);
            }
        }, 1, null);
        TintImageView selectButton = holder.getBinding().selectButton;
        Intrinsics.checkNotNullExpressionValue(selectButton, "selectButton");
        com.onyx.android.sdk.extension.ViewKt.click$default(selectButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.uem
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectMultiFolderAdapter.m44195o(contains, this, uniqueId, position, view);
            }
        }, 1, null);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public ViewHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemSelectMultiFolderBinding inflate = ItemSelectMultiFolderBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new ViewHolder(this, inflate);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectMultiFolderAdapter(@NotNull List<String> selectedFolderIds, @NotNull ManageFolderContext manageFolderContext, @NotNull Function0<Unit> selectionChangedCallback) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(selectedFolderIds, "selectedFolderIds");
        Intrinsics.checkNotNullParameter(manageFolderContext, "manageFolderContext");
        Intrinsics.checkNotNullParameter(selectionChangedCallback, "selectionChangedCallback");
        this.selectedFolderIds = selectedFolderIds;
        this.manageFolderContext = manageFolderContext;
        this.selectionChangedCallback = selectionChangedCallback;
    }
}
