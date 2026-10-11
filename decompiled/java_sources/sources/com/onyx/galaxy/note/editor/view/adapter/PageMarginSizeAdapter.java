package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.util.Size;
import android.view.ViewGroup;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.base.extension.SizeKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.galaxy.note.databinding.ItemPageMarginSizeBinding;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.h6m;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001:\u0001/B\u000f\u0012\u0006\u0010!\u001a\u00020\u001c¢\u0006\u0004\b-\u0010.J(\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\u000e\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0014J\u000e\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0011J\u000e\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0014J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\b\u001a\u00020\u0002H\u0002J\u0010\u0010\u001b\u001a\u00020\u00192\u0006\u0010\b\u001a\u00020\u0002H\u0002R\u0017\u0010!\u001a\u00020\u001c8\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0016\u0010$\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010'\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010*\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010,\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010&¨\u00060"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;", "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;", "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "", "size", "setTextSize", "Landroid/util/Size;", "setMinSelectSize", h6m.f71884i, "setMaxSelectSizeTimes", "setCurrentSize", "", "l", "m", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "u", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "v", "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;", "selectSize", "w", "F", "textSize", "x", "Landroid/util/Size;", "minSize", "y", "maxTimes", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "ItemViewHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PageMarginSizeAdapter extends BaseSelectableQuickAdapter<SizeFormat, DataBindingHolder<ItemPageMarginSizeBinding>> {

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public SizeFormat selectSize;

    /* renamed from: w, reason: from kotlin metadata */
    public float textSize;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public Size minSize;

    /* renamed from: y, reason: from kotlin metadata */
    public float maxTimes;

    public PageMarginSizeAdapter(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        this.selectSize = SizeFormat.CUSTOM;
        this.textSize = ResManager.INSTANCE.getDimension(C7384R.dimen.sp_14);
        this.minSize = new Size(0, 0);
        this.maxTimes = -1.0f;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    /* renamed from: l */
    public final boolean m47651l(SizeFormat item) {
        if (item.isCustom()) {
            return true;
        }
        if (item.getSize().getWidth() < this.minSize.getWidth() || item.getSize().getHeight() < this.minSize.getHeight()) {
            return false;
        }
        return !m47652m(item);
    }

    /* renamed from: m */
    public final boolean m47652m(SizeFormat item) {
        if (this.maxTimes <= 0.0f) {
            return false;
        }
        return ((float) item.getSize().getWidth()) > ((float) this.minSize.getWidth()) * this.maxTimes || ((float) item.getSize().getHeight()) > ((float) this.minSize.getHeight()) * this.maxTimes;
    }

    public final void setCurrentSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        this.selectSize = SizeFormat.CUSTOM;
        for (SizeFormat sizeFormat : getItems()) {
            if (SizeKt.areApproximatelyEqual(sizeFormat.getSize(), size)) {
                this.selectSize = sizeFormat;
                return;
            }
        }
    }

    public final void setMaxSelectSizeTimes(float times) {
        this.maxTimes = times;
    }

    public final void setMinSelectSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        this.minSize = size;
    }

    public final void setTextSize(float size) {
        this.textSize = size;
        notifyDataSetChanged();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemPageMarginSizeBinding> holder, int position, @Nullable SizeFormat item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        holder.getBinding().tvName.setSingleLine();
        holder.getBinding().tvName.setTextSize(0, this.textSize);
        holder.getBinding().tvName.setText(item.getSizeFormatName());
        ViewKt.setViewVisibleOrInvisible(holder.getBinding().ivSelect, item == this.selectSize);
        holder.getBinding().tvName.setEnabled(m47651l(item));
        holder.getBinding().itemContainer.setEnabled(m47651l(item));
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemPageMarginSizeBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new ItemViewHolder(this, parent, null, 2, null);
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter$ItemViewHolder;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;", "I", "Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;", "binding", "Landroid/view/ViewGroup;", "parent", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public final class ItemViewHolder extends DataBindingHolder<ItemPageMarginSizeBinding> {

        /* renamed from: I, reason: from kotlin metadata */
        @NotNull
        public final ItemPageMarginSizeBinding binding;

        /* renamed from: J */
        public final /* synthetic */ PageMarginSizeAdapter f59592J;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ItemViewHolder(@NotNull PageMarginSizeAdapter pageMarginSizeAdapter, @NotNull ViewGroup parent, ItemPageMarginSizeBinding binding) {
            super(binding);
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f59592J = pageMarginSizeAdapter;
            this.binding = binding;
        }

        @Override // com.chad.library.adapter4.viewholder.DataBindingHolder
        @NotNull
        public final ItemPageMarginSizeBinding getBinding() {
            return this.binding;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ ItemViewHolder(com.onyx.galaxy.note.editor.view.adapter.PageMarginSizeAdapter r1, android.view.ViewGroup r2, com.onyx.galaxy.note.databinding.ItemPageMarginSizeBinding r3, int r4, kotlin.jvm.internal.DefaultConstructorMarker r5) {
            /*
                r0 = this;
                r4 = r4 & 2
                if (r4 == 0) goto L16
                android.content.Context r3 = r1.getContext()
                android.view.LayoutInflater r3 = android.view.LayoutInflater.from(r3)
                r4 = 0
                com.onyx.galaxy.note.databinding.ItemPageMarginSizeBinding r3 = com.onyx.galaxy.note.databinding.ItemPageMarginSizeBinding.inflate(r3, r2, r4)
                java.lang.String r4 = "inflate(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            L16:
                r0.<init>(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.adapter.PageMarginSizeAdapter.ItemViewHolder.<init>(com.onyx.galaxy.note.editor.view.adapter.PageMarginSizeAdapter, android.view.ViewGroup, com.onyx.galaxy.note.databinding.ItemPageMarginSizeBinding, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }
}
