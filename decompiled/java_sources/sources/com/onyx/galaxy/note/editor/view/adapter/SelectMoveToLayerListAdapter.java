package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.note.common.utils.NotePageInfoUtils;
import com.onyx.android.sdk.replicator.note.data.page.LayerInfo;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.ItemSelectMoveToLayerBinding;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J(\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0006J\u000e\u0010\u0014\u001a\u00020\u00132\u0006\u0010\b\u001a\u00020\u0002R\u0016\u0010\u0017\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/SelectMoveToLayerListAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemSelectMoveToLayerBinding;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "id", "setSelectedLayerId", "", "isItemSelected", "r", "I", "selectedLayerId", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SelectMoveToLayerListAdapter extends BaseQuickAdapter<LayerInfo, DataBindingHolder<ItemSelectMoveToLayerBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    public int selectedLayerId;

    public SelectMoveToLayerListAdapter() {
        super(null, 1, null);
        this.selectedLayerId = -1;
    }

    public final boolean isItemSelected(@NotNull LayerInfo item) {
        Intrinsics.checkNotNullParameter(item, "item");
        return item.getId() == this.selectedLayerId;
    }

    public final void setSelectedLayerId(int id) {
        this.selectedLayerId = id;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemSelectMoveToLayerBinding> holder, int position, @Nullable LayerInfo item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        TintTextView tintTextView = holder.getBinding().tvTitle;
        String name = item.getName();
        if (name == null) {
            name = ResManager.INSTANCE.getString(C10651R.string.default_layer_name_format, NotePageInfoUtils.INSTANCE.getLayerName(item.getId()));
        }
        tintTextView.setText(name);
        holder.getBinding().getRoot().setSelected(isItemSelected(item));
        holder.getBinding().getRoot().setEnabled(!holder.getBinding().getRoot().isSelected());
        if (holder.getBinding().getRoot().isSelected()) {
            Drawable themeDrawable = ThemeUtils.getThemeDrawable(C10651R.drawable.icon_move_layer_selected);
            themeDrawable.setBounds(0, 0, themeDrawable.getIntrinsicWidth(), themeDrawable.getIntrinsicHeight());
            holder.getBinding().tvTitle.setCompoundDrawables(holder.getBinding().tvTitle.getCompoundDrawables()[0], holder.getBinding().tvTitle.getCompoundDrawables()[1], themeDrawable, holder.getBinding().tvTitle.getCompoundDrawables()[3]);
            return;
        }
        holder.getBinding().tvTitle.setCompoundDrawables(null, null, null, null);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemSelectMoveToLayerBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new DataBindingHolder<>(ItemSelectMoveToLayerBinding.inflate(LayoutInflater.from(context), parent, false));
    }
}
