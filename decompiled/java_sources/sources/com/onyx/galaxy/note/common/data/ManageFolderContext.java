package com.onyx.galaxy.note.common.data;

import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBeanList;
import com.onyx.galaxy.note.settings.data.NoteConfigConst;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\b\u000b\n\u0002\u0010!\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0014\u00109\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cj\u0004\u0018\u0001`\u001eJ\u0006\u0010:\u001a\u00020;R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R \u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00100\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010\u001b\u001a\f\u0012\u0004\u0012\u00020\u001d0\u001cj\u0002`\u001eX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R&\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u001d0$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001a\u0010)\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0006\"\u0004\b+\u0010\bR\u001c\u0010,\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u0012\"\u0004\b.\u0010\u0014R \u0010/\u001a\b\u0012\u0004\u0012\u00020\u001000X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0018\"\u0004\b2\u0010\u001aR\u001c\u00103\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u0012\"\u0004\b5\u0010\u0014R \u00106\u001a\b\u0012\u0004\u0012\u00020\u001000X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u0018\"\u0004\b8\u0010\u001a¨\u0006<"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "", "()V", "hasFolder", "", "getHasFolder", Constants.BOOLEAN_VALUE_SIG, "setHasFolder", "(Z)V", "moveNoteList", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;", "getMoveNoteList", "()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;", "setMoveNoteList", "(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V", "oldParentId", "", "getOldParentId", "()Ljava/lang/String;", "setOldParentId", "(Ljava/lang/String;)V", "opNoteIds", "", "getOpNoteIds", "()Ljava/util/List;", "setOpNoteIds", "(Ljava/util/List;)V", "rootNode", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", "getRootNode", "()Lcom/onyx/android/sdk/base/data/TreeNode;", "setRootNode", "(Lcom/onyx/android/sdk/base/data/TreeNode;)V", "saveModelMap", "", "getSaveModelMap", "()Ljava/util/Map;", "setSaveModelMap", "(Ljava/util/Map;)V", "selectAll", "getSelectAll", "setSelectAll", "selectNoteId", "getSelectNoteId", "setSelectNoteId", "selectedFolderIds", "", "getSelectedFolderIds", "setSelectedFolderIds", "selectedFolderName", "getSelectedFolderName", "setSelectedFolderName", "selectedFolderNames", "getSelectedFolderNames", "setSelectedFolderNames", "getSelectedFolderNode", "refreshOldParentId", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ManageFolderContext {
    private boolean hasFolder;

    @NotNull
    private NoteModelBeanList moveNoteList;

    @Nullable
    private String oldParentId;

    @NotNull
    private List<String> opNoteIds;
    public TreeNode<NoteModelBean> rootNode;

    @NotNull
    private Map<String, NoteModelBean> saveModelMap;
    private boolean selectAll;

    @Nullable
    private String selectNoteId;

    @NotNull
    private List<String> selectedFolderIds;

    @Nullable
    private String selectedFolderName;

    @NotNull
    private List<String> selectedFolderNames;

    public ManageFolderContext() {
        List<String> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.opNoteIds = emptyList;
        this.saveModelMap = new LinkedHashMap();
        this.hasFolder = true;
        this.moveNoteList = new NoteModelBeanList();
        this.selectAll = true;
        this.selectedFolderIds = new ArrayList();
        this.selectedFolderNames = new ArrayList();
    }

    public final boolean getHasFolder() {
        return this.hasFolder;
    }

    @NotNull
    public final NoteModelBeanList getMoveNoteList() {
        return this.moveNoteList;
    }

    @Nullable
    public final String getOldParentId() {
        return this.oldParentId;
    }

    @NotNull
    public final List<String> getOpNoteIds() {
        return this.opNoteIds;
    }

    @NotNull
    public final TreeNode<NoteModelBean> getRootNode() {
        TreeNode<NoteModelBean> treeNode = this.rootNode;
        if (treeNode != null) {
            return treeNode;
        }
        Intrinsics.throwUninitializedPropertyAccessException("rootNode");
        return null;
    }

    @NotNull
    public final Map<String, NoteModelBean> getSaveModelMap() {
        return this.saveModelMap;
    }

    public final boolean getSelectAll() {
        return this.selectAll;
    }

    @Nullable
    public final String getSelectNoteId() {
        return this.selectNoteId;
    }

    @NotNull
    public final List<String> getSelectedFolderIds() {
        return this.selectedFolderIds;
    }

    @Nullable
    public final String getSelectedFolderName() {
        return this.selectedFolderName;
    }

    @NotNull
    public final List<String> getSelectedFolderNames() {
        return this.selectedFolderNames;
    }

    @Nullable
    public final TreeNode<NoteModelBean> getSelectedFolderNode() {
        String str = this.selectNoteId;
        if (str == null || ((!StringKt.isNotBlank(str) && Intrinsics.areEqual(this.oldParentId, NoteConfigConst.FOLDER_ROOT_ID)) || (!StringKt.isNotBlank(this.selectNoteId) && this.oldParentId == null))) {
            return null;
        }
        if (Intrinsics.areEqual(this.selectNoteId, NoteConfigConst.FOLDER_ROOT_ID)) {
            return NoteTreeBundle.INSTANCE.getFolderRootNote();
        }
        if (Intrinsics.areEqual(this.selectNoteId, this.oldParentId)) {
            return null;
        }
        return getRootNode().findNode(this.selectNoteId);
    }

    public final void refreshOldParentId() {
        Object firstOrNull;
        TreeNode<NoteModelBean> parent;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.opNoteIds);
        String str = (String) firstOrNull;
        if (str == null) {
            return;
        }
        TreeNode<NoteModelBean> findNode = getRootNode().findNode(str);
        this.oldParentId = (findNode == null || (parent = findNode.getParent()) == null) ? null : parent.getId();
    }

    public final void setHasFolder(boolean z) {
        this.hasFolder = z;
    }

    public final void setMoveNoteList(@NotNull NoteModelBeanList noteModelBeanList) {
        Intrinsics.checkNotNullParameter(noteModelBeanList, "<set-?>");
        this.moveNoteList = noteModelBeanList;
    }

    public final void setOldParentId(@Nullable String str) {
        this.oldParentId = str;
    }

    public final void setOpNoteIds(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.opNoteIds = list;
    }

    public final void setRootNode(@NotNull TreeNode<NoteModelBean> treeNode) {
        Intrinsics.checkNotNullParameter(treeNode, "<set-?>");
        this.rootNode = treeNode;
    }

    public final void setSaveModelMap(@NotNull Map<String, NoteModelBean> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.saveModelMap = map;
    }

    public final void setSelectAll(boolean z) {
        this.selectAll = z;
    }

    public final void setSelectNoteId(@Nullable String str) {
        this.selectNoteId = str;
    }

    public final void setSelectedFolderIds(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.selectedFolderIds = list;
    }

    public final void setSelectedFolderName(@Nullable String str) {
        this.selectedFolderName = str;
    }

    public final void setSelectedFolderNames(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.selectedFolderNames = list;
    }
}
