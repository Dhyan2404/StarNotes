package com.onyx.galaxy.note.category.view.itemtouchcallback;

import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBeanList;
import com.onyx.android.sdk.replicator.note.utils.NoteTagNodes;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.adapter.ManageTagAdapter;
import com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback;
import com.onyx.galaxy.note.category.view.itemtouchcallback.ManageTagHandlerImpl;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u001c¢\u0006\u0004\b \u0010!J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0012\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\u001a\u0010\f\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0018\u0010\r\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0018\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016J\u0018\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J,\u0010\u0017\u001a\u00020\n2\u0010\u0010\u0015\u001a\f\u0012\u0004\u0012\u00020\u00130\u0012j\u0002`\u00142\u0010\u0010\u0016\u001a\f\u0012\u0004\u0012\u00020\u00130\u0012j\u0002`\u0014H\u0002J\u0018\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\u0018\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J4\u0010\u001b\u001a\u00020\u00052\u0010\u0010\u0015\u001a\f\u0012\u0004\u0012\u00020\u00130\u0012j\u0002`\u00142\u0010\u0010\u0016\u001a\f\u0012\u0004\u0012\u00020\u00130\u0012j\u0002`\u00142\u0006\u0010\u001a\u001a\u00020\u0002H\u0002R\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006#"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageTagHandlerImpl;", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;", "", "fromPosition", "toPosition", "", "onMergeData", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "viewHolder", "onStartDrag", "", "performMerge", "onStopDrag", "swap", "canMerge", "position", "canDrag", "canSwap", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "originTreeNode", "targetTreeNode", "b", "c", "d", "dragState", "e", "Lcom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter;", "a", "Lcom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter;", "adapter", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nManageTagHandlerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManageTagHandlerImpl.kt\ncom/onyx/galaxy/note/category/view/itemtouchcallback/ManageTagHandlerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,186:1\n288#2,2:187\n288#2,2:189\n288#2,2:191\n288#2,2:193\n1855#2,2:195\n*S KotlinDebug\n*F\n+ 1 ManageTagHandlerImpl.kt\ncom/onyx/galaxy/note/category/view/itemtouchcallback/ManageTagHandlerImpl\n*L\n95#1:187,2\n100#1:189,2\n116#1:191,2\n150#1:193,2\n182#1:195,2\n*E\n"})
/* loaded from: classes9.dex */
public class ManageTagHandlerImpl implements DragTouchCallback.DragHandler {

    /* renamed from: b */
    public static final int f55677b = 1;

    /* renamed from: c */
    public static final int f55678c = 2;

    /* renamed from: d */
    public static final int f55679d = 3;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final ManageTagAdapter adapter;

    public ManageTagHandlerImpl(@NotNull ManageTagAdapter adapter) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.adapter = adapter;
    }

    /* renamed from: f */
    public static final void m44681f(ManageTagHandlerImpl this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.adapter.submitTreeList();
    }

    /* renamed from: b */
    public final boolean m44682b(TreeNode<NoteTagBean> originTreeNode, TreeNode<NoteTagBean> targetTreeNode) {
        Object obj;
        Object obj2;
        Iterator<T> it2 = targetTreeNode.findChildren().iterator();
        while (true) {
            obj = null;
            if (!it2.hasNext()) {
                obj2 = null;
                break;
            }
            obj2 = it2.next();
            if (Intrinsics.areEqual(((NoteTagBean) ((TreeNode) obj2).getData()).getContent(), originTreeNode.getData().getContent())) {
                break;
            }
        }
        boolean z = ((TreeNode) obj2) != null;
        boolean areEqual = Intrinsics.areEqual(originTreeNode.getData().getUniqueId(), targetTreeNode.getData().getUniqueId());
        Iterator<T> it3 = originTreeNode.findChildrenNodes().iterator();
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            Object next = it3.next();
            if (Intrinsics.areEqual(((TreeNode) next).getId(), targetTreeNode.getData().getUniqueId())) {
                obj = next;
                break;
            }
        }
        return (z || !originTreeNode.canAdopt(targetTreeNode, 7) || areEqual || (obj != null)) ? false : true;
    }

    /* renamed from: c */
    public final boolean m44683c(int fromPosition, int toPosition) {
        Object obj;
        TreeNode<NoteTagBean> treeNode = this.adapter.getItems().get(fromPosition);
        TreeNode<NoteTagBean> treeNode2 = this.adapter.getItems().get(toPosition);
        boolean m44684d = m44684d(fromPosition, toPosition);
        Iterator<T> it2 = treeNode.findChildrenNodes().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((TreeNode) obj).getId(), treeNode2.getData().getUniqueId())) {
                break;
            }
        }
        return (m44684d || !treeNode.canAdopt(treeNode2, 7) || (obj != null)) ? false : true;
    }

    @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
    public boolean canDrag(int position) {
        return true;
    }

    @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
    public boolean canMerge(int fromPosition, int toPosition) {
        TreeNode<NoteTagBean> treeNode = this.adapter.getItems().get(fromPosition);
        TreeNode<NoteTagBean> treeNode2 = this.adapter.getItems().get(toPosition);
        return m44682b(treeNode, treeNode2) && treeNode.canAdopt(treeNode2, 6);
    }

    @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
    public boolean canSwap(int fromPosition, int toPosition) {
        TreeNode<NoteTagBean> treeNode = this.adapter.getItems().get(fromPosition);
        TreeNode<NoteTagBean> treeNode2 = this.adapter.getItems().get(toPosition);
        boolean m44683c = m44683c(fromPosition, toPosition);
        boolean expand = treeNode2.getExpand();
        boolean canAdopt = treeNode.canAdopt(treeNode2, 7);
        boolean canAdopt2 = treeNode.canAdopt(treeNode2, 6);
        boolean z = fromPosition > toPosition;
        boolean z2 = fromPosition < toPosition;
        if (m44683c) {
            return expand ? (z && canAdopt) || (z2 && canAdopt2) : canAdopt;
        }
        return false;
    }

    /* renamed from: d */
    public final boolean m44684d(int fromPosition, int toPosition) {
        char c;
        Object obj;
        TreeNode<NoteTagBean> treeNode = this.adapter.getItems().get(fromPosition);
        TreeNode<NoteTagBean> treeNode2 = this.adapter.getItems().get(toPosition);
        boolean areEqual = Intrinsics.areEqual(treeNode.getParent(), treeNode2.getParent());
        boolean expand = treeNode2.getExpand();
        boolean z = fromPosition < toPosition;
        if (expand) {
            if (z) {
                c = 2;
            }
            c = 1;
        } else {
            if (z) {
                c = 3;
            }
            c = 1;
        }
        if (areEqual && c != 2) {
            return false;
        }
        if (c != 2) {
            treeNode2 = treeNode2.getParent();
        }
        Iterator<T> it2 = treeNode2.findChildren().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((NoteTagBean) ((TreeNode) obj).getData()).getContent(), treeNode.getData().getContent())) {
                break;
            }
        }
        return ((TreeNode) obj) != null;
    }

    /* renamed from: e */
    public final void m44685e(TreeNode<NoteTagBean> originTreeNode, TreeNode<NoteTagBean> targetTreeNode, int dragState) {
        NoteTagBean data = originTreeNode.getData();
        NoteTagBeanList noteTagBeanList = new NoteTagBeanList();
        noteTagBeanList.add(data);
        data.setOrderIndex(-1.0f);
        if (dragState == 1) {
            NoteTagNodes.INSTANCE.moveBefore(originTreeNode, targetTreeNode);
        } else if (dragState == 2) {
            NoteTagNodes.INSTANCE.moveTo(originTreeNode, targetTreeNode);
        } else if (dragState == 3) {
            NoteTagNodes.INSTANCE.moveAfter(originTreeNode, targetTreeNode);
        }
        noteTagBeanList.addAll(NoteTagNodes.INSTANCE.loadNotSavedList(this.adapter.getManageTagContext().getRootNode()));
        for (NoteTagBean noteTagBean : noteTagBeanList) {
            this.adapter.getManageTagContext().getSaveModelMap().put(noteTagBean.getUniqueId(), noteTagBean);
        }
    }

    @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
    public void onMergeData(int fromPosition, int toPosition) {
        m44685e(this.adapter.getItems().get(fromPosition), this.adapter.getItems().get(toPosition), 2);
    }

    @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
    public void onStartDrag(@Nullable RecyclerView.ViewHolder viewHolder) {
        if (viewHolder != null) {
            ImageView imageView = (ImageView) viewHolder.itemView.findViewById(C10651R.id.iv_note_tree_expand);
            Object tag = viewHolder.itemView.getTag(C10651R.id.tag_key_pos);
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
            int intValue = ((Integer) tag).intValue();
            imageView.setImageResource(C10651R.drawable.ic_arrow_right);
            this.adapter.collapseCascadeOnDrag(intValue);
        }
    }

    @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
    public void onStopDrag(@Nullable RecyclerView.ViewHolder viewHolder, boolean performMerge) {
        this.adapter.getRecyclerView().post(new Runnable() { // from class: com.sunia.HTREnginev2.c8j
            @Override // java.lang.Runnable
            public final void run() {
                ManageTagHandlerImpl.m44681f(ManageTagHandlerImpl.this);
            }
        });
    }

    @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
    public void swap(int fromPosition, int toPosition) {
        TreeNode<NoteTagBean> treeNode = this.adapter.getItems().get(fromPosition);
        TreeNode<NoteTagBean> treeNode2 = this.adapter.getItems().get(toPosition);
        boolean expand = treeNode2.getExpand();
        boolean z = fromPosition < toPosition;
        if (expand) {
            m44685e(treeNode, treeNode2, z ? 2 : 1);
        } else {
            m44685e(treeNode, treeNode2, z ? 3 : 1);
        }
        this.adapter.move(fromPosition, toPosition);
    }
}
