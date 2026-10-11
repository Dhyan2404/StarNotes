package com.onyx.galaxy.note.editor.view.adapter;

import android.annotation.SuppressLint;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.chad.library.adapter4.BaseDifferAdapter;
import com.onyx.android.sdk.base.utils.Debug;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010!\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000 :*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0004*\u00020\u00032\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005:\u0002:;B\u0017\u0012\u000e\b\u0002\u00107\u001a\b\u0012\u0004\u0012\u00028\u000006¢\u0006\u0004\b8\u00109J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\n\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u001a\u0010\u000e\u001a\u00020\b2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\b0\u000bJ\u0006\u0010\u000f\u001a\u00020\bJ\u0006\u0010\u0010\u001a\u00020\bJ\b\u0010\u0011\u001a\u00020\bH\u0016J\b\u0010\u0012\u001a\u00020\bH\u0016J\u0016\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013J\u001a\u0010\u0018\u001a\u00020\b2\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b0\u000bR\"\u0010\u001b\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR(\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00000\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001c\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00000\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010!R?\u00102\u001a\u001f\u0012\u0013\u0012\u00110\f¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020\b\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R$\u00105\u001a\u00020\f2\u0006\u00103\u001a\u00020\f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b4\u0010\u001a\u001a\u0004\b5\u0010\u001c¨\u0006<"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;", "", "T", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "VH", "Lcom/chad/library/adapter4/BaseDifferAdapter;", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "", "onAttachedToRecyclerView", "onDetachedFromRecyclerView", "Lkotlin/Function1;", "", "callback", "setSelectItemChangeCallback", "swipeStart", "swipeFinish", "onScrollBarDraggingStart", "onScrollBarDraggingRelease", "", "startIndex", "endIndex", "toggleSwipe", "action", "requireRecyclerViewSafety", "t", Constants.HASIDCALL_INDEX_SIG, "isScrollBarDragging", Constants.BOOLEAN_VALUE_SIG, "setScrollBarDragging", "(Z)V", "", "u", "Ljava/util/List;", "getSelectedItems", "()Ljava/util/List;", "setSelectedItems", "(Ljava/util/List;)V", "selectedItems", "v", "swipeItems", "Lkotlin/ParameterName;", "name", "selectAll", "w", "Lkotlin/jvm/functions/Function1;", "getSelectChangeCallback", "()Lkotlin/jvm/functions/Function1;", "setSelectChangeCallback", "(Lkotlin/jvm/functions/Function1;)V", "selectChangeCallback", "<set-?>", "x", "isAttachedToRecyclerView", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "diffCallback", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V", "Companion", "DiffCallback", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public abstract class BaseSwipeAbleDifferAdapter<T, VH extends RecyclerView.ViewHolder> extends BaseDifferAdapter<T, VH> {

    @NotNull
    public static final String PAY_LOAD_KEY_SWIPE = "pay_load_key_swipe";

    /* renamed from: t, reason: from kotlin metadata */
    public boolean isScrollBarDragging;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public List<T> selectedItems;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public List<T> swipeItems;

    /* renamed from: w, reason: from kotlin metadata */
    @Nullable
    public Function1<? super Boolean, Unit> selectChangeCallback;

    /* renamed from: x, reason: from kotlin metadata */
    public boolean isAttachedToRecyclerView;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0000\u0018\u0000*\b\b\u0002\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u001d\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00028\u00022\u0006\u0010\b\u001a\u00028\u0002H\u0017¢\u0006\u0002\u0010\tJ\u001d\u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00028\u00022\u0006\u0010\b\u001a\u00028\u0002H\u0016¢\u0006\u0002\u0010\t¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter$DiffCallback;", "T", "", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "()V", "areContentsTheSame", "", "oldItem", "newItem", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "areItemsTheSame", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
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
    public BaseSwipeAbleDifferAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Nullable
    public final Function1<Boolean, Unit> getSelectChangeCallback() {
        return this.selectChangeCallback;
    }

    @NotNull
    public final List<T> getSelectedItems() {
        return this.selectedItems;
    }

    /* renamed from: isAttachedToRecyclerView, reason: from getter */
    public final boolean getIsAttachedToRecyclerView() {
        return this.isAttachedToRecyclerView;
    }

    /* renamed from: isScrollBarDragging, reason: from getter */
    public final boolean getIsScrollBarDragging() {
        return this.isScrollBarDragging;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        super.onAttachedToRecyclerView(recyclerView);
        this.isAttachedToRecyclerView = true;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        super.onDetachedFromRecyclerView(recyclerView);
        this.isAttachedToRecyclerView = false;
    }

    public void onScrollBarDraggingRelease() {
        this.isScrollBarDragging = false;
    }

    public void onScrollBarDraggingStart() {
        this.isScrollBarDragging = true;
    }

    public final void requireRecyclerViewSafety(@NotNull Function1<? super RecyclerView, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        try {
            if (this.isAttachedToRecyclerView) {
                action.invoke(getRecyclerView());
            }
        } catch (Exception e) {
            Debug.INSTANCE.m32048e(e);
        }
    }

    public final void setScrollBarDragging(boolean z) {
        this.isScrollBarDragging = z;
    }

    public final void setSelectChangeCallback(@Nullable Function1<? super Boolean, Unit> function1) {
        this.selectChangeCallback = function1;
    }

    public final void setSelectItemChangeCallback(@NotNull Function1<? super Boolean, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.selectChangeCallback = callback;
    }

    public final void setSelectedItems(@NotNull List<T> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.selectedItems = list;
    }

    public final void swipeFinish() {
        this.swipeItems.clear();
    }

    public final void swipeStart() {
        this.swipeItems.clear();
        this.swipeItems.addAll(this.selectedItems);
    }

    public final void toggleSwipe(int startIndex, int endIndex) {
        int size = getItems().size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            T t = getItems().get(i);
            if (startIndex <= i && i <= endIndex) {
                if (this.swipeItems.contains(getItems().get(i))) {
                    this.selectedItems.remove(t);
                } else {
                    this.selectedItems.remove(t);
                    this.selectedItems.add(t);
                }
            } else if (this.swipeItems.contains(t)) {
                this.selectedItems.remove(t);
                this.selectedItems.add(t);
            } else {
                this.selectedItems.remove(t);
            }
            i++;
        }
        notifyItemRangeChanged(0, getItems().size(), PAY_LOAD_KEY_SWIPE);
        Function1<? super Boolean, Unit> function1 = this.selectChangeCallback;
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(this.selectedItems.size() == getItems().size()));
        }
    }

    public /* synthetic */ BaseSwipeAbleDifferAdapter(DiffUtil.ItemCallback itemCallback, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new DiffCallback() : itemCallback);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseSwipeAbleDifferAdapter(@NotNull DiffUtil.ItemCallback<T> diffCallback) {
        super(diffCallback);
        Intrinsics.checkNotNullParameter(diffCallback, "diffCallback");
        this.selectedItems = new ArrayList();
        this.swipeItems = new ArrayList();
    }
}
