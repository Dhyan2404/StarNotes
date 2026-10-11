package com.onyx.android.sdk.replicator.note.utils;

import com.onyx.android.sdk.base.data.NewTree;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBeanList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006J\u001e\u0010\u0007\u001a\u00020\b*\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u00062\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004*\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006J\u0014\u0010\f\u001a\u00020\r*\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006J&\u0010\u000e\u001a\u00020\b*\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u00062\u0010\u0010\u000f\u001a\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006J&\u0010\u0010\u001a\u00020\b*\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u00062\u0010\u0010\u000f\u001a\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006J&\u0010\u0011\u001a\u00020\b*\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u00062\u0010\u0010\u000f\u001a\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006J\u0014\u0010\u0012\u001a\u00020\u0013*\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006J\u0014\u0010\u0014\u001a\u00020\u0013*\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006J8\u0010\u0015\u001a\u00020\u0013*\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u00062\"\u0010\u0016\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\b0\u0017j\b\u0012\u0004\u0012\u00020\u0005`\u0018¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;", "", "()V", "createNoteRootNode", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", "checkNoteNameRepeat", "", "name", "", "getParentNode", "loadNotSavedList", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;", "moveAfter", "targetTreeNode", "moveBefore", "moveTo", "reorderFolderChildren", "", "setNotSaved", "setSaved", "predication", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/base/data/TreeNodePredication;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nNoteTreeNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTreeNode.kt\ncom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n1549#2:112\n1620#2,3:113\n1855#2,2:116\n1747#2,3:118\n*S KotlinDebug\n*F\n+ 1 NoteTreeNode.kt\ncom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes\n*L\n21#1:112\n21#1:113,3\n28#1:116,2\n97#1:118,3\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteTreeNodes {

    @NotNull
    public static final NoteTreeNodes INSTANCE = new NoteTreeNodes();

    public final boolean checkNoteNameRepeat(@NotNull TreeNode<NoteModelBean> treeNode, @Nullable String str) {
        Intrinsics.checkNotNullParameter(treeNode, "<this>");
        List<TreeNode<NoteModelBean>> findChildren = treeNode.findChildren();
        if ((findChildren instanceof Collection) && findChildren.isEmpty()) {
            return false;
        }
        Iterator<T> it2 = findChildren.iterator();
        while (it2.hasNext()) {
            if (Intrinsics.areEqual(((NoteModelBean) ((TreeNode) it2.next()).getData()).getTitle(), str)) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final TreeNode<NoteModelBean> createNoteRootNode() {
        NewTree newTree = new NewTree();
        TreeNode<NoteModelBean> createNode = newTree.createNode(new NoteModelBean(), null);
        createNode.setExpand(true);
        newTree.setRoot(createNode);
        return createNode;
    }

    @NotNull
    public final TreeNode<NoteModelBean> getParentNode(@NotNull TreeNode<NoteModelBean> treeNode) {
        Intrinsics.checkNotNullParameter(treeNode, "<this>");
        TreeNode<NoteModelBean> findNode = treeNode.getTree().getRoot().findNode(treeNode.getData().getParentUniqueId());
        return findNode == null ? treeNode.getTree().getRoot() : findNode;
    }

    @NotNull
    public final NoteModelBeanList loadNotSavedList(@NotNull TreeNode<NoteModelBean> treeNode) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(treeNode, "<this>");
        NoteModelBeanList noteModelBeanList = new NoteModelBeanList();
        List findNodes$default = TreeNode.findNodes$default(treeNode, new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.android.sdk.replicator.note.utils.NoteTreeNodes$loadNotSavedList$list$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.getData().getSaved());
            }
        }, null, null, 6, null);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(findNodes$default, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = findNodes$default.iterator();
        while (it2.hasNext()) {
            arrayList.add((NoteModelBean) ((TreeNode) it2.next()).getData());
        }
        noteModelBeanList.addAll(arrayList);
        return noteModelBeanList;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean moveAfter(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteModelBean> r7, @org.jetbrains.annotations.NotNull com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteModelBean> r8) {
        /*
            r6 = this;
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.lang.String r0 = "targetTreeNode"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            com.onyx.android.sdk.base.data.TreeNode r0 = r6.getParentNode(r8)
            boolean r1 = r7.canReparent(r0)
            r2 = 0
            if (r1 != 0) goto L16
            return r2
        L16:
            java.util.List r1 = r0.findChildren()
            java.util.Collection r1 = (java.util.Collection) r1
            java.util.List r1 = kotlin.collections.CollectionsKt.toMutableList(r1)
            int r3 = r1.indexOf(r8)
            r4 = 1
            int r3 = r3 + r4
            int r1 = r1.size()
            int r1 = java.lang.Math.min(r3, r1)
            r7.reparent(r0, r1)
            r6.reorderFolderChildren(r0)
            java.lang.Object r6 = r8.getData()
            com.onyx.android.sdk.replicator.note.bean.NoteModelBean r6 = (com.onyx.android.sdk.replicator.note.bean.NoteModelBean) r6
            java.lang.String r6 = r6.getParentUniqueId()
            java.lang.Object r0 = r7.getData()
            com.onyx.android.sdk.replicator.note.bean.NoteModelBean r0 = (com.onyx.android.sdk.replicator.note.bean.NoteModelBean) r0
            if (r6 == 0) goto L4f
            boolean r3 = kotlin.text.StringsKt.isBlank(r6)
            if (r3 == 0) goto L4d
            goto L4f
        L4d:
            r3 = r2
            goto L50
        L4f:
            r3 = r4
        L50:
            if (r3 == 0) goto L53
            r6 = 0
        L53:
            r0.setParentUniqueId(r6)
            com.onyx.android.sdk.base.utils.Debug r6 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            java.lang.Class<com.onyx.android.sdk.base.data.TreeNode> r0 = com.onyx.android.sdk.base.data.TreeNode.class
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r5 = "moveAfter from "
            r3.append(r5)
            java.lang.Object r7 = r7.getData()
            com.onyx.android.sdk.replicator.note.bean.NoteModelBean r7 = (com.onyx.android.sdk.replicator.note.bean.NoteModelBean) r7
            java.lang.String r7 = r7.getTitle()
            r3.append(r7)
            java.lang.String r7 = " After "
            r3.append(r7)
            java.lang.Object r7 = r8.getData()
            com.onyx.android.sdk.replicator.note.bean.NoteModelBean r7 = (com.onyx.android.sdk.replicator.note.bean.NoteModelBean) r7
            java.lang.String r7 = r7.getTitle()
            r3.append(r7)
            java.lang.String r7 = " targetPos: "
            r3.append(r7)
            r3.append(r1)
            java.lang.String r7 = r3.toString()
            java.lang.Object[] r8 = new java.lang.Object[r2]
            r6.m32035d(r0, r7, r8)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.utils.NoteTreeNodes.moveAfter(com.onyx.android.sdk.base.data.TreeNode, com.onyx.android.sdk.base.data.TreeNode):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean moveBefore(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteModelBean> r7, @org.jetbrains.annotations.NotNull com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteModelBean> r8) {
        /*
            r6 = this;
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.lang.String r0 = "targetTreeNode"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            com.onyx.android.sdk.base.data.TreeNode r0 = r6.getParentNode(r8)
            boolean r1 = r7.canReparent(r0)
            r2 = 0
            if (r1 != 0) goto L16
            return r2
        L16:
            java.util.List r1 = r0.findChildren()
            java.util.Collection r1 = (java.util.Collection) r1
            java.util.List r1 = kotlin.collections.CollectionsKt.toMutableList(r1)
            int r1 = r1.indexOf(r8)
            r7.reparent(r0, r1)
            r6.reorderFolderChildren(r0)
            java.lang.Object r6 = r8.getData()
            com.onyx.android.sdk.replicator.note.bean.NoteModelBean r6 = (com.onyx.android.sdk.replicator.note.bean.NoteModelBean) r6
            java.lang.String r6 = r6.getParentUniqueId()
            java.lang.Object r0 = r7.getData()
            com.onyx.android.sdk.replicator.note.bean.NoteModelBean r0 = (com.onyx.android.sdk.replicator.note.bean.NoteModelBean) r0
            r3 = 1
            if (r6 == 0) goto L46
            boolean r4 = kotlin.text.StringsKt.isBlank(r6)
            if (r4 == 0) goto L44
            goto L46
        L44:
            r4 = r2
            goto L47
        L46:
            r4 = r3
        L47:
            if (r4 == 0) goto L4a
            r6 = 0
        L4a:
            r0.setParentUniqueId(r6)
            com.onyx.android.sdk.base.utils.Debug r6 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            java.lang.Class<com.onyx.android.sdk.base.data.TreeNode> r0 = com.onyx.android.sdk.base.data.TreeNode.class
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "moveBefore from "
            r4.append(r5)
            java.lang.Object r7 = r7.getData()
            com.onyx.android.sdk.replicator.note.bean.NoteModelBean r7 = (com.onyx.android.sdk.replicator.note.bean.NoteModelBean) r7
            java.lang.String r7 = r7.getTitle()
            r4.append(r7)
            java.lang.String r7 = " before "
            r4.append(r7)
            java.lang.Object r7 = r8.getData()
            com.onyx.android.sdk.replicator.note.bean.NoteModelBean r7 = (com.onyx.android.sdk.replicator.note.bean.NoteModelBean) r7
            java.lang.String r7 = r7.getTitle()
            r4.append(r7)
            java.lang.String r7 = " targetPos: "
            r4.append(r7)
            r4.append(r1)
            java.lang.String r7 = r4.toString()
            java.lang.Object[] r8 = new java.lang.Object[r2]
            r6.m32035d(r0, r7, r8)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.utils.NoteTreeNodes.moveBefore(com.onyx.android.sdk.base.data.TreeNode, com.onyx.android.sdk.base.data.TreeNode):boolean");
    }

    public final boolean moveTo(@NotNull TreeNode<NoteModelBean> treeNode, @NotNull TreeNode<NoteModelBean> targetTreeNode) {
        Intrinsics.checkNotNullParameter(treeNode, "<this>");
        Intrinsics.checkNotNullParameter(targetTreeNode, "targetTreeNode");
        if (!treeNode.canReparent(targetTreeNode)) {
            return false;
        }
        TreeNode.reparent$default(treeNode, targetTreeNode, 0, 2, null);
        reorderFolderChildren(targetTreeNode);
        treeNode.getData().setParentUniqueId(targetTreeNode.getData().getUniqueId());
        Debug.INSTANCE.m32035d(TreeNode.class, "moveTo from " + treeNode.getData().getTitle() + " to " + targetTreeNode.getData().getTitle(), new Object[0]);
        return true;
    }

    public final void reorderFolderChildren(@NotNull TreeNode<NoteModelBean> treeNode) {
        Intrinsics.checkNotNullParameter(treeNode, "<this>");
        OrderListUtils.INSTANCE.reorderIndex(treeNode.findChildren(), new Function1<TreeNode<NoteModelBean>, Float>() { // from class: com.onyx.android.sdk.replicator.note.utils.NoteTreeNodes$reorderFolderChildren$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Float invoke(@NotNull TreeNode<NoteModelBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Float.valueOf(it2.getData().getOrderIndex());
            }
        }, new Function2<TreeNode<NoteModelBean>, Float, Unit>() { // from class: com.onyx.android.sdk.replicator.note.utils.NoteTreeNodes$reorderFolderChildren$2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(TreeNode<NoteModelBean> treeNode2, Float f) {
                invoke(treeNode2, f.floatValue());
                return Unit.INSTANCE;
            }

            public final void invoke(@NotNull TreeNode<NoteModelBean> node, float f) {
                Intrinsics.checkNotNullParameter(node, "node");
                node.getData().setOrderIndex(f);
                NoteTreeNodes.INSTANCE.setNotSaved(node);
            }
        });
    }

    public final void setNotSaved(@NotNull TreeNode<NoteModelBean> treeNode) {
        Intrinsics.checkNotNullParameter(treeNode, "<this>");
        treeNode.getData().setNotSaved();
    }

    public final void setSaved(@NotNull TreeNode<NoteModelBean> treeNode, @NotNull Function1<? super TreeNode<NoteModelBean>, Boolean> predication) {
        Intrinsics.checkNotNullParameter(treeNode, "<this>");
        Intrinsics.checkNotNullParameter(predication, "predication");
        Iterator it2 = TreeNode.findNodes$default(treeNode, predication, null, null, 6, null).iterator();
        while (it2.hasNext()) {
            ((NoteModelBean) ((TreeNode) it2.next()).getData()).setSaved(true);
        }
    }
}
