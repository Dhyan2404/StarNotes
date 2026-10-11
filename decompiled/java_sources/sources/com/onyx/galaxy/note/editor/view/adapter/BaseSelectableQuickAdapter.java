package com.onyx.galaxy.note.editor.view.adapter;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0004*\u00020\u00032\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005:\u00013B\u0007¢\u0006\u0004\b1\u00102J\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\b\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0006J\u0006\u0010\u000b\u001a\u00020\nJ\u0015\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00028\u0000¢\u0006\u0004\b\r\u0010\u000eJ\u0006\u0010\u000f\u001a\u00020\nJ\u0006\u0010\u0010\u001a\u00020\u0006J\u000e\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\nJ\u0006\u0010\u0013\u001a\u00020\u0006J\u0015\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00028\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00028\u0000¢\u0006\u0004\b\u0018\u0010\u000eJ\u0014\u0010\u001b\u001a\u00020\u00062\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019J\u0014\u0010\u001c\u001a\u00020\u00062\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019J\u0014\u0010\u001e\u001a\u00020\u00062\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019R\u0016\u0010!\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R(\u0010)\u001a\b\u0012\u0004\u0012\u00028\u00000\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R*\u00100\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010*8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/¨\u00064"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;", "", "T", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "VH", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "", "toggleSelectionMode", "enterSelectionMode", "quitSelectionMode", "", "isSelectionMode", "item", "toggleSelectItem", "(Ljava/lang/Object;)V", "isAllItemSelected", "toggleSelectAll", "all", "selectAll", "clearSelectedItems", "t", "isItemSelected", "(Ljava/lang/Object;)Z", "model", "onItemClick", "", "list", "onItemSelected", SyncConstant.SYNC_ACTION_REMOVE, FirebaseAnalytics.Param.ITEMS, "notifyItemsChanged", "r", Constants.HASIDCALL_INDEX_SIG, "selectionMode", "", "s", "Ljava/util/List;", "getSelectedItems", "()Ljava/util/List;", "setSelectedItems", "(Ljava/util/List;)V", "selectedItems", "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;", "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;", "getListener", "()Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;", "setListener", "(Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "ItemSelectionListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBaseSelectableQuickAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseSelectableQuickAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,117:1\n1855#2,2:118\n*S KotlinDebug\n*F\n+ 1 BaseSelectableQuickAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter\n*L\n106#1:118,2\n*E\n"})
/* loaded from: classes9.dex */
public abstract class BaseSelectableQuickAdapter<T, VH extends RecyclerView.ViewHolder> extends BaseQuickAdapter<T, VH> {

    /* renamed from: r, reason: from kotlin metadata */
    public boolean selectionMode;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public List<T> selectedItems;

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public ItemSelectionListener<T> listener;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\bf\u0018\u0000*\u0004\b\u0002\u0010\u00012\u00020\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00020\u0006H&¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;", "T", "", "onItemSelected", "", "list", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface ItemSelectionListener<T> {
        void onItemSelected(@NotNull List<? extends T> list);
    }

    public BaseSelectableQuickAdapter() {
        super(null, 1, null);
        this.selectedItems = new ArrayList();
    }

    public final void clearSelectedItems() {
        this.selectedItems.clear();
        notifyItemRangeChanged(0, getItemCount());
    }

    public final void enterSelectionMode() {
        this.selectionMode = true;
        this.selectedItems.clear();
        notifyDataSetChanged();
    }

    @Nullable
    public final ItemSelectionListener<T> getListener() {
        return this.listener;
    }

    @NotNull
    public final List<T> getSelectedItems() {
        return this.selectedItems;
    }

    public final boolean isAllItemSelected() {
        return CollectionKt.getSize(this.selectedItems) >= getItemCount();
    }

    public final boolean isItemSelected(@NotNull T t) {
        Intrinsics.checkNotNullParameter(t, "t");
        return this.selectedItems.contains(t);
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
        ItemSelectionListener<T> itemSelectionListener;
        Intrinsics.checkNotNullParameter(list, "list");
        if (CollectionKt.isNullOrEmpty(list) || (itemSelectionListener = this.listener) == null) {
            return;
        }
        itemSelectionListener.onItemSelected(list);
    }

    public final void quitSelectionMode() {
        this.selectionMode = false;
        this.selectedItems.clear();
        notifyDataSetChanged();
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
            this.selectedItems.clear();
            this.selectedItems.addAll(getItems());
        } else {
            this.selectedItems.clear();
        }
        notifyItemRangeChanged(0, getItemCount());
    }

    public final void setListener(@Nullable ItemSelectionListener<T> itemSelectionListener) {
        this.listener = itemSelectionListener;
    }

    public final void setSelectedItems(@NotNull List<T> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.selectedItems = list;
    }

    public final void toggleSelectAll() {
        selectAll(!(CollectionKt.getSize(this.selectedItems) >= getItemCount()));
    }

    public final void toggleSelectItem(@NotNull T item) {
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

    public final void toggleSelectionMode() {
        if (this.selectionMode) {
            quitSelectionMode();
        } else {
            enterSelectionMode();
        }
    }
}
