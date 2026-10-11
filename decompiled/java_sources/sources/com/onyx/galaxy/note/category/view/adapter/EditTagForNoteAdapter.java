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
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.NewTreeKt;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.adapter.EditTagForNoteAdapter;
import com.onyx.galaxy.note.common.data.EditTagForNoteContext;
import com.onyx.galaxy.note.databinding.ItemEditTagForNoteBinding;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u001c\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004\u0012\b\u0012\u00060\u0005R\u00020\u00000\u0001:\u0001\u001dB\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0017¢\u0006\u0004\b\u001b\u0010\u001cJ$\u0010\f\u001a\u00060\u0005R\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0014J2\u0010\u0011\u001a\u00020\u00102\n\u0010\r\u001a\u00060\u0005R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\n2\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\u0004\u0018\u0001`\u0004H\u0014J\u0006\u0010\u0012\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0010J\u001a\u0010\u0014\u001a\u00020\u00102\u0010\u0010\u000f\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0003J\"\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\n2\u0010\u0010\u0015\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0003R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter$VH;", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "holder", "position", "item", "", "onBindViewHolder", "initList", "submitTreeList", "handleSelect", "node", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;", "r", "Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;", "editTagForNoteContext", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;)V", "VH", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEditTagForNoteAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditTagForNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,116:1\n256#2,2:117\n*S KotlinDebug\n*F\n+ 1 EditTagForNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter\n*L\n63#1:117,2\n*E\n"})
/* loaded from: classes9.dex */
public final class EditTagForNoteAdapter extends BaseQuickAdapter<TreeNode<NoteTagBean>, C11382VH> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final EditTagForNoteContext editTagForNoteContext;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditTagForNoteAdapter(@NotNull EditTagForNoteContext editTagForNoteContext) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(editTagForNoteContext, "editTagForNoteContext");
        this.editTagForNoteContext = editTagForNoteContext;
    }

    /* renamed from: o */
    public static final void m43984o(EditTagForNoteAdapter this$0, TreeNode treeNode, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.handleSelect(treeNode);
    }

    /* renamed from: p */
    public static final void m43985p(EditTagForNoteAdapter this$0, int i, TreeNode treeNode, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43986n(i, treeNode);
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void handleSelect(TreeNode<NoteTagBean> item) {
        String uniqueId = item.getData().getUniqueId();
        List<String> selectTagIds = this.editTagForNoteContext.getSelectTagIds();
        if (selectTagIds.contains(uniqueId)) {
            selectTagIds.remove(uniqueId);
        } else {
            selectTagIds.add(uniqueId);
        }
        notifyDataSetChanged();
    }

    public final void initList() {
        submitTreeList();
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: n */
    public final void m43986n(int position, TreeNode<NoteTagBean> node) {
        if (node.hasChild()) {
            node.toggleExpand();
            submitTreeList();
        }
    }

    public final void submitTreeList() {
        List list;
        list = CollectionsKt___CollectionsKt.toList(TreeNode.findNodes$default(this.editTagForNoteContext.getRootNode(), new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.adapter.EditTagForNoteAdapter$submitTreeList$treeList$1
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
    public void onBindViewHolder(@NotNull C11382VH holder, final int position, @Nullable final TreeNode<NoteTagBean> item) {
        Drawable drawable;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNull(item);
        String uniqueId = item.getData().getUniqueId();
        if (item.getExpand()) {
            drawable = ContextCompat.getDrawable(getContext(), C10651R.drawable.icon_tree_arrow);
        } else {
            drawable = ContextCompat.getDrawable(getContext(), C10651R.drawable.ic_arrow_right);
        }
        int levelToRoot = (item.levelToRoot() - 1) * ((int) ResManager.INSTANCE.getDimension(C10651R.dimen.tree_node_item_indent));
        boolean z = item.getChildCount() > 0;
        ItemEditTagForNoteBinding binding = holder.getBinding();
        binding.tvItemName.setText(item.getData().getContent());
        binding.ivNoteTreeBottom.setImageTintList(item.getData().getIconColorStateList());
        TintImageView ivNoteTreeExpand = binding.ivNoteTreeExpand;
        Intrinsics.checkNotNullExpressionValue(ivNoteTreeExpand, "ivNoteTreeExpand");
        ivNoteTreeExpand.setVisibility(z ? 0 : 8);
        binding.ivNoteTreeExpand.setImageDrawable(drawable);
        binding.cbSel.setChecked(this.editTagForNoteContext.getSelectTagIds().contains(uniqueId));
        ConstraintLayout constraintLayout = binding.clsContent;
        constraintLayout.setPaddingRelative(levelToRoot, constraintLayout.getPaddingTop(), binding.clsContent.getPaddingEnd(), binding.clsContent.getPaddingBottom());
        binding.clsContent.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vlf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditTagForNoteAdapter.m43984o(EditTagForNoteAdapter.this, item, view);
            }
        });
        binding.ivNoteTreeExpand.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.wlf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditTagForNoteAdapter.m43985p(EditTagForNoteAdapter.this, position, item, view);
            }
        });
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public C11382VH onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new C11382VH(this, parent, null, 2, null);
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter$VH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteBinding;", "binding", "Landroid/view/ViewGroup;", "parent", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* renamed from: com.onyx.galaxy.note.category.view.adapter.EditTagForNoteAdapter$VH */
    /* loaded from: classes9.dex */
    public final class C11382VH extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemEditTagForNoteBinding binding;

        /* renamed from: I */
        public final /* synthetic */ EditTagForNoteAdapter f55127I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11382VH(@NotNull EditTagForNoteAdapter editTagForNoteAdapter, @NotNull ViewGroup parent, ItemEditTagForNoteBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f55127I = editTagForNoteAdapter;
            this.binding = binding;
        }

        @NotNull
        public final ItemEditTagForNoteBinding getBinding() {
            return this.binding;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ C11382VH(com.onyx.galaxy.note.category.view.adapter.EditTagForNoteAdapter r1, android.view.ViewGroup r2, com.onyx.galaxy.note.databinding.ItemEditTagForNoteBinding r3, int r4, kotlin.jvm.internal.DefaultConstructorMarker r5) {
            /*
                r0 = this;
                r4 = r4 & 2
                if (r4 == 0) goto L16
                android.content.Context r3 = r2.getContext()
                android.view.LayoutInflater r3 = android.view.LayoutInflater.from(r3)
                r4 = 0
                com.onyx.galaxy.note.databinding.ItemEditTagForNoteBinding r3 = com.onyx.galaxy.note.databinding.ItemEditTagForNoteBinding.inflate(r3, r2, r4)
                java.lang.String r4 = "inflate(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            L16:
                r0.<init>(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.EditTagForNoteAdapter.C11382VH.<init>(com.onyx.galaxy.note.category.view.adapter.EditTagForNoteAdapter, android.view.ViewGroup, com.onyx.galaxy.note.databinding.ItemEditTagForNoteBinding, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }
}
