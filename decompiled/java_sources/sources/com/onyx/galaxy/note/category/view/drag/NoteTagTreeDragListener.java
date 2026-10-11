package com.onyx.galaxy.note.category.view.drag;

import android.content.ClipDescription;
import android.view.DragEvent;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.TagAddFrom;
import com.onyx.android.sdk.data.TagAddType;
import com.onyx.android.sdk.event.StatisticsTagAddEvent;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.utils.NoteTagNodes;
import com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.DragMoveTagAction;
import com.onyx.galaxy.note.category.action.UpdateNoteAction;
import com.onyx.galaxy.note.category.action.UpdateTagExpandStatusAction;
import com.onyx.galaxy.note.category.view.adapter.NoteListAdapter;
import com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter;
import com.onyx.galaxy.note.category.view.drag.NoteTagTreeDragListener;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import java.util.Iterator;
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

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\r\u0018\u0000 *2\u00020\u0001:\u0001*B\u0007¢\u0006\u0004\b(\u0010)J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J4\u0010\u0010\u001a\u00020\u000f2\u0010\u0010\u000b\u001a\f\u0012\u0004\u0012\u00020\t0\bj\u0002`\n2\u0010\u0010\f\u001a\f\u0012\u0004\u0012\u00020\t0\bj\u0002`\n2\u0006\u0010\u000e\u001a\u00020\rH\u0002J$\u0010\u0005\u001a\u00020\u00062\u0010\u0010\u0011\u001a\f\u0012\u0004\u0012\u00020\t0\bj\u0002`\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002J\"\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00142\u0010\u0010\f\u001a\f\u0012\u0004\u0012\u00020\t0\bj\u0002`\nH\u0002J,\u0010\u0017\u001a\u00020\u00062\u0010\u0010\u000b\u001a\f\u0012\u0004\u0012\u00020\t0\bj\u0002`\n2\u0010\u0010\f\u001a\f\u0012\u0004\u0012\u00020\t0\bj\u0002`\nH\u0002J\u0018\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J,\u0010\u001a\u001a\u00020\u00062\u0010\u0010\u000b\u001a\f\u0012\u0004\u0012\u00020\t0\bj\u0002`\n2\u0010\u0010\f\u001a\f\u0012\u0004\u0012\u00020\t0\bj\u0002`\nH\u0002J\u0010\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u0014H\u0002R\u001b\u0010\"\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0005\u0010\u001f\u001a\u0004\b \u0010!R\u001b\u0010$\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u001f\u001a\u0004\b#\u0010!R\u001e\u0010'\u001a\f\u0012\u0004\u0012\u00020\t0\bj\u0002`\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b%\u0010&¨\u0006+"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;", "Landroid/view/View$OnDragListener;", "Landroid/view/View;", "itemView", "Landroid/view/DragEvent;", "e", "", "onDrag", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "originTreeNode", "targetTreeNode", "", "dragState", "", C4921e.f26537n, "treeNode", "", "content", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "originModel", "j", "d", C6997f.f39671c, GoogleApiAvailabilityLight.f29016b, "c", "b", "originNoteModel", "m", "", "Lkotlin/Lazy;", C6998g.f39679a, "()F", "bottomYPercent", "i", "topYPercent", C6999h.f39688c, "()Lcom/onyx/android/sdk/base/data/TreeNode;", "rootNode", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteTagTreeDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTagTreeDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,324:1\n256#2,2:325\n256#2,2:327\n256#2,2:329\n256#2,2:331\n256#2,2:333\n256#2,2:335\n288#3,2:337\n*S KotlinDebug\n*F\n+ 1 NoteTagTreeDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener\n*L\n279#1:325,2\n281#1:327,2\n283#1:329,2\n289#1:331,2\n290#1:333,2\n291#1:335,2\n303#1:337,2\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteTagTreeDragListener implements View.OnDragListener {
    public static final int DRAG_AFTER = 3;
    public static final int DRAG_BEFORE = 1;
    public static final int DRAG_IN = 2;

    @NotNull
    public static final String TAG = "NoteTagTreeDragListener";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy bottomYPercent;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy topYPercent;

    public NoteTagTreeDragListener() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.category.view.drag.NoteTagTreeDragListener$bottomYPercent$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(ResManager.INSTANCE.getResources().getFraction(C10651R.fraction.config_drag_after_percent, 1, 1));
            }
        });
        this.bottomYPercent = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.category.view.drag.NoteTagTreeDragListener$topYPercent$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(ResManager.INSTANCE.getResources().getFraction(C10651R.fraction.config_drag_before_percent, 1, 1));
            }
        });
        this.topYPercent = lazy2;
    }

    /* renamed from: l */
    public static final void m44641l(final NoteTagTreeDragListener this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteTagNodes.INSTANCE.setSaved(this$0.m44648h(), new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.drag.NoteTagTreeDragListener$handleDropFromTag$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteTagBean> it2) {
                TreeNode<NoteTagBean> m44648h;
                Intrinsics.checkNotNullParameter(it2, "it");
                NoteTagNodes noteTagNodes = NoteTagNodes.INSTANCE;
                m44648h = NoteTagTreeDragListener.this.m44648h();
                return Boolean.valueOf(noteTagNodes.loadNotSavedList(m44648h).contains((Object) it2.getData()));
            }
        });
    }

    /* renamed from: b */
    public final boolean m44642b(SyncNoteModel originModel) {
        return originModel.isDocument();
    }

    /* renamed from: c */
    public final boolean m44643c(TreeNode<NoteTagBean> originTreeNode, TreeNode<NoteTagBean> targetTreeNode) {
        Object obj;
        boolean areEqual = Intrinsics.areEqual(originTreeNode.getData().getUniqueId(), targetTreeNode.getData().getUniqueId());
        boolean canAdopt = originTreeNode.canAdopt(targetTreeNode, 7);
        Iterator<T> it2 = originTreeNode.findChildrenNodes().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((TreeNode) obj).getId(), targetTreeNode.getData().getUniqueId())) {
                break;
            }
        }
        return (!canAdopt || areEqual || (obj != null)) ? false : true;
    }

    /* renamed from: d */
    public final boolean m44644d(TreeNode<NoteTagBean> originTreeNode, TreeNode<NoteTagBean> targetTreeNode) {
        return originTreeNode.canAdopt(targetTreeNode, 6);
    }

    /* renamed from: e */
    public final boolean m44645e(TreeNode<NoteTagBean> treeNode, String content) {
        boolean checkTagContentRepeat = NoteTagNodes.INSTANCE.checkTagContentRepeat(treeNode, content);
        if (checkTagContentRepeat) {
            ToastUtils.INSTANCE.show(C10651R.string.move_tag_conflicted, true);
        }
        return checkTagContentRepeat;
    }

    /* renamed from: f */
    public final void m44646f(View itemView, int dragState) {
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

    /* renamed from: g */
    public final float m44647g() {
        return ((Number) this.bottomYPercent.getValue()).floatValue();
    }

    /* renamed from: h */
    public final TreeNode<NoteTagBean> m44648h() {
        return NoteTreeBundle.INSTANCE.getTagRootNote();
    }

    /* renamed from: i */
    public final float m44649i() {
        return ((Number) this.topYPercent.getValue()).floatValue();
    }

    /* renamed from: j */
    public final void m44650j(final SyncNoteModel originModel, TreeNode<NoteTagBean> targetTreeNode) {
        List mutableListOf;
        String uniqueId = targetTreeNode.getData().getUniqueId();
        if (originModel.getTagIdList().contains(uniqueId)) {
            return;
        }
        StatisticsBundle.INSTANCE.postEvent(new StatisticsTagAddEvent(TagAddFrom.DRAG, TagAddType.NOTE));
        originModel.getTagIdList().add(uniqueId);
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(originModel);
        RxjavaKt.flatMapIf(new UpdateNoteAction(mutableListOf, false, false, 6, null).build(), new Function1<Boolean, Boolean>() { // from class: com.onyx.galaxy.note.category.view.drag.NoteTagTreeDragListener$handleDropFromList$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool) {
                return invoke(bool.booleanValue());
            }

            @NotNull
            public final Boolean invoke(boolean z) {
                return Boolean.valueOf(StringKt.isNotBlank(SyncNoteModel.this.getParentUniqueId()));
            }
        }, new Function1<Boolean, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.category.view.drag.NoteTagTreeDragListener$handleDropFromList$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(Boolean bool) {
                return invoke(bool.booleanValue());
            }

            @NotNull
            public final Observable<? extends Object> invoke(boolean z) {
                List listOf;
                String parentUniqueId = SyncNoteModel.this.getParentUniqueId();
                Intrinsics.checkNotNull(parentUniqueId);
                listOf = CollectionsKt__CollectionsJVMKt.listOf(parentUniqueId);
                return new UpdateFolderCoverAction(listOf).build();
            }
        }).subscribe();
        m44652m(originModel);
    }

    /* renamed from: k */
    public final void m44651k(TreeNode<NoteTagBean> originTreeNode, TreeNode<NoteTagBean> targetTreeNode, int dragState) {
        List mutableListOf;
        List listOf;
        NoteTagBean data = originTreeNode.getData();
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(data);
        data.setOrderIndex(-1.0f);
        boolean isParent = originTreeNode.isParent(targetTreeNode);
        boolean isSibling = originTreeNode.isSibling(targetTreeNode);
        String content = data.getContent();
        if (dragState != 1) {
            if (dragState != 2) {
                if (dragState == 3 && (isSibling || !m44645e(targetTreeNode.getParent(), content))) {
                    NoteTagNodes.INSTANCE.moveAfter(originTreeNode, targetTreeNode);
                }
            } else {
                if (isParent || m44645e(targetTreeNode, content)) {
                    return;
                }
                NoteTagNodes.INSTANCE.moveTo(originTreeNode, targetTreeNode);
                listOf = CollectionsKt__CollectionsJVMKt.listOf(targetTreeNode.getData().getUniqueId());
                RxBaseAction.execute$default(new UpdateTagExpandStatusAction(listOf, 1), null, null, null, 7, null);
            }
        } else if (isSibling || !m44645e(targetTreeNode.getParent(), content)) {
            NoteTagNodes.INSTANCE.moveBefore(originTreeNode, targetTreeNode);
        }
        mutableListOf.addAll(NoteTagNodes.INSTANCE.loadNotSavedList(m44648h()));
        RxBaseAction.execute$default(new DragMoveTagAction(originTreeNode.getData().getUniqueId(), targetTreeNode.getData().getUniqueId(), dragState, mutableListOf), null, null, new Action() { // from class: com.sunia.HTREnginev2.z2k
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                NoteTagTreeDragListener.m44641l(NoteTagTreeDragListener.this);
            }
        }, 3, null);
    }

    /* renamed from: m */
    public final void m44652m(SyncNoteModel originNoteModel) {
        Map<String, ? extends Object> mutableMapOf;
        if (originNoteModel.isDocument()) {
            mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(NoteTreeBundle.INSTANCE.activeFilterInfo().getType())));
            StatisticsBundle.INSTANCE.reportEvent(OnyxStatisticConstant.ID_HOME_PAGE_NOTE_LIST_ITEM_DRAG, mutableMapOf);
        }
    }

    /* renamed from: n */
    public final void m44653n(View itemView) {
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
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Intrinsics.checkNotNullParameter(e, "e");
        if (e.getAction() == 4) {
            m44653n(itemView);
            return false;
        }
        ClipDescription clipDescription = e.getClipDescription();
        CharSequence label = clipDescription != null ? clipDescription.getLabel() : null;
        boolean z = Intrinsics.areEqual(label, NoteListAdapter.TAG) || Intrinsics.areEqual(label, NotePageListAdapter.TAG);
        boolean areEqual = Intrinsics.areEqual(label, TAG);
        if (!areEqual && !z) {
            return false;
        }
        Object tag = itemView.getTag();
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteTagBean>{ com.onyx.android.sdk.replicator.note.utils.NoteTagNodeKt.NoteTagNode }");
        TreeNode<NoteTagBean> treeNode = (TreeNode) tag;
        float height = itemView.getHeight() * m44647g();
        float height2 = itemView.getHeight() * m44649i();
        boolean expand = treeNode.getExpand();
        int action = e.getAction();
        if (action == 1) {
            if (areEqual) {
                Object localState = e.getLocalState();
                Intrinsics.checkNotNull(localState, "null cannot be cast to non-null type com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteTagBean>{ com.onyx.android.sdk.replicator.note.utils.NoteTagNodeKt.NoteTagNode }");
                return m44643c((TreeNode) localState, treeNode);
            }
            if (!z) {
                return false;
            }
            Object localState2 = e.getLocalState();
            Intrinsics.checkNotNull(localState2, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.db.model.SyncNoteModel");
            return m44642b((SyncNoteModel) localState2);
        }
        if (action == 2) {
            if (areEqual) {
                Object localState3 = e.getLocalState();
                Intrinsics.checkNotNull(localState3, "null cannot be cast to non-null type com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteTagBean>{ com.onyx.android.sdk.replicator.note.utils.NoteTagNodeKt.NoteTagNode }");
                boolean m44644d = m44644d((TreeNode) localState3, treeNode);
                if (e.getY() <= height2) {
                    m44646f(itemView, 1);
                } else if (e.getY() >= height && !expand) {
                    m44646f(itemView, 3);
                } else if (m44644d) {
                    m44646f(itemView, 2);
                } else {
                    m44653n(itemView);
                }
            }
            if (z) {
                m44646f(itemView, 2);
            }
            return true;
        }
        if (action != 3) {
            if (action != 5) {
                if (action != 6) {
                    return false;
                }
                m44653n(itemView);
                return true;
            }
            if (areEqual) {
                Object localState4 = e.getLocalState();
                Intrinsics.checkNotNull(localState4, "null cannot be cast to non-null type com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteTagBean>{ com.onyx.android.sdk.replicator.note.utils.NoteTagNodeKt.NoteTagNode }");
                if (m44644d((TreeNode) localState4, treeNode)) {
                    m44646f(itemView, 2);
                }
            }
            if (z) {
                m44646f(itemView, 2);
            }
            return true;
        }
        if (areEqual) {
            Object localState5 = e.getLocalState();
            Intrinsics.checkNotNull(localState5, "null cannot be cast to non-null type com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteTagBean>{ com.onyx.android.sdk.replicator.note.utils.NoteTagNodeKt.NoteTagNode }");
            TreeNode<NoteTagBean> treeNode2 = (TreeNode) localState5;
            boolean m44644d2 = m44644d(treeNode2, treeNode);
            int i = e.getY() <= height2 ? 1 : e.getY() >= height ? 3 : 2;
            if (i == 3 && expand) {
                return false;
            }
            if (i == 2 && !m44644d2) {
                return false;
            }
            m44651k(treeNode2, treeNode, i);
        }
        if (z) {
            Object localState6 = e.getLocalState();
            Intrinsics.checkNotNull(localState6, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.db.model.SyncNoteModel");
            m44650j((SyncNoteModel) localState6, treeNode);
        }
        m44653n(itemView);
        return true;
    }
}
