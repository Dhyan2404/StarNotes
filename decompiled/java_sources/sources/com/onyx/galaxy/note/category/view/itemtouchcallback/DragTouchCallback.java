package com.onyx.galaxy.note.category.view.itemtouchcallback;

import android.graphics.Canvas;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010#\n\u0002\b\u0012\u0018\u0000 O*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0005OPQRSB;\u0012\f\u00103\u001a\b\u0012\u0004\u0012\u00028\u000001\u0012\u0006\u00106\u001a\u000204\u0012\b\b\u0002\u00108\u001a\u00020\u0003\u0012\b\b\u0002\u00109\u001a\u00020\u0003\u0012\b\b\u0002\u0010:\u001a\u00020\u0003¢\u0006\u0004\bM\u0010NJ\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0003H\u0016J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J(\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0016J0\u0010\u0017\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0012\u001a\u00020\b2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\b0\u00132\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nH\u0016J\u001a\u0010\u001a\u001a\u00020\u00192\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0018\u001a\u00020\nH\u0016J \u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\bH\u0016J@\u0010!\u001a\u00020\u00192\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010 \u001a\u00020\nH\u0016J\u0018\u0010#\u001a\u00020\u00192\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\nH\u0016J@\u0010)\u001a\u00020\u00192\u0006\u0010%\u001a\u00020$2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010&\u001a\u00020\r2\u0006\u0010'\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\n2\u0006\u0010(\u001a\u00020\u0003H\u0016J\u0018\u0010*\u001a\u00020\u00192\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J\b\u0010+\u001a\u00020\u0019H\u0002J\u0010\u0010,\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\bH\u0002J\u0018\u0010-\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\bH\u0002J\b\u0010.\u001a\u00020\u0019H\u0002J\u001a\u00100\u001a\u00020\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\b2\u0006\u0010/\u001a\u00020\u0003H\u0002R\u001a\u00103\u001a\b\u0012\u0004\u0012\u00028\u0000018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u00102R\u0014\u00106\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u00105R\u0014\u00108\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u00107R\u0014\u00109\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u00107R\u0014\u0010:\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00107R\"\u0010A\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u001a\u0010E\u001a\b\u0012\u0004\u0012\u00020\b0B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010DR\u001a\u0010G\u001a\b\u0012\u0004\u0012\u00020\b0B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010DR\u0018\u0010J\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0018\u0010L\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010I¨\u0006T"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;", "T", "Landroidx/recyclerview/widget/ItemTouchHelper$Callback;", "", "isLongPressDragEnabled", "isItemViewSwipeEnabled", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "viewHolder", "", "getMovementFlags", "animationType", "", "animateDx", "animateDy", "", "getAnimationDuration", "selected", "", "dropTargets", "curX", "curY", "chooseDropTarget", "actionState", "", "onSelectedChanged", "target", "onMove", "fromPos", "toPos", "x", "y", "onMoved", "direction", "onSwiped", "Landroid/graphics/Canvas;", "c", "dX", "dY", "isCurrentlyActive", "onChildDraw", "clearView", "j", C6998g.f39679a, "i", C6999h.f39688c, "show", C4921e.f26537n, "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;", "dragAdapter", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;", "dragHandler", Constants.HASIDCALL_INDEX_SIG, "isLongPressDrag", "vertical", "horizontal", "l", "F", "getWinnerScoreThreshold", "()F", "setWinnerScoreThreshold", "(F)V", "winnerScoreThreshold", "", "m", "Ljava/util/Set;", "winnerSetX", GoogleApiAvailabilityLight.f29016b, "winnerSetY", C4921e.f26528e, "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "mergeSelected", "p", "mergeTarget", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;ZZZ)V", "Companion", "DragAdapter", "DragHandler", "DragItem", "SimpleDragHandler", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDragTouchCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragTouchCallback.kt\ncom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,372:1\n1#2:373\n*E\n"})
/* loaded from: classes9.dex */
public final class DragTouchCallback<T> extends ItemTouchHelper.Callback {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final float DEFAULT_WINNER_SCORE_THRESHOLD = 0.15f;
    public static final float DRAGGING_ALPHA = 0.9f;
    public static final float NORMAL_ALPHA = 1.0f;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final DragAdapter<T> dragAdapter;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final DragHandler dragHandler;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean isLongPressDrag;

    /* renamed from: j, reason: from kotlin metadata */
    public final boolean vertical;

    /* renamed from: k, reason: from kotlin metadata */
    public final boolean horizontal;

    /* renamed from: l, reason: from kotlin metadata */
    public float winnerScoreThreshold;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final Set<RecyclerView.ViewHolder> winnerSetX;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final Set<RecyclerView.ViewHolder> winnerSetY;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public RecyclerView.ViewHolder mergeSelected;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public RecyclerView.ViewHolder mergeTarget;

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$Companion;", "", "()V", "DEFAULT_WINNER_SCORE_THRESHOLD", "", "DRAGGING_ALPHA", "NORMAL_ALPHA", "setItemViewAlpha", "", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "dragging", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void setItemViewAlpha(@NotNull RecyclerView.ViewHolder viewHolder, boolean dragging) {
            Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
            viewHolder.itemView.setAlpha(dragging ? 0.9f : 1.0f);
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u0000*\u0004\b\u0001\u0010\u00012\u00020\u0002J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;", "T", "", "getDragItem", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface DragAdapter<T> {
        @NotNull
        DragItem<T> getDragItem(@NotNull RecyclerView.ViewHolder viewHolder);
    }

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H&J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H&J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H&J\u0012\u0010\f\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH&J\u001a\u0010\u000f\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0010\u001a\u00020\u0003H&J\u0018\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H&¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;", "", "canDrag", "", "position", "", "canMerge", "fromPosition", "toPosition", "canSwap", "onMergeData", "", "onStartDrag", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onStopDrag", "performMerge", "swap", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface DragHandler {
        boolean canDrag(int position);

        boolean canMerge(int fromPosition, int toPosition);

        boolean canSwap(int fromPosition, int toPosition);

        void onMergeData(int fromPosition, int toPosition);

        void onStartDrag(@Nullable RecyclerView.ViewHolder viewHolder);

        void onStopDrag(@Nullable RecyclerView.ViewHolder viewHolder, boolean performMerge);

        void swap(int fromPosition, int toPosition);
    }

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018\u0000*\u0004\b\u0001\u0010\u00012\u00020\u0002J\r\u0010\u0003\u001a\u00028\u0001H&¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH&J\u001a\u0010\u000b\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\f\u001a\u00020\nH&¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;", "T", "", "getData", "()Ljava/lang/Object;", "showDragState", "", "holder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "isCurrentlyActive", "", "showMergePreview", "show", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface DragItem<T> {
        T getData();

        void showDragState(@NotNull RecyclerView.ViewHolder holder, boolean isCurrentlyActive);

        void showMergePreview(@Nullable RecyclerView.ViewHolder holder, boolean show);
    }

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0016J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0016J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0016J\u0012\u0010\r\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010\u0010\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u0004H\u0016J\u0018\u0010\u0012\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0016¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$SimpleDragHandler;", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;", "()V", "canDrag", "", "position", "", "canMerge", "fromPosition", "toPosition", "canSwap", "onMergeData", "", "onStartDrag", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onStopDrag", "performMerge", "swap", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static class SimpleDragHandler implements DragHandler {
        @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
        public boolean canDrag(int position) {
            return true;
        }

        @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
        public boolean canMerge(int fromPosition, int toPosition) {
            return false;
        }

        @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
        public boolean canSwap(int fromPosition, int toPosition) {
            return true;
        }

        @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
        public void onMergeData(int fromPosition, int toPosition) {
        }

        @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
        public void onStartDrag(@Nullable RecyclerView.ViewHolder viewHolder) {
        }

        @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
        public void onStopDrag(@Nullable RecyclerView.ViewHolder viewHolder, boolean performMerge) {
        }

        @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
        public void swap(int fromPosition, int toPosition) {
        }
    }

    public /* synthetic */ DragTouchCallback(DragAdapter dragAdapter, DragHandler dragHandler, boolean z, boolean z2, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(dragAdapter, dragHandler, (i & 4) != 0 ? true : z, (i & 8) != 0 ? true : z2, (i & 16) != 0 ? true : z3);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    @Nullable
    public RecyclerView.ViewHolder chooseDropTarget(@NotNull RecyclerView.ViewHolder selected, @NotNull List<RecyclerView.ViewHolder> dropTargets, int curX, int curY) {
        int abs;
        int abs2;
        int abs3;
        int abs4;
        Intrinsics.checkNotNullParameter(selected, "selected");
        Intrinsics.checkNotNullParameter(dropTargets, "dropTargets");
        int width = curX + selected.itemView.getWidth();
        int height = curY + selected.itemView.getHeight();
        int height2 = (int) (selected.itemView.getHeight() * this.winnerScoreThreshold);
        int width2 = (int) (selected.itemView.getWidth() * this.winnerScoreThreshold);
        int left = curX - selected.itemView.getLeft();
        int top = curY - selected.itemView.getTop();
        int size = dropTargets.size();
        RecyclerView.ViewHolder viewHolder = null;
        for (int i = 0; i < size; i++) {
            RecyclerView.ViewHolder viewHolder2 = dropTargets.get(i);
            if (top < 0) {
                int top2 = viewHolder2.itemView.getTop() - curY;
                if ((-height2) <= top2 && top2 <= height2) {
                    this.winnerSetY.add(viewHolder2);
                } else {
                    this.winnerSetY.remove(viewHolder2);
                    if (top2 > 0 && viewHolder2.itemView.getTop() < selected.itemView.getTop() && (abs4 = Math.abs(top2)) > height2) {
                        height2 = abs4;
                        viewHolder = viewHolder2;
                    }
                }
            }
            if (top > 0) {
                int bottom = viewHolder2.itemView.getBottom() - height;
                if ((-height2) <= bottom && bottom <= height2) {
                    this.winnerSetY.add(viewHolder2);
                } else {
                    this.winnerSetY.remove(viewHolder2);
                    if (bottom < 0 && viewHolder2.itemView.getBottom() > selected.itemView.getBottom() && (abs3 = Math.abs(bottom)) > height2) {
                        height2 = abs3;
                        viewHolder = viewHolder2;
                    }
                }
            }
            if (left > 0) {
                int right = viewHolder2.itemView.getRight() - width;
                if ((-width2) <= right && right <= width2) {
                    this.winnerSetX.add(viewHolder2);
                } else {
                    this.winnerSetX.remove(viewHolder2);
                    if (right < 0 && viewHolder2.itemView.getRight() > selected.itemView.getRight() && (abs2 = Math.abs(right)) > width2) {
                        width2 = abs2;
                        viewHolder = viewHolder2;
                    }
                }
            }
            if (left < 0) {
                int left2 = viewHolder2.itemView.getLeft() - curX;
                if ((-width2) <= left2 && left2 <= width2) {
                    this.winnerSetX.add(viewHolder2);
                } else {
                    this.winnerSetX.remove(viewHolder2);
                    if (left2 > 0 && viewHolder2.itemView.getLeft() < selected.itemView.getLeft() && (abs = Math.abs(left2)) > width2) {
                        width2 = abs;
                        viewHolder = viewHolder2;
                    }
                }
            }
        }
        m44669g(selected);
        return viewHolder;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void clearView(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        super.clearView(recyclerView, viewHolder);
        DragItem<T> dragItem = this.dragAdapter.getDragItem(viewHolder);
        boolean z = (this.mergeTarget == null || this.mergeSelected == null) ? false : true;
        dragItem.showDragState(viewHolder, false);
        if (z) {
            m44672j();
        }
        m44670h();
        this.dragHandler.onStopDrag(viewHolder, z);
    }

    /* renamed from: g */
    public final void m44669g(RecyclerView.ViewHolder selected) {
        Object firstOrNull;
        Object firstOrNull2;
        boolean z = this.horizontal;
        RecyclerView.ViewHolder viewHolder = null;
        if (z && this.vertical) {
            Iterator<T> it2 = this.winnerSetX.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                T next = it2.next();
                if (this.winnerSetY.contains((RecyclerView.ViewHolder) next)) {
                    viewHolder = next;
                    break;
                }
            }
            viewHolder = viewHolder;
        } else if (this.vertical) {
            firstOrNull2 = CollectionsKt___CollectionsKt.firstOrNull(this.winnerSetY);
            viewHolder = (RecyclerView.ViewHolder) firstOrNull2;
        } else if (z) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull(this.winnerSetX);
            viewHolder = (RecyclerView.ViewHolder) firstOrNull;
        }
        if (viewHolder != null) {
            m44671i(selected, viewHolder);
        } else {
            m44670h();
        }
        this.winnerSetX.clear();
        this.winnerSetY.clear();
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public long getAnimationDuration(@NotNull RecyclerView recyclerView, int animationType, float animateDx, float animateDy) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        if (this.mergeTarget == null || this.mergeSelected == null) {
            return super.getAnimationDuration(recyclerView, animationType, animateDx, animateDy);
        }
        return 0L;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public int getMovementFlags(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder) {
        int i;
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        if (this.dragHandler.canDrag(viewHolder.getBindingAdapterPosition())) {
            i = this.vertical ? 3 : 0;
            if (this.horizontal) {
                i |= 12;
            }
        } else {
            i = 0;
        }
        return ItemTouchHelper.Callback.makeMovementFlags(i, 0);
    }

    public final float getWinnerScoreThreshold() {
        return this.winnerScoreThreshold;
    }

    /* renamed from: h */
    public final void m44670h() {
        RecyclerView.ViewHolder viewHolder = this.mergeTarget;
        if (viewHolder != null) {
            m44673k(viewHolder, false);
            this.mergeTarget = null;
        }
        if (this.mergeSelected != null) {
            this.mergeSelected = null;
        }
    }

    /* renamed from: i */
    public final void m44671i(RecyclerView.ViewHolder selected, RecyclerView.ViewHolder target) {
        if (this.dragHandler.canMerge(selected.getBindingAdapterPosition(), target.getBindingAdapterPosition())) {
            if (!Intrinsics.areEqual(this.mergeTarget, target)) {
                m44673k(target, true);
                m44673k(this.mergeTarget, false);
                this.mergeTarget = target;
            }
            if (Intrinsics.areEqual(this.mergeSelected, selected)) {
                return;
            }
            this.mergeSelected = selected;
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    /* renamed from: isItemViewSwipeEnabled */
    public boolean get_isItemViewSwipeEnabled() {
        return false;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    /* renamed from: isLongPressDragEnabled, reason: from getter */
    public boolean getIsLongPressDrag() {
        return this.isLongPressDrag;
    }

    /* renamed from: j */
    public final void m44672j() {
        RecyclerView.ViewHolder viewHolder;
        if (this.mergeTarget == null || (viewHolder = this.mergeSelected) == null) {
            return;
        }
        int bindingAdapterPosition = viewHolder != null ? viewHolder.getBindingAdapterPosition() : -1;
        RecyclerView.ViewHolder viewHolder2 = this.mergeTarget;
        int bindingAdapterPosition2 = viewHolder2 != null ? viewHolder2.getBindingAdapterPosition() : -1;
        if (bindingAdapterPosition < 0 || bindingAdapterPosition2 < 0) {
            return;
        }
        this.dragHandler.onMergeData(bindingAdapterPosition, bindingAdapterPosition2);
    }

    /* renamed from: k */
    public final void m44673k(RecyclerView.ViewHolder target, boolean show) {
        if (target != null) {
            this.dragAdapter.getDragItem(target).showMergePreview(target, show);
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onChildDraw(@NotNull Canvas c, @NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder, float dX, float dY, int actionState, boolean isCurrentlyActive) {
        Intrinsics.checkNotNullParameter(c, "c");
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        super.onChildDraw(c, recyclerView, viewHolder, dX, dY, actionState, isCurrentlyActive);
        this.dragAdapter.getDragItem(viewHolder).showDragState(viewHolder, isCurrentlyActive);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean onMove(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder, @NotNull RecyclerView.ViewHolder target) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        Intrinsics.checkNotNullParameter(target, "target");
        return this.dragHandler.canSwap(viewHolder.getBindingAdapterPosition(), target.getBindingAdapterPosition());
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
        this.dragHandler.swap(bindingAdapterPosition, bindingAdapterPosition2);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSelectedChanged(@Nullable RecyclerView.ViewHolder viewHolder, int actionState) {
        super.onSelectedChanged(viewHolder, actionState);
        if (actionState == 2) {
            this.dragHandler.onStartDrag(viewHolder);
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSwiped(@NotNull RecyclerView.ViewHolder viewHolder, int direction) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
    }

    public final void setWinnerScoreThreshold(float f) {
        this.winnerScoreThreshold = f;
    }

    public DragTouchCallback(@NotNull DragAdapter<T> dragAdapter, @NotNull DragHandler dragHandler, boolean z, boolean z2, boolean z3) {
        Intrinsics.checkNotNullParameter(dragAdapter, "dragAdapter");
        Intrinsics.checkNotNullParameter(dragHandler, "dragHandler");
        this.dragAdapter = dragAdapter;
        this.dragHandler = dragHandler;
        this.isLongPressDrag = z;
        this.vertical = z2;
        this.horizontal = z3;
        this.winnerScoreThreshold = 0.15f;
        this.winnerSetX = new LinkedHashSet();
        this.winnerSetY = new LinkedHashSet();
    }
}
