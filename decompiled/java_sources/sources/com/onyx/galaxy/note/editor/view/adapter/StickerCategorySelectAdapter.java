package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.galaxy.note.databinding.LayoutStickerCategorySelectBinding;
import com.onyx.galaxy.note.editor.view.adapter.StickerCategorySelectAdapter;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u000b\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J&\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0014J(\u0010\u0010\u001a\u00020\u000f2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\r\u001a\u00020\t2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0014R$\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/StickerCategorySelectAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/LayoutStickerCategorySelectBinding;", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "holder", "position", "item", "", "onBindViewHolder", "r", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "getSelectedCategory", "()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "setSelectedCategory", "(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V", "selectedCategory", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class StickerCategorySelectAdapter extends BaseQuickAdapter<StickerCategoryModel, DataBindingHolder<LayoutStickerCategorySelectBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public StickerCategoryModel selectedCategory;

    public StickerCategorySelectAdapter() {
        super(null, 1, null);
    }

    /* renamed from: m */
    public static final void m47664m(StickerCategorySelectAdapter this$0, StickerCategoryModel stickerCategoryModel, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.selectedCategory = stickerCategoryModel;
        this$0.notifyDataSetChanged();
    }

    @Nullable
    public final StickerCategoryModel getSelectedCategory() {
        return this.selectedCategory;
    }

    public final void setSelectedCategory(@Nullable StickerCategoryModel stickerCategoryModel) {
        this.selectedCategory = stickerCategoryModel;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<LayoutStickerCategorySelectBinding> holder, int position, @Nullable final StickerCategoryModel item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        boolean areEqual = Intrinsics.areEqual(item, this.selectedCategory);
        holder.getBinding().setModel(item);
        ViewKt.setViewVisibleOrInvisible(holder.getBinding().selectedImage, areEqual);
        holder.getBinding().executePendingBindings();
        holder.getBinding().item.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.wym
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StickerCategorySelectAdapter.m47664m(StickerCategorySelectAdapter.this, item, view);
            }
        });
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<LayoutStickerCategorySelectBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        LayoutStickerCategorySelectBinding inflate = LayoutStickerCategorySelectBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }
}
