package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.base.extension.ColorKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.galaxy.note.databinding.ItemPageMarginTemplateBinding;
import com.onyx.galaxy.note.editor.data.PageMarginTemplateData;
import com.onyx.galaxy.note.editor.data.PageMarginTemplateStyle;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007¢\u0006\u0004\b\u001f\u0010 J(\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\u000e\u0010\u0011\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0002J\u001e\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012J\u0006\u0010\u0017\u001a\u00020\u0006J\u000e\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0006R\u0016\u0010\u001c\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001b¨\u0006!"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateData;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemPageMarginTemplateBinding;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "selectTemplate", "", SyncConstant.LOCAL_TEMPLATE_RES_NAME, "Lkotlin/Pair;", "Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;", "findTemplateByRes", "getSelectedIndex", "color", "setFillColor", "r", "I", "selectedIndex", "s", "itemBackgroundColor", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PageMarginTemplateAdapter extends BaseQuickAdapter<PageMarginTemplateData, DataBindingHolder<ItemPageMarginTemplateBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    public int selectedIndex;

    /* renamed from: s, reason: from kotlin metadata */
    public int itemBackgroundColor;

    public PageMarginTemplateAdapter() {
        super(null, 1, null);
        this.selectedIndex = -1;
        this.itemBackgroundColor = -1;
    }

    @Nullable
    public final Pair<PageMarginTemplateData, PageMarginTemplateStyle> findTemplateByRes(@Nullable String templateRes) {
        for (PageMarginTemplateData pageMarginTemplateData : getItems()) {
            List<PageMarginTemplateStyle> templates = pageMarginTemplateData.getTemplates();
            if (templates != null) {
                for (PageMarginTemplateStyle pageMarginTemplateStyle : templates) {
                    if (Intrinsics.areEqual(pageMarginTemplateStyle.getResName(), templateRes)) {
                        return new Pair<>(pageMarginTemplateData, pageMarginTemplateStyle);
                    }
                }
            }
        }
        return null;
    }

    public final int getSelectedIndex() {
        return this.selectedIndex;
    }

    public final void selectTemplate(@NotNull PageMarginTemplateData item) {
        Intrinsics.checkNotNullParameter(item, "item");
        int i = this.selectedIndex;
        int indexOf = getItems().indexOf(item);
        this.selectedIndex = indexOf;
        notifyItemChanged(indexOf);
        notifyItemChanged(i);
    }

    public final void setFillColor(int color) {
        this.itemBackgroundColor = color;
        if (getItemCount() <= 0) {
            return;
        }
        notifyItemRangeChanged(0, getItemCount());
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemPageMarginTemplateBinding> holder, int position, @Nullable PageMarginTemplateData item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        ViewKt.setViewVisibleOrGone(holder.getBinding().ivSelected, this.selectedIndex == position);
        ResManager resManager = ResManager.INSTANCE;
        Drawable drawable = resManager.getDrawable(resManager.getDrawableResId(item.getIconRes()));
        if (ColorKt.isDarkColor(this.itemBackgroundColor)) {
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            if (mutate != null) {
                mutate.setColorFilter(BitmapUtils.INSTANCE.getINVERTED_COLOR_FILTER());
            }
        }
        holder.getBinding().templateThumbnail.setImageDrawable(drawable);
        holder.getBinding().templateThumbnail.setBackgroundColor(this.itemBackgroundColor);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemPageMarginTemplateBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new DataBindingHolder<>(ItemPageMarginTemplateBinding.inflate(LayoutInflater.from(context), parent, false));
    }
}
