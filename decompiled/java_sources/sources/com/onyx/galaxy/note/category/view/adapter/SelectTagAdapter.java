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
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.NewTreeKt;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.adapter.SelectTagAdapter;
import com.onyx.galaxy.note.common.data.ManageTagContext;
import com.onyx.galaxy.note.databinding.ItemSelectTagBinding;
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

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\n\u0018\u00002\u001c\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004\u0012\b\u0012\u00060\u0005R\u00020\u00000\u0001:\u0001)B\u000f\u0012\u0006\u0010\u001c\u001a\u00020\u0019¢\u0006\u0004\b'\u0010(J$\u0010\f\u001a\u00060\u0005R\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0014J2\u0010\u0011\u001a\u00020\u00102\n\u0010\r\u001a\u00060\u0005R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\n2\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\u0004\u0018\u0001`\u0004H\u0014J\u0006\u0010\u0012\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0010J\u001a\u0010\u0016\u001a\u00020\u00152\u0010\u0010\u0014\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0002J\u001a\u0010\u0017\u001a\u00020\u00102\u0010\u0010\u000f\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0003J\"\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\n2\u0010\u0010\u0014\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0003R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR$\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\u0004\u0018\u0001`\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR$\u0010#\u001a\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010&\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006*"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter$VH;", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "holder", "position", "item", "", "onBindViewHolder", "initList", "submitTreeList", "node", "", GoogleApiAvailabilityLight.f29016b, "handleSelect", C4921e.f26528e, "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "r", "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "manageTagContext", "s", "Lcom/onyx/android/sdk/base/data/TreeNode;", "oldParentNode", "", "t", "Ljava/util/List;", "opTagNodes", "u", "I", "opTagsMaxDepth", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/common/data/ManageTagContext;)V", "VH", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectTagAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectTagAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,180:1\n256#2,2:181\n277#2,2:183\n1855#3:185\n288#3,2:186\n1856#3:188\n288#3,2:189\n766#3:191\n857#3,2:192\n1855#3,2:194\n*S KotlinDebug\n*F\n+ 1 SelectTagAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter\n*L\n78#1:181,2\n92#1:183,2\n122#1:185\n123#1:186,2\n122#1:188\n135#1:189,2\n140#1:191\n140#1:192,2\n144#1:194,2\n*E\n"})
/* loaded from: classes9.dex */
public final class SelectTagAdapter extends BaseQuickAdapter<TreeNode<NoteTagBean>, C11412VH> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final ManageTagContext manageTagContext;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public TreeNode<NoteTagBean> oldParentNode;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final List<TreeNode<NoteTagBean>> opTagNodes;

    /* renamed from: u, reason: from kotlin metadata */
    public int opTagsMaxDepth;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectTagAdapter(@NotNull ManageTagContext manageTagContext) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(manageTagContext, "manageTagContext");
        this.manageTagContext = manageTagContext;
        manageTagContext.setSelectTagId(manageTagContext.getOldParentId());
        this.opTagNodes = new ArrayList();
        this.opTagsMaxDepth = 1;
    }

    /* renamed from: p */
    public static final void m44213p(SelectTagAdapter this$0, int i, TreeNode treeNode, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44216o(i, treeNode);
    }

    /* renamed from: q */
    public static final void m44214q(SelectTagAdapter this$0, TreeNode treeNode, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.handleSelect(treeNode);
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void handleSelect(TreeNode<NoteTagBean> item) {
        if (m44215n(item)) {
            String uniqueId = item.getData().getUniqueId();
            ManageTagContext manageTagContext = this.manageTagContext;
            if (Intrinsics.areEqual(uniqueId, manageTagContext.getSelectTagId())) {
                uniqueId = null;
            }
            manageTagContext.setSelectTagId(uniqueId);
            notifyDataSetChanged();
        }
    }

    public final void initList() {
        Object obj;
        Iterator it2 = TreeNode.flatten$default(this.manageTagContext.getRootNode(), null, 1, null).iterator();
        while (true) {
            if (it2.hasNext()) {
                obj = it2.next();
                if (Intrinsics.areEqual(((NoteTagBean) ((TreeNode) obj).getData()).getUniqueId(), this.manageTagContext.getOldParentId())) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        TreeNode<NoteTagBean> treeNode = (TreeNode) obj;
        if (treeNode == null) {
            treeNode = this.manageTagContext.getRootNode();
        }
        this.oldParentNode = treeNode;
        this.opTagNodes.clear();
        List<TreeNode<NoteTagBean>> list = this.opTagNodes;
        TreeNode<NoteTagBean> treeNode2 = this.oldParentNode;
        Intrinsics.checkNotNull(treeNode2);
        List flatten$default = TreeNode.flatten$default(treeNode2, null, 1, null);
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : flatten$default) {
            if (this.manageTagContext.getOpTagIds().contains(((NoteTagBean) ((TreeNode) obj2).getData()).getUniqueId())) {
                arrayList.add(obj2);
            }
        }
        list.addAll(arrayList);
        Iterator<T> it3 = this.opTagNodes.iterator();
        while (it3.hasNext()) {
            TreeNode treeNode3 = (TreeNode) it3.next();
            this.opTagsMaxDepth = Math.max(this.opTagsMaxDepth, treeNode3.getMaxDepth(treeNode3));
        }
        submitTreeList();
    }

    /* renamed from: n */
    public final boolean m44215n(TreeNode<NoteTagBean> node) {
        if (this.opTagNodes.isEmpty()) {
            return true;
        }
        String uniqueId = node.getData().getUniqueId();
        if (this.manageTagContext.getOpTagIds().contains(uniqueId)) {
            return false;
        }
        Iterator<T> it2 = this.opTagNodes.iterator();
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
        return node.levelToRoot() + this.opTagsMaxDepth <= 6;
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: o */
    public final void m44216o(int position, TreeNode<NoteTagBean> node) {
        if (node.hasChild()) {
            node.toggleExpand();
            submitTreeList();
        }
    }

    public final void submitTreeList() {
        List list;
        list = CollectionsKt___CollectionsKt.toList(TreeNode.findNodes$default(this.manageTagContext.getRootNode(), new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.adapter.SelectTagAdapter$submitTreeList$treeList$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteTagBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.isParentAllExpand() && !it2.isRootNode());
            }
        }, null, NewTreeKt.STRATEGY_DEPTH_FIRST, 2, null));
        submitList(list);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull C11412VH holder, final int position, @Nullable final TreeNode<NoteTagBean> item) {
        Drawable drawable;
        int i;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNull(item);
        String uniqueId = item.getData().getUniqueId();
        if (item.getExpand()) {
            drawable = ContextCompat.getDrawable(getContext(), C10651R.drawable.icon_tree_arrow);
        } else {
            drawable = ContextCompat.getDrawable(getContext(), C10651R.drawable.ic_arrow_right);
        }
        boolean areEqual = Intrinsics.areEqual(uniqueId, this.manageTagContext.getSelectTagId());
        int levelToRoot = (item.levelToRoot() - 1) * ((int) ResManager.INSTANCE.getDimension(C10651R.dimen.tree_node_item_indent));
        boolean z = item.getChildCount() > 0;
        ItemSelectTagBinding binding = holder.getBinding();
        binding.tvItemName.setText(item.getData().getContent());
        binding.ivNoteTreeBottom.setImageTintList(item.getData().getIconColorStateList());
        TintImageView ivNoteTreeExpand = binding.ivNoteTreeExpand;
        Intrinsics.checkNotNullExpressionValue(ivNoteTreeExpand, "ivNoteTreeExpand");
        ivNoteTreeExpand.setVisibility(z ? 0 : 8);
        binding.ivNoteTreeExpand.setImageDrawable(drawable);
        binding.ivNoteTreeExpand.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.agm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectTagAdapter.m44213p(SelectTagAdapter.this, position, item, view);
            }
        });
        TintConstraintLayout tintConstraintLayout = binding.clsContent;
        tintConstraintLayout.setPaddingRelative(levelToRoot, tintConstraintLayout.getPaddingTop(), binding.clsContent.getPaddingEnd(), binding.clsContent.getPaddingBottom());
        binding.clsContent.setSelected(areEqual);
        TintImageView ivCheck = binding.ivCheck;
        Intrinsics.checkNotNullExpressionValue(ivCheck, "ivCheck");
        ivCheck.setVisibility(areEqual ^ true ? 4 : 0);
        if (m44215n(item)) {
            i = C7996R.color.theme_text_color_01;
        } else {
            i = C7996R.color.theme_text_color_02;
        }
        int colorById = ThemeUtils.getColorById(i);
        binding.tvItemName.setTextColor(colorById);
        binding.ivNoteTreeFolder.setImageTintList(ColorStateList.valueOf(colorById));
        binding.clsContent.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.bgm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectTagAdapter.m44214q(SelectTagAdapter.this, item, view);
            }
        });
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public C11412VH onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new C11412VH(this, parent, null, 2, null);
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter$VH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemSelectTagBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemSelectTagBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemSelectTagBinding;", "binding", "Landroid/view/ViewGroup;", "parent", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemSelectTagBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* renamed from: com.onyx.galaxy.note.category.view.adapter.SelectTagAdapter$VH */
    /* loaded from: classes9.dex */
    public final class C11412VH extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemSelectTagBinding binding;

        /* renamed from: I */
        public final /* synthetic */ SelectTagAdapter f55340I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11412VH(@NotNull SelectTagAdapter selectTagAdapter, @NotNull ViewGroup parent, ItemSelectTagBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f55340I = selectTagAdapter;
            this.binding = binding;
        }

        @NotNull
        public final ItemSelectTagBinding getBinding() {
            return this.binding;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ C11412VH(com.onyx.galaxy.note.category.view.adapter.SelectTagAdapter r1, android.view.ViewGroup r2, com.onyx.galaxy.note.databinding.ItemSelectTagBinding r3, int r4, kotlin.jvm.internal.DefaultConstructorMarker r5) {
            /*
                r0 = this;
                r4 = r4 & 2
                if (r4 == 0) goto L16
                android.content.Context r3 = r2.getContext()
                android.view.LayoutInflater r3 = android.view.LayoutInflater.from(r3)
                r4 = 0
                com.onyx.galaxy.note.databinding.ItemSelectTagBinding r3 = com.onyx.galaxy.note.databinding.ItemSelectTagBinding.inflate(r3, r2, r4)
                java.lang.String r4 = "inflate(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            L16:
                r0.<init>(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.SelectTagAdapter.C11412VH.<init>(com.onyx.galaxy.note.category.view.adapter.SelectTagAdapter, android.view.ViewGroup, com.onyx.galaxy.note.databinding.ItemSelectTagBinding, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }
}
