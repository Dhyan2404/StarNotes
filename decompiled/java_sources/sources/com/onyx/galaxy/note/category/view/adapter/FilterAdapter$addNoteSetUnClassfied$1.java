package com.onyx.galaxy.note.category.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseMultiItemAdapter;
import com.onyx.android.sdk.base.extension.LongKt;
import com.onyx.galaxy.note.category.data.FilterInfo;
import com.onyx.galaxy.note.category.view.adapter.FilterAdapter;
import com.onyx.galaxy.note.category.view.adapter.FilterAdapter$addNoteSetUnClassfied$1;
import com.onyx.galaxy.note.category.view.drag.UnClassfiedDragListener;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.databinding.ItemFilterNoteSetUnClassfiedBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016J \u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\bH\u0016¨\u0006\u0010"}, m61528d2 = {"com/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteSetUnClassfied$1", "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;", "Lcom/onyx/galaxy/note/category/data/FilterInfo;", "Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteUnClassfiedItemViewHolder;", "onBind", "", "holder", "position", "", "item", "onCreate", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class FilterAdapter$addNoteSetUnClassfied$1 implements BaseMultiItemAdapter.OnMultiItemAdapterListener<FilterInfo, FilterAdapter.FilterNoteUnClassfiedItemViewHolder> {

    /* renamed from: a */
    public final /* synthetic */ FilterAdapter f55156a;

    public FilterAdapter$addNoteSetUnClassfied$1(FilterAdapter filterAdapter) {
        this.f55156a = filterAdapter;
    }

    /* renamed from: b */
    public static final void m44031b(FilterAdapter this$0, View view) {
        NoteListViewModel noteListViewModel;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        noteListViewModel = this$0.viewModel;
        noteListViewModel.gotoUnClassfied();
    }

    @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
    public void onBind(@NotNull FilterAdapter.FilterNoteUnClassfiedItemViewHolder holder, int position, @Nullable FilterInfo item) {
        String str;
        Intrinsics.checkNotNullParameter(holder, "holder");
        str = this.f55156a.selectId;
        Intrinsics.checkNotNull(item);
        boolean areEqual = Intrinsics.areEqual(str, item.getUniqueId());
        ItemFilterNoteSetUnClassfiedBinding viewBinding = holder.getViewBinding();
        final FilterAdapter filterAdapter = this.f55156a;
        viewBinding.llRoot.setSelected(areEqual);
        viewBinding.ivUnClassify.setSelected(areEqual);
        viewBinding.tvUnClassify.setSelected(areEqual);
        viewBinding.tvUnClassifyCount.setText(LongKt.formatReadableValue(Long.valueOf(item.getCount()), 99L));
        viewBinding.llRoot.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.llg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FilterAdapter$addNoteSetUnClassfied$1.m44031b(FilterAdapter.this, view);
            }
        });
        holder.itemView.setOnDragListener(new UnClassfiedDragListener());
    }

    @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
    @NotNull
    public FilterAdapter.FilterNoteUnClassfiedItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemFilterNoteSetUnClassfiedBinding inflate = ItemFilterNoteSetUnClassfiedBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new FilterAdapter.FilterNoteUnClassfiedItemViewHolder(inflate);
    }
}
