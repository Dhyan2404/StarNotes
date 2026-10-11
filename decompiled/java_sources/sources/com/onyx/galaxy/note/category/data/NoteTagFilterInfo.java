package com.onyx.galaxy.note.category.data;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B)\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0010\u0010\u0005\u001a\f\u0012\u0004\u0012\u00020\u00070\u0006j\u0002`\b¢\u0006\u0002\u0010\tB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\nR(\u0010\u000b\u001a\f\u0012\u0004\u0012\u00020\u00070\u0006j\u0002`\b8\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/NoteTagFilterInfo;", "Lcom/onyx/galaxy/note/category/data/FilterInfo;", CouchFieldKey.KEY_UNIQUE_ID, "", "title", "node", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TreeNode;)V", "(Ljava/lang/String;)V", "noteTagNode", "getNoteTagNode", "()Lcom/onyx/android/sdk/base/data/TreeNode;", "setNoteTagNode", "(Lcom/onyx/android/sdk/base/data/TreeNode;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteTagFilterInfo extends FilterInfo {

    @JSONField(deserialize = false, serialize = false)
    public TreeNode<NoteTagBean> noteTagNode;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteTagFilterInfo(@NotNull String uniqueId) {
        super(7, uniqueId);
        Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
        setQueryArgs(NoteTagFilter.INSTANCE.generateTagFilterArgs(uniqueId));
    }

    @NotNull
    public final TreeNode<NoteTagBean> getNoteTagNode() {
        TreeNode<NoteTagBean> treeNode = this.noteTagNode;
        if (treeNode != null) {
            return treeNode;
        }
        Intrinsics.throwUninitializedPropertyAccessException("noteTagNode");
        return null;
    }

    public final void setNoteTagNode(@NotNull TreeNode<NoteTagBean> treeNode) {
        Intrinsics.checkNotNullParameter(treeNode, "<set-?>");
        this.noteTagNode = treeNode;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NoteTagFilterInfo(@NotNull String uniqueId, @NotNull String title, @NotNull TreeNode<NoteTagBean> node) {
        this(uniqueId);
        Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(node, "node");
        setTitle(title);
        setNoteTagNode(node);
    }
}
