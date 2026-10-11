package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.base.utils.UriUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.note.common.shape.TapeFillStyle;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.galaxy.note.common.extension.BaseQuickAdapterKt;
import com.onyx.galaxy.note.databinding.ItemTapeFillStyleBinding;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ(\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\u000e\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0006R\u0016\u0010\u0016\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0018\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0015¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/TapeFillStyleAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemTapeFillStyleBinding;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "updateSelectPosition", "color", "updateFillColor", "r", "I", "selectedItem", "s", CouchFieldKey.KEY_FILL_COLOR, Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class TapeFillStyleAdapter extends BaseQuickAdapter<TapeFillStyle, DataBindingHolder<ItemTapeFillStyleBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    public int selectedItem;

    /* renamed from: s, reason: from kotlin metadata */
    public int fillColor;

    public TapeFillStyleAdapter() {
        super(null, 1, null);
        this.fillColor = -1;
    }

    public final void updateFillColor(int color) {
        this.fillColor = color;
        notifyItemRangeChanged(0, getItemCount());
    }

    public final void updateSelectPosition(int position) {
        int i = this.selectedItem;
        this.selectedItem = position;
        BaseQuickAdapterKt.notifyItemChangedSafety(this, i);
        BaseQuickAdapterKt.notifyItemChangedSafety(this, this.selectedItem);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemTapeFillStyleBinding> holder, int position, @Nullable TapeFillStyle item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        holder.getBinding().getRoot().setSelected(this.selectedItem == position);
        holder.getBinding().ivIcon.setBorderColorRes(holder.getBinding().getRoot().isSelected() ? 0 : C7996R.color.theme_divider_color_01);
        UriUtils uriUtils = UriUtils.INSTANCE;
        String iconRes = item.getIconRes();
        if (iconRes == null) {
            iconRes = "";
        }
        String path = uriUtils.assetFileUri(iconRes).getPath();
        Glide.with(holder.itemView).load(path != null ? path : "").transform(new CenterCrop()).into(holder.getBinding().ivIcon);
        holder.getBinding().ivIcon.setImageBackgroundColor(this.fillColor);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemTapeFillStyleBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new DataBindingHolder<>(ItemTapeFillStyleBinding.inflate(LayoutInflater.from(context), parent, false));
    }
}
