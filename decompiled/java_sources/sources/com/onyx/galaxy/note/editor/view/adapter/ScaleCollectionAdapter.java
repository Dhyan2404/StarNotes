package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.ItemScaleBinding;
import com.onyx.galaxy.note.editor.data.PensizeConvertExtKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002J/\u0010\f\u001a\u00020\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\f\u0010\rJ&\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\tH\u0014R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\"\u0010\u001d\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemScaleBinding;", "scale", "", "setCurrentScale", "holder", "", "position", "item", "onBindViewHolder", "(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILjava/lang/Float;)V", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "r", "Ljava/lang/Float;", "currentScale", "s", "F", "getMinScale", "()F", "setMinScale", "(F)V", "minScale", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ScaleCollectionAdapter extends BaseQuickAdapter<Float, DataBindingHolder<ItemScaleBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public Float currentScale;

    /* renamed from: s, reason: from kotlin metadata */
    public float minScale;

    public ScaleCollectionAdapter() {
        super(null, 1, null);
        this.minScale = 0.2f;
    }

    public final float getMinScale() {
        return this.minScale;
    }

    public final void setCurrentScale(float scale) {
        this.currentScale = Float.valueOf(scale);
        notifyDataSetChanged();
    }

    public final void setMinScale(float f) {
        this.minScale = f;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemScaleBinding> holder, int position, @Nullable Float item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item != null) {
            item.floatValue();
            holder.getBinding().tvContent.setText(ResManager.INSTANCE.getString(C10651R.string.percent_format, Integer.valueOf((int) PensizeConvertExtKt.valueToPercent(item.floatValue()))));
            holder.getBinding().llBg.setSelected(Intrinsics.areEqual(item, this.currentScale));
            holder.getBinding().tvContent.setSelected(Intrinsics.areEqual(item, this.currentScale));
            holder.getBinding().llBg.setEnabled(item.floatValue() >= this.minScale);
            holder.getBinding().executePendingBindings();
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemScaleBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemScaleBinding inflate = ItemScaleBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }
}
