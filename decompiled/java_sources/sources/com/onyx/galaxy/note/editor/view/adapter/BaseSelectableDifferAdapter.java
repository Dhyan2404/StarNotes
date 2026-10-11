package com.onyx.galaxy.note.editor.view.adapter;

import android.annotation.SuppressLint;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.adapter.BaseSelectableQuickAdapter;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0004*\u00020\u00032\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005:\u0001.B\u0017\u0012\u000e\b\u0002\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000*¢\u0006\u0004\b,\u0010-J\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\b\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0006J\u0006\u0010\u000b\u001a\u00020\nJ\u0015\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00028\u0000¢\u0006\u0004\b\r\u0010\u000eJ\u0006\u0010\u000f\u001a\u00020\nJ\u0006\u0010\u0010\u001a\u00020\u0006J\u000e\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\nJ\u0006\u0010\u0013\u001a\u00020\u0006J\u0017\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00028\u0000¢\u0006\u0004\b\u0018\u0010\u000eJ\u0014\u0010\u001b\u001a\u00020\u00062\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019J\u0014\u0010\u001c\u001a\u00020\u00062\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019J\u0014\u0010\u001e\u001a\u00020\u00062\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019R\u0016\u0010!\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R*\u0010)\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u0006/"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;", "", "T", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "VH", "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;", "", "toggleSelectionMode", "enterSelectionMode", "quitSelectionMode", "", "isSelectionMode", "item", "toggleSelectItem", "(Ljava/lang/Object;)V", "isAllItemSelected", "toggleSelectAll", "all", "selectAll", "clearSelectedItems", "t", "isItemSelected", "(Ljava/lang/Object;)Z", "model", "onItemClick", "", "list", "onItemSelected", SyncConstant.SYNC_ACTION_REMOVE, FirebaseAnalytics.Param.ITEMS, "notifyItemsChanged", "y", Constants.HASIDCALL_INDEX_SIG, "selectionMode", "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;", "z", "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;", "getListener", "()Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;", "setListener", "(Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "diffCallback", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V", "DiffCallback", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBaseSelectableDifferAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseSelectableDifferAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,127:1\n1855#2,2:128\n*S KotlinDebug\n*F\n+ 1 BaseSelectableDifferAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter\n*L\n108#1:128,2\n*E\n"})
/* loaded from: classes9.dex */
public abstract class BaseSelectableDifferAdapter<T, VH extends RecyclerView.ViewHolder> extends BaseSwipeAbleDifferAdapter<T, VH> {

    /* renamed from: y, reason: from kotlin metadata */
    public boolean selectionMode;

    /* renamed from: z, reason: from kotlin metadata */
    @Nullable
    public BaseSelectableQuickAdapter.ItemSelectionListener<T> listener;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0000\u0018\u0000*\b\b\u0002\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u001d\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00028\u00022\u0006\u0010\b\u001a\u00028\u0002H\u0017¢\u0006\u0002\u0010\tJ\u001d\u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00028\u00022\u0006\u0010\b\u001a\u00028\u0002H\u0016¢\u0006\u0002\u0010\t¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter$DiffCallback;", "T", "", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "()V", "areContentsTheSame", "", "oldItem", "newItem", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "areItemsTheSame", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class DiffCallback<T> extends DiffUtil.ItemCallback<T> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        @SuppressLint({"DiffUtilEquals"})
        public boolean areContentsTheSame(@NotNull T oldItem, @NotNull T newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areItemsTheSame(@NotNull T oldItem, @NotNull T newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BaseSelectableDifferAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final void clearSelectedItems() {
        getSelectedItems().clear();
        notifyItemRangeChanged(0, getItemCount(), Integer.valueOf(C10651R.id.checkbox));
    }

    public final void enterSelectionMode() {
        this.selectionMode = true;
        getSelectedItems().clear();
        notifyItemRangeChanged(0, getItemCount(), Integer.valueOf(C10651R.id.checkbox));
    }

    @Nullable
    public final BaseSelectableQuickAdapter.ItemSelectionListener<T> getListener() {
        return this.listener;
    }

    public final boolean isAllItemSelected() {
        return CollectionKt.getSize(getSelectedItems()) >= getItemCount();
    }

    public boolean isItemSelected(@NotNull T t) {
        Intrinsics.checkNotNullParameter(t, "t");
        return getSelectedItems().contains(t);
    }

    /* renamed from: isSelectionMode, reason: from getter */
    public final boolean getSelectionMode() {
        return this.selectionMode;
    }

    public final void notifyItemsChanged(@NotNull List<? extends T> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        Iterator<T> it2 = items.iterator();
        while (it2.hasNext()) {
            int itemIndexOfFirst = itemIndexOfFirst(it2.next());
            if (itemIndexOfFirst > 0) {
                notifyItemChanged(itemIndexOfFirst);
            }
        }
    }

    public final void onItemClick(@NotNull T model) {
        List<? extends T> listOf;
        Intrinsics.checkNotNullParameter(model, "model");
        if (this.selectionMode) {
            toggleSelectItem(model);
        } else {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(model);
            onItemSelected(listOf);
        }
    }

    public final void onItemSelected(@NotNull List<? extends T> list) {
        BaseSelectableQuickAdapter.ItemSelectionListener<T> itemSelectionListener;
        Intrinsics.checkNotNullParameter(list, "list");
        if (CollectionKt.isNullOrEmpty(list) || (itemSelectionListener = this.listener) == null) {
            return;
        }
        itemSelectionListener.onItemSelected(list);
    }

    public final void quitSelectionMode() {
        this.selectionMode = false;
        getSelectedItems().clear();
        notifyItemRangeChanged(0, getItemCount(), Integer.valueOf(C10651R.id.checkbox));
    }

    public final void remove(@NotNull List<? extends T> list) {
        List<? extends T> mutableList;
        Intrinsics.checkNotNullParameter(list, "list");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getItems());
        mutableList.removeAll(list);
        submitList(mutableList);
    }

    public final void selectAll(boolean all) {
        if (all) {
            getSelectedItems().clear();
            getSelectedItems().addAll(getItems());
        } else {
            getSelectedItems().clear();
        }
        notifyItemRangeChanged(0, getItemCount(), Integer.valueOf(C10651R.id.checkbox));
    }

    public final void setListener(@Nullable BaseSelectableQuickAdapter.ItemSelectionListener<T> itemSelectionListener) {
        this.listener = itemSelectionListener;
    }

    public final void toggleSelectAll() {
        selectAll(!(CollectionKt.getSize(getSelectedItems()) >= getItemCount()));
    }

    public final void toggleSelectItem(@NotNull T item) {
        Intrinsics.checkNotNullParameter(item, "item");
        int indexOf = getItems().indexOf(item);
        if (indexOf < 0) {
            return;
        }
        if (!getSelectedItems().remove(item)) {
            getSelectedItems().add(item);
        }
        notifyItemChanged(indexOf, Integer.valueOf(C10651R.id.checkbox));
    }

    public final void toggleSelectionMode() {
        if (this.selectionMode) {
            quitSelectionMode();
        } else {
            enterSelectionMode();
        }
    }

    public /* synthetic */ BaseSelectableDifferAdapter(DiffUtil.ItemCallback itemCallback, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new DiffCallback() : itemCallback);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseSelectableDifferAdapter(@NotNull DiffUtil.ItemCallback<T> diffCallback) {
        super(diffCallback);
        Intrinsics.checkNotNullParameter(diffCallback, "diffCallback");
    }
}
