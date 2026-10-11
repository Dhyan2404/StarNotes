package com.onyx.galaxy.note.common.data;

import com.onyx.android.sdk.base.data.NewTreeKt;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0017R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\t\u001a\f\u0012\u0004\u0012\u00020\u000b0\nj\u0002`\fX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;", "", "()V", "noteModelBean", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "getNoteModelBean", "()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "setNoteModelBean", "(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V", "rootNode", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "getRootNode", "()Lcom/onyx/android/sdk/base/data/TreeNode;", "setRootNode", "(Lcom/onyx/android/sdk/base/data/TreeNode;)V", "selectTagIds", "", "", "getSelectTagIds", "()Ljava/util/List;", "getSelectedNoteTagBean", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nEditTagForNoteContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditTagForNoteContext.kt\ncom/onyx/galaxy/note/common/data/EditTagForNoteContext\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,30:1\n1549#2:31\n1620#2,3:32\n1855#2,2:35\n*S KotlinDebug\n*F\n+ 1 EditTagForNoteContext.kt\ncom/onyx/galaxy/note/common/data/EditTagForNoteContext\n*L\n20#1:31\n20#1:32,3\n22#1:35,2\n*E\n"})
/* loaded from: classes9.dex */
public final class EditTagForNoteContext {

    @Nullable
    private NoteModelBean noteModelBean;
    public TreeNode<NoteTagBean> rootNode;

    @NotNull
    private final List<String> selectTagIds = new ArrayList();

    @Nullable
    public final NoteModelBean getNoteModelBean() {
        return this.noteModelBean;
    }

    @NotNull
    public final TreeNode<NoteTagBean> getRootNode() {
        TreeNode<NoteTagBean> treeNode = this.rootNode;
        if (treeNode != null) {
            return treeNode;
        }
        Intrinsics.throwUninitializedPropertyAccessException("rootNode");
        return null;
    }

    @NotNull
    public final List<String> getSelectTagIds() {
        return this.selectTagIds;
    }

    @NotNull
    public final List<NoteTagBean> getSelectedNoteTagBean() {
        int collectionSizeOrDefault;
        List<NoteTagBean> mutableList;
        ArrayList arrayList = new ArrayList();
        List<TreeNode<NoteTagBean>> findChildrenNodes = getRootNode().findChildrenNodes(NewTreeKt.STRATEGY_DEPTH_FIRST);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(findChildrenNodes, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = findChildrenNodes.iterator();
        while (it2.hasNext()) {
            arrayList2.add((NoteTagBean) ((TreeNode) it2.next()).getData());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        for (NoteTagBean noteTagBean : mutableList) {
            if (this.selectTagIds.contains(noteTagBean.getUniqueId())) {
                arrayList.add(noteTagBean);
            }
        }
        return arrayList;
    }

    public final void setNoteModelBean(@Nullable NoteModelBean noteModelBean) {
        this.noteModelBean = noteModelBean;
    }

    public final void setRootNode(@NotNull TreeNode<NoteTagBean> treeNode) {
        Intrinsics.checkNotNullParameter(treeNode, "<set-?>");
        this.rootNode = treeNode;
    }
}
