package com.onyx.galaxy.note.editor.view;

import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.onyx.galaxy.note.common.view.IDragListener;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0017\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0006¢\u0006\u0004\b'\u0010(J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u001a\u0010\n\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\b\u001a\u00020\u0006H\u0016J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J \u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0016J\u0018\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0006H\u0016J\u0018\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0014\u001a\u00020\tH\u0002R\u0016\u0010\u0017\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001f\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u0016\u0010!\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010\u001cR\u0016\u0010#\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010\u001cR\u0018\u0010&\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006)"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/TreeDragCallback;", "Landroidx/recyclerview/widget/ItemTouchHelper$Callback;", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "viewHolder", "", "getMovementFlags", "actionState", "", "onSelectedChanged", "", "getMoveThreshold", "from", "target", "", "onMove", "direction", "onSwiped", "clearView", C6998g.f39679a, "Lcom/onyx/galaxy/note/common/view/IDragListener;", "Lcom/onyx/galaxy/note/common/view/IDragListener;", "dragListener", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "isFistCanDrag", "i", "I", "dragFlag", "j", ApiBroadCastReceiver.ARGS_FROM_INDEX, C4921e.f26537n, "targetIndex", "l", "lastDragState", "m", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "lastMoverHolder", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/common/view/IDragListener;ZI)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class TreeDragCallback extends ItemTouchHelper.Callback {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public IDragListener dragListener;

    /* renamed from: h, reason: from kotlin metadata */
    public boolean isFistCanDrag;

    /* renamed from: i, reason: from kotlin metadata */
    public int dragFlag;

    /* renamed from: j, reason: from kotlin metadata */
    public int fromIndex;

    /* renamed from: k, reason: from kotlin metadata */
    public int targetIndex;

    /* renamed from: l, reason: from kotlin metadata */
    public int lastDragState;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public RecyclerView.ViewHolder lastMoverHolder;

    public /* synthetic */ TreeDragCallback(IDragListener iDragListener, boolean z, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(iDragListener, (i2 & 2) != 0 ? true : z, (i2 & 4) != 0 ? 3 : i);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void clearView(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        super.clearView(recyclerView, viewHolder);
        this.dragListener.onClearView(viewHolder, this.lastMoverHolder);
        m47443g();
    }

    /* renamed from: g */
    public final void m47443g() {
        this.fromIndex = 0;
        this.targetIndex = 0;
        this.lastDragState = 0;
        this.lastMoverHolder = null;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public float getMoveThreshold(@NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        return 0.1f;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public int getMovementFlags(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        int i = this.dragFlag;
        if (!this.isFistCanDrag && viewHolder.getAdapterPosition() == 0) {
            i = 0;
        }
        return ItemTouchHelper.Callback.makeMovementFlags(i, 0);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean onMove(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder from, @NotNull RecyclerView.ViewHolder target) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(target, "target");
        if ((from.getAdapterPosition() == this.fromIndex && target.getAdapterPosition() == this.targetIndex) || from.getAdapterPosition() == target.getAdapterPosition()) {
            return true;
        }
        this.fromIndex = from.getAdapterPosition();
        this.targetIndex = target.getAdapterPosition();
        this.dragListener.onMove(from, target, this.lastMoverHolder);
        this.lastMoverHolder = target;
        return true;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSelectedChanged(@Nullable RecyclerView.ViewHolder viewHolder, int actionState) {
        super.onSelectedChanged(viewHolder, actionState);
        if (this.lastDragState == 0 && actionState == 2 && viewHolder != null) {
            this.dragListener.onDragStart(viewHolder);
        }
        this.lastDragState = actionState;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSwiped(@NotNull RecyclerView.ViewHolder viewHolder, int direction) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
    }

    public TreeDragCallback(@NotNull IDragListener dragListener, boolean z, int i) {
        Intrinsics.checkNotNullParameter(dragListener, "dragListener");
        this.dragListener = dragListener;
        this.isFistCanDrag = z;
        this.dragFlag = i;
    }
}
