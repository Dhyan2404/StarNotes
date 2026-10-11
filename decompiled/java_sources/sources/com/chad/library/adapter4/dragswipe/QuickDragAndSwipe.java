package com.chad.library.adapter4.dragswipe;

import android.graphics.Canvas;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.dragswipe.listener.DragAndSwipeDataCallback;
import com.chad.library.adapter4.dragswipe.listener.OnItemDragListener;
import com.chad.library.adapter4.dragswipe.listener.OnItemSwipeListener;
import com.chad.library.adapter4.viewholder.StateLayoutVH;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\"\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\\\u0010]J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\fJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\fJ\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0005H\u0016J\u0010\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0005H\u0016J\u001a\u0010\u0019\u001a\u00020\u00182\b\u0010\u0016\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0017\u001a\u00020\u0005H\u0016J\u0018\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0011H\u0016J \u0010\u001c\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u0011H\u0016J@\u0010!\u001a\u00020\u00182\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0005H\u0016J\u0018\u0010#\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0005H\u0016J\b\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u000f\u001a\u00020\fH\u0016J@\u0010*\u001a\u00020\u00182\u0006\u0010%\u001a\u00020$2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010'\u001a\u00020&2\u0006\u0010(\u001a\u00020&2\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010)\u001a\u00020\fH\u0016J\u0018\u0010+\u001a\u00020\u00182\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0011H\u0016J\u0010\u0010.\u001a\u00020\u00002\b\u0010-\u001a\u0004\u0018\u00010,J\u0010\u00101\u001a\u00020\u00002\b\u00100\u001a\u0004\u0018\u00010/J\u000e\u00104\u001a\u00020\u00002\u0006\u00103\u001a\u000202J\u0010\u00105\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0011H\u0002J\u0012\u00106\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0011H\u0002R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u0014\u0010>\u001a\u00020<8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u0010=R\u0016\u0010A\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0016\u0010C\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010@R\u0016\u0010F\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u0016\u0010H\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010ER\u0018\u0010K\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0018\u0010N\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0018\u0010Q\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0016\u0010S\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010@R\u0016\u0010U\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010@R\u0011\u0010X\u001a\u0002028F¢\u0006\u0006\u001a\u0004\bV\u0010WR\u0011\u0010[\u001a\u00020<8F¢\u0006\u0006\u001a\u0004\bY\u0010Z¨\u0006^"}, m61528d2 = {"Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;", "Landroidx/recyclerview/widget/ItemTouchHelper$Callback;", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "attachToRecyclerView", "", "dragMoveFlags", "setDragMoveFlags", "getDragMoveFlags", "swipeMoveFlags", "setSwipeMoveFlags", "getSwipeMoveFlags", "", "isLongPressDragEnabled", "setLongPressDragEnabled", "isItemViewSwipeEnabled", "setItemViewSwipeEnabled", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "holder", "startDrag", "position", "startSwipe", "viewHolder", "actionState", "", "onSelectedChanged", "getMovementFlags", "target", "onMove", "fromPos", "toPos", "x", "y", "onMoved", "direction", "onSwiped", "Landroid/graphics/Canvas;", "c", "", "dX", "dY", "isCurrentlyActive", "onChildDraw", "clearView", "Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;", "onItemDragListener", "setItemDragListener", "Lcom/chad/library/adapter4/dragswipe/listener/OnItemSwipeListener;", "onItemSwipeListener", "setItemSwipeListener", "Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;", "callback", "setDataCallback", C6999h.f39688c, C6998g.f39679a, "Landroidx/recyclerview/widget/RecyclerView;", "getRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "setRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "Landroidx/recyclerview/widget/ItemTouchHelper;", "Landroidx/recyclerview/widget/ItemTouchHelper;", "_itemTouchHelper", "i", Constants.HASIDCALL_INDEX_SIG, "_isLongPressDragEnabled", "j", "_isItemViewSwipeEnabled", C4921e.f26537n, "I", "_dragMoveFlags", "l", "_swipeMoveFlags", "m", "Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;", "mOnItemDragListener", GoogleApiAvailabilityLight.f29016b, "Lcom/chad/library/adapter4/dragswipe/listener/OnItemSwipeListener;", "mOnItemSwipeListener", C4921e.f26528e, "Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;", "_dataCallback", "p", "isDrag", "q", "isSwipe", "getDataCallback", "()Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;", "dataCallback", "getItemTouchHelper", "()Landroidx/recyclerview/widget/ItemTouchHelper;", "itemTouchHelper", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes4.dex */
public class QuickDragAndSwipe extends ItemTouchHelper.Callback {

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public RecyclerView recyclerView;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ItemTouchHelper _itemTouchHelper = new ItemTouchHelper(this);

    /* renamed from: i, reason: from kotlin metadata */
    public boolean _isLongPressDragEnabled = true;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean _isItemViewSwipeEnabled = true;

    /* renamed from: k, reason: from kotlin metadata */
    public int _dragMoveFlags;

    /* renamed from: l, reason: from kotlin metadata */
    public int _swipeMoveFlags;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public OnItemDragListener mOnItemDragListener;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public OnItemSwipeListener mOnItemSwipeListener;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public DragAndSwipeDataCallback _dataCallback;

    /* renamed from: p, reason: from kotlin metadata */
    public boolean isDrag;

    /* renamed from: q, reason: from kotlin metadata */
    public boolean isSwipe;

    @NotNull
    public QuickDragAndSwipe attachToRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        if (Intrinsics.areEqual(this.recyclerView, recyclerView)) {
            return this;
        }
        this.recyclerView = recyclerView;
        this._itemTouchHelper.attachToRecyclerView(recyclerView);
        return this;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void clearView(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        super.clearView(recyclerView, viewHolder);
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (this.isSwipe) {
            OnItemSwipeListener onItemSwipeListener = this.mOnItemSwipeListener;
            if (onItemSwipeListener != null) {
                onItemSwipeListener.onItemSwipeEnd(viewHolder, bindingAdapterPosition);
            }
            this.isSwipe = false;
        }
        if (this.isDrag) {
            OnItemDragListener onItemDragListener = this.mOnItemDragListener;
            if (onItemDragListener != null) {
                onItemDragListener.onItemDragEnd(viewHolder, bindingAdapterPosition);
            }
            this.isDrag = false;
        }
    }

    /* renamed from: g */
    public final int m9687g(RecyclerView.ViewHolder viewHolder) {
        if (viewHolder != null) {
            return viewHolder.getBindingAdapterPosition();
        }
        return -1;
    }

    @NotNull
    public final DragAndSwipeDataCallback getDataCallback() {
        DragAndSwipeDataCallback dragAndSwipeDataCallback = this._dataCallback;
        if (dragAndSwipeDataCallback == null) {
            throw new IllegalStateException("Please set _adapterImpl".toString());
        }
        Intrinsics.checkNotNull(dragAndSwipeDataCallback);
        return dragAndSwipeDataCallback;
    }

    /* renamed from: getDragMoveFlags, reason: from getter */
    public final int get_dragMoveFlags() {
        return this._dragMoveFlags;
    }

    @NotNull
    /* renamed from: getItemTouchHelper, reason: from getter */
    public final ItemTouchHelper get_itemTouchHelper() {
        return this._itemTouchHelper;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public int getMovementFlags(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        return m9688h(viewHolder) ? ItemTouchHelper.Callback.makeMovementFlags(0, 0) : ItemTouchHelper.Callback.makeMovementFlags(this._dragMoveFlags, this._swipeMoveFlags);
    }

    @Nullable
    public final RecyclerView getRecyclerView() {
        return this.recyclerView;
    }

    /* renamed from: getSwipeMoveFlags, reason: from getter */
    public final int get_swipeMoveFlags() {
        return this._swipeMoveFlags;
    }

    /* renamed from: h */
    public final boolean m9688h(RecyclerView.ViewHolder viewHolder) {
        return viewHolder instanceof StateLayoutVH;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    /* renamed from: isItemViewSwipeEnabled, reason: from getter */
    public boolean get_isItemViewSwipeEnabled() {
        return this._isItemViewSwipeEnabled;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    /* renamed from: isLongPressDragEnabled, reason: from getter */
    public boolean get_isLongPressDragEnabled() {
        return this._isLongPressDragEnabled;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onChildDraw(@NotNull Canvas c, @NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder, float dX, float dY, int actionState, boolean isCurrentlyActive) {
        OnItemSwipeListener onItemSwipeListener;
        Intrinsics.checkNotNullParameter(c, "c");
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        super.onChildDraw(c, recyclerView, viewHolder, dX, dY, actionState, isCurrentlyActive);
        if (actionState != 1 || (onItemSwipeListener = this.mOnItemSwipeListener) == null) {
            return;
        }
        onItemSwipeListener.onItemSwipeMoving(c, viewHolder, dX, dY, isCurrentlyActive);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean onMove(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder, @NotNull RecyclerView.ViewHolder target) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        Intrinsics.checkNotNullParameter(target, "target");
        return viewHolder.getItemViewType() == target.getItemViewType();
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onMoved(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder, int fromPos, @NotNull RecyclerView.ViewHolder target, int toPos, int x, int y) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        Intrinsics.checkNotNullParameter(target, "target");
        super.onMoved(recyclerView, viewHolder, fromPos, target, toPos, x, y);
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        int bindingAdapterPosition2 = target.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1 || bindingAdapterPosition2 == -1) {
            return;
        }
        DragAndSwipeDataCallback dragAndSwipeDataCallback = this._dataCallback;
        if (dragAndSwipeDataCallback != null) {
            dragAndSwipeDataCallback.dataMove(bindingAdapterPosition, bindingAdapterPosition2);
        }
        OnItemDragListener onItemDragListener = this.mOnItemDragListener;
        if (onItemDragListener != null) {
            onItemDragListener.onItemDragMoving(viewHolder, bindingAdapterPosition, target, bindingAdapterPosition2);
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSelectedChanged(@Nullable RecyclerView.ViewHolder viewHolder, int actionState) {
        if (actionState == 1) {
            this.isSwipe = true;
            OnItemSwipeListener onItemSwipeListener = this.mOnItemSwipeListener;
            if (onItemSwipeListener != null) {
                onItemSwipeListener.onItemSwipeStart(viewHolder, m9687g(viewHolder));
            }
        } else if (actionState == 2) {
            this.isDrag = true;
            OnItemDragListener onItemDragListener = this.mOnItemDragListener;
            if (onItemDragListener != null) {
                onItemDragListener.onItemDragStart(viewHolder, m9687g(viewHolder));
            }
        }
        super.onSelectedChanged(viewHolder, actionState);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSwiped(@NotNull RecyclerView.ViewHolder viewHolder, int direction) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return;
        }
        DragAndSwipeDataCallback dragAndSwipeDataCallback = this._dataCallback;
        if (dragAndSwipeDataCallback != null) {
            dragAndSwipeDataCallback.dataRemoveAt(bindingAdapterPosition);
        }
        OnItemSwipeListener onItemSwipeListener = this.mOnItemSwipeListener;
        if (onItemSwipeListener != null) {
            onItemSwipeListener.onItemSwiped(viewHolder, direction, bindingAdapterPosition);
        }
    }

    @NotNull
    public final QuickDragAndSwipe setDataCallback(@NotNull DragAndSwipeDataCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this._dataCallback = callback;
        return this;
    }

    @NotNull
    public final QuickDragAndSwipe setDragMoveFlags(int dragMoveFlags) {
        this._dragMoveFlags = dragMoveFlags;
        return this;
    }

    @NotNull
    public final QuickDragAndSwipe setItemDragListener(@Nullable OnItemDragListener onItemDragListener) {
        this.mOnItemDragListener = onItemDragListener;
        return this;
    }

    @NotNull
    public final QuickDragAndSwipe setItemSwipeListener(@Nullable OnItemSwipeListener onItemSwipeListener) {
        this.mOnItemSwipeListener = onItemSwipeListener;
        return this;
    }

    @NotNull
    public final QuickDragAndSwipe setItemViewSwipeEnabled(boolean isItemViewSwipeEnabled) {
        this._isItemViewSwipeEnabled = isItemViewSwipeEnabled;
        return this;
    }

    @NotNull
    public final QuickDragAndSwipe setLongPressDragEnabled(boolean isLongPressDragEnabled) {
        this._isLongPressDragEnabled = isLongPressDragEnabled;
        return this;
    }

    public final void setRecyclerView(@Nullable RecyclerView recyclerView) {
        this.recyclerView = recyclerView;
    }

    @NotNull
    public final QuickDragAndSwipe setSwipeMoveFlags(int swipeMoveFlags) {
        this._swipeMoveFlags = swipeMoveFlags;
        return this;
    }

    @NotNull
    public QuickDragAndSwipe startDrag(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        this._itemTouchHelper.startDrag(holder);
        return this;
    }

    @NotNull
    public QuickDragAndSwipe startSwipe(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        this._itemTouchHelper.startSwipe(holder);
        return this;
    }

    @NotNull
    public QuickDragAndSwipe startDrag(int position) {
        RecyclerView.ViewHolder findViewHolderForAdapterPosition;
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView != null && (findViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(position)) != null) {
            Intrinsics.checkNotNullExpressionValue(findViewHolderForAdapterPosition, "recyclerView?.findViewHo…(position) ?: return this");
            this._itemTouchHelper.startDrag(findViewHolderForAdapterPosition);
        }
        return this;
    }

    @NotNull
    public QuickDragAndSwipe startSwipe(int position) {
        RecyclerView.ViewHolder findViewHolderForAdapterPosition;
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView != null && (findViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(position)) != null) {
            Intrinsics.checkNotNullExpressionValue(findViewHolderForAdapterPosition, "recyclerView?.findViewHo…(position) ?: return this");
            this._itemTouchHelper.startSwipe(findViewHolderForAdapterPosition);
        }
        return this;
    }
}
