package com.onyx.galaxy.note.category.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseMultiItemAdapter;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.FilterInfo;
import com.onyx.galaxy.note.category.data.NoteTagRootFilter;
import com.onyx.galaxy.note.category.view.adapter.FilterAdapter;
import com.onyx.galaxy.note.category.view.adapter.FilterAdapter$addNoteTagRootItem$1;
import com.onyx.galaxy.note.category.view.drag.TagRootDragListener;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.ItemFilterNoteTagRootBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016J \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0005H\u0016J\u0018\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¨\u0006\u0013"}, m61528d2 = {"com/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagRootItem$1", "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;", "Lcom/onyx/galaxy/note/category/data/FilterInfo;", "Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteTagRootItemViewHolder;", "holder", "", "position", "item", "", "onBind", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreate", "", "expanded", "c", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFilterAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilterAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagRootItem$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,792:1\n256#2,2:793\n256#2,2:795\n*S KotlinDebug\n*F\n+ 1 FilterAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagRootItem$1\n*L\n347#1:793,2\n348#1:795,2\n*E\n"})
/* loaded from: classes9.dex */
public final class FilterAdapter$addNoteTagRootItem$1 implements BaseMultiItemAdapter.OnMultiItemAdapterListener<FilterInfo, FilterAdapter.FilterNoteTagRootItemViewHolder> {

    /* renamed from: a */
    public final /* synthetic */ FilterAdapter f55158a;

    public FilterAdapter$addNoteTagRootItem$1(FilterAdapter filterAdapter) {
        this.f55158a = filterAdapter;
    }

    /* renamed from: b */
    public static final void m44039b(FilterAdapter this$0, View view) {
        NoteListViewModel noteListViewModel;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        StatisticsBundle.reportEvent$default(StatisticsBundle.INSTANCE, OnyxStatisticConstant.ID_FILTER_TAG_ROOT_CLICK, null, 2, null);
        noteListViewModel = this$0.viewModel;
        noteListViewModel.gotoTagRoot();
    }

    /* renamed from: c */
    public final void m44040c(FilterAdapter.FilterNoteTagRootItemViewHolder holder, boolean expanded) {
        holder.getViewBinding().ivNoteTagExpand.setImageResource(expanded ? C10651R.drawable.icon_tree_arrow : C10651R.drawable.ic_arrow_right);
    }

    @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
    public void onBind(@NotNull FilterAdapter.FilterNoteTagRootItemViewHolder holder, int position, @Nullable FilterInfo item) {
        String str;
        Intrinsics.checkNotNullParameter(holder, "holder");
        str = this.f55158a.selectId;
        Intrinsics.checkNotNull(item);
        boolean areEqual = Intrinsics.areEqual(str, item.getUniqueId());
        boolean hasChild = item.getHasChild();
        int dimens = hasChild ? ResManager.INSTANCE.getDimens(C7384R.dimen.dp_8) : 0;
        boolean z = NoteTagRootFilter.INSTANCE.getNoteTagRootExpandOp().get();
        ItemFilterNoteTagRootBinding viewBinding = holder.getViewBinding();
        final FilterAdapter filterAdapter = this.f55158a;
        viewBinding.clsRoot.setSelected(areEqual);
        viewBinding.ivTagRoot.setSelected(areEqual);
        viewBinding.tvTagRoot.setSelected(areEqual);
        viewBinding.tvTagCreateHint.setPaddingRelative(dimens, 0, 0, 0);
        TintTextView tvTagCreateHint = viewBinding.tvTagCreateHint;
        Intrinsics.checkNotNullExpressionValue(tvTagCreateHint, "tvTagCreateHint");
        tvTagCreateHint.setVisibility(hasChild ^ true ? 0 : 8);
        TintImageView ivNoteTagExpand = viewBinding.ivNoteTagExpand;
        Intrinsics.checkNotNullExpressionValue(ivNoteTagExpand, "ivNoteTagExpand");
        ivNoteTagExpand.setVisibility(hasChild ? 0 : 8);
        m44040c(holder, z);
        viewBinding.clsRoot.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.olg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FilterAdapter$addNoteTagRootItem$1.m44039b(FilterAdapter.this, view);
            }
        });
        holder.itemView.setOnDragListener(new TagRootDragListener());
    }

    @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
    @NotNull
    public FilterAdapter.FilterNoteTagRootItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemFilterNoteTagRootBinding inflate = ItemFilterNoteTagRootBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new FilterAdapter.FilterNoteTagRootItemViewHolder(inflate);
    }
}
