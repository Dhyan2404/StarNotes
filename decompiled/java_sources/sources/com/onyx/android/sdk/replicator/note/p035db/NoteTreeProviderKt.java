package com.onyx.android.sdk.replicator.note.p035db;

import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.utils.NoteTreeNodes;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\f\u0012\u0004\u0012\u00020\u00020\u0001j\u0002`\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"loadNoteFolderTree", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "queryArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "sdk-replicator_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nNoteTreeProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTreeProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NoteTreeProviderKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,31:1\n766#2:32\n857#2,2:33\n1855#2,2:35\n1864#2,3:38\n215#3:37\n216#3:42\n1#4:41\n*S KotlinDebug\n*F\n+ 1 NoteTreeProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NoteTreeProviderKt\n*L\n16#1:32\n16#1:33,2\n16#1:35,2\n23#1:38,3\n19#1:37\n19#1:42\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteTreeProviderKt {
    @NotNull
    public static final TreeNode<NoteModelBean> loadNoteFolderTree(@NotNull NoteProvider noteProvider, @NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        List loadModelList = noteProvider.loadModelList(queryArgs, SyncNoteModel.class);
        TreeNode<NoteModelBean> createNoteRootNode = NoteTreeNodes.INSTANCE.createNoteRootNode();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList<SyncNoteModel> arrayList = new ArrayList();
        for (Object obj : loadModelList) {
            if (((SyncNoteModel) obj).isLibrary()) {
                arrayList.add(obj);
            }
        }
        for (SyncNoteModel syncNoteModel : arrayList) {
            linkedHashMap.put(syncNoteModel.getUniqueId(), createNoteRootNode.createNode(new NoteModelBean(syncNoteModel), syncNoteModel.getUniqueId()));
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            TreeNode<NoteModelBean> treeNode = (TreeNode) linkedHashMap.get(((NoteModelBean) ((TreeNode) entry.getValue()).getData()).getParentUniqueId());
            if (treeNode == null) {
                treeNode = createNoteRootNode;
            }
            int i = -1;
            int i2 = 0;
            for (Object obj2 : treeNode.findChildren()) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                if (((NoteModelBean) ((TreeNode) entry.getValue()).getData()).getOrderIndex() < ((NoteModelBean) ((TreeNode) obj2).getData()).getOrderIndex()) {
                    i = i2;
                }
                i2 = i3;
            }
            ((TreeNode) entry.getValue()).parent(treeNode, i);
        }
        return createNoteRootNode;
    }
}
