package com.onyx.galaxy.note.category.view.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.NewTreeKt;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.adapter.SelectFolderAdapter;
import com.onyx.galaxy.note.common.data.ManageFolderContext;
import com.onyx.galaxy.note.databinding.ItemSelectFolderBinding;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\n\u0018\u00002\u001c\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004\u0012\b\u0012\u00060\u0005R\u00020\u00000\u0001:\u0001+B\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u001b¢\u0006\u0004\b)\u0010*J$\u0010\f\u001a\u00060\u0005R\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0014J2\u0010\u0011\u001a\u00020\u00102\n\u0010\r\u001a\u00060\u0005R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\n2\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\u0004\u0018\u0001`\u0004H\u0014J\u0006\u0010\u0012\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0010J\u0014\u0010\u0015\u001a\u00020\u00102\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u001a\u0010\u0016\u001a\u00020\u00102\u0010\u0010\u000f\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0007J\u001a\u0010\u0019\u001a\u00020\u00182\u0010\u0010\u0017\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0002J\"\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\n2\u0010\u0010\u0017\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0003R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR$\u0010!\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\u0004\u0018\u0001`\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R$\u0010%\u001a\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010(\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006,"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SelectFolderAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", "Lcom/onyx/galaxy/note/category/view/adapter/SelectFolderAdapter$VH;", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "holder", "position", "item", "", "onBindViewHolder", "initList", "submitTreeList", "selectNode", "onlyExpandSelection", "handleSelect", "node", "", "m", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "r", "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "manageFolderContext", "s", "Lcom/onyx/android/sdk/base/data/TreeNode;", "oldParentNode", "", "t", "Ljava/util/List;", "opFolderNodes", "u", "I", "opFoldersMaxDepth", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/common/data/ManageFolderContext;)V", "VH", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectFolderAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectFolderAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SelectFolderAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,191:1\n256#2,2:192\n277#2,2:194\n1855#3:196\n288#3,2:197\n1856#3:199\n288#3,2:200\n766#3:202\n857#3,2:203\n1855#3,2:205\n1855#3:207\n1855#3,2:208\n1856#3:210\n1855#3,2:211\n*S KotlinDebug\n*F\n+ 1 SelectFolderAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SelectFolderAdapter\n*L\n80#1:192,2\n94#1:194,2\n120#1:196\n121#1:197,2\n120#1:199\n133#1:200,2\n138#1:202\n138#1:203,2\n142#1:205,2\n157#1:207\n158#1:208,2\n157#1:210\n162#1:211,2\n*E\n"})
/* loaded from: classes9.dex */
public final class SelectFolderAdapter extends BaseQuickAdapter<TreeNode<NoteModelBean>, C11408VH> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final ManageFolderContext manageFolderContext;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public TreeNode<NoteModelBean> oldParentNode;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final List<TreeNode<NoteModelBean>> opFolderNodes;

    /* renamed from: u, reason: from kotlin metadata */
    public int opFoldersMaxDepth;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectFolderAdapter(@NotNull ManageFolderContext manageFolderContext) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(manageFolderContext, "manageFolderContext");
        this.manageFolderContext = manageFolderContext;
        manageFolderContext.setSelectNoteId(manageFolderContext.getOldParentId());
        this.opFolderNodes = new ArrayList();
        this.opFoldersMaxDepth = 1;
    }

    /* renamed from: o */
    public static final void m44189o(SelectFolderAdapter this$0, int i, TreeNode treeNode, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44191n(i, treeNode);
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void handleSelect(@NotNull TreeNode<NoteModelBean> item) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (m44190m(item)) {
            String uniqueId = item.getData().getUniqueId();
            ManageFolderContext manageFolderContext = this.manageFolderContext;
            if (Intrinsics.areEqual(uniqueId, manageFolderContext.getSelectNoteId())) {
                uniqueId = null;
            }
            manageFolderContext.setSelectNoteId(uniqueId);
            notifyDataSetChanged();
        }
    }

    public final void initList() {
        Object obj;
        Iterator it2 = TreeNode.flatten$default(this.manageFolderContext.getRootNode(), null, 1, null).iterator();
        while (true) {
            if (it2.hasNext()) {
                obj = it2.next();
                if (Intrinsics.areEqual(((NoteModelBean) ((TreeNode) obj).getData()).getUniqueId(), this.manageFolderContext.getOldParentId())) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        TreeNode<NoteModelBean> treeNode = (TreeNode) obj;
        if (treeNode == null) {
            treeNode = this.manageFolderContext.getRootNode();
        }
        this.oldParentNode = treeNode;
        this.opFolderNodes.clear();
        List<TreeNode<NoteModelBean>> list = this.opFolderNodes;
        TreeNode<NoteModelBean> treeNode2 = this.oldParentNode;
        Intrinsics.checkNotNull(treeNode2);
        List flatten$default = TreeNode.flatten$default(treeNode2, null, 1, null);
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : flatten$default) {
            if (this.manageFolderContext.getOpNoteIds().contains(((NoteModelBean) ((TreeNode) obj2).getData()).getUniqueId())) {
                arrayList.add(obj2);
            }
        }
        list.addAll(arrayList);
        Iterator<T> it3 = this.opFolderNodes.iterator();
        while (it3.hasNext()) {
            TreeNode treeNode3 = (TreeNode) it3.next();
            this.opFoldersMaxDepth = Math.max(this.opFoldersMaxDepth, treeNode3.getMaxDepth(treeNode3));
        }
        submitTreeList();
    }

    /* renamed from: m */
    public final boolean m44190m(TreeNode<NoteModelBean> node) {
        if (this.opFolderNodes.isEmpty()) {
            return true;
        }
        String uniqueId = node.getData().getUniqueId();
        if (this.manageFolderContext.getOpNoteIds().contains(uniqueId)) {
            return false;
        }
        Iterator<T> it2 = this.opFolderNodes.iterator();
        while (it2.hasNext()) {
            Object obj = null;
            Iterator it3 = TreeNode.flatten$default((TreeNode) it2.next(), null, 1, null).iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                Object next = it3.next();
                if (Intrinsics.areEqual(((TreeNode) next).getId(), uniqueId)) {
                    obj = next;
                    break;
                }
            }
            if (((TreeNode) obj) != null) {
                return false;
            }
        }
        return node.levelToRoot() + this.opFoldersMaxDepth <= 6;
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: n */
    public final void m44191n(int position, TreeNode<NoteModelBean> node) {
        if (node.hasChild()) {
            node.toggleExpand();
            submitTreeList();
        }
    }

    public final void onlyExpandSelection(@NotNull TreeNode<NoteModelBean> selectNode) {
        Intrinsics.checkNotNullParameter(selectNode, "selectNode");
        Iterator<T> it2 = getItems().iterator();
        while (it2.hasNext()) {
            Iterator it3 = ((TreeNode) it2.next()).getPathNoteTreeNodes().iterator();
            while (it3.hasNext()) {
                ((TreeNode) it3.next()).collapse();
            }
        }
        Iterator<T> it4 = selectNode.getPathNoteTreeNodes().iterator();
        while (it4.hasNext()) {
            TreeNode treeNode = (TreeNode) it4.next();
            if (!Intrinsics.areEqual(((NoteModelBean) treeNode.getData()).getUniqueId(), selectNode.getData().getUniqueId())) {
                treeNode.expand();
            }
        }
        submitTreeList();
    }

    public final void submitTreeList() {
        List list;
        list = CollectionsKt___CollectionsKt.toList(TreeNode.findNodes$default(this.manageFolderContext.getRootNode(), new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.adapter.SelectFolderAdapter$submitTreeList$treeList$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.isParentAllExpand() && !it2.isRootNode());
            }
        }, null, NewTreeKt.STRATEGY_DEPTH_FIRST, 2, null));
        submitList(list);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull C11408VH holder, final int position, @Nullable final TreeNode<NoteModelBean> item) {
        Drawable drawable;
        int i;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNull(item);
        String uniqueId = item.getData().getUniqueId();
        if (item.getExpand()) {
            drawable = ContextCompat.getDrawable(getContext(), C10651R.drawable.ic_arrow_down);
        } else {
            drawable = ContextCompat.getDrawable(getContext(), C10651R.drawable.ic_arrow_right);
        }
        boolean areEqual = Intrinsics.areEqual(uniqueId, this.manageFolderContext.getSelectNoteId());
        int levelToRoot = (item.levelToRoot() - 1) * ((int) ResManager.INSTANCE.getDimension(C10651R.dimen.tree_node_item_indent));
        boolean z = item.getChildCount() > 0;
        ItemSelectFolderBinding binding = holder.getBinding();
        binding.tvItemName.setText(item.getData().getTitle());
        binding.ivNoteTreeFolderBottom.setImageTintList(item.getData().getIconColorStateList());
        TintImageView ivNoteTreeExpand = binding.ivNoteTreeExpand;
        Intrinsics.checkNotNullExpressionValue(ivNoteTreeExpand, "ivNoteTreeExpand");
        ivNoteTreeExpand.setVisibility(z ? 0 : 8);
        binding.ivNoteTreeExpand.setImageDrawable(drawable);
        binding.ivNoteTreeExpand.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.aem
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectFolderAdapter.m44189o(SelectFolderAdapter.this, position, item, view);
            }
        });
        TintConstraintLayout tintConstraintLayout = binding.clsContent;
        tintConstraintLayout.setPaddingRelative(levelToRoot, tintConstraintLayout.getPaddingTop(), binding.clsContent.getPaddingEnd(), binding.clsContent.getPaddingBottom());
        binding.clsContent.setSelected(areEqual);
        TintImageView ivCheck = binding.ivCheck;
        Intrinsics.checkNotNullExpressionValue(ivCheck, "ivCheck");
        ivCheck.setVisibility(areEqual ^ true ? 4 : 0);
        if (m44190m(item)) {
            i = C7996R.color.theme_text_color_01;
        } else {
            i = C7996R.color.theme_text_color_02;
        }
        int colorById = ThemeUtils.getColorById(i);
        binding.tvItemName.setTextColor(colorById);
        binding.ivNoteTreeFolder.setImageTintList(ColorStateList.valueOf(colorById));
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public C11408VH onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new C11408VH(this, parent, null, 2, null);
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SelectFolderAdapter$VH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemSelectFolderBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemSelectFolderBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemSelectFolderBinding;", "binding", "Landroid/view/ViewGroup;", "parent", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/view/adapter/SelectFolderAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemSelectFolderBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* renamed from: com.onyx.galaxy.note.category.view.adapter.SelectFolderAdapter$VH */
    /* loaded from: classes9.dex */
    public final class C11408VH extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemSelectFolderBinding binding;

        /* renamed from: I */
        public final /* synthetic */ SelectFolderAdapter f55307I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11408VH(@NotNull SelectFolderAdapter selectFolderAdapter, @NotNull ViewGroup parent, ItemSelectFolderBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f55307I = selectFolderAdapter;
            this.binding = binding;
        }

        @NotNull
        public final ItemSelectFolderBinding getBinding() {
            return this.binding;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ C11408VH(com.onyx.galaxy.note.category.view.adapter.SelectFolderAdapter r1, android.view.ViewGroup r2, com.onyx.galaxy.note.databinding.ItemSelectFolderBinding r3, int r4, kotlin.jvm.internal.DefaultConstructorMarker r5) {
            /*
                r0 = this;
                r4 = r4 & 2
                if (r4 == 0) goto L16
                android.content.Context r3 = r2.getContext()
                android.view.LayoutInflater r3 = android.view.LayoutInflater.from(r3)
                r4 = 0
                com.onyx.galaxy.note.databinding.ItemSelectFolderBinding r3 = com.onyx.galaxy.note.databinding.ItemSelectFolderBinding.inflate(r3, r2, r4)
                java.lang.String r4 = "inflate(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            L16:
                r0.<init>(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.SelectFolderAdapter.C11408VH.<init>(com.onyx.galaxy.note.category.view.adapter.SelectFolderAdapter, android.view.ViewGroup, com.onyx.galaxy.note.databinding.ItemSelectFolderBinding, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }
}
