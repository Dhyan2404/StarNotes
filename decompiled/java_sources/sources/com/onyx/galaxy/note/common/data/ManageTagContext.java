package com.onyx.galaxy.note.common.data;

import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBeanList;
import com.onyx.galaxy.note.category.view.adapter.SelectMultiTagAdapter;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010!\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u00103\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016J\u001c\u00104\u001a\b\u0012\u0004\u0012\u00020\n0\u00102\f\u00105\u001a\b\u0012\u0004\u0012\u00020\n0\u0010H\u0002J\u0006\u00106\u001a\u000207J\u0014\u00108\u001a\u0002072\f\u00105\u001a\b\u0012\u0004\u0012\u00020\n0\u0010R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR \u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R$\u0010\u0015\u001a\f\u0012\u0004\u0012\u00020\u00170\u0016j\u0002`\u0018X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR&\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00170\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001c\u0010)\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\f\"\u0004\b+\u0010\u000eR \u0010,\u001a\b\u0012\u0004\u0012\u00020\n0-X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0012\"\u0004\b/\u0010\u0014R \u00100\u001a\b\u0012\u0004\u0012\u00020\n0-X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0012\"\u0004\b2\u0010\u0014¨\u00069"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "", "()V", "moveTagList", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;", "getMoveTagList", "()Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;", "setMoveTagList", "(Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;)V", "oldParentId", "", "getOldParentId", "()Ljava/lang/String;", "setOldParentId", "(Ljava/lang/String;)V", "opTagIds", "", "getOpTagIds", "()Ljava/util/List;", "setOpTagIds", "(Ljava/util/List;)V", "rootNode", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "getRootNode", "()Lcom/onyx/android/sdk/base/data/TreeNode;", "setRootNode", "(Lcom/onyx/android/sdk/base/data/TreeNode;)V", "saveModelMap", "", "getSaveModelMap", "()Ljava/util/Map;", "setSaveModelMap", "(Ljava/util/Map;)V", "selectAll", "", "getSelectAll", Constants.BOOLEAN_VALUE_SIG, "setSelectAll", "(Z)V", "selectTagId", "getSelectTagId", "setSelectTagId", "selectedTagIds", "", "getSelectedTagIds", "setSelectedTagIds", "selectedTagNames", "getSelectedTagNames", "setSelectedTagNames", "getSelectedTagNode", "getTagNamesByIds", "ids", "refreshOldParentId", "", "saveSelectedTags", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nManageTagContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManageTagContext.kt\ncom/onyx/galaxy/note/common/data/ManageTagContext\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,58:1\n1549#2:59\n1620#2,3:60\n*S KotlinDebug\n*F\n+ 1 ManageTagContext.kt\ncom/onyx/galaxy/note/common/data/ManageTagContext\n*L\n44#1:59\n44#1:60,3\n*E\n"})
/* loaded from: classes9.dex */
public final class ManageTagContext {

    @NotNull
    private NoteTagBeanList moveTagList;

    @Nullable
    private String oldParentId;

    @NotNull
    private List<String> opTagIds;
    public TreeNode<NoteTagBean> rootNode;

    @NotNull
    private Map<String, NoteTagBean> saveModelMap;
    private boolean selectAll;

    @Nullable
    private String selectTagId;

    @NotNull
    private List<String> selectedTagIds;

    @NotNull
    private List<String> selectedTagNames;

    public ManageTagContext() {
        List<String> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.opTagIds = emptyList;
        this.moveTagList = new NoteTagBeanList();
        this.saveModelMap = new LinkedHashMap();
        this.selectAll = true;
        this.selectedTagIds = new ArrayList();
        this.selectedTagNames = new ArrayList();
    }

    private final List<String> getTagNamesByIds(List<String> ids) {
        int collectionSizeOrDefault;
        List<String> mutableList;
        String str;
        List<String> list = ids;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (final String str2 : list) {
            SelectMultiTagAdapter.Companion companion = SelectMultiTagAdapter.INSTANCE;
            if (Intrinsics.areEqual(str2, companion.getUNCLASSIFIED_TAG_ID())) {
                str = companion.getUNCLASSIFIED_TAG_NAME();
            } else {
                TreeNode<NoteTagBean> findNode = getRootNode().findNode(new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.galaxy.note.common.data.ManageTagContext$getTagNamesByIds$1$bean$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull TreeNode<NoteTagBean> it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return Boolean.valueOf(Intrinsics.areEqual(it2.getData().getUniqueId(), str2));
                    }
                });
                NoteTagBean data = findNode != null ? findNode.getData() : null;
                if (data == null || (str = data.getContent()) == null) {
                    str = "";
                }
            }
            arrayList.add(str);
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }

    @NotNull
    public final NoteTagBeanList getMoveTagList() {
        return this.moveTagList;
    }

    @Nullable
    public final String getOldParentId() {
        return this.oldParentId;
    }

    @NotNull
    public final List<String> getOpTagIds() {
        return this.opTagIds;
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
    public final Map<String, NoteTagBean> getSaveModelMap() {
        return this.saveModelMap;
    }

    public final boolean getSelectAll() {
        return this.selectAll;
    }

    @Nullable
    public final String getSelectTagId() {
        return this.selectTagId;
    }

    @NotNull
    public final List<String> getSelectedTagIds() {
        return this.selectedTagIds;
    }

    @NotNull
    public final List<String> getSelectedTagNames() {
        return this.selectedTagNames;
    }

    @Nullable
    public final TreeNode<NoteTagBean> getSelectedTagNode() {
        boolean z;
        boolean isBlank;
        String str = this.selectTagId;
        if (str != null) {
            isBlank = StringsKt__StringsJVMKt.isBlank(str);
            if (!isBlank) {
                z = false;
                if (z && !Intrinsics.areEqual(this.selectTagId, this.oldParentId)) {
                    return getRootNode().findNode(this.selectTagId);
                }
                return null;
            }
        }
        z = true;
        if (z) {
            return null;
        }
        return getRootNode().findNode(this.selectTagId);
    }

    public final void refreshOldParentId() {
        Object firstOrNull;
        TreeNode<NoteTagBean> parent;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.opTagIds);
        String str = (String) firstOrNull;
        if (str == null) {
            return;
        }
        TreeNode<NoteTagBean> findNode = getRootNode().findNode(str);
        this.oldParentId = (findNode == null || (parent = findNode.getParent()) == null) ? null : parent.getId();
    }

    public final void saveSelectedTags(@NotNull List<String> ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        this.selectedTagIds = CollectionKt.copy(ids);
        this.selectedTagNames = CollectionKt.copy(getTagNamesByIds(ids));
    }

    public final void setMoveTagList(@NotNull NoteTagBeanList noteTagBeanList) {
        Intrinsics.checkNotNullParameter(noteTagBeanList, "<set-?>");
        this.moveTagList = noteTagBeanList;
    }

    public final void setOldParentId(@Nullable String str) {
        this.oldParentId = str;
    }

    public final void setOpTagIds(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.opTagIds = list;
    }

    public final void setRootNode(@NotNull TreeNode<NoteTagBean> treeNode) {
        Intrinsics.checkNotNullParameter(treeNode, "<set-?>");
        this.rootNode = treeNode;
    }

    public final void setSaveModelMap(@NotNull Map<String, NoteTagBean> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.saveModelMap = map;
    }

    public final void setSelectAll(boolean z) {
        this.selectAll = z;
    }

    public final void setSelectTagId(@Nullable String str) {
        this.selectTagId = str;
    }

    public final void setSelectedTagIds(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.selectedTagIds = list;
    }

    public final void setSelectedTagNames(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.selectedTagNames = list;
    }
}
