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
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.UpdateNoteExpandStatusAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.data.FilterInfo;
import com.onyx.galaxy.note.category.data.NoteFolderFilterInfo;
import com.onyx.galaxy.note.category.event.ExpandParentFolderEvent;
import com.onyx.galaxy.note.category.view.adapter.FilterAdapter;
import com.onyx.galaxy.note.category.view.adapter.FilterAdapter$addNoteFolder$1;
import com.onyx.galaxy.note.category.view.drag.NoteFolderTreeDragListener;
import com.onyx.galaxy.note.category.view.drag.NoteFolderTreeTouchListener;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.databinding.ItemFilterNoteFolderBinding;
import com.onyx.galaxy.note.databinding.ItemNoteShadowViewLayoutBinding;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000?\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016J \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0005H\u0016J\u001a\u0010\u0014\u001a\u00020\b2\u0010\u0010\u0013\u001a\f\u0012\u0004\u0012\u00020\u00110\u0010j\u0002`\u0012H\u0002J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0005H\u0002¨\u0006\u0017"}, m61528d2 = {"com/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1", "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;", "Lcom/onyx/galaxy/note/category/data/FilterInfo;", "Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteFolderItemViewHolder;", "holder", "", "position", "item", "", "onBind", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreate", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", "noteTreeNode", C6997f.f39671c, "level", "c", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFilterAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilterAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,792:1\n256#2,2:793\n256#2,2:795\n*S KotlinDebug\n*F\n+ 1 FilterAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1\n*L\n417#1:793,2\n418#1:795,2\n*E\n"})
/* loaded from: classes9.dex */
public final class FilterAdapter$addNoteFolder$1 implements BaseMultiItemAdapter.OnMultiItemAdapterListener<FilterInfo, FilterAdapter.FilterNoteFolderItemViewHolder> {

    /* renamed from: a */
    public final /* synthetic */ FilterAdapter f55153a;

    public FilterAdapter$addNoteFolder$1(FilterAdapter filterAdapter) {
        this.f55153a = filterAdapter;
    }

    /* renamed from: d */
    public static final void m44021d(FilterAdapter$addNoteFolder$1 this$0, TreeNode noteTreeNode, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(noteTreeNode, "$noteTreeNode");
        this$0.m44024f(noteTreeNode);
    }

    /* renamed from: e */
    public static final void m44022e(FilterAdapter this$0, String id, View view) {
        NoteListViewModel noteListViewModel;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(id, "$id");
        noteListViewModel = this$0.viewModel;
        noteListViewModel.gotoFolder(id);
    }

    /* renamed from: c */
    public final int m44023c(int level) {
        return (level - 2) * ((int) ResManager.INSTANCE.getDimension(C7384R.dimen.dp_16));
    }

    /* renamed from: f */
    public final void m44024f(TreeNode<NoteModelBean> noteTreeNode) {
        List listOf;
        if (noteTreeNode.hasChild()) {
            String uniqueId = noteTreeNode.getData().getUniqueId();
            noteTreeNode.setExpand(!noteTreeNode.getExpand());
            boolean expand = noteTreeNode.getExpand();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(uniqueId);
            RxBaseAction.execute$default(new UpdateNoteExpandStatusAction(listOf, expand ? 1 : 0), null, null, null, 7, null);
            DocCollectionBundle.INSTANCE.postEvent(new ExpandParentFolderEvent(uniqueId));
        }
    }

    @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
    public void onBind(@NotNull FilterAdapter.FilterNoteFolderItemViewHolder holder, int position, @Nullable FilterInfo item) {
        Drawable drawable;
        String str;
        int colorById;
        String str2;
        int i;
        ItemNoteShadowViewLayoutBinding itemNoteShadowViewLayoutBinding;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNull(item, "null cannot be cast to non-null type com.onyx.galaxy.note.category.data.NoteFolderFilterInfo");
        final TreeNode<NoteModelBean> noteTreeNode = ((NoteFolderFilterInfo) item).getNoteTreeNode();
        NoteModelBean data = noteTreeNode.getData();
        final String uniqueId = data.getUniqueId();
        if (noteTreeNode.getExpand()) {
            drawable = ContextCompat.getDrawable(this.f55153a.getContext(), C10651R.drawable.ic_arrow_down);
        } else {
            drawable = ContextCompat.getDrawable(this.f55153a.getContext(), C10651R.drawable.ic_arrow_right);
        }
        str = this.f55153a.selectId;
        if (Intrinsics.areEqual(str, uniqueId)) {
            colorById = ThemeUtils.getColorById(C7996R.color.theme_primary_color_01);
        } else {
            colorById = ThemeUtils.getColorById(C7996R.color.theme_text_color_01);
        }
        str2 = this.f55153a.selectId;
        if (Intrinsics.areEqual(str2, uniqueId)) {
            i = C7996R.drawable.select_colors_gradient_bg_no_radius;
        } else {
            i = C10651R.color.transparent;
        }
        ItemFilterNoteFolderBinding viewBinding = holder.getViewBinding();
        viewBinding.tvItemName.setText(data.getTitle());
        viewBinding.ivNoteTreeFolderBottom.setImageTintList(data.getIconColorStateList());
        TintImageView ivFolderExpand = viewBinding.ivFolderExpand;
        Intrinsics.checkNotNullExpressionValue(ivFolderExpand, "ivFolderExpand");
        ivFolderExpand.setVisibility(noteTreeNode.getChildCount() > 0 ? 0 : 8);
        TintTextView tvNoteTotalCount = viewBinding.tvNoteTotalCount;
        Intrinsics.checkNotNullExpressionValue(tvNoteTotalCount, "tvNoteTotalCount");
        tvNoteTotalCount.setVisibility(data.isLibrary() ? 0 : 8);
        viewBinding.tvNoteTotalCount.setText(LongKt.formatReadableValue(Long.valueOf(noteTreeNode.getChildCount()), 99L));
        viewBinding.tvNoteTotalCount.setTextColor(ThemeUtils.getColorById(C7996R.color.theme_text_color_03));
        viewBinding.ivFolderExpand.setImageDrawable(drawable);
        viewBinding.tvItemName.setTextColor(colorById);
        viewBinding.flRoot.setBackgroundResource(i);
        viewBinding.clsContent.setPaddingRelative(m44023c(noteTreeNode.levelToRoot()), viewBinding.clsContent.getPaddingTop(), viewBinding.clsContent.getPaddingEnd(), viewBinding.clsContent.getPaddingBottom());
        TintImageView ivFolderExpand2 = viewBinding.ivFolderExpand;
        Intrinsics.checkNotNullExpressionValue(ivFolderExpand2, "ivFolderExpand");
        ViewKt.click$default(ivFolderExpand2, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hlg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FilterAdapter$addNoteFolder$1.m44021d(FilterAdapter$addNoteFolder$1.this, noteTreeNode, view);
            }
        }, 1, null);
        holder.itemView.setTag(noteTreeNode);
        View view = holder.itemView;
        final FilterAdapter filterAdapter = this.f55153a;
        view.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ilg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                FilterAdapter$addNoteFolder$1.m44022e(FilterAdapter.this, uniqueId, view2);
            }
        });
        View view2 = holder.itemView;
        Context context = this.f55153a.getContext();
        itemNoteShadowViewLayoutBinding = this.f55153a.folderShadowView;
        String uniqueId2 = data.getUniqueId();
        final FilterAdapter filterAdapter2 = this.f55153a;
        view2.setOnTouchListener(new NoteFolderTreeTouchListener(context, noteTreeNode, itemNoteShadowViewLayoutBinding, uniqueId2, new Function0<String>() { // from class: com.onyx.galaxy.note.category.view.adapter.FilterAdapter$addNoteFolder$1$onBind$3
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
        holder.itemView.setOnDragListener(new NoteFolderTreeDragListener());
    }

    @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
    @NotNull
    public FilterAdapter.FilterNoteFolderItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemFilterNoteFolderBinding inflate = ItemFilterNoteFolderBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new FilterAdapter.FilterNoteFolderItemViewHolder(inflate);
    }
}
