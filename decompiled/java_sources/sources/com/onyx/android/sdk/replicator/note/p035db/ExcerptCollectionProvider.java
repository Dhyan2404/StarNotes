package com.onyx.android.sdk.replicator.note.p035db;

import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b(\u0010)J\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007J\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007J\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007J\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007J\u0016\u0010\u0012\u001a\u00020\u00112\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004J\u000e\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0005J\u0016\u0010\u0015\u001a\u00020\u00112\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004J\u000e\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0005J\u0014\u0010\u0018\u001a\u00020\u00112\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0014\u0010\u0019\u001a\u00020\u00112\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0006\u0010\u001a\u001a\u00020\u0011J,\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\b\u001a\u00020\u00072\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00070\u001b2\b\b\u0002\u0010\u001e\u001a\u00020\u001dJ,\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\b\u001a\u00020\u00072\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00070\u001b2\b\b\u0002\u0010\u001e\u001a\u00020\u001dJ\b\u0010\"\u001a\u00020\u0007H\u0002J\b\u0010$\u001a\u00020#H\u0002J\u001e\u0010%\u001a\u00020\u00112\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "queryArgs", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "loadExcerptCollectionList", "", EditorConstants.ARGS_DOC_ID, "quoteId", "loadExcerptCollectionByQuoteId", "loadExcerptCollectionListByQuoteId", CouchFieldKey.KEY_SOURCE_SHAPE_ID, "loadExcerptCollectionListBySourceShapeId", "sourceExcerptId", "loadExcerptCollectionListByExcerptId", "list", "", "saveExcerptCollectionList", "model", "saveExcerptCollection", "saveExportedExcerptCollectionList", "updateExcerptCollectionRemoved", "modelList", "enableExcerptCollectionModels", "removeExcerptCollectionModels", "purgeExcerptCollection", "", "quoteIds", "", "status", "loadExcerptCollectionByQuoteIds", "sourceIds", "loadExcerptCollectionByExcerptIds", "b", "Lcom/couchbase/lite/Collection;", "a", "c", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nExcerptCollectionProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExcerptCollectionProvider.kt\ncom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,127:1\n52#2:128\n1855#3,2:129\n1855#3,2:131\n*S KotlinDebug\n*F\n+ 1 ExcerptCollectionProvider.kt\ncom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider\n*L\n35#1:128\n62#1:129,2\n121#1:131,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ExcerptCollectionProvider extends BaseCouchProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExcerptCollectionProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
    }

    public static /* synthetic */ List loadExcerptCollectionByExcerptIds$default(ExcerptCollectionProvider excerptCollectionProvider, String str, Collection collection, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return excerptCollectionProvider.loadExcerptCollectionByExcerptIds(str, collection, i);
    }

    public static /* synthetic */ List loadExcerptCollectionByQuoteIds$default(ExcerptCollectionProvider excerptCollectionProvider, String str, Collection collection, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return excerptCollectionProvider.loadExcerptCollectionByQuoteIds(str, collection, i);
    }

    /* renamed from: a */
    public final com.couchbase.lite.Collection m35167a() {
        return ensureCollection(m35168b());
    }

    /* renamed from: b */
    public final String m35168b() {
        return SyncConstant.COLLECTION_EXCERPT_COLLECTION_MODEL;
    }

    /* renamed from: c */
    public final void m35169c(List<ExcerptCollectionModel> modelList, int status) {
        if (modelList.isEmpty()) {
            return;
        }
        for (ExcerptCollectionModel excerptCollectionModel : modelList) {
            excerptCollectionModel.setStatus(status);
            excerptCollectionModel.resetRevisionId();
        }
        saveExcerptCollectionList(modelList);
    }

    public final void enableExcerptCollectionModels(@NotNull List<ExcerptCollectionModel> modelList) {
        Intrinsics.checkNotNullParameter(modelList, "modelList");
        m35169c(modelList, 0);
    }

    @NotNull
    public final List<ExcerptCollectionModel> loadExcerptCollectionByExcerptIds(@NotNull String docId, @NotNull Collection<String> sourceIds, int status) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(sourceIds, "sourceIds");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return loadExcerptCollectionList(cBQueryArgs.andWith(couchUtils.equalExpression("status", Integer.valueOf(status))).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_SOURCE_DOC_ID, docId)).andWith(couchUtils.inExpression(CouchFieldKey.KEY_SOURCE_SHAPE_ID, sourceIds)));
    }

    @Nullable
    public final ExcerptCollectionModel loadExcerptCollectionByQuoteId(@NotNull String docId, @NotNull String quoteId) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) loadExcerptCollectionListByQuoteId(docId, quoteId));
        return (ExcerptCollectionModel) firstOrNull;
    }

    @NotNull
    public final List<ExcerptCollectionModel> loadExcerptCollectionByQuoteIds(@NotNull String docId, @NotNull Collection<String> quoteIds, int status) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(quoteIds, "quoteIds");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return loadExcerptCollectionList(cBQueryArgs.andWith(couchUtils.equalExpression("status", Integer.valueOf(status))).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_QUOTE_DOC_ID, docId)).andWith(couchUtils.inExpression(CouchFieldKey.KEY_QUOTE_SHAPE_ID, quoteIds)));
    }

    @NotNull
    public final List<ExcerptCollectionModel> loadExcerptCollectionList(@NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        com.couchbase.lite.Collection m35167a = m35167a();
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35167a, queryArgs), ExcerptCollectionModel.class, m35168b());
    }

    @NotNull
    public final List<ExcerptCollectionModel> loadExcerptCollectionListByExcerptId(@NotNull String docId, @NotNull String sourceExcerptId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(sourceExcerptId, "sourceExcerptId");
        return loadExcerptCollectionListBySourceShapeId(docId, sourceExcerptId);
    }

    @NotNull
    public final List<ExcerptCollectionModel> loadExcerptCollectionListByQuoteId(@NotNull String docId, @NotNull String quoteId) {
        List<ExcerptCollectionModel> emptyList;
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        if (!(quoteId.length() == 0)) {
            return loadExcerptCollectionList(ExcerptQueryArgsExtKt.loadExcerptCollectionListByQuoteIdQuery(docId, quoteId));
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @NotNull
    public final List<ExcerptCollectionModel> loadExcerptCollectionListBySourceShapeId(@NotNull String docId, @NotNull String sourceShapeId) {
        List<ExcerptCollectionModel> emptyList;
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(sourceShapeId, "sourceShapeId");
        if (!(sourceShapeId.length() == 0)) {
            return loadExcerptCollectionList(ExcerptQueryArgsExtKt.loadExcerptCollectionListBySourceShapeIdQuery(docId, sourceShapeId));
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    public final void purgeExcerptCollection() {
        CouchCollections.INSTANCE.deleteByExpression(m35167a(), getDatabase(), new CBQueryArgs());
    }

    public final void removeExcerptCollectionModels(@NotNull List<ExcerptCollectionModel> modelList) {
        Intrinsics.checkNotNullParameter(modelList, "modelList");
        m35169c(modelList, 1);
    }

    public final void saveExcerptCollection(@NotNull ExcerptCollectionModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        model.beforeSave();
        CouchCollections.INSTANCE.saveDocument(m35167a(), (com.couchbase.lite.Collection) model);
    }

    public final void saveExcerptCollectionList(@Nullable List<ExcerptCollectionModel> list) {
        if (list != null) {
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                ((ExcerptCollectionModel) it2.next()).beforeSave();
            }
        }
        CouchCollections.INSTANCE.saveList(m35167a(), getDatabase(), list);
    }

    public final void saveExportedExcerptCollectionList(@Nullable List<ExcerptCollectionModel> list) {
        CouchCollections.INSTANCE.saveList(m35167a(), getDatabase(), list);
    }

    public final void updateExcerptCollectionRemoved(@NotNull ExcerptCollectionModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        model.setStatus(1);
        model.resetRevisionId();
        saveExcerptCollection(model);
    }
}
