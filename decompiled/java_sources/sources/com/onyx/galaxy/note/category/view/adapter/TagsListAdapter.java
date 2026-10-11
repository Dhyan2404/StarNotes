package com.onyx.galaxy.note.category.view.adapter;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.databinding.ItemTagsListBinding;
import com.onyx.galaxy.note.utils.TagColorUtils;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001\u0011B\u0005¢\u0006\u0002\u0010\u0004J&\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0014J$\u0010\u000b\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tH\u0014¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "", "Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter$VH;", "()V", "onBindViewHolder", "", "holder", "position", "", "item", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "VH", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class TagsListAdapter extends BaseQuickAdapter<String, C11414VH> {
    public TagsListAdapter() {
        super(null, 1, null);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull C11414VH holder, int position, @Nullable String item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        TreeNode<NoteTagBean> tagRootNote = NoteTreeBundle.INSTANCE.getTagRootNote();
        Intrinsics.checkNotNull(item);
        TreeNode<NoteTagBean> findNode = tagRootNote.findNode(item);
        TextView tv = holder.getBinding().f57214tv;
        Intrinsics.checkNotNullExpressionValue(tv, "tv");
        if (findNode == null) {
            tv.setText((CharSequence) null);
            tv.setBackground(null);
        } else {
            int color = findNode.getData().getStyle().getColor();
            tv.setText(findNode.getData().getContent());
            tv.setTextColor(ThemeUtils.getColorById(C7996R.color.theme_text_color_02));
            tv.setBackground(TagColorUtils.INSTANCE.generateTagDrawable(color));
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public C11414VH onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new C11414VH(this, parent, null, 2, null);
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter$VH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemTagsListBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemTagsListBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemTagsListBinding;", "binding", "Landroid/view/ViewGroup;", "parent", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemTagsListBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* renamed from: com.onyx.galaxy.note.category.view.adapter.TagsListAdapter$VH */
    /* loaded from: classes9.dex */
    public final class C11414VH extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemTagsListBinding binding;

        /* renamed from: I */
        public final /* synthetic */ TagsListAdapter f55344I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11414VH(@NotNull TagsListAdapter tagsListAdapter, @NotNull ViewGroup parent, ItemTagsListBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f55344I = tagsListAdapter;
            this.binding = binding;
        }

        @NotNull
        public final ItemTagsListBinding getBinding() {
            return this.binding;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ C11414VH(com.onyx.galaxy.note.category.view.adapter.TagsListAdapter r1, android.view.ViewGroup r2, com.onyx.galaxy.note.databinding.ItemTagsListBinding r3, int r4, kotlin.jvm.internal.DefaultConstructorMarker r5) {
            /*
                r0 = this;
                r4 = r4 & 2
                if (r4 == 0) goto L16
                android.content.Context r3 = r2.getContext()
                android.view.LayoutInflater r3 = android.view.LayoutInflater.from(r3)
                r4 = 0
                com.onyx.galaxy.note.databinding.ItemTagsListBinding r3 = com.onyx.galaxy.note.databinding.ItemTagsListBinding.inflate(r3, r2, r4)
                java.lang.String r4 = "inflate(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            L16:
                r0.<init>(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.TagsListAdapter.C11414VH.<init>(com.onyx.galaxy.note.category.view.adapter.TagsListAdapter, android.view.ViewGroup, com.onyx.galaxy.note.databinding.ItemTagsListBinding, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }
}
