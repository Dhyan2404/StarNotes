package com.onyx.android.sdk.replicator.note.p035db;

import com.couchbase.lite.Collection;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.PageTagModel;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\f\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0002\u001a\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003\u001a\u0012\u0010\t\u001a\u00020\b*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003\u001a$\u0010\u000e\u001a\u0004\u0018\u00010\u0006*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n\u001a \u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n\u001a&\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\u0005\u001a\u001a\u0010\u0010\u001a\u00020\b*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n\u001a(\u0010\u0010\u001a\u00020\b*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\u0005\u001a\u0012\u0010\u0013\u001a\u00020\u0012*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n\u001a\u0018\u0010\u0013\u001a\u00020\u0012*\u00020\u00002\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\n0\u0005\u001a(\u0010\u0013\u001a\u00020\b*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\u0005\u001a\u0018\u0010\u0016\u001a\u00020\u0012*\u00020\u00002\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u001a\u0018\u0010\u0017\u001a\u00020\u0012*\u00020\u00002\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u001a\"\u0010\u001a\u001a\u00020\b*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u0018\u001a\"\u0010\u001d\u001a\u00020\b*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u001b\u001a\u0006\u0010\u001e\u001a\u00020\u0003\u001a\u0006\u0010\u001f\u001a\u00020\u0003\u001a\u0016\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n\u001a\u001c\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\u0005\u001a\u0014\u0010\u001e\u001a\u00020\u00032\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\n0\u0005¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "Lcom/couchbase/lite/Collection;", "a", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "queryArgs", "", "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;", "loadPageTagList", "", "loadPageTagListCount", "", EditorConstants.ARGS_DOC_ID, CouchFieldKey.KEY_TOC_PAGE_ID, CouchFieldKey.KEY_TAG_ID, "loadPageTagModel", "pageIds", "deletePageTagModels", CouchFieldKey.KEY_TAG_ID_LIST, "", "purgeDocPageTag", "docIds", "list", "savePageTagModels", "saveExportedPageTagModels", "", "pageIndex", "updatePageTagModelPageIndex", "Lcom/onyx/android/sdk/base/data/Orientation;", "orientation", "updatePageTagModelOrientation", "createEnabledPageTagQueryArgs", "createPageTagQueryArgs", "tagIds", "sdk-replicator_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNotePageTagProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageTagProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NotePageTagProviderKt\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,157:1\n48#2,5:158\n1855#3,2:163\n*S KotlinDebug\n*F\n+ 1 NotePageTagProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NotePageTagProviderKt\n*L\n29#1:158,5\n63#1:163,2\n*E\n"})
/* loaded from: classes8.dex */
public final class NotePageTagProviderKt {
    /* renamed from: a */
    public static final Collection m35177a(NoteProvider noteProvider) {
        return noteProvider.getCouchHolder().ensureCollection(SyncConstant.COLLECTION_PAGE_TAG_MODEL);
    }

    @NotNull
    public static final CBQueryArgs createEnabledPageTagQueryArgs() {
        return createPageTagQueryArgs().andWith(CouchUtils.INSTANCE.nullOrEqualExpression("status", 0));
    }

    @NotNull
    public static final CBQueryArgs createPageTagQueryArgs() {
        CBQueryArgs maxLimit = new CBQueryArgs().setMaxLimit();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return maxLimit.andWith(couchUtils.notNullOrMissing(CouchFieldKey.KEY_TAG_ID)).andWith(couchUtils.notNullOrMissing("documentId")).andWith(couchUtils.notNullOrMissing(CouchFieldKey.KEY_PAGE_ID));
    }

    public static final long deletePageTagModels(@NotNull NoteProvider noteProvider, @NotNull String docId, @NotNull String pageId) {
        List emptyList;
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return deletePageTagModels(noteProvider, docId, pageId, emptyList);
    }

    @NotNull
    public static final List<PageTagModel> loadPageTagList(@NotNull NoteProvider noteProvider, @NotNull CBQueryArgs queryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35177a = m35177a(noteProvider);
        if (m35177a == null || (str = m35177a.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35177a, queryArgs), PageTagModel.class, str);
    }

    public static final long loadPageTagListCount(@NotNull NoteProvider noteProvider, @NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return CouchCollections.INSTANCE.queryDocumentCount(m35177a(noteProvider), queryArgs.getWhereEx());
    }

    @Nullable
    public static final PageTagModel loadPageTagModel(@NotNull NoteProvider noteProvider, @NotNull String docId, @NotNull String pageId, @NotNull String tagId) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(tagId, "tagId");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) loadPageTagList(noteProvider, createEnabledPageTagQueryArgs(docId, pageId).setLimit(1).andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_TAG_ID, tagId))));
        return (PageTagModel) firstOrNull;
    }

    public static final void purgeDocPageTag(@NotNull NoteProvider noteProvider, @NotNull String docId) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(docId, "docId");
        CouchCollections.INSTANCE.deleteByExpression(m35177a(noteProvider), noteProvider.getDatabase(), createPageTagQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression("documentId", docId)));
    }

    public static final void saveExportedPageTagModels(@NotNull NoteProvider noteProvider, @NotNull List<? extends PageTagModel> list) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        NoteProvider.saveSyncModelList$default(noteProvider, m35177a(noteProvider), list, null, 4, null);
    }

    public static final void savePageTagModels(@NotNull NoteProvider noteProvider, @NotNull List<? extends PageTagModel> list) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        noteProvider.saveSyncModelList(m35177a(noteProvider), list, new Function1<PageTagModel, Unit>() { // from class: com.onyx.android.sdk.replicator.note.db.NotePageTagProviderKt$savePageTagModels$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(PageTagModel pageTagModel) {
                invoke2(pageTagModel);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull PageTagModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                it2.ensureUniqueIdExist();
                it2.beforeSave();
            }
        });
    }

    public static final long updatePageTagModelOrientation(@NotNull NoteProvider noteProvider, @NotNull String docId, @NotNull String pageId, @NotNull Orientation orientation) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        CBQueryArgs createEnabledPageTagQueryArgs = createEnabledPageTagQueryArgs(docId, pageId);
        createEnabledPageTagQueryArgs.getUpdateValues().put("orientation", Integer.valueOf(orientation.getValue()));
        return CouchCollections.INSTANCE.updateInBatch(m35177a(noteProvider), noteProvider.getDatabase(), createEnabledPageTagQueryArgs);
    }

    public static final long updatePageTagModelPageIndex(@NotNull NoteProvider noteProvider, @NotNull String docId, @NotNull String pageId, int i) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        CBQueryArgs createEnabledPageTagQueryArgs = createEnabledPageTagQueryArgs(docId, pageId);
        createEnabledPageTagQueryArgs.getUpdateValues().put("pageIndex", Integer.valueOf(i));
        return CouchCollections.INSTANCE.updateInBatch(m35177a(noteProvider), noteProvider.getDatabase(), createEnabledPageTagQueryArgs);
    }

    public static final long deletePageTagModels(@NotNull NoteProvider noteProvider, @NotNull String docId, @NotNull String pageId, @NotNull List<String> tagIdList) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(tagIdList, "tagIdList");
        CBQueryArgs createEnabledPageTagQueryArgs = createEnabledPageTagQueryArgs(docId, pageId);
        List<String> list = tagIdList;
        if (!list.isEmpty()) {
            createEnabledPageTagQueryArgs.andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_TAG_ID, list));
        }
        List<PageTagModel> loadPageTagList = loadPageTagList(noteProvider, createEnabledPageTagQueryArgs);
        for (PageTagModel pageTagModel : loadPageTagList) {
            pageTagModel.setStatus(1);
            pageTagModel.resetRevisionId();
        }
        savePageTagModels(noteProvider, loadPageTagList);
        return loadPageTagList.size();
    }

    public static final void purgeDocPageTag(@NotNull NoteProvider noteProvider, @NotNull List<String> docIds) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(docIds, "docIds");
        if (docIds.isEmpty()) {
            return;
        }
        CouchCollections.INSTANCE.deleteByExpression(m35177a(noteProvider), noteProvider.getDatabase(), createPageTagQueryArgs().andWith(CouchUtils.INSTANCE.inExpression("documentId", docIds)));
    }

    @NotNull
    public static final CBQueryArgs createEnabledPageTagQueryArgs(@NotNull String docId, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        CBQueryArgs createEnabledPageTagQueryArgs = createEnabledPageTagQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return createEnabledPageTagQueryArgs.andWith(couchUtils.equalExpression("documentId", docId)).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_PAGE_ID, pageId));
    }

    @NotNull
    public static final List<PageTagModel> loadPageTagList(@NotNull NoteProvider noteProvider, @NotNull String docId, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return loadPageTagList(noteProvider, createEnabledPageTagQueryArgs(docId, pageId));
    }

    @NotNull
    public static final CBQueryArgs createEnabledPageTagQueryArgs(@NotNull String docId, @NotNull List<String> pageIds) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        CBQueryArgs createEnabledPageTagQueryArgs = createEnabledPageTagQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = createEnabledPageTagQueryArgs.andWith(couchUtils.equalExpression("documentId", docId));
        List<String> list = pageIds;
        if (!list.isEmpty()) {
            andWith.andWith(couchUtils.inExpression(CouchFieldKey.KEY_PAGE_ID, list));
        }
        return andWith;
    }

    @NotNull
    public static final List<PageTagModel> loadPageTagList(@NotNull NoteProvider noteProvider, @NotNull String docId, @NotNull List<String> pageIds) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        return loadPageTagList(noteProvider, createEnabledPageTagQueryArgs(docId, pageIds));
    }

    public static final long purgeDocPageTag(@NotNull NoteProvider noteProvider, @NotNull String docId, @NotNull String pageId, @NotNull List<String> tagIdList) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(tagIdList, "tagIdList");
        CBQueryArgs createEnabledPageTagQueryArgs = createEnabledPageTagQueryArgs(docId, pageId);
        List<String> list = tagIdList;
        if (!list.isEmpty()) {
            createEnabledPageTagQueryArgs.andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_TAG_ID, list));
        }
        return CouchCollections.INSTANCE.deleteByExpression(m35177a(noteProvider), noteProvider.getDatabase(), createEnabledPageTagQueryArgs);
    }

    @NotNull
    public static final CBQueryArgs createEnabledPageTagQueryArgs(@NotNull List<String> tagIds) {
        Intrinsics.checkNotNullParameter(tagIds, "tagIds");
        CBQueryArgs createEnabledPageTagQueryArgs = createEnabledPageTagQueryArgs();
        List<String> list = tagIds;
        if (!list.isEmpty()) {
            createEnabledPageTagQueryArgs.andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_TAG_ID, list));
        }
        return createEnabledPageTagQueryArgs;
    }
}
