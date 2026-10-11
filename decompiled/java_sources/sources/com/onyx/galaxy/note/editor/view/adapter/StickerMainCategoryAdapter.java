package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.LayoutStickerCategoryMainBinding;
import com.onyx.galaxy.note.editor.view.adapter.StickerMainCategoryAdapter;
import com.onyx.galaxy.note.p048ui.sticker.StickerUiBundle;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u001b¢\u0006\u0004\b&\u0010'J\u001e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006H\u0014J \u0010\u000e\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0004H\u0014J\"\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0014J\u000e\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0002J\u0018\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0002J\u0018\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0002J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017H\u0002R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010 R \u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u001f0\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006("}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;", "", "position", "", "list", "getItemViewType", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "holder", "item", "", "onBindViewHolder", "updateStickerList", "p", C4921e.f26528e, "s", "", CouchFieldKey.KEY_UNIQUE_ID, "", "u", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "r", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "bundle", "", "J", "highlightDuration", "", "t", "Ljava/util/Map;", "lastHighlightTime", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class StickerMainCategoryAdapter extends BaseQuickAdapter<StickerCategoryModel, StickerMainCategoryViewHolder> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final StickerUiBundle bundle;

    /* renamed from: s, reason: from kotlin metadata */
    public final long highlightDuration;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Map<String, Long> lastHighlightTime;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StickerMainCategoryAdapter(@NotNull StickerUiBundle bundle) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        this.bundle = bundle;
        this.highlightDuration = ResManager.INSTANCE.getLong(C10651R.integer.highlight_duration);
        this.lastHighlightTime = new LinkedHashMap();
    }

    /* renamed from: q */
    public static final void m47672q(StickerMainCategoryAdapter this$0, StickerMainCategoryViewHolder holder, StickerCategoryModel item, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(holder, "$holder");
        Intrinsics.checkNotNullParameter(item, "$item");
        this$0.m47677s(holder, item);
    }

    /* renamed from: r */
    public static final void m47673r(StickerMainCategoryAdapter this$0, StickerMainCategoryViewHolder holder, StickerCategoryModel item, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(holder, "$holder");
        Intrinsics.checkNotNullParameter(item, "$item");
        this$0.m47677s(holder, item);
    }

    /* renamed from: t */
    public static final void m47674t(StickerMainCategoryAdapter this$0, StickerCategoryModel item) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        int indexOf = this$0.getItems().indexOf(item);
        if (indexOf < 0 || !this$0.getRecyclerView().isAttachedToWindow()) {
            return;
        }
        this$0.notifyItemChanged(indexOf);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public int getItemViewType(int position, @NotNull List<? extends StickerCategoryModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        StickerCategoryModel item = getItem(position);
        if (item != null) {
            return item.getType();
        }
        return -1;
    }

    /* renamed from: o */
    public final void m47675o(StickerMainCategoryViewHolder holder, StickerCategoryModel item) {
        holder.getBinding().stickerEmptyTipView.setTipsLayout(C10651R.layout.layout_placeholder_sticker);
        ViewKt.setViewVisibleOrInvisible(holder.getBinding().stickerEmptyTipView, false);
        ViewKt.setViewVisibleOrGone(holder.getBinding().selectButton, true);
        holder.updateSubCategoryList();
        holder.updateSubCategoryStickerList();
        holder.addNewCategoryEvent();
        holder.addImportEvent();
        holder.updateEmptyLayout();
    }

    /* renamed from: p */
    public final void m47676p(final StickerMainCategoryViewHolder holder, final StickerCategoryModel item) {
        holder.getBinding().stickerEmptyTipView.setTipsLayout(C10651R.layout.layout_placeholder_sticker_offline);
        ViewKt.setViewVisibleOrInvisible(holder.getBinding().stickerEmptyTipView, true);
        ViewKt.setViewVisibleOrInvisible(holder.getBinding().subCategoryListView, false);
        ViewKt.setViewVisibleOrInvisible(holder.getBinding().categoryAddButton, true);
        ViewKt.setViewVisibleOrGone(holder.getBinding().importButton, false);
        ViewKt.setViewVisibleOrGone(holder.getBinding().selectButton, false);
        if (item.getType() == 2) {
            ViewKt.setViewVisibleOrInvisible(holder.getBinding().headerView, true);
            ViewKt.setViewVisibleOrInvisible(holder.getBinding().categoryAddButton, true);
            ViewKt.setViewVisibleOrGone(holder.getBinding().importButton, true);
            holder.getBinding().categoryAddButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.yym
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StickerMainCategoryAdapter.m47672q(StickerMainCategoryAdapter.this, holder, item, view);
                }
            });
            holder.getBinding().importButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.zym
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StickerMainCategoryAdapter.m47673r(StickerMainCategoryAdapter.this, holder, item, view);
                }
            });
            holder.getBinding().stickerEmptyTipView.setHighlight(m47678u(item.getUniqueId()));
        }
    }

    /* renamed from: s */
    public final void m47677s(StickerMainCategoryViewHolder holder, final StickerCategoryModel item) {
        this.lastHighlightTime.put(item.getUniqueId(), Long.valueOf(System.currentTimeMillis()));
        notifyItemChanged(getItems().indexOf(item));
        holder.itemView.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.azm
            @Override // java.lang.Runnable
            public final void run() {
                StickerMainCategoryAdapter.m47674t(StickerMainCategoryAdapter.this, item);
            }
        }, this.highlightDuration);
    }

    /* renamed from: u */
    public final boolean m47678u(String uniqueId) {
        Long l = this.lastHighlightTime.get(uniqueId);
        if (l != null) {
            return System.currentTimeMillis() - l.longValue() < this.highlightDuration;
        }
        return false;
    }

    public final void updateStickerList(int position) {
        RecyclerView.ViewHolder findViewHolderForAdapterPosition = getRecyclerView().findViewHolderForAdapterPosition(position);
        StickerMainCategoryViewHolder stickerMainCategoryViewHolder = findViewHolderForAdapterPosition instanceof StickerMainCategoryViewHolder ? (StickerMainCategoryViewHolder) findViewHolderForAdapterPosition : null;
        if (stickerMainCategoryViewHolder != null) {
            stickerMainCategoryViewHolder.updateSubCategoryStickerList();
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull StickerMainCategoryViewHolder holder, int position, @Nullable StickerCategoryModel item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        holder.setMainCategory$note_overseasRelease(item);
        StickerCategoryModel selectedSubCategory = this.bundle.getSelectedSubCategory(item);
        if (selectedSubCategory == null) {
            return;
        }
        holder.setSubCategory$note_overseasRelease(selectedSubCategory);
        if (holder.getMainCategory$note_overseasRelease().getIsPlaceholder() && !NetworkUtils.INSTANCE.isNetworkConnected(ResManager.INSTANCE.getAppContext())) {
            m47676p(holder, item);
        } else {
            m47675o(holder, item);
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public StickerMainCategoryViewHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        LayoutStickerCategoryMainBinding inflate = LayoutStickerCategoryMainBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new StickerMainCategoryViewHolder(this.bundle, inflate);
    }
}
