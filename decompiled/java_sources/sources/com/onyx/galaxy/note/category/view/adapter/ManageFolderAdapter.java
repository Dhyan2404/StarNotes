package com.onyx.galaxy.note.category.view.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.data.NewTreeKt;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.DeleteFolderAction;
import com.onyx.galaxy.note.category.view.adapter.ManageFolderAdapter;
import com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback;
import com.onyx.galaxy.note.common.data.ManageFolderContext;
import com.onyx.galaxy.note.databinding.ItemManageFolderBinding;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 '2\u001c\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004\u0012\b\u0012\u00060\u0005R\u00020\u00000\u00012\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u0006:\u0002'(B\u000f\u0012\u0006\u0010$\u001a\u00020\u001f¢\u0006\u0004\b%\u0010&J$\u0010\r\u001a\u00060\u0005R\u00020\u00002\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0014J2\u0010\u0012\u001a\u00020\u00112\n\u0010\u000e\u001a\u00060\u0005R\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000b2\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\u0004\u0018\u0001`\u0004H\u0014J \u0010\u0016\u001a\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u000e\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u000bJ\u0006\u0010\u0019\u001a\u00020\u0011J\u0006\u0010\u001a\u001a\u00020\u0011J\u001a\u0010\u001c\u001a\u00020\u00112\u0010\u0010\u001b\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0003J\u001a\u0010\u001d\u001a\u00020\u00112\u0010\u0010\u001b\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0003J\u001a\u0010\u001e\u001a\u00020\u00112\u0010\u0010\u001b\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0002R\u0017\u0010$\u001a\u00020\u001f8\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#¨\u0006)"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", "Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH;", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "holder", "position", "item", "", "onBindViewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "viewHolder", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;", "getDragItem", "pos", "collapseCascadeOnDrag", "initList", "submitTreeList", "node", "p", "q", "u", "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "r", "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "getManageFolderContext", "()Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "manageFolderContext", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/common/data/ManageFolderContext;)V", "Companion", "VH", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nManageFolderAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManageFolderAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,174:1\n256#2,2:175\n1855#3,2:177\n1549#3:179\n1620#3,3:180\n*S KotlinDebug\n*F\n+ 1 ManageFolderAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter\n*L\n94#1:175,2\n123#1:177,2\n152#1:179\n152#1:180,3\n*E\n"})
/* loaded from: classes9.dex */
public final class ManageFolderAdapter extends BaseQuickAdapter<TreeNode<NoteModelBean>, C11384VH> implements DragTouchCallback.DragAdapter<TreeNode<NoteModelBean>> {

    /* renamed from: s */
    public static final float f55160s = 0.9f;

    /* renamed from: t */
    public static final float f55161t = 1.0f;

    /* renamed from: u */
    public static final long f55162u = 100;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final ManageFolderContext manageFolderContext;

    @Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u00012\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u00050\u0002B\u0019\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u000e¢\u0006\u0004\b\u0016\u0010\u0017J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0012\u0010\u000b\u001a\f\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u0005H\u0016J\u001a\u0010\r\u001a\u00020\t2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00012\u0006\u0010\f\u001a\u00020\u0007H\u0016R\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", "holder", "", "isCurrentlyActive", "", "showDragState", "getData", "show", "showMergePreview", "Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;", "binding", "Landroid/view/ViewGroup;", "parent", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nManageFolderAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManageFolderAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,174:1\n256#2,2:175\n*S KotlinDebug\n*F\n+ 1 ManageFolderAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH\n*L\n63#1:175,2\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.view.adapter.ManageFolderAdapter$VH */
    /* loaded from: classes9.dex */
    public final class C11384VH extends RecyclerView.ViewHolder implements DragTouchCallback.DragItem<TreeNode<NoteModelBean>> {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemManageFolderBinding binding;

        /* renamed from: I */
        public final /* synthetic */ ManageFolderAdapter f55165I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11384VH(@NotNull ManageFolderAdapter manageFolderAdapter, @NotNull ViewGroup parent, ItemManageFolderBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f55165I = manageFolderAdapter;
            this.binding = binding;
        }

        @NotNull
        public final ItemManageFolderBinding getBinding() {
            return this.binding;
        }

        @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragItem
        public void showDragState(@NotNull RecyclerView.ViewHolder holder, boolean isCurrentlyActive) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            if (isCurrentlyActive) {
                this.itemView.setAlpha(0.9f);
            } else {
                this.itemView.setAlpha(1.0f);
            }
        }

        @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragItem
        public void showMergePreview(@Nullable RecyclerView.ViewHolder holder, boolean show) {
            View findViewById = this.itemView.findViewById(C10651R.id.v_drag_in);
            Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
            findViewById.setVisibility(show ? 0 : 8);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragItem
        @NotNull
        public TreeNode<NoteModelBean> getData() {
            Object tag = this.itemView.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteModelBean>{ com.onyx.android.sdk.replicator.note.utils.NoteTreeNodeKt.NoteTreeNode }");
            return (TreeNode) tag;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ C11384VH(com.onyx.galaxy.note.category.view.adapter.ManageFolderAdapter r1, android.view.ViewGroup r2, com.onyx.galaxy.note.databinding.ItemManageFolderBinding r3, int r4, kotlin.jvm.internal.DefaultConstructorMarker r5) {
            /*
                r0 = this;
                r4 = r4 & 2
                if (r4 == 0) goto L16
                android.content.Context r3 = r2.getContext()
                android.view.LayoutInflater r3 = android.view.LayoutInflater.from(r3)
                r4 = 0
                com.onyx.galaxy.note.databinding.ItemManageFolderBinding r3 = com.onyx.galaxy.note.databinding.ItemManageFolderBinding.inflate(r3, r2, r4)
                java.lang.String r4 = "inflate(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            L16:
                r0.<init>(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.ManageFolderAdapter.C11384VH.<init>(com.onyx.galaxy.note.category.view.adapter.ManageFolderAdapter, android.view.ViewGroup, com.onyx.galaxy.note.databinding.ItemManageFolderBinding, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.view.adapter.ManageFolderAdapter$a */
    /* loaded from: classes9.dex */
    public static final class C11385a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ TreeNode<NoteModelBean> f55167f;

        public C11385a(TreeNode<NoteModelBean> treeNode) {
            this.f55167f = treeNode;
        }

        /* renamed from: a */
        public final void m44054a(boolean z) {
            if (z) {
                ManageFolderAdapter.this.m44053u(this.f55167f);
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m44054a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ManageFolderAdapter(@NotNull ManageFolderContext manageFolderContext) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(manageFolderContext, "manageFolderContext");
        this.manageFolderContext = manageFolderContext;
    }

    /* renamed from: r */
    public static final void m44047r(ManageFolderAdapter this$0, TreeNode treeNode, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44051p(treeNode);
    }

    /* renamed from: s */
    public static final void m44048s(ManageFolderAdapter this$0, TreeNode treeNode, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44052q(treeNode);
    }

    /* renamed from: t */
    public static final void m44049t(ManageFolderAdapter this$0, TreeNode treeNode, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44051p(treeNode);
    }

    /* renamed from: v */
    public static final void m44050v(ManageFolderAdapter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.submitTreeList();
    }

    public final void collapseCascadeOnDrag(int pos) {
        TreeNode<NoteModelBean> item = getItem(pos);
        if (item != null && item.getExpand()) {
            Iterator<T> it2 = item.findChildrenNodes().iterator();
            while (it2.hasNext()) {
                remove((TreeNode) it2.next());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragAdapter
    @NotNull
    public DragTouchCallback.DragItem<TreeNode<NoteModelBean>> getDragItem(@NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        return (DragTouchCallback.DragItem) viewHolder;
    }

    @NotNull
    public final ManageFolderContext getManageFolderContext() {
        return this.manageFolderContext;
    }

    public final void initList() {
        submitTreeList();
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: p */
    public final void m44051p(TreeNode<NoteModelBean> node) {
        if (node.hasChild()) {
            node.toggleExpand();
            submitTreeList();
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: q */
    public final void m44052q(TreeNode<NoteModelBean> node) {
        List mutableListOf;
        int collectionSizeOrDefault;
        String title = node.getData().getTitle();
        Intrinsics.checkNotNull(title);
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(node.getData().getUniqueId());
        List<TreeNode<NoteModelBean>> findChildrenNodes = node.findChildrenNodes();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(findChildrenNodes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = findChildrenNodes.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NoteModelBean) ((TreeNode) it2.next()).getData()).getUniqueId());
        }
        mutableListOf.addAll(arrayList);
        new DeleteFolderAction(getContext(), title, mutableListOf).create().subscribe(new C11385a(node));
    }

    public final void submitTreeList() {
        List list;
        list = CollectionsKt___CollectionsKt.toList(TreeNode.findNodes$default(this.manageFolderContext.getRootNode(), new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.adapter.ManageFolderAdapter$submitTreeList$treeList$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.isParentAllExpand() && !it2.isRootNode());
            }
        }, null, NewTreeKt.STRATEGY_DEPTH_FIRST, 2, null));
        submitList(list);
    }

    /* renamed from: u */
    public final void m44053u(TreeNode<NoteModelBean> node) {
        final String parentUniqueId = node.getData().getParentUniqueId();
        TreeNode<NoteModelBean> rootNode = parentUniqueId == null ? this.manageFolderContext.getRootNode() : this.manageFolderContext.getRootNode().findNode(new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.adapter.ManageFolderAdapter$removeNode$parentNode$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getData().getUniqueId(), parentUniqueId));
            }
        });
        node.setExpand(false);
        if (rootNode != null) {
            rootNode.removeChild(node);
        }
        getRecyclerView().postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.j7j
            @Override // java.lang.Runnable
            public final void run() {
                ManageFolderAdapter.m44050v(ManageFolderAdapter.this);
            }
        }, 100L);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull C11384VH holder, int position, @Nullable final TreeNode<NoteModelBean> item) {
        Drawable drawable;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNull(item);
        if (item.getExpand()) {
            drawable = ContextCompat.getDrawable(getContext(), C10651R.drawable.ic_arrow_down);
        } else {
            drawable = ContextCompat.getDrawable(getContext(), C10651R.drawable.ic_arrow_right);
        }
        int levelToRoot = (item.levelToRoot() - 1) * ((int) ResManager.INSTANCE.getDimension(C10651R.dimen.tree_node_item_indent));
        boolean z = item.getChildCount() > 0;
        ItemManageFolderBinding binding = holder.getBinding();
        binding.tvItemName.setText(item.getData().getTitle());
        binding.ivNoteTreeFolderBottom.setImageTintList(item.getData().getIconColorStateList());
        TintImageView ivNoteTreeExpand = binding.ivNoteTreeExpand;
        Intrinsics.checkNotNullExpressionValue(ivNoteTreeExpand, "ivNoteTreeExpand");
        ivNoteTreeExpand.setVisibility(z ? 0 : 8);
        binding.ivNoteTreeExpand.setImageDrawable(drawable);
        binding.ivNoteTreeExpand.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.k7j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ManageFolderAdapter.m44047r(ManageFolderAdapter.this, item, view);
            }
        });
        TintConstraintLayout tintConstraintLayout = binding.clsContent;
        tintConstraintLayout.setPaddingRelative(levelToRoot, tintConstraintLayout.getPaddingTop(), binding.clsContent.getPaddingEnd(), binding.clsContent.getPaddingBottom());
        binding.tvRemove.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.l7j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ManageFolderAdapter.m44048s(ManageFolderAdapter.this, item, view);
            }
        });
        binding.clsContent.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.m7j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ManageFolderAdapter.m44049t(ManageFolderAdapter.this, item, view);
            }
        });
        holder.itemView.setTag(item);
        holder.itemView.setTag(C10651R.id.tag_key_pos, Integer.valueOf(position));
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public C11384VH onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new C11384VH(this, parent, null, 2, null);
    }
}
