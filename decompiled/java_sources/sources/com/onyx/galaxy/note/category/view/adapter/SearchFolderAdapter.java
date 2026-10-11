package com.onyx.galaxy.note.category.view.adapter;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.databinding.ItemSearchFolderBinding;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u001c\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004\u0012\b\u0012\u00060\u0005R\u00020\u00000\u0001:\u0001\u0013B\u0005¢\u0006\u0002\u0010\u0006J2\u0010\u0007\u001a\u00020\b2\n\u0010\t\u001a\u00060\u0005R\u00020\u00002\u0006\u0010\n\u001a\u00020\u000b2\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\u0004\u0018\u0001`\u0004H\u0014J$\u0010\r\u001a\u00060\u0005R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000bH\u0014¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SearchFolderAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", "Lcom/onyx/galaxy/note/category/view/adapter/SearchFolderAdapter$VH;", "()V", "onBindViewHolder", "", "holder", "position", "", "item", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "VH", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class SearchFolderAdapter extends BaseQuickAdapter<TreeNode<NoteModelBean>, C11395VH> {
    public SearchFolderAdapter() {
        super(null, 1, null);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull C11395VH holder, int position, @Nullable TreeNode<NoteModelBean> item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        ItemSearchFolderBinding binding = holder.getBinding();
        TintTextView tintTextView = binding.tvItemName;
        Intrinsics.checkNotNull(item);
        tintTextView.setText(item.getData().getTitle());
        binding.ivNoteTreeFolderBottom.setImageTintList(item.getData().getIconColorStateList());
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public C11395VH onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new C11395VH(this, parent, null, 2, null);
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SearchFolderAdapter$VH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemSearchFolderBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemSearchFolderBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemSearchFolderBinding;", "binding", "Landroid/view/ViewGroup;", "parent", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/view/adapter/SearchFolderAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemSearchFolderBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* renamed from: com.onyx.galaxy.note.category.view.adapter.SearchFolderAdapter$VH */
    /* loaded from: classes9.dex */
    public final class C11395VH extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemSearchFolderBinding binding;

        /* renamed from: I */
        public final /* synthetic */ SearchFolderAdapter f55269I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11395VH(@NotNull SearchFolderAdapter searchFolderAdapter, @NotNull ViewGroup parent, ItemSearchFolderBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f55269I = searchFolderAdapter;
            this.binding = binding;
        }

        @NotNull
        public final ItemSearchFolderBinding getBinding() {
            return this.binding;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ C11395VH(com.onyx.galaxy.note.category.view.adapter.SearchFolderAdapter r1, android.view.ViewGroup r2, com.onyx.galaxy.note.databinding.ItemSearchFolderBinding r3, int r4, kotlin.jvm.internal.DefaultConstructorMarker r5) {
            /*
                r0 = this;
                r4 = r4 & 2
                if (r4 == 0) goto L16
                android.content.Context r3 = r2.getContext()
                android.view.LayoutInflater r3 = android.view.LayoutInflater.from(r3)
                r4 = 0
                com.onyx.galaxy.note.databinding.ItemSearchFolderBinding r3 = com.onyx.galaxy.note.databinding.ItemSearchFolderBinding.inflate(r3, r2, r4)
                java.lang.String r4 = "inflate(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            L16:
                r0.<init>(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.SearchFolderAdapter.C11395VH.<init>(com.onyx.galaxy.note.category.view.adapter.SearchFolderAdapter, android.view.ViewGroup, com.onyx.galaxy.note.databinding.ItemSearchFolderBinding, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }
}
