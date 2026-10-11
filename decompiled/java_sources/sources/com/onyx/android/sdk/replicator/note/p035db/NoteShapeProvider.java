package com.onyx.android.sdk.replicator.note.p035db;

import com.couchbase.lite.AbstractIndexBuilder;
import com.couchbase.lite.Collection;
import com.couchbase.lite.SelectResult;
import com.couchbase.lite.ValueIndex;
import com.couchbase.lite.ValueIndexItem;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.Duration;
import kotlin.time.TimeSource;
import kotlin.time.TimedValue;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 &2\u00020\u0001:\u0001&B\u000f\u0012\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\b$\u0010%J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u000b\u001a\u00020\u00022\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bJ\u0016\u0010\f\u001a\u00020\u00022\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bJ\u001e\u0010\u0011\u001a\u00020\u00022\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\b2\u0006\u0010\u0010\u001a\u00020\u000fJ\u0016\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fJ\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\r0\b2\u0006\u0010\u0013\u001a\u00020\u0004J\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\r0\b2\u0006\u0010\u0013\u001a\u00020\u0004J\u000e\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\rJ\u001c\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\r2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\r0\bJ\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0013\u001a\u00020\u0004J\u0014\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\r0\b2\u0006\u0010\u001a\u001a\u00020\rJ\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\t0\b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\bJ\u0014\u0010\u001d\u001a\u00020\u00022\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\bJ\u0014\u0010\u001f\u001a\u00020\u00022\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\r0\bJ\b\u0010!\u001a\u00020 H\u0002¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "", "createIndexIfNeed", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "queryArgs", "", "loadShapeCount", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "list", "saveShapeList", "updateShapeList", "", "shapeIdList", "", CouchFieldKey.KEY_SYNC_STATUS, "updateShapeSyncStatus", "documentId", "cbQueryArgs", "loadShapeIdList", "loadShapePageIdList", "deleteDocShapes", "pageList", "deleteDocPageShapes", "loadShapeList", CouchFieldKey.KEY_TOC_PAGE_ID, "loadPageShapeInfoRevisionList", "loadShapeListByIds", "deleteShapeModel", "pageIdList", "deletePageShapes", "Lcom/couchbase/lite/Collection;", "a", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteShapeProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteShapeProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NoteShapeProvider\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,148:1\n79#2,5:149\n113#2,7:154\n2634#3:161\n1855#3,2:163\n1855#3,2:165\n1549#3:167\n1620#3,3:168\n1603#3,9:171\n1855#3:180\n1856#3:182\n1612#3:183\n1855#3,2:189\n1#4:162\n1#4:181\n48#5,5:184\n*S KotlinDebug\n*F\n+ 1 NoteShapeProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NoteShapeProvider\n*L\n43#1:149,5\n43#1:154,7\n69#1:161\n78#1:163,2\n84#1:165,2\n90#1:167\n90#1:168,3\n97#1:171,9\n97#1:180\n97#1:182\n97#1:183\n125#1:189,2\n69#1:162\n97#1:181\n114#1:184,5\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteShapeProvider extends BaseCouchProvider {

    /* renamed from: a */
    @NotNull
    public static final String f45515a = "ShapeIndex";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteShapeProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
    }

    /* renamed from: a */
    public final Collection m35178a() {
        return ensureCollection(SyncConstant.COLLECTION_SHAPE_MODEL);
    }

    public final void createIndexIfNeed() {
        ValueIndex valueIndex;
        Collection m35178a = m35178a();
        Intrinsics.checkNotNullExpressionValue(m35178a.getIndexes(), "getIndexes(...)");
        if (!r0.isEmpty()) {
            return;
        }
        long m74114markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m74114markNowz9LOYto();
        valueIndex = AbstractIndexBuilder.valueIndex(ValueIndexItem.property(CouchFieldKey.KEY_PAGE_ID));
        m35178a.createIndex(f45515a, valueIndex);
        TimedValue timedValue = new TimedValue(Unit.INSTANCE, TimeSource.Monotonic.ValueTimeMark.m74119elapsedNowUwyO8pc(m74114markNowz9LOYto), null);
        Debug.INSTANCE.m32052i(NoteShapeProvider.class, "ShapeIndex created:" + ((Object) Duration.m74024toStringimpl(timedValue.m74136getDurationUwyO8pc())), new Object[0]);
    }

    public final void deleteDocPageShapes(@NotNull String documentId, @NotNull List<String> pageList) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(pageList, "pageList");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CouchCollections.INSTANCE.deleteByExpression(m35178a(), getDatabase(), cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_DOCUMENT_ID, documentId)).andWith(couchUtils.inExpression(CouchFieldKey.KEY_PAGE_ID, pageList)));
    }

    public final void deleteDocShapes(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        CouchCollections.INSTANCE.deleteListByIds(m35178a(), loadShapeIdList(new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_DOCUMENT_ID, documentId))));
    }

    public final void deletePageShapes(@NotNull List<String> pageIdList) {
        Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
        CouchCollections.INSTANCE.deleteListByIds(m35178a(), loadShapeIdList(new CBQueryArgs().andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_PAGE_ID, pageIdList))));
    }

    public final void deleteShapeModel(@NotNull List<String> shapeIdList) {
        Intrinsics.checkNotNullParameter(shapeIdList, "shapeIdList");
        CouchCollections.INSTANCE.deleteListByIds(m35178a(), shapeIdList);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0067 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0049 A[SYNTHETIC] */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<java.lang.String> loadPageShapeInfoRevisionList(@org.jetbrains.annotations.NotNull java.lang.String r6) {
        /*
            r5 = this;
            java.lang.String r0 = "pageId"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            r0 = 1
            com.couchbase.lite.SelectResult[] r1 = new com.couchbase.lite.SelectResult[r0]
            java.lang.String r2 = "infoRevisionId"
            com.couchbase.lite.PropertyExpression r3 = com.couchbase.lite.Expression.property(r2)
            com.couchbase.lite.SelectResult$As r3 = com.couchbase.lite.SelectResult.expression(r3)
            r4 = 0
            r1[r4] = r3
            com.couchbase.lite.Select r1 = com.couchbase.lite.QueryBuilder.select(r1)
            com.couchbase.lite.Collection r5 = r5.m35178a()
            com.couchbase.lite.DataSource$As r5 = com.couchbase.lite.DataSource.collection(r5)
            com.couchbase.lite.From r5 = r1.from(r5)
            com.onyx.android.sdk.data.couchbase.utils.CouchUtils r1 = com.onyx.android.sdk.data.couchbase.utils.CouchUtils.INSTANCE
            java.lang.String r3 = "pageUniqueId"
            com.couchbase.lite.Expression r6 = r1.equalExpression(r3, r6)
            com.couchbase.lite.Where r5 = r5.where(r6)
            com.couchbase.lite.ResultSet r5 = r5.execute()
            java.util.List r5 = r5.allResults()
            java.lang.String r6 = "allResults(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
            java.util.HashSet r6 = new java.util.HashSet
            r6.<init>()
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            java.util.Iterator r5 = r5.iterator()
        L49:
            boolean r1 = r5.hasNext()
            if (r1 == 0) goto L6b
            java.lang.Object r1 = r5.next()
            com.couchbase.lite.Result r1 = (com.couchbase.lite.Result) r1
            java.lang.String r1 = r1.getString(r2)
            if (r1 == 0) goto L64
            boolean r3 = kotlin.text.StringsKt.isBlank(r1)
            r3 = r3 ^ r0
            if (r3 != r0) goto L64
            r3 = r0
            goto L65
        L64:
            r3 = r4
        L65:
            if (r3 == 0) goto L49
            r6.add(r1)
            goto L49
        L6b:
            java.util.List r5 = kotlin.collections.CollectionsKt.toList(r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.p035db.NoteShapeProvider.loadPageShapeInfoRevisionList(java.lang.String):java.util.List");
    }

    public final long loadShapeCount(@NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return CouchCollections.INSTANCE.queryDocumentCount(m35178a(), queryArgs.getWhereEx());
    }

    @NotNull
    public final List<String> loadShapeIdList(@NotNull CBQueryArgs cbQueryArgs) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(cbQueryArgs, "cbQueryArgs");
        SelectResult.C2166As property = SelectResult.property(CouchFieldKey.KEY_UNIQUE_ID);
        Intrinsics.checkNotNullExpressionValue(property, "property(...)");
        cbQueryArgs.setVarargSelectResults(property);
        List<ShapeModel> loadShapeList = loadShapeList(cbQueryArgs);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadShapeList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadShapeList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((ShapeModel) it2.next()).getUniqueId());
        }
        return arrayList;
    }

    @NotNull
    public final List<ShapeModel> loadShapeList(@NotNull CBQueryArgs cbQueryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(cbQueryArgs, "cbQueryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35178a = m35178a();
        if (m35178a == null || (str = m35178a.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35178a, cbQueryArgs), ShapeModel.class, str);
    }

    @NotNull
    public final List<ShapeModel> loadShapeListByIds(@NotNull List<String> shapeIdList) {
        Intrinsics.checkNotNullParameter(shapeIdList, "shapeIdList");
        return loadShapeList(ShapeQueryArgsExtKt.inShapeIdListQuery(shapeIdList));
    }

    @NotNull
    public final List<String> loadShapePageIdList(@NotNull CBQueryArgs cbQueryArgs) {
        Intrinsics.checkNotNullParameter(cbQueryArgs, "cbQueryArgs");
        SelectResult.C2166As property = SelectResult.property(CouchFieldKey.KEY_PAGE_ID);
        Intrinsics.checkNotNullExpressionValue(property, "property(...)");
        cbQueryArgs.setVarargSelectResults(property).setDistinct(true);
        List<ShapeModel> loadShapeList = loadShapeList(cbQueryArgs);
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = loadShapeList.iterator();
        while (it2.hasNext()) {
            String pageUniqueId = ((ShapeModel) it2.next()).getPageUniqueId();
            if (pageUniqueId != null) {
                arrayList.add(pageUniqueId);
            }
        }
        return arrayList;
    }

    public final void saveShapeList(@Nullable List<ShapeModel> list) {
        CouchCollections.INSTANCE.saveList(m35178a(), getDatabase(), list);
    }

    public final void updateShapeList(@Nullable List<ShapeModel> list) {
        List<ShapeModel> list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            ((ShapeModel) it2.next()).beforeSave();
        }
        saveShapeList(list);
    }

    public final void updateShapeSyncStatus(@Nullable List<String> shapeIdList, int syncStatus) {
        List<String> list = shapeIdList;
        if (list == null || list.isEmpty()) {
            return;
        }
        List<ShapeModel> loadShapeList = loadShapeList(ShapeQueryArgsExtKt.inShapeIdListQuery(list));
        Iterator<T> it2 = loadShapeList.iterator();
        while (it2.hasNext()) {
            ((ShapeModel) it2.next()).setSyncStatus(syncStatus);
        }
        saveShapeList(loadShapeList);
    }

    public final void updateShapeSyncStatus(@NotNull String documentId, int syncStatus) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        List<ShapeModel> loadShapeList = loadShapeList(ShapeQueryArgsExtKt.loadShapeListQuery$default(documentId, 0, 0, (Long) null, 14, (Object) null));
        Iterator<T> it2 = loadShapeList.iterator();
        while (it2.hasNext()) {
            ((ShapeModel) it2.next()).setSyncStatus(syncStatus);
        }
        saveShapeList(loadShapeList);
    }
}
