package com.onyx.galaxy.note.category.view.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import com.chad.library.adapter4.BaseMultiItemAdapter;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.LongKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.UpdateTagExpandStatusAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.data.FilterInfo;
import com.onyx.galaxy.note.category.data.NoteTagFilterInfo;
import com.onyx.galaxy.note.category.event.ExpandParentTagEvent;
import com.onyx.galaxy.note.category.view.adapter.FilterAdapter;
import com.onyx.galaxy.note.category.view.adapter.FilterAdapter$addNoteTagItem$1;
import com.onyx.galaxy.note.category.view.drag.NoteTagTreeDragListener;
import com.onyx.galaxy.note.category.view.drag.NoteTagTreeTouchListener;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.databinding.ItemFilterNoteTagBinding;
import com.onyx.galaxy.note.databinding.ItemTagShadowViewLayoutBinding;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000?\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016J \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0005H\u0016J\u001a\u0010\u0014\u001a\u00020\b2\u0010\u0010\u0013\u001a\f\u0012\u0004\u0012\u00020\u00110\u0010j\u0002`\u0012H\u0002J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0005H\u0002¨\u0006\u0017"}, m61528d2 = {"com/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagItem$1", "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;", "Lcom/onyx/galaxy/note/category/data/FilterInfo;", "Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteTagItemViewHolder;", "holder", "", "position", "item", "", "onBind", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreate", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "noteTagNode", C6997f.f39671c, "level", "c", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFilterAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilterAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagItem$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,792:1\n256#2,2:793\n*S KotlinDebug\n*F\n+ 1 FilterAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagItem$1\n*L\n271#1:793,2\n*E\n"})
/* loaded from: classes9.dex */
public final class FilterAdapter$addNoteTagItem$1 implements BaseMultiItemAdapter.OnMultiItemAdapterListener<FilterInfo, FilterAdapter.FilterNoteTagItemViewHolder> {

    /* renamed from: a */
    public final /* synthetic */ FilterAdapter f55157a;

    public FilterAdapter$addNoteTagItem$1(FilterAdapter filterAdapter) {
        this.f55157a = filterAdapter;
    }

    /* renamed from: d */
    public static final void m44034d(FilterAdapter$addNoteTagItem$1 this$0, TreeNode noteTagNode, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(noteTagNode, "$noteTagNode");
        this$0.m44037f(noteTagNode);
    }

    /* renamed from: e */
    public static final void m44035e(FilterAdapter this$0, String id, View view) {
        NoteListViewModel noteListViewModel;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(id, "$id");
        noteListViewModel = this$0.viewModel;
        noteListViewModel.gotoTag(id);
    }

    /* renamed from: c */
    public final int m44036c(int level) {
        return (level - 2) * ((int) ResManager.INSTANCE.getDimension(C7384R.dimen.dp_16));
    }

    /* renamed from: f */
    public final void m44037f(TreeNode<NoteTagBean> noteTagNode) {
        List listOf;
        if (noteTagNode.hasChild()) {
            String uniqueId = noteTagNode.getData().getUniqueId();
            noteTagNode.setExpand(!noteTagNode.getExpand());
            boolean expand = noteTagNode.getExpand();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(uniqueId);
            RxBaseAction.execute$default(new UpdateTagExpandStatusAction(listOf, expand ? 1 : 0), null, null, null, 7, null);
            DocCollectionBundle.INSTANCE.postEvent(new ExpandParentTagEvent(uniqueId));
        }
    }

    @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
    public void onBind(@NotNull FilterAdapter.FilterNoteTagItemViewHolder holder, int position, @Nullable FilterInfo item) {
        Drawable drawable;
        String str;
        int colorById;
        String str2;
        int i;
        ItemTagShadowViewLayoutBinding itemTagShadowViewLayoutBinding;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNull(item, "null cannot be cast to non-null type com.onyx.galaxy.note.category.data.NoteTagFilterInfo");
        final TreeNode<NoteTagBean> noteTagNode = ((NoteTagFilterInfo) item).getNoteTagNode();
        final String uniqueId = noteTagNode.getData().getUniqueId();
        if (noteTagNode.getExpand()) {
            drawable = ContextCompat.getDrawable(this.f55157a.getContext(), C10651R.drawable.ic_arrow_down);
        } else {
            drawable = ContextCompat.getDrawable(this.f55157a.getContext(), C10651R.drawable.ic_arrow_right);
        }
        str = this.f55157a.selectId;
        if (Intrinsics.areEqual(str, uniqueId)) {
            colorById = ThemeUtils.getColorById(C7996R.color.theme_primary_color_01);
        } else {
            colorById = ThemeUtils.getColorById(C7996R.color.theme_text_color_01);
        }
        str2 = this.f55157a.selectId;
        if (Intrinsics.areEqual(str2, uniqueId)) {
            i = C7996R.drawable.select_colors_gradient_bg_no_radius;
        } else {
            i = C10651R.color.transparent;
        }
        ItemFilterNoteTagBinding viewBinding = holder.getViewBinding();
        viewBinding.tvItemName.setText(noteTagNode.getData().getContent());
        viewBinding.ivNoteTreeBottom.setImageTintList(noteTagNode.getData().getIconColorStateList());
        TintImageView ivTreeExpand = viewBinding.ivTreeExpand;
        Intrinsics.checkNotNullExpressionValue(ivTreeExpand, "ivTreeExpand");
        ivTreeExpand.setVisibility(noteTagNode.getChildCount() > 0 ? 0 : 8);
        viewBinding.tvTotalCount.setText(LongKt.formatReadableValue(Long.valueOf(noteTagNode.getChildCount()), 99L));
        viewBinding.ivTreeExpand.setImageDrawable(drawable);
        viewBinding.tvItemName.setTextColor(colorById);
        viewBinding.flRoot.setBackgroundResource(i);
        viewBinding.clsContent.setPaddingRelative(m44036c(noteTagNode.levelToRoot()), viewBinding.clsContent.getPaddingTop(), viewBinding.clsContent.getPaddingEnd(), viewBinding.clsContent.getPaddingBottom());
        viewBinding.ivTreeExpand.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.mlg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FilterAdapter$addNoteTagItem$1.m44034d(FilterAdapter$addNoteTagItem$1.this, noteTagNode, view);
            }
        });
        holder.itemView.setTag(noteTagNode);
        View view = holder.itemView;
        final FilterAdapter filterAdapter = this.f55157a;
        view.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.nlg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                FilterAdapter$addNoteTagItem$1.m44035e(FilterAdapter.this, uniqueId, view2);
            }
        });
        View view2 = holder.itemView;
        Context context = this.f55157a.getContext();
        itemTagShadowViewLayoutBinding = this.f55157a.tagShadowView;
        final FilterAdapter filterAdapter2 = this.f55157a;
        view2.setOnTouchListener(new NoteTagTreeTouchListener(context, noteTagNode, itemTagShadowViewLayoutBinding, new Function0<String>() { // from class: com.onyx.galaxy.note.category.view.adapter.FilterAdapter$addNoteTagItem$1$onBind$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final String invoke() {
                String str3;
                str3 = FilterAdapter.this.selectId;
                return str3;
            }
        }));
        holder.itemView.setOnDragListener(new NoteTagTreeDragListener());
    }

    @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
    @NotNull
    public FilterAdapter.FilterNoteTagItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemFilterNoteTagBinding inflate = ItemFilterNoteTagBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new FilterAdapter.FilterNoteTagItemViewHolder(inflate);
    }
}
