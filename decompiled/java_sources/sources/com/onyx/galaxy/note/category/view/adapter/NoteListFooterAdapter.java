package com.onyx.galaxy.note.category.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.galaxy.note.databinding.ItemNoteListFooterBinding;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00112\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0002\u0011\u0012B\u0005¢\u0006\u0002\u0010\u0004J&\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0014J$\u0010\u000b\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tH\u0014¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "", "Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter$VH;", "()V", "onBindViewHolder", "", "holder", "position", "", "item", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "Companion", "VH", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteListFooterAdapter extends BaseQuickAdapter<String, C11391VH> {

    /* renamed from: r */
    @NotNull
    public static final String f55211r = "NoteListFooterAdapter";

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter$VH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemNoteListFooterBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemNoteListFooterBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemNoteListFooterBinding;", "viewBinding", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter;Lcom/onyx/galaxy/note/databinding/ItemNoteListFooterBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* renamed from: com.onyx.galaxy.note.category.view.adapter.NoteListFooterAdapter$VH */
    /* loaded from: classes9.dex */
    public final class C11391VH extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemNoteListFooterBinding viewBinding;

        /* renamed from: I */
        public final /* synthetic */ NoteListFooterAdapter f55213I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11391VH(@NotNull NoteListFooterAdapter noteListFooterAdapter, ItemNoteListFooterBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.f55213I = noteListFooterAdapter;
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemNoteListFooterBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    public NoteListFooterAdapter() {
        super(null, 1, null);
        add(f55211r);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull C11391VH holder, int position, @Nullable String item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public C11391VH onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemNoteListFooterBinding inflate = ItemNoteListFooterBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new C11391VH(this, inflate);
    }
}
