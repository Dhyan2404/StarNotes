package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.ItemPageMarginTemplateStyleBinding;
import com.onyx.galaxy.note.editor.data.PageMarginTemplateStyle;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\f\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ(\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\u000e\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u0014\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0002R\u0016\u0010\u0017\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateStyleAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemPageMarginTemplateStyleBinding;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "", "size", "setTextSize", "selectItem", "r", "F", "textSize", "s", "I", "selectedIndex", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PageMarginTemplateStyleAdapter extends BaseQuickAdapter<PageMarginTemplateStyle, DataBindingHolder<ItemPageMarginTemplateStyleBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    public float textSize;

    /* renamed from: s, reason: from kotlin metadata */
    public int selectedIndex;

    public PageMarginTemplateStyleAdapter() {
        super(null, 1, null);
        this.textSize = ResManager.INSTANCE.getDimension(C7384R.dimen.sp_14);
        this.selectedIndex = -1;
    }

    public final void selectItem(@NotNull PageMarginTemplateStyle item) {
        Intrinsics.checkNotNullParameter(item, "item");
        int i = this.selectedIndex;
        int indexOf = getItems().indexOf(item);
        this.selectedIndex = indexOf;
        notifyItemChanged(indexOf);
        notifyItemChanged(i);
    }

    public final void setTextSize(float size) {
        this.textSize = size;
        notifyDataSetChanged();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemPageMarginTemplateStyleBinding> holder, int position, @Nullable PageMarginTemplateStyle item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        holder.getBinding().tvName.setSingleLine();
        holder.getBinding().tvName.setTextSize(0, this.textSize);
        holder.getBinding().tvName.setText(ResManager.INSTANCE.getStringSafely(item.getName()));
        Drawable themeDrawable = position == this.selectedIndex ? ThemeUtils.getThemeDrawable(C10651R.drawable.icon_sort_check) : null;
        if (themeDrawable != null) {
            themeDrawable.setBounds(0, 0, themeDrawable.getIntrinsicWidth(), themeDrawable.getIntrinsicHeight());
        }
        holder.getBinding().tvName.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, themeDrawable, (Drawable) null);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemPageMarginTemplateStyleBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new DataBindingHolder<>(ItemPageMarginTemplateStyleBinding.inflate(LayoutInflater.from(context), parent, false));
    }
}
