package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.galaxy.note.databinding.ItemAudioBinding;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001:\u00011B\u0007¢\u0006\u0004\b/\u00100J\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0002J\u0006\u0010\n\u001a\u00020\u0005J\u0006\u0010\u000b\u001a\u00020\u0005J\u0006\u0010\f\u001a\u00020\bJ\u000e\u0010\u000e\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u0002J\u0014\u0010\u0011\u001a\u00020\b2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u000fJ(\u0010\u0015\u001a\u00020\b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0013H\u0014R\u0016\u0010\u001e\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR(\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00020\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R$\u0010.\u001a\u0004\u0018\u00010'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-¨\u00062"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemAudioBinding;", "", "toggleSelectionMode", "item", "", "toggleSelectItem", "isAllItemSelected", "hasItemContains", "toggleSelectAll", "model", "onItemClick", "", "list", "onItemSelected", "holder", "", "position", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "r", Constants.HASIDCALL_INDEX_SIG, "selectionMode", "", "s", "Ljava/util/List;", "getSelectedItems", "()Ljava/util/List;", "setSelectedItems", "(Ljava/util/List;)V", "selectedItems", "Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter$ItemSelectionListener;", "t", "Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter$ItemSelectionListener;", "getListener", "()Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter$ItemSelectionListener;", "setListener", "(Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter$ItemSelectionListener;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "ItemSelectionListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class AudioListItemAdapter extends BaseQuickAdapter<AudioInfoBean, DataBindingHolder<ItemAudioBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    public boolean selectionMode;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public List<AudioInfoBean> selectedItems;

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public ItemSelectionListener listener;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H&¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter$ItemSelectionListener;", "", "onItemSelected", "", "list", "", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface ItemSelectionListener {
        void onItemSelected(@NotNull List<AudioInfoBean> list);
    }

    public AudioListItemAdapter() {
        super(null, 1, null);
        this.selectedItems = new ArrayList();
    }

    @Nullable
    public final ItemSelectionListener getListener() {
        return this.listener;
    }

    @NotNull
    public final List<AudioInfoBean> getSelectedItems() {
        return this.selectedItems;
    }

    public final boolean hasItemContains() {
        return CollectionKt.isNonBlank(this.selectedItems);
    }

    public final boolean isAllItemSelected() {
        return CollectionKt.getSize(this.selectedItems) >= getItemCount();
    }

    public final void onItemClick(@NotNull AudioInfoBean model) {
        List<AudioInfoBean> listOf;
        Intrinsics.checkNotNullParameter(model, "model");
        if (this.selectionMode) {
            toggleSelectItem(model);
        } else {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(model);
            onItemSelected(listOf);
        }
    }

    public final void onItemSelected(@NotNull List<AudioInfoBean> list) {
        ItemSelectionListener itemSelectionListener;
        Intrinsics.checkNotNullParameter(list, "list");
        if (CollectionKt.isNullOrEmpty(list) || (itemSelectionListener = this.listener) == null) {
            return;
        }
        itemSelectionListener.onItemSelected(list);
    }

    public final void setListener(@Nullable ItemSelectionListener itemSelectionListener) {
        this.listener = itemSelectionListener;
    }

    public final void setSelectedItems(@NotNull List<AudioInfoBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.selectedItems = list;
    }

    public final void toggleSelectAll() {
        if (CollectionKt.getSize(this.selectedItems) >= getItemCount()) {
            this.selectedItems.clear();
        } else {
            this.selectedItems.clear();
            this.selectedItems.addAll(getItems());
        }
        notifyItemRangeChanged(0, getItemCount());
    }

    public final void toggleSelectItem(@NotNull AudioInfoBean item) {
        Intrinsics.checkNotNullParameter(item, "item");
        int indexOf = getItems().indexOf(item);
        if (indexOf < 0) {
            return;
        }
        if (!this.selectedItems.remove(item)) {
            this.selectedItems.add(item);
        }
        notifyItemChanged(indexOf);
    }

    public final boolean toggleSelectionMode() {
        this.selectionMode = !this.selectionMode;
        this.selectedItems.clear();
        notifyDataSetChanged();
        return this.selectionMode;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemAudioBinding> holder, int position, @Nullable AudioInfoBean item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        holder.getBinding().setModel(item);
        ViewKt.setViewVisibleOrInvisible(holder.getBinding().moreSettings, !this.selectionMode);
        ViewKt.setViewVisibleOrInvisible(holder.getBinding().checkbox, this.selectionMode);
        holder.getBinding().checkbox.setChecked(this.selectedItems.contains(item));
        holder.getBinding().executePendingBindings();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemAudioBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemAudioBinding inflate = ItemAudioBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }
}
