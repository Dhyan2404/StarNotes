package com.onyx.galaxy.note.category.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.AutoCompleteTextSimpleItemBinding;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001\u0011B\u0005¢\u0006\u0002\u0010\u0004J&\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0014J$\u0010\u000b\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tH\u0014¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/TagMatchAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "", "Lcom/onyx/galaxy/note/category/view/adapter/TagMatchAdapter$VH;", "()V", "onBindViewHolder", "", "holder", "position", "", "item", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "VH", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class TagMatchAdapter extends BaseQuickAdapter<String, C11413VH> {

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/TagMatchAdapter$VH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/AutoCompleteTextSimpleItemBinding;", "H", "Lcom/onyx/galaxy/note/databinding/AutoCompleteTextSimpleItemBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/AutoCompleteTextSimpleItemBinding;", "viewBinding", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/view/adapter/TagMatchAdapter;Lcom/onyx/galaxy/note/databinding/AutoCompleteTextSimpleItemBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* renamed from: com.onyx.galaxy.note.category.view.adapter.TagMatchAdapter$VH */
    /* loaded from: classes9.dex */
    public final class C11413VH extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final AutoCompleteTextSimpleItemBinding viewBinding;

        /* renamed from: I */
        public final /* synthetic */ TagMatchAdapter f55342I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11413VH(@NotNull TagMatchAdapter tagMatchAdapter, AutoCompleteTextSimpleItemBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.f55342I = tagMatchAdapter;
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final AutoCompleteTextSimpleItemBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    public TagMatchAdapter() {
        super(null, 1, null);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull C11413VH holder, int position, @Nullable String item) {
        int lastIndex;
        Intrinsics.checkNotNullParameter(holder, "holder");
        TintTextView tintTextView = holder.getViewBinding().f56289tv;
        tintTextView.setText(item);
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(getItems());
        if (position == lastIndex) {
            tintTextView.setBackgroundDrawable(null);
        } else {
            tintTextView.setBackgroundResource(C10651R.drawable.layer_list_under_line);
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public C11413VH onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        AutoCompleteTextSimpleItemBinding inflate = AutoCompleteTextSimpleItemBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new C11413VH(this, inflate);
    }
}
