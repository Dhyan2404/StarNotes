package com.onyx.galaxy.note.category.view.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.data.NewTreeKt;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.DeleteTagAction;
import com.onyx.galaxy.note.category.view.adapter.ManageTagAdapter;
import com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback;
import com.onyx.galaxy.note.common.data.ManageTagContext;
import com.onyx.galaxy.note.databinding.ItemManageTagBinding;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 -2\u001c\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004\u0012\b\u0012\u00060\u0005R\u00020\u00000\u00012\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u0006:\u0002-.B\u000f\u0012\u0006\u0010'\u001a\u00020\"¢\u0006\u0004\b+\u0010,J$\u0010\r\u001a\u00060\u0005R\u00020\u00002\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0014J2\u0010\u0012\u001a\u00020\u00112\n\u0010\u000e\u001a\u00060\u0005R\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000b2\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\u0004\u0018\u0001`\u0004H\u0014J \u0010\u0016\u001a\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u000e\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u000bJ\u0006\u0010\u0019\u001a\u00020\u0011J\u0006\u0010\u001a\u001a\u00020\u0011J\u0018\u0010\u001d\u001a\u00020\u00112\u0010\b\u0002\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u001bJ\"\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000b2\u0010\u0010\u001e\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0003J\u001a\u0010 \u001a\u00020\u00112\u0010\u0010\u001e\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0003J\u001a\u0010!\u001a\u00020\u00112\u0010\u0010\u001e\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0002R\u0017\u0010'\u001a\u00020\"8\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u001e\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006/"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "Lcom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter$VH;", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "holder", "position", "item", "", "onBindViewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "viewHolder", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;", "getDragItem", "pos", "collapseCascadeOnDrag", "initList", "submitTreeList", "Lkotlin/Function0;", "callback", "setRemoveCallback", "node", "p", "q", "u", "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "r", "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "getManageTagContext", "()Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "manageTagContext", "s", "Lkotlin/jvm/functions/Function0;", "removeCallback", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/common/data/ManageTagContext;)V", "Companion", "VH", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nManageTagAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManageTagAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,182:1\n256#2,2:183\n1855#3,2:185\n1549#3:187\n1620#3,3:188\n*S KotlinDebug\n*F\n+ 1 ManageTagAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter\n*L\n92#1:183,2\n126#1:185,2\n156#1:187\n156#1:188,3\n*E\n"})
/* loaded from: classes9.dex */
public final class ManageTagAdapter extends BaseQuickAdapter<TreeNode<NoteTagBean>, C11386VH> implements DragTouchCallback.DragAdapter<TreeNode<NoteTagBean>> {

    /* renamed from: t */
    public static final float f55168t = 0.9f;

    /* renamed from: u */
    public static final float f55169u = 1.0f;

    /* renamed from: v */
    public static final long f55170v = 100;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final ManageTagContext manageTagContext;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public Function0<Unit> removeCallback;

    @Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u00012\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u00050\u0002B\u0019\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u000e¢\u0006\u0004\b\u0016\u0010\u0017J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0012\u0010\u000b\u001a\f\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u0005H\u0016J\u001a\u0010\r\u001a\u00020\t2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00012\u0006\u0010\f\u001a\u00020\u0007H\u0016R\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter$VH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "holder", "", "isCurrentlyActive", "", "showDragState", "getData", "show", "showMergePreview", "Lcom/onyx/galaxy/note/databinding/ItemManageTagBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemManageTagBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemManageTagBinding;", "binding", "Landroid/view/ViewGroup;", "parent", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemManageTagBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nManageTagAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManageTagAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter$VH\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,182:1\n256#2,2:183\n*S KotlinDebug\n*F\n+ 1 ManageTagAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter$VH\n*L\n63#1:183,2\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.view.adapter.ManageTagAdapter$VH */
    /* loaded from: classes9.dex */
    public final class C11386VH extends RecyclerView.ViewHolder implements DragTouchCallback.DragItem<TreeNode<NoteTagBean>> {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemManageTagBinding binding;

        /* renamed from: I */
        public final /* synthetic */ ManageTagAdapter f55174I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11386VH(@NotNull ManageTagAdapter manageTagAdapter, @NotNull ViewGroup parent, ItemManageTagBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f55174I = manageTagAdapter;
            this.binding = binding;
        }

        @NotNull
        public final ItemManageTagBinding getBinding() {
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
        public TreeNode<NoteTagBean> getData() {
            Object tag = this.itemView.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteTagBean>{ com.onyx.android.sdk.replicator.note.utils.NoteTagNodeKt.NoteTagNode }");
            return (TreeNode) tag;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ C11386VH(com.onyx.galaxy.note.category.view.adapter.ManageTagAdapter r1, android.view.ViewGroup r2, com.onyx.galaxy.note.databinding.ItemManageTagBinding r3, int r4, kotlin.jvm.internal.DefaultConstructorMarker r5) {
            /*
                r0 = this;
                r4 = r4 & 2
                if (r4 == 0) goto L16
                android.content.Context r3 = r2.getContext()
                android.view.LayoutInflater r3 = android.view.LayoutInflater.from(r3)
                r4 = 0
                com.onyx.galaxy.note.databinding.ItemManageTagBinding r3 = com.onyx.galaxy.note.databinding.ItemManageTagBinding.inflate(r3, r2, r4)
                java.lang.String r4 = "inflate(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            L16:
                r0.<init>(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.ManageTagAdapter.C11386VH.<init>(com.onyx.galaxy.note.category.view.adapter.ManageTagAdapter, android.view.ViewGroup, com.onyx.galaxy.note.databinding.ItemManageTagBinding, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.view.adapter.ManageTagAdapter$a */
    /* loaded from: classes9.dex */
    public static final class C11387a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ TreeNode<NoteTagBean> f55176f;

        public C11387a(TreeNode<NoteTagBean> treeNode) {
            this.f55176f = treeNode;
        }

        /* renamed from: a */
        public final void m44066a(boolean z) {
            if (z) {
                ManageTagAdapter.this.m44065u(this.f55176f);
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m44066a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ManageTagAdapter(@NotNull ManageTagContext manageTagContext) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(manageTagContext, "manageTagContext");
        this.manageTagContext = manageTagContext;
    }

    /* renamed from: r */
    public static final void m44059r(ManageTagAdapter this$0, TreeNode treeNode, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44064q(treeNode);
    }

    /* renamed from: s */
    public static final void m44060s(ManageTagAdapter this$0, int i, TreeNode treeNode, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44063p(i, treeNode);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void setRemoveCallback$default(ManageTagAdapter manageTagAdapter, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            function0 = null;
        }
        manageTagAdapter.setRemoveCallback(function0);
    }

    /* renamed from: t */
    public static final void m44061t(ManageTagAdapter this$0, int i, TreeNode treeNode, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44063p(i, treeNode);
    }

    /* renamed from: v */
    public static final void m44062v(ManageTagAdapter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.submitTreeList();
    }

    public final void collapseCascadeOnDrag(int pos) {
        TreeNode<NoteTagBean> item = getItem(pos);
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
    public DragTouchCallback.DragItem<TreeNode<NoteTagBean>> getDragItem(@NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        return (DragTouchCallback.DragItem) viewHolder;
    }

    @NotNull
    public final ManageTagContext getManageTagContext() {
        return this.manageTagContext;
    }

    public final void initList() {
        submitTreeList();
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: p */
    public final void m44063p(int position, TreeNode<NoteTagBean> node) {
        if (node.hasChild()) {
            node.toggleExpand();
            submitTreeList();
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: q */
    public final void m44064q(TreeNode<NoteTagBean> node) {
        List mutableListOf;
        int collectionSizeOrDefault;
        String content = node.getData().getContent();
        List<TreeNode<NoteTagBean>> findChildrenNodes = node.findChildrenNodes();
        int size = findChildrenNodes.size();
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(node.getData().getUniqueId());
        List<TreeNode<NoteTagBean>> list = findChildrenNodes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NoteTagBean) ((TreeNode) it2.next()).getData()).getUniqueId());
        }
        mutableListOf.addAll(arrayList);
        new DeleteTagAction(getContext(), content, node.getData(), size, mutableListOf).create().subscribe(new C11387a(node));
    }

    public final void setRemoveCallback(@Nullable Function0<Unit> callback) {
        this.removeCallback = callback;
    }

    public final void submitTreeList() {
        List list;
        list = CollectionsKt___CollectionsKt.toList(TreeNode.findNodes$default(this.manageTagContext.getRootNode(), new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.adapter.ManageTagAdapter$submitTreeList$treeList$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteTagBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.isParentAllExpand() && !it2.isRootNode());
            }
        }, null, NewTreeKt.STRATEGY_DEPTH_FIRST, 2, null));
        submitList(list);
    }

    /* renamed from: u */
    public final void m44065u(TreeNode<NoteTagBean> node) {
        final String parentId = node.getData().getParentId();
        TreeNode<NoteTagBean> rootNode = parentId == null ? this.manageTagContext.getRootNode() : this.manageTagContext.getRootNode().findNode(new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.adapter.ManageTagAdapter$removeNode$parentNode$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteTagBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getData().getUniqueId(), parentId));
            }
        });
        node.setExpand(false);
        if (rootNode != null) {
            rootNode.removeChild(node);
        }
        getRecyclerView().postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.w7j
            @Override // java.lang.Runnable
            public final void run() {
                ManageTagAdapter.m44062v(ManageTagAdapter.this);
            }
        }, 100L);
        Function0<Unit> function0 = this.removeCallback;
        if (function0 != null) {
            function0.invoke();
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull C11386VH holder, final int position, @Nullable final TreeNode<NoteTagBean> item) {
        Drawable drawable;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNull(item);
        if (item.getExpand()) {
            drawable = ContextCompat.getDrawable(getContext(), C10651R.drawable.icon_tree_arrow);
        } else {
            drawable = ContextCompat.getDrawable(getContext(), C10651R.drawable.ic_arrow_right);
        }
        int levelToRoot = (item.levelToRoot() - 1) * ((int) ResManager.INSTANCE.getDimension(C10651R.dimen.tree_node_item_indent));
        boolean z = item.getChildCount() > 0;
        ItemManageTagBinding binding = holder.getBinding();
        binding.tvItemName.setText(item.getData().getContent());
        binding.ivNoteTreeBottom.setImageTintList(item.getData().getIconColorStateList());
        TintImageView ivNoteTreeExpand = binding.ivNoteTreeExpand;
        Intrinsics.checkNotNullExpressionValue(ivNoteTreeExpand, "ivNoteTreeExpand");
        ivNoteTreeExpand.setVisibility(z ? 0 : 8);
        binding.ivNoteTreeExpand.setImageDrawable(drawable);
        ConstraintLayout constraintLayout = binding.clsContent;
        constraintLayout.setPaddingRelative(levelToRoot, constraintLayout.getPaddingTop(), binding.clsContent.getPaddingEnd(), binding.clsContent.getPaddingBottom());
        binding.tvRemove.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.t7j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ManageTagAdapter.m44059r(ManageTagAdapter.this, item, view);
            }
        });
        binding.clsContent.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.u7j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ManageTagAdapter.m44060s(ManageTagAdapter.this, position, item, view);
            }
        });
        binding.ivNoteTreeExpand.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.v7j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ManageTagAdapter.m44061t(ManageTagAdapter.this, position, item, view);
            }
        });
        holder.itemView.setTag(item);
        holder.itemView.setTag(C10651R.id.tag_key_pos, Integer.valueOf(position));
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public C11386VH onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new C11386VH(this, parent, null, 2, null);
    }
}
