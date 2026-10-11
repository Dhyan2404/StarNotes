package com.onyx.android.sdk.replicator.note.p035db;

import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.onyx.android.sdk.base.data.Tree;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.replicator.note.utils.NoteTagNodes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0003\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0006\u0010\u0003\u001a\u00020\u0001\u001a\u0012\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b\u001a\u0012\u0010\t\u001a\u00020\n*\u00020\u00062\u0006\u0010\u000b\u001a\u00020\b\u001a\u0018\u0010\f\u001a\u00020\n*\u00020\u00062\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e\u001a/\u0010\u0010\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u001b\b\u0002\u0010\u0011\u001a\u0015\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\n\u0018\u00010\u0012¢\u0006\u0002\b\u0013\u001a'\u0010\u0014\u001a\u00020\u0005*\u00020\u00062\u001b\b\u0002\u0010\u0011\u001a\u0015\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\n\u0018\u00010\u0012¢\u0006\u0002\b\u0013\u001a\u0012\u0010\u0014\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0015\u001a\u00020\b\u001a\u0010\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e*\u00020\u0006\u001a&\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e*\u00020\u00062\u0006\u0010\u000b\u001a\u00020\b2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\b0\u000e\u001a/\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e*\u00020\u00062\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\b0\u000e2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c¢\u0006\u0002\u0010\u001d\u001a\u0010\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001f*\u00020\u0006\u001a\u0014\u0010 \u001a\f\u0012\u0004\u0012\u00020\"0!j\u0002`#*\u00020\u0006\u001a\u0018\u0010$\u001a\b\u0012\u0004\u0012\u00020%0\u001f*\u00020\u00062\u0006\u0010&\u001a\u00020\u0001\u001a&\u0010'\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e*\u00020\u00062\u0006\u0010\u000b\u001a\u00020\b2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\b0\u000e\u001a\u0018\u0010(\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b\u001a\u001e\u0010)\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e*\u00020\u00062\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\b0\u000e\u001a\u0018\u0010+\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e*\u00020\u00062\u0006\u0010&\u001a\u00020\u0001\u001a\u0018\u0010,\u001a\u00020\n*\u00020\u00062\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\b0\u000e\u001a\u0018\u0010.\u001a\u00020\n*\u00020\u00062\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e\u001a\u0018\u0010/\u001a\u00020\n*\u00020\u00062\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e\u001a$\u00100\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e*\u00020\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0007\u001a\u00020\b\u001a(\u00101\u001a\u000202*\u00020\u00062\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\b0\u000e2\u0006\u00103\u001a\u00020\u001c2\u0006\u00104\u001a\u00020\u001c¨\u00065"}, m61528d2 = {"createDocTagQueryArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "createShapeTagQueryArgs", "createTagQueryArgs", "checkShapeTagDuplicated", "", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "content", "", "deleteDocShapeTag", "", "documentId", "deleteTagList", "list", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "hasDuplicatedTagContent", BreakpointSQLiteHelper.f39283i, "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "hasNoteTag", "id", "loadCommonShapeTagList", "loadDocPageTagList", "pageIds", "loadDocShapeTagList", "docIdList", "status", "", "(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;Ljava/lang/Integer;)Ljava/util/List;", "loadDocTagTree", "Lcom/onyx/android/sdk/base/data/Tree;", "loadDocTagTreeNode", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "loadNoteModelTree", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "queryArgs", "loadPageShapeTagList", "loadShapeTagByContent", "loadTagById", "idList", "loadTagList", "purgeDocTagList", "excludeDocumentIds", "saveExportedTagList", "saveTagList", "searchDocShapeTag", "updateDocShapeTagStatus", "", "oldStatus", "newStatus", "sdk-replicator_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nNoteTagProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTagProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,265:1\n1855#2,2:266\n1864#2,3:269\n1855#2,2:274\n1855#2,2:276\n1855#2,2:278\n215#3:268\n216#3:273\n1#4:272\n*S KotlinDebug\n*F\n+ 1 NoteTagProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt\n*L\n61#1:266,2\n68#1:269,3\n180#1:274,2\n198#1:276,2\n208#1:278,2\n64#1:268\n64#1:273\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteTagProviderKt {
    public static final boolean checkShapeTagDuplicated(@NotNull NoteProvider noteProvider, @NotNull String content) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(content, "content");
        return !loadShapeTagByContent(noteProvider, content).isEmpty();
    }

    @NotNull
    public static final CBQueryArgs createDocTagQueryArgs() {
        CBQueryArgs createTagQueryArgs = createTagQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return createTagQueryArgs.andWith(couchUtils.equalExpression("type", 2)).setVarargOrdering(couchUtils.getOrdering(CouchFieldKey.KEY_ORDER_INDEX, true));
    }

    @NotNull
    public static final CBQueryArgs createShapeTagQueryArgs() {
        return createTagQueryArgs().andWith(CouchUtils.INSTANCE.nullOrEqualExpression("type", 0));
    }

    @NotNull
    public static final CBQueryArgs createTagQueryArgs() {
        return new CBQueryArgs().setMaxLimit().andWith(CouchUtils.INSTANCE.noteTagExpression());
    }

    public static final void deleteDocShapeTag(@NotNull NoteProvider noteProvider, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        List singletonList = Collections.singletonList(documentId);
        Intrinsics.checkNotNullExpressionValue(singletonList, "singletonList(...)");
        Iterator<T> it2 = loadDocShapeTagList(noteProvider, singletonList, null).iterator();
        while (it2.hasNext()) {
            CouchUtils.INSTANCE.delete(noteProvider.getDatabase(), ((SyncTagModel) it2.next()).getUniqueId());
        }
    }

    public static final void deleteTagList(@NotNull NoteProvider noteProvider, @NotNull List<? extends SyncTagModel> list) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        if (list.isEmpty()) {
            return;
        }
        for (SyncTagModel syncTagModel : list) {
            syncTagModel.setStatus(2);
            syncTagModel.resetRevisionId();
        }
        saveTagList(noteProvider, list);
    }

    public static final boolean hasDuplicatedTagContent(@NotNull NoteProvider noteProvider, @NotNull String content, @Nullable Function1<? super CBQueryArgs, Unit> function1) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(content, "content");
        CBQueryArgs createDocTagQueryArgs = createDocTagQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = createDocTagQueryArgs.andWith(couchUtils.equalExpression("status", 0)).andWith(couchUtils.equalExpression("content", content));
        if (function1 != null) {
            function1.invoke(andWith);
        }
        return NoteModelProviderKt.getCount(noteProvider, andWith) > 0;
    }

    public static /* synthetic */ boolean hasDuplicatedTagContent$default(NoteProvider noteProvider, String str, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        return hasDuplicatedTagContent(noteProvider, str, function1);
    }

    public static final boolean hasNoteTag(@NotNull NoteProvider noteProvider, @NotNull final String id) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(id, "id");
        return hasNoteTag(noteProvider, new Function1<CBQueryArgs, Unit>() { // from class: com.onyx.android.sdk.replicator.note.db.NoteTagProviderKt$hasNoteTag$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(CBQueryArgs cBQueryArgs) {
                invoke2(cBQueryArgs);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CBQueryArgs hasNoteTag) {
                Intrinsics.checkNotNullParameter(hasNoteTag, "$this$hasNoteTag");
                hasNoteTag.andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_UNIQUE_ID, id));
            }
        });
    }

    public static /* synthetic */ boolean hasNoteTag$default(NoteProvider noteProvider, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = null;
        }
        return hasNoteTag(noteProvider, (Function1<? super CBQueryArgs, Unit>) function1);
    }

    @NotNull
    public static final List<SyncTagModel> loadCommonShapeTagList(@NotNull NoteProvider noteProvider) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        return loadTagList(noteProvider, createShapeTagQueryArgs().andWith(CouchUtils.INSTANCE.nullOrMissing("documentId")));
    }

    @NotNull
    public static final List<SyncTagModel> loadDocPageTagList(@NotNull NoteProvider noteProvider, @NotNull String documentId, @NotNull List<String> pageIds) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        CBQueryArgs createTagQueryArgs = createTagQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return loadTagList(noteProvider, createTagQueryArgs.andWith(couchUtils.equalExpression("documentId", documentId)).andWith(couchUtils.inExpression(CouchFieldKey.KEY_PAGE_ID, pageIds)));
    }

    @NotNull
    public static final List<SyncTagModel> loadDocShapeTagList(@NotNull NoteProvider noteProvider, @NotNull List<String> docIdList, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(docIdList, "docIdList");
        ArrayList arrayList = new ArrayList();
        List<String> list = docIdList;
        if (CollectionKt.isNullOrEmpty(list)) {
            return arrayList;
        }
        CBQueryArgs createShapeTagQueryArgs = createShapeTagQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = createShapeTagQueryArgs.andWith(couchUtils.inExpression("documentId", list));
        if (num != null) {
            andWith.andWith(couchUtils.equalExpression("status", Integer.valueOf(num.intValue())));
        }
        return loadTagList(noteProvider, andWith);
    }

    public static /* synthetic */ List loadDocShapeTagList$default(NoteProvider noteProvider, List list, Integer num, int i, Object obj) {
        if ((i & 2) != 0) {
            num = 0;
        }
        return loadDocShapeTagList(noteProvider, list, num);
    }

    @NotNull
    public static final Tree<SyncTagModel> loadDocTagTree(@NotNull NoteProvider noteProvider) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        CBQueryArgs createDocTagQueryArgs = createDocTagQueryArgs();
        createDocTagQueryArgs.andWith(CouchUtils.INSTANCE.equalExpression("status", 0));
        return Tree.INSTANCE.create(loadTagList(noteProvider, createDocTagQueryArgs), new Function1<SyncTagModel, String>() { // from class: com.onyx.android.sdk.replicator.note.db.NoteTagProviderKt$loadDocTagTree$1
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final String invoke(@NotNull SyncTagModel item) {
                Intrinsics.checkNotNullParameter(item, "item");
                return item.getUniqueId();
            }
        }, new Function1<SyncTagModel, String>() { // from class: com.onyx.android.sdk.replicator.note.db.NoteTagProviderKt$loadDocTagTree$2
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final String invoke(@NotNull SyncTagModel item) {
                Intrinsics.checkNotNullParameter(item, "item");
                return item.getParentId();
            }
        });
    }

    @NotNull
    public static final TreeNode<NoteTagBean> loadDocTagTreeNode(@NotNull NoteProvider noteProvider) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        CBQueryArgs createDocTagQueryArgs = createDocTagQueryArgs();
        createDocTagQueryArgs.andWith(CouchUtils.INSTANCE.equalExpression("status", 0));
        List<SyncTagModel> loadTagList = loadTagList(noteProvider, createDocTagQueryArgs);
        TreeNode<NoteTagBean> createTagRootNode = NoteTagNodes.INSTANCE.createTagRootNode();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (SyncTagModel syncTagModel : loadTagList) {
            linkedHashMap.put(syncTagModel.getUniqueId(), createTagRootNode.createNode(new NoteTagBean(syncTagModel), syncTagModel.getUniqueId()));
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            TreeNode<NoteTagBean> treeNode = (TreeNode) linkedHashMap.get(((NoteTagBean) ((TreeNode) entry.getValue()).getData()).getParentId());
            if (treeNode == null) {
                treeNode = createTagRootNode;
            }
            int i = -1;
            int i2 = 0;
            for (Object obj : treeNode.findChildren()) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                if (((NoteTagBean) ((TreeNode) entry.getValue()).getData()).getOrderIndex() < ((NoteTagBean) ((TreeNode) obj).getData()).getOrderIndex()) {
                    i = i2;
                }
                i2 = i3;
            }
            ((TreeNode) entry.getValue()).parent(treeNode, i);
        }
        return createTagRootNode;
    }

    @NotNull
    public static final Tree<SyncNoteModel> loadNoteModelTree(@NotNull NoteProvider noteProvider, @NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        CBQueryArgs m72249clone = queryArgs.m72249clone();
        m72249clone.m72251setLimit(Math.min(200, m72249clone.getLimit()));
        return Tree.INSTANCE.create(NoteModelProviderKt.loadNoteListInBatch(noteProvider, m72249clone), new Function1<SyncNoteModel, String>() { // from class: com.onyx.android.sdk.replicator.note.db.NoteTagProviderKt$loadNoteModelTree$1
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final String invoke(@NotNull SyncNoteModel item) {
                Intrinsics.checkNotNullParameter(item, "item");
                return item.getUniqueId();
            }
        }, new Function1<SyncNoteModel, String>() { // from class: com.onyx.android.sdk.replicator.note.db.NoteTagProviderKt$loadNoteModelTree$2
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final String invoke(@NotNull SyncNoteModel item) {
                Intrinsics.checkNotNullParameter(item, "item");
                return item.getParentUniqueId();
            }
        });
    }

    @NotNull
    public static final List<SyncTagModel> loadPageShapeTagList(@NotNull NoteProvider noteProvider, @NotNull String documentId, @NotNull List<String> pageIds) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        CBQueryArgs createShapeTagQueryArgs = createShapeTagQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return loadTagList(noteProvider, createShapeTagQueryArgs.andWith(couchUtils.equalExpression("documentId", documentId)).andWith(couchUtils.inExpression(CouchFieldKey.KEY_PAGE_ID, pageIds)));
    }

    @NotNull
    public static final List<SyncTagModel> loadShapeTagByContent(@NotNull NoteProvider noteProvider, @NotNull String content) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(content, "content");
        CBQueryArgs createShapeTagQueryArgs = createShapeTagQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return loadTagList(noteProvider, createShapeTagQueryArgs.andWith(couchUtils.equalExpression("status", 0)).andWith(couchUtils.equalExpression("content", content)).setVarargOrdering(couchUtils.getOrdering("updatedAt", false)));
    }

    @NotNull
    public static final List<SyncTagModel> loadTagById(@NotNull NoteProvider noteProvider, @NotNull List<String> idList) {
        List<SyncTagModel> emptyList;
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(idList, "idList");
        List<String> list = idList;
        if (CollectionKt.isNullOrEmpty(list)) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        CBQueryArgs createTagQueryArgs = createTagQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return loadTagList(noteProvider, createTagQueryArgs.andWith(couchUtils.equalExpression("status", 0)).andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, list)).setVarargOrdering(couchUtils.getOrdering(CouchFieldKey.KEY_CREATE_AT, true)));
    }

    @NotNull
    public static final List<SyncTagModel> loadTagList(@NotNull NoteProvider noteProvider, @NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return noteProvider.loadModelList(queryArgs, SyncTagModel.class);
    }

    public static final void purgeDocTagList(@NotNull NoteProvider noteProvider, @NotNull List<String> excludeDocumentIds) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(excludeDocumentIds, "excludeDocumentIds");
        CouchCollections.INSTANCE.deleteByExpression(noteProvider.getTreeCollection(noteProvider), noteProvider.getDatabase(), createDocTagQueryArgs().andWith(CouchUtils.INSTANCE.notInExpression("documentId", excludeDocumentIds)));
    }

    public static final void saveExportedTagList(@NotNull NoteProvider noteProvider, @NotNull List<? extends SyncTagModel> list) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        NoteProvider.saveSyncModelList$default(noteProvider, list, null, 2, null);
    }

    public static final void saveTagList(@NotNull NoteProvider noteProvider, @NotNull List<? extends SyncTagModel> list) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        NoteProvider.saveSyncModelList$default(noteProvider, list, null, 2, null);
    }

    @NotNull
    public static final List<SyncTagModel> searchDocShapeTag(@NotNull NoteProvider noteProvider, @Nullable String str, @NotNull String content) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(content, "content");
        CBQueryArgs createShapeTagQueryArgs = createShapeTagQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        List singletonList = Collections.singletonList("content");
        Intrinsics.checkNotNullExpressionValue(singletonList, "singletonList(...)");
        return loadTagList(noteProvider, createShapeTagQueryArgs.andWith(CouchUtils.orLikeExpression$default(couchUtils, content, singletonList, null, false, 12, null)).andWith(couchUtils.equalExpression("status", 0)).andWith(couchUtils.equalOrNullExpression("documentId", str)).setVarargOrdering(couchUtils.getOrdering(CouchFieldKey.KEY_CREATE_AT, true)));
    }

    public static /* synthetic */ List searchDocShapeTag$default(NoteProvider noteProvider, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        return searchDocShapeTag(noteProvider, str, str2);
    }

    public static final long updateDocShapeTagStatus(@NotNull NoteProvider noteProvider, @NotNull List<String> docIdList, int i, int i2) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(docIdList, "docIdList");
        List<SyncTagModel> loadDocShapeTagList = loadDocShapeTagList(noteProvider, docIdList, Integer.valueOf(i));
        for (SyncTagModel syncTagModel : loadDocShapeTagList) {
            syncTagModel.setStatus(i2);
            syncTagModel.resetRevisionId();
        }
        saveTagList(noteProvider, loadDocShapeTagList);
        return loadDocShapeTagList.size();
    }

    public static final boolean hasNoteTag(@NotNull NoteProvider noteProvider, @Nullable Function1<? super CBQueryArgs, Unit> function1) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        CBQueryArgs createDocTagQueryArgs = createDocTagQueryArgs();
        if (function1 != null) {
            function1.invoke(createDocTagQueryArgs);
        }
        return !loadTagList(noteProvider, createDocTagQueryArgs).isEmpty();
    }
}
