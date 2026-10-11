package com.onyx.galaxy.note.common.view;

import android.view.DragEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Tree;
import com.onyx.android.sdk.base.utils.OrderListUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010!\n\u0002\b\u000e\b&\u0018\u0000 A*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003:\u0001AB\u0007¢\u0006\u0004\b?\u0010@J\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0004\u001a\u00028\u0000H&¢\u0006\u0004\b\u0005\u0010\u0006J,\u0010\r\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\tH&J\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00028\u00002\u0006\u0010\u000f\u001a\u00020\u000eH&¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00028\u0000H&¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00028\u0000H&¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00028\u0000H&¢\u0006\u0004\b\u0019\u0010\u0018JB\u0010\u001d\u001a\u00020\u00102\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u001bH&J\u0016\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010\u001f\u001a\u00020\u001eH\u0014J\u0016\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010\"\u001a\u00020!H\u0014J,\u0010$\u001a\u00020\f2\u0006\u0010\"\u001a\u00020!2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0014J\u0018\u0010%\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\r\u001a\u00020\fH\u0014J0\u0010(\u001a\u00020\f2\u0006\u0010\"\u001a\u00020!2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010&\u001a\u00020\u000e2\u0006\u0010'\u001a\u00020\u000eH\u0014JL\u0010)\u001a\u00020\f2\u0006\u0010\"\u001a\u00020!2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\r\u001a\u00020\f2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010&\u001a\u00020\u000e2\u0006\u0010'\u001a\u00020\u000eH\u0014J\u0018\u0010*\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020!H\u0016J,\u0010+\u001a\u00020\u00102\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010\b\u001a\u00020\u0007H\u0014J \u0010,\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020!2\u0006\u0010&\u001a\u00020\u000e2\u0006\u0010'\u001a\u00020\u000eH\u0014J\u0018\u0010-\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\b\u001a\u00020\u0007H\u0014J\u0010\u0010.\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u001eH\u0014J\u0010\u0010/\u001a\u00020\f2\u0006\u0010\"\u001a\u00020!H\u0002J$\u00100\u001a\u00020\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0002J$\u00101\u001a\u00020\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0002J$\u00102\u001a\u00020\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0002J\u001c\u00105\u001a\b\u0012\u0004\u0012\u00028\u0000042\f\u00103\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0002J \u00108\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u00106\u001a\u00020\u00072\u0006\u00107\u001a\u00020\fH\u0002R\u001b\u0010<\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u00109\u001a\u0004\b:\u0010;R\u001b\u0010>\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u00109\u001a\u0004\b=\u0010;¨\u0006B"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;", "", "T", "Landroid/view/View$OnDragListener;", "item", "getItemUniqueKey", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "dragState", "Lcom/onyx/android/sdk/base/data/Tree;", "originTreeNode", "targetTreeNode", "", "canDragIn", "", FirebaseAnalytics.Param.INDEX, "", "setOrderIndex", "(Ljava/lang/Object;F)V", "getOrderIndex", "(Ljava/lang/Object;)F", "originItem", "targetItem", "updateParentIdByTargetUniqueKey", "(Ljava/lang/Object;Ljava/lang/Object;)V", "updateParentIdByTargetParentId", "targetPos", "", "list", "onItemUpdated", "Landroid/view/View;", "itemView", "getTargetTreeNode", "Landroid/view/DragEvent;", NotificationCompat.CATEGORY_EVENT, "getOriginTreeNode", "onDragStarted", "onDragEntered", "beforeThreshold", "afterThreshold", "onDragLocation", "onDragDrop", "onDrag", "handleDrop", "getDragState", "dragItemView", "resetItemView", C6997f.f39671c, "c", "e", "d", "treeNode", "", C6998g.f39679a, "viewId", "visible", C6999h.f39688c, "Lkotlin/Lazy;", "a", "()F", "bottomYPercent", "b", "topYPercent", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTreeNodeDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TreeNodeDragListener.kt\ncom/onyx/galaxy/note/common/view/TreeNodeDragListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,294:1\n1549#2:295\n1620#2,3:296\n256#3,2:299\n*S KotlinDebug\n*F\n+ 1 TreeNodeDragListener.kt\ncom/onyx/galaxy/note/common/view/TreeNodeDragListener\n*L\n256#1:295\n256#1:296,3\n290#1:299,2\n*E\n"})
/* loaded from: classes9.dex */
public abstract class TreeNodeDragListener<T> implements View.OnDragListener {
    public static final int DRAG_AFTER = 3;
    public static final int DRAG_BEFORE = 1;
    public static final int DRAG_IN = 2;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy bottomYPercent;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy topYPercent;

    public TreeNodeDragListener() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.common.view.TreeNodeDragListener$bottomYPercent$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(ResManager.INSTANCE.getResources().getFraction(C10651R.fraction.config_drag_after_percent, 1, 1));
            }
        });
        this.bottomYPercent = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.common.view.TreeNodeDragListener$topYPercent$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(ResManager.INSTANCE.getResources().getFraction(C10651R.fraction.config_drag_before_percent, 1, 1));
            }
        });
        this.topYPercent = lazy2;
    }

    /* renamed from: a */
    public final float m45191a() {
        return ((Number) this.bottomYPercent.getValue()).floatValue();
    }

    /* renamed from: b */
    public final float m45192b() {
        return ((Number) this.topYPercent.getValue()).floatValue();
    }

    /* renamed from: c */
    public final int m45193c(Tree<T> originTreeNode, Tree<T> targetTreeNode) {
        originTreeNode.reParent(targetTreeNode, 0, new Function2<T, T, Unit>(this) { // from class: com.onyx.galaxy.note.common.view.TreeNodeDragListener$handleMoveIn$1
            final /* synthetic */ TreeNodeDragListener<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
                this.this$0 = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Object obj2) {
                invoke2(obj, obj2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull T originItem, @NotNull T targetItem) {
                Intrinsics.checkNotNullParameter(originItem, "originItem");
                Intrinsics.checkNotNullParameter(targetItem, "targetItem");
                this.this$0.updateParentIdByTargetUniqueKey(originItem, targetItem);
            }
        });
        return 0;
    }

    public abstract boolean canDragIn(int dragState, @NotNull Tree<T> originTreeNode, @NotNull Tree<T> targetTreeNode);

    /* renamed from: d */
    public final int m45194d(Tree<T> originTreeNode, Tree<T> targetTreeNode) {
        int lastIndex;
        int lastIndex2;
        Tree<T> parent = originTreeNode.getParent();
        if (parent == null) {
            return -1;
        }
        parent.getChildren().remove(originTreeNode);
        originTreeNode.setLevel(targetTreeNode.getLevel());
        T item = originTreeNode.getItem();
        Intrinsics.checkNotNull(item);
        T item2 = targetTreeNode.getItem();
        Intrinsics.checkNotNull(item2);
        updateParentIdByTargetParentId(item, item2);
        originTreeNode.setParent(targetTreeNode.getParent());
        Tree<T> parent2 = targetTreeNode.getParent();
        if (parent2 == null) {
            return -1;
        }
        List<Tree<T>> children = parent2.getChildren();
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(children);
        int i = 0;
        if (lastIndex >= 0) {
            int i2 = 0;
            while (true) {
                T item3 = children.get(i2).getItem();
                Intrinsics.checkNotNull(item3);
                Object itemUniqueKey = getItemUniqueKey(item3);
                T item4 = targetTreeNode.getItem();
                Intrinsics.checkNotNull(item4);
                if (!Intrinsics.areEqual(itemUniqueKey, getItemUniqueKey(item4))) {
                    if (i2 == lastIndex) {
                        break;
                    }
                    i2++;
                } else {
                    i = i2;
                    break;
                }
            }
        }
        lastIndex2 = CollectionsKt__CollectionsKt.getLastIndex(children);
        if (i == lastIndex2) {
            children.add(originTreeNode);
            return -1;
        }
        int i3 = i + 1;
        children.add(i3, originTreeNode);
        return i3;
    }

    public void dragItemView(@NotNull View itemView, int dragState) {
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        m45198h(itemView, C10651R.id.v_drag_in, dragState == 2);
        m45198h(itemView, C10651R.id.v_drag_top, dragState == 1);
        m45198h(itemView, C10651R.id.v_drag_bottom, dragState == 3);
    }

    /* renamed from: e */
    public final int m45195e(Tree<T> originTreeNode, Tree<T> targetTreeNode) {
        int lastIndex;
        Tree<T> parent = originTreeNode.getParent();
        int i = 0;
        if (parent == null) {
            return 0;
        }
        parent.getChildren().remove(originTreeNode);
        originTreeNode.setLevel(targetTreeNode.getLevel());
        T item = originTreeNode.getItem();
        Intrinsics.checkNotNull(item);
        T item2 = targetTreeNode.getItem();
        Intrinsics.checkNotNull(item2);
        updateParentIdByTargetParentId(item, item2);
        originTreeNode.setParent(targetTreeNode.getParent());
        Tree<T> parent2 = targetTreeNode.getParent();
        if (parent2 == null) {
            return 0;
        }
        List<Tree<T>> children = parent2.getChildren();
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(children);
        if (lastIndex >= 0) {
            int i2 = 0;
            while (true) {
                T item3 = children.get(i2).getItem();
                Intrinsics.checkNotNull(item3);
                Object itemUniqueKey = getItemUniqueKey(item3);
                T item4 = targetTreeNode.getItem();
                Intrinsics.checkNotNull(item4);
                if (!Intrinsics.areEqual(itemUniqueKey, getItemUniqueKey(item4))) {
                    if (i2 == lastIndex) {
                        break;
                    }
                    i2++;
                } else {
                    i = i2;
                    break;
                }
            }
        }
        children.add(i, originTreeNode);
        return i;
    }

    /* renamed from: f */
    public final boolean m45196f(DragEvent event) {
        return event.getLocalState() instanceof Tree;
    }

    /* renamed from: g */
    public final List<T> m45197g(Tree<T> treeNode) {
        int collectionSizeOrDefault;
        List<T> mutableList;
        List<T> reorderIndexChecked = OrderListUtils.INSTANCE.reorderIndexChecked(treeNode.getChildren(), new Function1<Tree<T>, Float>(this) { // from class: com.onyx.galaxy.note.common.view.TreeNodeDragListener$reorder$1
            final /* synthetic */ TreeNodeDragListener<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Float invoke(@NotNull Tree<T> node) {
                Intrinsics.checkNotNullParameter(node, "node");
                TreeNodeDragListener<T> treeNodeDragListener = this.this$0;
                T item = node.getItem();
                Intrinsics.checkNotNull(item);
                return Float.valueOf(treeNodeDragListener.getOrderIndex(item));
            }
        }, new Function2<Tree<T>, Float, Unit>(this) { // from class: com.onyx.galaxy.note.common.view.TreeNodeDragListener$reorder$2
            final /* synthetic */ TreeNodeDragListener<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Float f) {
                invoke((Tree) obj, f.floatValue());
                return Unit.INSTANCE;
            }

            public final void invoke(@NotNull Tree<T> node, float f) {
                Intrinsics.checkNotNullParameter(node, "node");
                TreeNodeDragListener<T> treeNodeDragListener = this.this$0;
                T item = node.getItem();
                Intrinsics.checkNotNull(item);
                treeNodeDragListener.setOrderIndex(item, f);
            }
        });
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(reorderIndexChecked, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = reorderIndexChecked.iterator();
        while (it2.hasNext()) {
            Object item = ((Tree) it2.next()).getItem();
            Intrinsics.checkNotNull(item);
            arrayList.add(item);
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }

    public int getDragState(@NotNull DragEvent event, float beforeThreshold, float afterThreshold) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getY() <= beforeThreshold) {
            return 1;
        }
        return event.getY() >= afterThreshold ? 3 : 2;
    }

    @Nullable
    public abstract Object getItemUniqueKey(@NotNull T item);

    public abstract float getOrderIndex(@NotNull T item);

    @NotNull
    public Tree<T> getOriginTreeNode(@NotNull DragEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Object localState = event.getLocalState();
        Intrinsics.checkNotNull(localState, "null cannot be cast to non-null type com.onyx.android.sdk.base.data.Tree<T of com.onyx.galaxy.note.common.view.TreeNodeDragListener>");
        return (Tree) localState;
    }

    @NotNull
    public Tree<T> getTargetTreeNode(@NotNull View itemView) {
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Object tag = itemView.getTag();
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.onyx.android.sdk.base.data.Tree<T of com.onyx.galaxy.note.common.view.TreeNodeDragListener>");
        return (Tree) tag;
    }

    /* renamed from: h */
    public final void m45198h(View itemView, int viewId, boolean visible) {
        View findViewById = itemView.findViewById(viewId);
        if (findViewById != null) {
            findViewById.setVisibility(visible ? 0 : 8);
            findViewById.invalidate();
        }
    }

    public void handleDrop(@NotNull Tree<T> originTreeNode, @NotNull Tree<T> targetTreeNode, int dragState) {
        List<? extends T> mutableListOf;
        int m45195e;
        Intrinsics.checkNotNullParameter(originTreeNode, "originTreeNode");
        Intrinsics.checkNotNullParameter(targetTreeNode, "targetTreeNode");
        T item = originTreeNode.getItem();
        Intrinsics.checkNotNull(item);
        setOrderIndex(item, -1.0f);
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(item);
        if (dragState == 1) {
            m45195e = m45195e(originTreeNode, targetTreeNode);
            Tree<T> parent = targetTreeNode.getParent();
            Intrinsics.checkNotNull(parent);
            mutableListOf.addAll(m45197g(parent));
        } else if (dragState == 2) {
            m45195e = m45193c(originTreeNode, targetTreeNode);
            mutableListOf.addAll(m45197g(targetTreeNode));
        } else if (dragState != 3) {
            m45195e = 0;
        } else {
            m45195e = m45194d(originTreeNode, targetTreeNode);
            Tree<T> parent2 = targetTreeNode.getParent();
            Intrinsics.checkNotNull(parent2);
            mutableListOf.addAll(m45197g(parent2));
        }
        onItemUpdated(originTreeNode, targetTreeNode, m45195e, dragState, mutableListOf);
    }

    @Override // android.view.View.OnDragListener
    public boolean onDrag(@NotNull View itemView, @NotNull DragEvent event) {
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getAction() == 4) {
            resetItemView(itemView);
            return false;
        }
        if (!m45196f(event)) {
            resetItemView(itemView);
            return true;
        }
        Tree<T> originTreeNode = getOriginTreeNode(event);
        final Tree<T> targetTreeNode = getTargetTreeNode(itemView);
        float m45191a = m45191a() * itemView.getHeight();
        float m45192b = m45192b() * itemView.getHeight();
        boolean z = (Intrinsics.areEqual(originTreeNode.getItem(), targetTreeNode.getItem()) || originTreeNode.hasChild(new Function1<T, Boolean>(this) { // from class: com.onyx.galaxy.note.common.view.TreeNodeDragListener$onDrag$canDragIn$1
            final /* synthetic */ TreeNodeDragListener<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
                return invoke((TreeNodeDragListener$onDrag$canDragIn$1<T>) obj);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull T it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Object itemUniqueKey = this.this$0.getItemUniqueKey(it2);
                TreeNodeDragListener<T> treeNodeDragListener = this.this$0;
                T item = targetTreeNode.getItem();
                Intrinsics.checkNotNull(item);
                return Boolean.valueOf(Intrinsics.areEqual(itemUniqueKey, treeNodeDragListener.getItemUniqueKey(item)));
            }
        }) || !canDragIn(getDragState(event, m45192b, m45191a), originTreeNode, targetTreeNode)) ? false : true;
        int action = event.getAction();
        if (action == 1) {
            return onDragStarted(event, originTreeNode, targetTreeNode);
        }
        if (action == 2) {
            return onDragLocation(event, itemView, z, m45192b, m45191a);
        }
        if (action == 3) {
            return onDragDrop(event, itemView, z, originTreeNode, targetTreeNode, m45192b, m45191a);
        }
        if (action == 5) {
            return onDragEntered(itemView, z);
        }
        if (action != 6) {
            return false;
        }
        resetItemView(itemView);
        return true;
    }

    public boolean onDragDrop(@NotNull DragEvent event, @NotNull View itemView, boolean canDragIn, @NotNull Tree<T> originTreeNode, @NotNull Tree<T> targetTreeNode, float beforeThreshold, float afterThreshold) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Intrinsics.checkNotNullParameter(originTreeNode, "originTreeNode");
        Intrinsics.checkNotNullParameter(targetTreeNode, "targetTreeNode");
        if (canDragIn) {
            handleDrop(originTreeNode, targetTreeNode, getDragState(event, beforeThreshold, afterThreshold));
        }
        resetItemView(itemView);
        return true;
    }

    public boolean onDragEntered(@NotNull View itemView, boolean canDragIn) {
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        if (!canDragIn) {
            return true;
        }
        dragItemView(itemView, 2);
        return true;
    }

    public boolean onDragLocation(@NotNull DragEvent event, @NotNull View itemView, boolean canDragIn, float beforeThreshold, float afterThreshold) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        if (canDragIn) {
            dragItemView(itemView, getDragState(event, beforeThreshold, afterThreshold));
            return true;
        }
        resetItemView(itemView);
        return true;
    }

    public boolean onDragStarted(@NotNull DragEvent event, @NotNull Tree<T> originTreeNode, @NotNull Tree<T> targetTreeNode) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(originTreeNode, "originTreeNode");
        Intrinsics.checkNotNullParameter(targetTreeNode, "targetTreeNode");
        return true;
    }

    public abstract void onItemUpdated(@NotNull Tree<T> originTreeNode, @NotNull Tree<T> targetTreeNode, int targetPos, int dragState, @NotNull List<? extends T> list);

    public void resetItemView(@NotNull View itemView) {
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        m45198h(itemView, C10651R.id.v_drag_in, false);
        m45198h(itemView, C10651R.id.v_drag_bottom, false);
        m45198h(itemView, C10651R.id.v_drag_top, false);
    }

    public abstract void setOrderIndex(@NotNull T item, float index);

    public abstract void updateParentIdByTargetParentId(@NotNull T originItem, @NotNull T targetItem);

    public abstract void updateParentIdByTargetUniqueKey(@NotNull T originItem, @NotNull T targetItem);
}
