package com.onyx.galaxy.note.category.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseMultiItemAdapter;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.galaxy.note.category.data.FilterInfo;
import com.onyx.galaxy.note.category.view.adapter.FilterAdapter;
import com.onyx.galaxy.note.category.view.adapter.FilterAdapter$addSearchItem$1;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.ItemFilterSearchBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016J \u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\bH\u0016¨\u0006\u0010"}, m61528d2 = {"com/onyx/galaxy/note/category/view/adapter/FilterAdapter$addSearchItem$1", "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;", "Lcom/onyx/galaxy/note/category/data/FilterInfo;", "Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterSearchItemViewHolder;", "onBind", "", "holder", "position", "", "item", "onCreate", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class FilterAdapter$addSearchItem$1 implements BaseMultiItemAdapter.OnMultiItemAdapterListener<FilterInfo, FilterAdapter.FilterSearchItemViewHolder> {

    /* renamed from: a */
    public final /* synthetic */ FilterAdapter f55159a;

    public FilterAdapter$addSearchItem$1(FilterAdapter filterAdapter) {
        this.f55159a = filterAdapter;
    }

    /* renamed from: b */
    public static final void m44042b(FilterAdapter this$0, View view) {
        NoteListViewModel noteListViewModel;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        StatisticsBundle.reportEvent$default(StatisticsBundle.INSTANCE, OnyxStatisticConstant.ID_HOME_PAGE_SEARCH_CLICK, null, 2, null);
        noteListViewModel = this$0.viewModel;
        noteListViewModel.gotoSearch();
    }

    @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
    public void onBind(@NotNull FilterAdapter.FilterSearchItemViewHolder holder, int position, @Nullable FilterInfo item) {
        String str;
        Intrinsics.checkNotNullParameter(holder, "holder");
        str = this.f55159a.selectId;
        Intrinsics.checkNotNull(item);
        boolean areEqual = Intrinsics.areEqual(str, item.getUniqueId());
        ItemFilterSearchBinding viewBinding = holder.getViewBinding();
        final FilterAdapter filterAdapter = this.f55159a;
        viewBinding.llRoot.setSelected(areEqual);
        viewBinding.ivSearch.setSelected(areEqual);
        viewBinding.tvSearch.setSelected(areEqual);
        viewBinding.llRoot.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.plg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FilterAdapter$addSearchItem$1.m44042b(FilterAdapter.this, view);
            }
        });
    }

    @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
    @NotNull
    public FilterAdapter.FilterSearchItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemFilterSearchBinding inflate = ItemFilterSearchBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new FilterAdapter.FilterSearchItemViewHolder(inflate);
    }
}
