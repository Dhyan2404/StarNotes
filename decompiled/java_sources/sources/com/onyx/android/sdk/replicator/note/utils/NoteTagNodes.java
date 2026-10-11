package com.onyx.android.sdk.replicator.note.utils;

import com.onyx.android.sdk.base.data.NewTree;
import com.onyx.android.sdk.base.data.NewTreeKt;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBeanList;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.replicator.note.utils.NoteTagNodes;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006J\u001e\u0010\u0007\u001a\u00020\b*\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u00062\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f*\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006J \u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\r0\u000f*\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006J\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004*\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006J\u0014\u0010\u0011\u001a\u00020\u0012*\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006J&\u0010\u0013\u001a\u00020\b*\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u00062\u0010\u0010\u0014\u001a\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006J&\u0010\u0015\u001a\u00020\b*\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u00062\u0010\u0010\u0014\u001a\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006J&\u0010\u0016\u001a\u00020\b*\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u00062\u0010\u0010\u0017\u001a\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006J\u001c\u0010\u0018\u001a\u00020\n*\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u00062\u0006\u0010\u0019\u001a\u00020\nJ\u0014\u0010\u001a\u001a\u00020\u001b*\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006J\u0014\u0010\u001c\u001a\u00020\u001b*\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006J8\u0010\u001d\u001a\u00020\u001b*\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u00062\"\u0010\u001e\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\b0\u001fj\b\u0012\u0004\u0012\u00020\u0005` ¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;", "", "()V", "createTagRootNode", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "checkTagContentRepeat", "", "content", "", "flattenToList", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "flattenToMap", "", "getParentNode", "loadNotSavedList", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;", "moveAfter", "targetTreeNode", "moveBefore", "moveTo", "targetTagNode", "path", "joinString", "reorderTagChildren", "", "setNotSaved", "setSaved", "predication", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/base/data/TreeNodePredication;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nNoteTagNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTagNode.kt\ncom/onyx/android/sdk/replicator/note/utils/NoteTagNodes\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,145:1\n1549#2:146\n1620#2,3:147\n1855#2,2:150\n1747#2,3:152\n1549#2:155\n1620#2,3:156\n*S KotlinDebug\n*F\n+ 1 NoteTagNode.kt\ncom/onyx/android/sdk/replicator/note/utils/NoteTagNodes\n*L\n24#1:146\n24#1:147,3\n31#1:150,2\n48#1:152,3\n140#1:155\n140#1:156,3\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteTagNodes {

    @NotNull
    public static final NoteTagNodes INSTANCE = new NoteTagNodes();

    /* renamed from: b */
    public static final String m35556b(SyncTagModel it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        return it2.getUniqueId();
    }

    public final boolean checkTagContentRepeat(@NotNull TreeNode<NoteTagBean> treeNode, @Nullable String str) {
        Intrinsics.checkNotNullParameter(treeNode, "<this>");
        List<TreeNode<NoteTagBean>> findChildren = treeNode.findChildren();
        if ((findChildren instanceof Collection) && findChildren.isEmpty()) {
            return false;
        }
        Iterator<T> it2 = findChildren.iterator();
        while (it2.hasNext()) {
            if (Intrinsics.areEqual(((NoteTagBean) ((TreeNode) it2.next()).getData()).getContent(), str)) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final TreeNode<NoteTagBean> createTagRootNode() {
        NewTree newTree = new NewTree();
        TreeNode<NoteTagBean> createNode = newTree.createNode(new NoteTagBean(new SyncTagModel()), null);
        createNode.setExpand(true);
        newTree.setRoot(createNode);
        return createNode;
    }

    @NotNull
    public final List<SyncTagModel> flattenToList(@NotNull TreeNode<NoteTagBean> treeNode) {
        int collectionSizeOrDefault;
        List<SyncTagModel> mutableList;
        Intrinsics.checkNotNullParameter(treeNode, "<this>");
        List<TreeNode<NoteTagBean>> findChildrenNodes = treeNode.findChildrenNodes(NewTreeKt.STRATEGY_DEPTH_FIRST);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(findChildrenNodes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = findChildrenNodes.iterator();
        while (it2.hasNext()) {
            arrayList.add((NoteTagBean) ((TreeNode) it2.next()).getData());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }

    @NotNull
    public final Map<String, SyncTagModel> flattenToMap(@NotNull TreeNode<NoteTagBean> treeNode) {
        Intrinsics.checkNotNullParameter(treeNode, "<this>");
        return CollectionKt.toMutableMap(flattenToList(treeNode), new Function() { // from class: com.sunia.HTREnginev2.y2k
            @Override // io.reactivex.rxjava3.functions.Function
            public final Object apply(Object obj) {
                String m35556b;
                m35556b = NoteTagNodes.m35556b((SyncTagModel) obj);
                return m35556b;
            }
        });
    }

    @NotNull
    public final TreeNode<NoteTagBean> getParentNode(@NotNull TreeNode<NoteTagBean> treeNode) {
        Intrinsics.checkNotNullParameter(treeNode, "<this>");
        TreeNode<NoteTagBean> findNode = treeNode.getTree().getRoot().findNode(treeNode.getData().getParentId());
        return findNode == null ? treeNode.getTree().getRoot() : findNode;
    }

    @NotNull
    public final NoteTagBeanList loadNotSavedList(@NotNull TreeNode<NoteTagBean> treeNode) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(treeNode, "<this>");
        NoteTagBeanList noteTagBeanList = new NoteTagBeanList();
        List findNodes$default = TreeNode.findNodes$default(treeNode, new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.android.sdk.replicator.note.utils.NoteTagNodes$loadNotSavedList$list$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteTagBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.getData().getSaved());
            }
        }, null, null, 6, null);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(findNodes$default, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = findNodes$default.iterator();
        while (it2.hasNext()) {
            arrayList.add((NoteTagBean) ((TreeNode) it2.next()).getData());
        }
        noteTagBeanList.addAll(arrayList);
        return noteTagBeanList;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean moveAfter(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteTagBean> r7, @org.jetbrains.annotations.NotNull com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteTagBean> r8) {
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
            r6.reorderTagChildren(r0)
            java.lang.Object r6 = r8.getData()
            com.onyx.android.sdk.replicator.note.bean.NoteTagBean r6 = (com.onyx.android.sdk.replicator.note.bean.NoteTagBean) r6
            java.lang.String r6 = r6.getParentId()
            if (r6 == 0) goto L49
            boolean r0 = kotlin.text.StringsKt.isBlank(r6)
            if (r0 == 0) goto L47
            goto L49
        L47:
            r0 = r2
            goto L4a
        L49:
            r0 = r4
        L4a:
            if (r0 == 0) goto L57
            java.lang.Object r6 = r7.getData()
            com.onyx.android.sdk.replicator.note.bean.NoteTagBean r6 = (com.onyx.android.sdk.replicator.note.bean.NoteTagBean) r6
            r0 = 0
            r6.setParentId(r0)
            goto L60
        L57:
            java.lang.Object r0 = r7.getData()
            com.onyx.android.sdk.replicator.note.bean.NoteTagBean r0 = (com.onyx.android.sdk.replicator.note.bean.NoteTagBean) r0
            r0.setParentId(r6)
        L60:
            com.onyx.android.sdk.base.utils.Debug r6 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            java.lang.Class<com.onyx.android.sdk.base.data.TreeNode> r0 = com.onyx.android.sdk.base.data.TreeNode.class
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r5 = "moveAfter from "
            r3.append(r5)
            java.lang.Object r7 = r7.getData()
            com.onyx.android.sdk.replicator.note.bean.NoteTagBean r7 = (com.onyx.android.sdk.replicator.note.bean.NoteTagBean) r7
            java.lang.String r7 = r7.getContent()
            r3.append(r7)
            java.lang.String r7 = " After "
            r3.append(r7)
            java.lang.Object r7 = r8.getData()
            com.onyx.android.sdk.replicator.note.bean.NoteTagBean r7 = (com.onyx.android.sdk.replicator.note.bean.NoteTagBean) r7
            java.lang.String r7 = r7.getContent()
            r3.append(r7)
            java.lang.String r7 = " targetPos: "
            r3.append(r7)
            r3.append(r1)
            java.lang.String r7 = r3.toString()
            java.lang.Object[] r8 = new java.lang.Object[r2]
            r6.m32035d(r0, r7, r8)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.utils.NoteTagNodes.moveAfter(com.onyx.android.sdk.base.data.TreeNode, com.onyx.android.sdk.base.data.TreeNode):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean moveBefore(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteTagBean> r7, @org.jetbrains.annotations.NotNull com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteTagBean> r8) {
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
            r6.reorderTagChildren(r0)
            java.lang.Object r6 = r8.getData()
            com.onyx.android.sdk.replicator.note.bean.NoteTagBean r6 = (com.onyx.android.sdk.replicator.note.bean.NoteTagBean) r6
            java.lang.String r6 = r6.getParentId()
            r0 = 1
            if (r6 == 0) goto L40
            boolean r3 = kotlin.text.StringsKt.isBlank(r6)
            if (r3 == 0) goto L3e
            goto L40
        L3e:
            r3 = r2
            goto L41
        L40:
            r3 = r0
        L41:
            if (r3 == 0) goto L4e
            java.lang.Object r6 = r7.getData()
            com.onyx.android.sdk.replicator.note.bean.NoteTagBean r6 = (com.onyx.android.sdk.replicator.note.bean.NoteTagBean) r6
            r3 = 0
            r6.setParentId(r3)
            goto L57
        L4e:
            java.lang.Object r3 = r7.getData()
            com.onyx.android.sdk.replicator.note.bean.NoteTagBean r3 = (com.onyx.android.sdk.replicator.note.bean.NoteTagBean) r3
            r3.setParentId(r6)
        L57:
            com.onyx.android.sdk.base.utils.Debug r6 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            java.lang.Class<com.onyx.android.sdk.base.data.TreeNode> r3 = com.onyx.android.sdk.base.data.TreeNode.class
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "moveBefore from "
            r4.append(r5)
            java.lang.Object r7 = r7.getData()
            com.onyx.android.sdk.replicator.note.bean.NoteTagBean r7 = (com.onyx.android.sdk.replicator.note.bean.NoteTagBean) r7
            java.lang.String r7 = r7.getContent()
            r4.append(r7)
            java.lang.String r7 = " before "
            r4.append(r7)
            java.lang.Object r7 = r8.getData()
            com.onyx.android.sdk.replicator.note.bean.NoteTagBean r7 = (com.onyx.android.sdk.replicator.note.bean.NoteTagBean) r7
            java.lang.String r7 = r7.getContent()
            r4.append(r7)
            java.lang.String r7 = " targetPos: "
            r4.append(r7)
            r4.append(r1)
            java.lang.String r7 = r4.toString()
            java.lang.Object[] r8 = new java.lang.Object[r2]
            r6.m32035d(r3, r7, r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.utils.NoteTagNodes.moveBefore(com.onyx.android.sdk.base.data.TreeNode, com.onyx.android.sdk.base.data.TreeNode):boolean");
    }

    public final boolean moveTo(@NotNull TreeNode<NoteTagBean> treeNode, @NotNull TreeNode<NoteTagBean> targetTagNode) {
        Intrinsics.checkNotNullParameter(treeNode, "<this>");
        Intrinsics.checkNotNullParameter(targetTagNode, "targetTagNode");
        if (!treeNode.canReparent(targetTagNode)) {
            return false;
        }
        TreeNode.reparent$default(treeNode, targetTagNode, 0, 2, null);
        reorderTagChildren(targetTagNode);
        treeNode.getData().setParentId(targetTagNode.getData().getUniqueId());
        Debug.INSTANCE.m32035d(TreeNode.class, "moveTo from " + treeNode.getData().getContent() + " to " + targetTagNode.getData().getContent(), new Object[0]);
        return true;
    }

    @NotNull
    public final String path(@NotNull TreeNode<NoteTagBean> treeNode, @NotNull String joinString) {
        Intrinsics.checkNotNullParameter(treeNode, "<this>");
        Intrinsics.checkNotNullParameter(joinString, "joinString");
        StringBuffer stringBuffer = new StringBuffer(treeNode.getData().getContent());
        if (!treeNode.hasParent()) {
            String stringBuffer2 = stringBuffer.toString();
            Intrinsics.checkNotNullExpressionValue(stringBuffer2, "toString(...)");
            return stringBuffer2;
        }
        for (TreeNode<NoteTagBean> parent = treeNode.getParent(); !parent.isRootNode(); parent = parent.getParent()) {
            stringBuffer.insert(0, parent.getData().getContent() + joinString);
        }
        String stringBuffer3 = stringBuffer.toString();
        Intrinsics.checkNotNullExpressionValue(stringBuffer3, "toString(...)");
        return stringBuffer3;
    }

    public final void reorderTagChildren(@NotNull TreeNode<NoteTagBean> treeNode) {
        Intrinsics.checkNotNullParameter(treeNode, "<this>");
        OrderListUtils.INSTANCE.reorderIndex(treeNode.findChildren(), new Function1<TreeNode<NoteTagBean>, Float>() { // from class: com.onyx.android.sdk.replicator.note.utils.NoteTagNodes$reorderTagChildren$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Float invoke(@NotNull TreeNode<NoteTagBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Float.valueOf(it2.getData().getOrderIndex());
            }
        }, new Function2<TreeNode<NoteTagBean>, Float, Unit>() { // from class: com.onyx.android.sdk.replicator.note.utils.NoteTagNodes$reorderTagChildren$2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(TreeNode<NoteTagBean> treeNode2, Float f) {
                invoke(treeNode2, f.floatValue());
                return Unit.INSTANCE;
            }

            public final void invoke(@NotNull TreeNode<NoteTagBean> node, float f) {
                Intrinsics.checkNotNullParameter(node, "node");
                node.getData().setOrderIndex(f);
                NoteTagNodes.INSTANCE.setNotSaved(node);
            }
        });
    }

    public final void setNotSaved(@NotNull TreeNode<NoteTagBean> treeNode) {
        Intrinsics.checkNotNullParameter(treeNode, "<this>");
        treeNode.getData().setNotSaved();
    }

    public final void setSaved(@NotNull TreeNode<NoteTagBean> treeNode, @NotNull Function1<? super TreeNode<NoteTagBean>, Boolean> predication) {
        Intrinsics.checkNotNullParameter(treeNode, "<this>");
        Intrinsics.checkNotNullParameter(predication, "predication");
        Iterator it2 = TreeNode.findNodes$default(treeNode, predication, null, null, 6, null).iterator();
        while (it2.hasNext()) {
            ((NoteTagBean) ((TreeNode) it2.next()).getData()).setSaved(true);
        }
    }
}
