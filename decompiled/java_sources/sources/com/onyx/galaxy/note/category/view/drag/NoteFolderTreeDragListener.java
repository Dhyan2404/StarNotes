package com.onyx.galaxy.note.category.view.drag;

import android.annotation.SuppressLint;
import android.content.ClipDescription;
import android.view.DragEvent;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.utils.NoteTreeNodes;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.DragMoveFolderAction;
import com.onyx.galaxy.note.category.action.MoveNoteAction;
import com.onyx.galaxy.note.category.action.UpdateNoteExpandStatusAction;
import com.onyx.galaxy.note.category.view.adapter.NoteListAdapter;
import com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter;
import com.onyx.galaxy.note.category.view.drag.NoteFolderTreeDragListener;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\r\u0018\u0000 *2\u00020\u0001:\u0001*B\u0007¢\u0006\u0004\b(\u0010)J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\"\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\b2\u0010\u0010\r\u001a\f\u0012\u0004\u0012\u00020\u000b0\nj\u0002`\fH\u0003J4\u0010\u0013\u001a\u00020\u000e2\u0010\u0010\u0010\u001a\f\u0012\u0004\u0012\u00020\u000b0\nj\u0002`\f2\u0010\u0010\r\u001a\f\u0012\u0004\u0012\u00020\u000b0\nj\u0002`\f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J$\u0010\u0017\u001a\u00020\u00062\u0010\u0010\u0014\u001a\f\u0012\u0004\u0012\u00020\u000b0\nj\u0002`\f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002J\u0018\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\"\u0010\u001a\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0010\u0010\u0019\u001a\f\u0012\u0004\u0012\u00020\u000b0\nj\u0002`\fH\u0002J\"\u0010\u001b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0010\u0010\u0019\u001a\f\u0012\u0004\u0012\u00020\u000b0\nj\u0002`\fH\u0002J\u0010\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\bH\u0002R\u001b\u0010\"\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0005\u0010\u001f\u001a\u0004\b \u0010!R\u001b\u0010$\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u001f\u001a\u0004\b#\u0010!R\u001e\u0010'\u001a\f\u0012\u0004\u0012\u00020\u000b0\nj\u0002`\f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b%\u0010&¨\u0006+"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;", "Landroid/view/View$OnDragListener;", "Landroid/view/View;", "itemView", "Landroid/view/DragEvent;", "e", "", "onDrag", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "originModel", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", "targetTreeNode", "", C4921e.f26537n, "originTreeNode", "", "dragState", "i", "treeNode", "", "name", "d", "m", "targetNode", "c", "b", "originNoteModel", "l", "", "Lkotlin/Lazy;", C6997f.f39671c, "()F", "bottomYPercent", C6999h.f39688c, "topYPercent", C6998g.f39679a, "()Lcom/onyx/android/sdk/base/data/TreeNode;", "rootNode", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteFolderTreeDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteFolderTreeDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,308:1\n256#2,2:309\n256#2,2:311\n256#2,2:313\n256#2,2:315\n256#2,2:317\n256#2,2:319\n*S KotlinDebug\n*F\n+ 1 NoteFolderTreeDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener\n*L\n249#1:309,2\n250#1:311,2\n251#1:313,2\n256#1:315,2\n257#1:317,2\n258#1:319,2\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteFolderTreeDragListener implements View.OnDragListener {

    @NotNull
    public static final String TAG = "NoteFolderTreeDragListener";

    /* renamed from: g */
    public static final int f55615g = 1;

    /* renamed from: h */
    public static final int f55616h = 2;

    /* renamed from: i */
    public static final int f55617i = 3;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy bottomYPercent;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy topYPercent;

    /* renamed from: com.onyx.galaxy.note.category.view.drag.NoteFolderTreeDragListener$a */
    /* loaded from: classes9.dex */
    public static final class C11465a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ SyncNoteModel f55620e;

        public C11465a(SyncNoteModel syncNoteModel) {
            this.f55620e = syncNoteModel;
        }

        /* renamed from: a */
        public final void m44610a(boolean z) {
            if (z) {
                return;
            }
            ToastUtils.INSTANCE.show(this.f55620e.isDocument() ? C10651R.string.move_note_conflicted : C10651R.string.move_folder_conflicted, true);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m44610a(((Boolean) obj).booleanValue());
        }
    }

    public NoteFolderTreeDragListener() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.category.view.drag.NoteFolderTreeDragListener$bottomYPercent$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(ResManager.INSTANCE.getResources().getFraction(C10651R.fraction.config_drag_after_percent, 1, 1));
            }
        });
        this.bottomYPercent = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.category.view.drag.NoteFolderTreeDragListener$topYPercent$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(ResManager.INSTANCE.getResources().getFraction(C10651R.fraction.config_drag_before_percent, 1, 1));
            }
        });
        this.topYPercent = lazy2;
    }

    /* renamed from: j */
    public static final void m44598j(final NoteFolderTreeDragListener this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteTreeNodes.INSTANCE.setSaved(this$0.m44604g(), new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.drag.NoteFolderTreeDragListener$handleDropFromFolder$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it2) {
                TreeNode<NoteModelBean> m44604g;
                Intrinsics.checkNotNullParameter(it2, "it");
                NoteTreeNodes noteTreeNodes = NoteTreeNodes.INSTANCE;
                m44604g = NoteFolderTreeDragListener.this.m44604g();
                return Boolean.valueOf(noteTreeNodes.loadNotSavedList(m44604g).contains((Object) it2.getData()));
            }
        });
    }

    /* renamed from: b */
    public final boolean m44599b(SyncNoteModel originModel, final TreeNode<NoteModelBean> targetNode) {
        final String uniqueId = originModel.getUniqueId();
        boolean areEqual = Intrinsics.areEqual(uniqueId, targetNode.getData().getUniqueId());
        TreeNode<NoteModelBean> findNode = m44604g().findNode(new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.drag.NoteFolderTreeDragListener$acceptDragFromFolder$originTreeNode$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getId(), uniqueId));
            }
        });
        if (findNode == null) {
            return false;
        }
        return (!findNode.canAdopt(targetNode, 7) || areEqual || (findNode.findNode(new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.drag.NoteFolderTreeDragListener$acceptDragFromFolder$isAncestors$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getId(), targetNode.getData().getUniqueId()));
            }
        }) != null)) ? false : true;
    }

    /* renamed from: c */
    public final boolean m44600c(SyncNoteModel originModel, final TreeNode<NoteModelBean> targetNode) {
        if (originModel.isDocument()) {
            return true;
        }
        final String uniqueId = originModel.getUniqueId();
        TreeNode<NoteModelBean> findNode = m44604g().findNode(new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.drag.NoteFolderTreeDragListener$acceptDragFromList$originTreeNode$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getId(), uniqueId));
            }
        });
        if (findNode == null) {
            return false;
        }
        return (!findNode.canAdopt(targetNode, 6) || Intrinsics.areEqual(uniqueId, targetNode.getData().getUniqueId()) || (findNode.findNode(new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.drag.NoteFolderTreeDragListener$acceptDragFromList$isAncestors$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getId(), targetNode.getData().getUniqueId()));
            }
        }) != null)) ? false : true;
    }

    /* renamed from: d */
    public final boolean m44601d(TreeNode<NoteModelBean> treeNode, String name) {
        boolean checkNoteNameRepeat = NoteTreeNodes.INSTANCE.checkNoteNameRepeat(treeNode, name);
        if (checkNoteNameRepeat) {
            ToastUtils.INSTANCE.show(C10651R.string.move_folder_conflicted, true);
        }
        return checkNoteNameRepeat;
    }

    /* renamed from: e */
    public final void m44602e(View itemView, int dragState) {
        View findViewById = itemView.findViewById(C10651R.id.v_drag_in);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        findViewById.setVisibility(dragState == 2 ? 0 : 8);
        View findViewById2 = itemView.findViewById(C10651R.id.v_drag_bottom);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        findViewById2.setVisibility(dragState == 3 ? 0 : 8);
        View findViewById3 = itemView.findViewById(C10651R.id.v_drag_top);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
        findViewById3.setVisibility(dragState == 1 ? 0 : 8);
        itemView.invalidate();
    }

    /* renamed from: f */
    public final float m44603f() {
        return ((Number) this.bottomYPercent.getValue()).floatValue();
    }

    /* renamed from: g */
    public final TreeNode<NoteModelBean> m44604g() {
        return NoteTreeBundle.INSTANCE.getFolderRootNote();
    }

    /* renamed from: h */
    public final float m44605h() {
        return ((Number) this.topYPercent.getValue()).floatValue();
    }

    /* renamed from: i */
    public final void m44606i(TreeNode<NoteModelBean> originTreeNode, TreeNode<NoteModelBean> targetTreeNode, int dragState) {
        List mutableListOf;
        List listOf;
        NoteModelBean data = originTreeNode.getData();
        data.setOrderIndex(-1.0f);
        boolean isParent = originTreeNode.isParent(targetTreeNode);
        boolean isSibling = originTreeNode.isSibling(targetTreeNode);
        String title = data.getTitle();
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(data);
        if (dragState != 1) {
            if (dragState != 2) {
                if (dragState == 3 && (isSibling || !m44601d(targetTreeNode.getParent(), title))) {
                    NoteTreeNodes.INSTANCE.moveAfter(originTreeNode, targetTreeNode);
                }
            } else {
                if (isParent || m44601d(targetTreeNode, title)) {
                    return;
                }
                NoteTreeNodes.INSTANCE.moveTo(originTreeNode, targetTreeNode);
                listOf = CollectionsKt__CollectionsJVMKt.listOf(targetTreeNode.getData().getUniqueId());
                RxBaseAction.execute$default(new UpdateNoteExpandStatusAction(listOf, 1), null, null, null, 7, null);
            }
        } else if (isSibling || !m44601d(targetTreeNode.getParent(), title)) {
            NoteTreeNodes.INSTANCE.moveBefore(originTreeNode, targetTreeNode);
        }
        mutableListOf.addAll(NoteTreeNodes.INSTANCE.loadNotSavedList(m44604g()));
        RxBaseAction.execute$default(new DragMoveFolderAction(originTreeNode.getData().getUniqueId(), targetTreeNode.getData().getUniqueId(), dragState, mutableListOf), null, null, new Action() { // from class: com.sunia.HTREnginev2.fwj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                NoteFolderTreeDragListener.m44598j(NoteFolderTreeDragListener.this);
            }
        }, 3, null);
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: k */
    public final void m44607k(SyncNoteModel originModel, TreeNode<NoteModelBean> targetTreeNode) {
        List mutableListOf;
        if (Intrinsics.areEqual(originModel.getParentUniqueId(), targetTreeNode.getData().getUniqueId())) {
            return;
        }
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(originModel);
        new MoveNoteAction(mutableListOf, targetTreeNode).build().subscribe(new C11465a(originModel));
        m44608l(originModel);
    }

    /* renamed from: l */
    public final void m44608l(SyncNoteModel originNoteModel) {
        Map<String, ? extends Object> mutableMapOf;
        if (originNoteModel.isDocument()) {
            mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(NoteTreeBundle.INSTANCE.activeFilterInfo().getType())));
            StatisticsBundle.INSTANCE.reportEvent(OnyxStatisticConstant.ID_HOME_PAGE_NOTE_LIST_ITEM_DRAG, mutableMapOf);
        }
    }

    /* renamed from: m */
    public final void m44609m(View itemView) {
        View findViewById = itemView.findViewById(C10651R.id.v_drag_in);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        findViewById.setVisibility(8);
        View findViewById2 = itemView.findViewById(C10651R.id.v_drag_bottom);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        findViewById2.setVisibility(8);
        View findViewById3 = itemView.findViewById(C10651R.id.v_drag_top);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
        findViewById3.setVisibility(8);
        itemView.invalidate();
    }

    @Override // android.view.View.OnDragListener
    public boolean onDrag(@NotNull View itemView, @NotNull DragEvent e) {
        final SyncNoteModel syncNoteModel;
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Intrinsics.checkNotNullParameter(e, "e");
        if (e.getAction() == 4) {
            m44609m(itemView);
            return false;
        }
        ClipDescription clipDescription = e.getClipDescription();
        CharSequence label = clipDescription != null ? clipDescription.getLabel() : null;
        boolean z = Intrinsics.areEqual(label, NoteListAdapter.TAG) || Intrinsics.areEqual(label, NotePageListAdapter.TAG);
        boolean areEqual = Intrinsics.areEqual(label, TAG);
        if (!areEqual && !z) {
            return false;
        }
        if (e.getLocalState() instanceof NoteModelBean) {
            Object localState = e.getLocalState();
            Intrinsics.checkNotNull(localState, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.bean.NoteModelBean");
            syncNoteModel = (NoteModelBean) localState;
        } else {
            Object localState2 = e.getLocalState();
            Intrinsics.checkNotNull(localState2, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.db.model.SyncNoteModel");
            syncNoteModel = (SyncNoteModel) localState2;
        }
        Object tag = itemView.getTag();
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteModelBean>{ com.onyx.android.sdk.replicator.note.utils.NoteTreeNodeKt.NoteTreeNode }");
        TreeNode<NoteModelBean> treeNode = (TreeNode) tag;
        TreeNode<NoteModelBean> findNode = m44604g().findNode(new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.drag.NoteFolderTreeDragListener$onDrag$originTreeNode$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getId(), SyncNoteModel.this.getUniqueId()));
            }
        });
        Boolean valueOf = findNode != null ? Boolean.valueOf(findNode.canAdopt(treeNode, 6)) : null;
        float height = itemView.getHeight() * m44603f();
        float height2 = itemView.getHeight() * m44605h();
        boolean expand = treeNode.getExpand();
        int action = e.getAction();
        if (action == 1) {
            if (z) {
                return m44600c(syncNoteModel, treeNode);
            }
            if (areEqual) {
                return m44599b(syncNoteModel, treeNode);
            }
            return false;
        }
        if (action == 2) {
            if (syncNoteModel.isLibrary()) {
                if (e.getY() > height2) {
                    if (e.getY() >= height && !expand) {
                        m44602e(itemView, 3);
                    } else if (Intrinsics.areEqual(valueOf, Boolean.TRUE)) {
                        m44602e(itemView, 2);
                    } else {
                        m44609m(itemView);
                    }
                    return true;
                }
                m44602e(itemView, 1);
            }
            return true;
        }
        if (action != 3) {
            if (action != 5) {
                if (action != 6) {
                    return false;
                }
                m44609m(itemView);
                return true;
            }
            if (!syncNoteModel.isDocument() && (!syncNoteModel.isLibrary() || !Intrinsics.areEqual(valueOf, Boolean.TRUE))) {
                return true;
            }
            m44602e(itemView, 2);
            return true;
        }
        if (z) {
            m44607k(syncNoteModel, treeNode);
        }
        if (areEqual) {
            int i = e.getY() <= height2 ? 1 : e.getY() >= height ? 3 : 2;
            if (i == 3 && expand) {
                return false;
            }
            if (i == 2 && Intrinsics.areEqual(valueOf, Boolean.FALSE)) {
                return false;
            }
            Intrinsics.checkNotNull(findNode);
            m44606i(findNode, treeNode, i);
        }
        m44609m(itemView);
        return true;
    }
}
