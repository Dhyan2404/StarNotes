package com.onyx.android.sdk.data.couchbase.utils;

import android.util.Log;
import com.couchbase.lite.AbstractFunction;
import com.couchbase.lite.Collection;
import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.DataSource;
import com.couchbase.lite.Database;
import com.couchbase.lite.Document;
import com.couchbase.lite.Expression;
import com.couchbase.lite.From;
import com.couchbase.lite.Meta;
import com.couchbase.lite.MutableDocument;
import com.couchbase.lite.QueryBuilder;
import com.couchbase.lite.Result;
import com.couchbase.lite.Select;
import com.couchbase.lite.SelectResult;
import com.couchbase.lite.UnitOfWork;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.function.BiConsumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0014\u0010\b\u001a\u00020\t*\u0004\u0018\u00010\u00052\u0006\u0010\n\u001a\u00020\u000bJ\f\u0010\f\u001a\u00020\t*\u0004\u0018\u00010\u0005J#\u0010\r\u001a\u00020\u0004\"\b\b\u0000\u0010\u000e*\u00020\u000f*\u0004\u0018\u00010\u00052\u0006\u0010\u0010\u001a\u0002H\u000e¢\u0006\u0002\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\t*\u0004\u0018\u00010\u0005H\u0086\bJ\u001c\u0010\u0013\u001a\u00020\t*\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bJ\u0014\u0010\u0014\u001a\u00020\u0004*\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\u0016J,\u0010\u0017\u001a\u00020\u0004\"\b\b\u0000\u0010\u000e*\u00020\u000f*\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0019J\u001a\u0010\u001a\u001a\u00020\u0004*\u0004\u0018\u00010\u00052\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00160\u0019J \u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\u0019*\u0004\u0018\u00010\u00052\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00160\u0019J!\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0019\"\n\b\u0000\u0010\u000e\u0018\u0001*\u00020\u000f*\u0004\u0018\u00010\u0005H\u0086\bJ(\u0010\u001f\u001a\u0004\u0018\u0001H\u000e\"\n\b\u0000\u0010\u000e\u0018\u0001*\u00020\u000f*\u00020\u00052\u0006\u0010 \u001a\u00020\u0016H\u0086\b¢\u0006\u0002\u0010!J-\u0010\"\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0019\"\n\b\u0000\u0010\u000e\u0018\u0001*\u00020\u000f*\u00020\u00052\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00160\u0019H\u0086\bJ\u0016\u0010$\u001a\u00020\t*\u0004\u0018\u00010\u00052\b\u0010%\u001a\u0004\u0018\u00010&J)\u0010'\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0019\"\n\b\u0000\u0010\u000e\u0018\u0001*\u00020\u000f*\u0004\u0018\u00010\u00052\u0006\u0010(\u001a\u00020\u000bH\u0086\bJ3\u0010'\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0019\"\n\b\u0000\u0010\u000e\u0018\u0001*\u00020\u000f*\u0004\u0018\u00010\u00052\u0006\u0010(\u001a\u00020\u000b2\b\b\u0002\u0010)\u001a\u00020\u0016H\u0086\bJ)\u0010*\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0019\"\n\b\u0000\u0010\u000e\u0018\u0001*\u00020\u000f*\u0004\u0018\u00010\u00052\u0006\u0010(\u001a\u00020\u000bH\u0086\bJ@\u0010*\u001a\u00020\u0004\"\n\b\u0000\u0010\u000e\u0018\u0001*\u00020\u000f*\u0004\u0018\u00010\u00052\u0006\u0010(\u001a\u00020\u000b2\u0018\u0010+\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000e0\u0019\u0012\u0004\u0012\u00020\u00040,H\u0086\bø\u0001\u0000J\u001c\u0010-\u001a\n\u0012\u0004\u0012\u00020.\u0018\u00010\u0019*\u0004\u0018\u00010\u00052\u0006\u0010(\u001a\u00020\u000bJ*\u0010/\u001a\u0004\u0018\u0001H\u000e\"\n\b\u0000\u0010\u000e\u0018\u0001*\u00020\u000f*\u0004\u0018\u00010\u00052\u0006\u0010(\u001a\u00020\u000bH\u0086\b¢\u0006\u0002\u00100JF\u00101\u001a\u00020\t\"\n\b\u0000\u0010\u000e\u0018\u0001*\u00020\u000f*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u000e022\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002040,H\u0086\bø\u0001\u0000J#\u00105\u001a\u00020\u0004\"\b\b\u0000\u0010\u000e*\u00020\u000f*\u0004\u0018\u00010\u00052\u0006\u00106\u001a\u0002H\u000e¢\u0006\u0002\u0010\u0011J\u0016\u00105\u001a\u00020\u0004*\u0004\u0018\u00010\u00052\b\u00106\u001a\u0004\u0018\u000107J$\u00108\u001a\u00020\u0004*\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u00109\u001a\n\u0012\u0004\u0012\u000207\u0018\u000102J.\u0010:\u001a\u00020\t\"\b\b\u0000\u0010\u000e*\u00020\u000f*\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u00109\u001a\n\u0012\u0004\u0012\u0002H\u000e\u0018\u000102J#\u0010;\u001a\u00020\u0004\"\b\b\u0000\u0010\u000e*\u00020\u000f*\u0004\u0018\u00010\u00052\u0006\u0010\u0010\u001a\u0002H\u000e¢\u0006\u0002\u0010\u0011J\u001c\u0010<\u001a\u00020\t*\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006="}, m61528d2 = {"Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;", "", "()V", Constants.CLEAR_ATTRIBUTES, "", "Lcom/couchbase/lite/Collection;", "database", "Lcom/couchbase/lite/Database;", "count", "", "args", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "countAll", "delete", "T", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "model", "(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;)V", "deleteAll", "deleteByExpression", "deleteById", EditorConstants.ARGS_DOC_ID, "", "deleteInBatch", "models", "", "deleteListByIds", "docIdList", "loadDocumentList", "Lcom/couchbase/lite/Document;", "queryAll", "queryById", "id", "(Lcom/couchbase/lite/Collection;Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "queryByIdList", "ids", "queryDocumentCount", "expression", "Lcom/couchbase/lite/Expression;", "queryModelList", "queryArgs", "collectionName", "queryModelListInBatch", "batchCallback", "Lkotlin/Function1;", "queryResultList", "Lcom/couchbase/lite/Result;", "querySingleModel", "(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "saveByCondition", "", "predicate", "", "saveDocument", "document", "Lcom/couchbase/lite/MutableDocument;", "saveDocumentList", "documentList", "saveList", "update", "updateInBatch", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nCouchCollections.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,246:1\n48#1,5:247\n48#1,5:252\n52#1:257\n63#1:258\n48#1,5:259\n64#1,4:264\n48#1,5:268\n48#1,5:278\n137#1,3:283\n48#1,5:286\n2634#2:273\n766#2:275\n857#2,2:276\n2634#2:291\n2634#2:293\n1855#2,2:295\n1855#2,2:297\n1855#2,2:299\n1549#2:301\n1620#2,3:302\n1855#2,2:305\n1#3:274\n1#3:292\n1#3:294\n*S KotlinDebug\n*F\n+ 1 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n29#1:247,5\n39#1:252,5\n48#1:257\n57#1:258\n57#1:259,5\n57#1:264,4\n63#1:268,5\n139#1:278,5\n143#1:283,3\n143#1:286,5\n106#1:273\n128#1:275\n128#1:276,2\n170#1:291\n178#1:293\n118#1:295,2\n152#1:297,2\n204#1:299,2\n223#1:301\n223#1:302,3\n237#1:305,2\n106#1:274\n170#1:292\n178#1:294\n*E\n"})
/* loaded from: classes7.dex */
public final class CouchCollections {

    @NotNull
    public static final CouchCollections INSTANCE = new CouchCollections();

    private CouchCollections() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void deleteByExpression$lambda$16(Collection collection, CBQueryArgs args, Ref.LongRef count) {
        Intrinsics.checkNotNullParameter(args, "$args");
        Intrinsics.checkNotNullParameter(count, "$count");
        List<Result> allResults = QueryBuilder.select(SelectResult.expression(Meta.f16269id)).from(DataSource.collection(collection)).where(args.requireExpression()).execute().allResults();
        Intrinsics.checkNotNullExpressionValue(allResults, "allResults(...)");
        Iterator<T> it2 = allResults.iterator();
        while (it2.hasNext()) {
            String string = ((Result) it2.next()).getString("id");
            Intrinsics.checkNotNull(string);
            Document document = collection.getDocument(string);
            Intrinsics.checkNotNull(document);
            MutableDocument mutable = document.toMutable();
            Intrinsics.checkNotNullExpressionValue(mutable, "toMutable(...)");
            collection.delete(mutable);
        }
        count.element = allResults.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void deleteInBatch$lambda$14(Collection collection, List models) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(models, "$models");
        CouchCollections couchCollections = INSTANCE;
        List list = models;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((BaseReplicatorModel) it2.next()).getUniqueId());
        }
        couchCollections.deleteListByIds(collection, arrayList);
    }

    public static /* synthetic */ List queryModelList$default(CouchCollections couchCollections, Collection collection, CBQueryArgs queryArgs, String collectionName, int i, Object obj) {
        if ((i & 2) != 0) {
            collectionName = "_default";
        }
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        Intrinsics.checkNotNullParameter(collectionName, "collectionName");
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        List<Result> queryResultList = couchCollections.queryResultList(collection, queryArgs);
        Intrinsics.reifiedOperationMarker(4, "T");
        return couchUtils.fromResultList(queryResultList, BaseReplicatorModel.class, collectionName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void saveDocumentList$lambda$7(java.util.Collection collection, Collection collection2) {
        Iterator it2 = collection.iterator();
        while (it2.hasNext()) {
            INSTANCE.saveDocument(collection2, (MutableDocument) it2.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void saveList$lambda$4(java.util.Collection collection, Collection collection2) {
        Iterator it2 = collection.iterator();
        while (it2.hasNext()) {
            INSTANCE.saveDocument(collection2, CouchUtils.INSTANCE.toMutableDocument((BaseReplicatorModel) it2.next()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateInBatch$lambda$12(Collection collection, CBQueryArgs args, Ref.LongRef count) {
        Intrinsics.checkNotNullParameter(args, "$args");
        Intrinsics.checkNotNullParameter(count, "$count");
        List<Result> allResults = QueryBuilder.select(SelectResult.expression(Meta.f16269id)).from(DataSource.collection(collection)).where(args.requireExpression()).execute().allResults();
        Intrinsics.checkNotNullExpressionValue(allResults, "allResults(...)");
        Iterator<T> it2 = allResults.iterator();
        while (it2.hasNext()) {
            String string = ((Result) it2.next()).getString("id");
            Intrinsics.checkNotNull(string);
            Document document = collection.getDocument(string);
            Intrinsics.checkNotNull(document);
            final MutableDocument mutable = document.toMutable();
            Intrinsics.checkNotNullExpressionValue(mutable, "toMutable(...)");
            HashMap<String, Object> updateValues = args.getUpdateValues();
            final Function2<String, Object, Unit> function2 = new Function2<String, Object, Unit>() { // from class: com.onyx.android.sdk.data.couchbase.utils.CouchCollections$updateInBatch$1$1$1
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(String str, Object obj) {
                    invoke2(str, obj);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull String k, @Nullable Object obj) {
                    Intrinsics.checkNotNullParameter(k, "k");
                    MutableDocument.this.setValue(k, obj);
                }
            };
            updateValues.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.vce
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CouchCollections.updateInBatch$lambda$12$lambda$11$lambda$10(Function2.this, obj, obj2);
                }
            });
            collection.save(mutable);
        }
        count.element = allResults.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateInBatch$lambda$12$lambda$11$lambda$10(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj, obj2);
    }

    public final void clear(@NotNull Collection collection, @NotNull Database database) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(database, "database");
        deleteByExpression(collection, database, new CBQueryArgs().selectAll());
    }

    public final long count(@Nullable Collection collection, @NotNull CBQueryArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return queryDocumentCount(collection, args.getWhereEx());
    }

    public final long countAll(@Nullable Collection collection) {
        return queryDocumentCount(collection, new CBQueryArgs().selectAll().requireExpression());
    }

    public final <T extends BaseReplicatorModel> void delete(@Nullable Collection collection, @NotNull T model) {
        Intrinsics.checkNotNullParameter(model, "model");
        deleteById(collection, model.getUniqueId());
    }

    public final long deleteAll(@Nullable Collection collection) {
        if (collection == null) {
            return 0L;
        }
        Database database = collection.getDatabase();
        Intrinsics.checkNotNullExpressionValue(database, "getDatabase(...)");
        return deleteByExpression(collection, database, new CBQueryArgs().selectAll());
    }

    public final long deleteByExpression(@Nullable final Collection collection, @NotNull Database database, @NotNull final CBQueryArgs args) {
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(args, "args");
        if (collection == null) {
            return 0L;
        }
        final Ref.LongRef longRef = new Ref.LongRef();
        database.inBatch(new UnitOfWork() { // from class: com.sunia.HTREnginev2.xce
            @Override // com.couchbase.lite.UnitOfWork
            public final void run() {
                CouchCollections.deleteByExpression$lambda$16(Collection.this, args, longRef);
            }
        });
        return longRef.element;
    }

    public final void deleteById(@Nullable Collection collection, @NotNull String docId) {
        List<String> listOf;
        Intrinsics.checkNotNullParameter(docId, "docId");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(docId);
        deleteListByIds(collection, listOf);
    }

    public final <T extends BaseReplicatorModel> void deleteInBatch(@Nullable final Collection collection, @NotNull Database database, @NotNull final List<? extends T> models) {
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(models, "models");
        database.inBatch(new UnitOfWork() { // from class: com.sunia.HTREnginev2.yce
            @Override // com.couchbase.lite.UnitOfWork
            public final void run() {
                CouchCollections.deleteInBatch$lambda$14(Collection.this, models);
            }
        });
    }

    public final void deleteListByIds(@Nullable Collection collection, @NotNull List<String> docIdList) {
        Intrinsics.checkNotNullParameter(docIdList, "docIdList");
        if (collection == null) {
            return;
        }
        Iterator<T> it2 = loadDocumentList(collection, docIdList).iterator();
        while (it2.hasNext()) {
            collection.delete((Document) it2.next());
        }
    }

    @NotNull
    public final List<Document> loadDocumentList(@Nullable Collection collection, @NotNull List<String> docIdList) {
        List<Document> emptyList;
        Intrinsics.checkNotNullParameter(docIdList, "docIdList");
        if (collection == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = docIdList.iterator();
        while (it2.hasNext()) {
            CollectionKt.safeAdd(arrayList, collection.getDocument((String) it2.next()));
        }
        return arrayList;
    }

    public final /* synthetic */ <T extends BaseReplicatorModel> List<T> queryAll(Collection collection) {
        String str;
        CBQueryArgs selectAll = new CBQueryArgs().selectAll();
        if (collection == null || (str = collection.getName()) == null) {
            str = "_default";
        }
        Intrinsics.checkNotNull(str);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        List<Result> queryResultList = queryResultList(collection, selectAll);
        Intrinsics.reifiedOperationMarker(4, "T");
        return couchUtils.fromResultList(queryResultList, BaseReplicatorModel.class, str);
    }

    public final /* synthetic */ <T extends BaseReplicatorModel> T queryById(Collection collection, String id) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(id, "id");
        List asList = CollectionKt.asList(id);
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, asList));
        String name = collection.getName();
        if (name == null) {
            name = "_default";
        }
        Intrinsics.checkNotNull(name);
        List<Result> queryResultList = queryResultList(collection, andWith);
        Intrinsics.reifiedOperationMarker(4, "T");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) couchUtils.fromResultList(queryResultList, BaseReplicatorModel.class, name));
        return (T) firstOrNull;
    }

    public final /* synthetic */ <T extends BaseReplicatorModel> List<T> queryByIdList(Collection collection, List<String> ids) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(ids, "ids");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, ids));
        String name = collection.getName();
        if (name == null) {
            name = "_default";
        }
        Intrinsics.checkNotNull(name);
        List<Result> queryResultList = queryResultList(collection, andWith);
        Intrinsics.reifiedOperationMarker(4, "T");
        return couchUtils.fromResultList(queryResultList, BaseReplicatorModel.class, name);
    }

    public final long queryDocumentCount(@Nullable Collection collection, @Nullable Expression expression) {
        List<Result> list;
        Expression count;
        long j = 0;
        if (collection == null || expression == null) {
            return 0L;
        }
        try {
            count = AbstractFunction.count(Expression.string(CouchFieldKey.KEY_UNIQUE_ID));
            list = QueryBuilder.select(SelectResult.expression(count).m9771as("count")).from(DataSource.collection(collection)).where(expression).execute().allResults();
        } catch (CouchbaseLiteException e) {
            e.printStackTrace();
            list = null;
        }
        if (list != null) {
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                j += ((Result) it2.next()).getLong("count");
            }
        }
        Debug.INSTANCE.m32038d(collection.getName(), "count result list size:" + CollectionKt.getSize(list) + ",count:" + j, new Object[0]);
        return j;
    }

    public final /* synthetic */ <T extends BaseReplicatorModel> List<T> queryModelList(Collection collection, CBQueryArgs queryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        if (collection == null || (str = collection.getName()) == null) {
            str = "_default";
        }
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        List<Result> queryResultList = queryResultList(collection, queryArgs);
        Intrinsics.reifiedOperationMarker(4, "T");
        return couchUtils.fromResultList(queryResultList, BaseReplicatorModel.class, str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
    
        if (r1 == null) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ <T extends com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel> java.util.List<T> queryModelListInBatch(com.couchbase.lite.Collection r7, com.onyx.android.sdk.data.couchbase.CBQueryArgs r8) {
        /*
            r6 = this;
            java.lang.String r0 = "queryArgs"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
        La:
            if (r7 == 0) goto L12
            java.lang.String r1 = r7.getName()
            if (r1 != 0) goto L14
        L12:
            java.lang.String r1 = "_default"
        L14:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            com.onyx.android.sdk.data.couchbase.utils.CouchUtils r2 = com.onyx.android.sdk.data.couchbase.utils.CouchUtils.INSTANCE
            java.util.List r3 = r6.queryResultList(r7, r8)
            r4 = 4
            java.lang.String r5 = "T"
            kotlin.jvm.internal.Intrinsics.reifiedOperationMarker(r4, r5)
            java.lang.Class<com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel> r4 = com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel.class
            java.util.List r1 = r2.fromResultList(r3, r4, r1)
            r2 = r1
            java.util.List r2 = (java.util.List) r2
            java.util.Collection r2 = (java.util.Collection) r2
            r0.addAll(r2)
            int r2 = r8.getOffset()
            int r3 = r1.size()
            int r2 = r2 + r3
            r8.m72252setOffset(r2)
            int r1 = r1.size()
            int r2 = r8.getLimit()
            if (r1 >= r2) goto La
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.data.couchbase.utils.CouchCollections.queryModelListInBatch(com.couchbase.lite.Collection, com.onyx.android.sdk.data.couchbase.CBQueryArgs):java.util.List");
    }

    @Nullable
    public final List<Result> queryResultList(@Nullable Collection collection, @NotNull CBQueryArgs queryArgs) {
        List<Result> emptyList;
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        if (collection == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        SelectResult[] selectResults = queryArgs.getSelectResults();
        Select selectDistinct = queryArgs.getDistinct() ? QueryBuilder.selectDistinct((SelectResult[]) Arrays.copyOf(selectResults, selectResults.length)) : QueryBuilder.select((SelectResult[]) Arrays.copyOf(selectResults, selectResults.length));
        Intrinsics.checkNotNull(selectDistinct);
        try {
            From from = selectDistinct.from(DataSource.collection(collection));
            CouchUtils couchUtils = CouchUtils.INSTANCE;
            Intrinsics.checkNotNull(from);
            return couchUtils.fromBy(from, queryArgs).execute().allResults();
        } catch (CouchbaseLiteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public final /* synthetic */ <T extends BaseReplicatorModel> T querySingleModel(Collection collection, CBQueryArgs queryArgs) {
        String str;
        Object first;
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        queryArgs.m72250setDistinct(true);
        if (collection == null || (str = collection.getName()) == null) {
            str = "_default";
        }
        Intrinsics.checkNotNull(str);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        List<Result> queryResultList = queryResultList(collection, queryArgs);
        Intrinsics.reifiedOperationMarker(4, "T");
        List fromResultList = couchUtils.fromResultList(queryResultList, BaseReplicatorModel.class, str);
        if (!(!fromResultList.isEmpty())) {
            return null;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) fromResultList);
        return (T) first;
    }

    public final /* synthetic */ <T extends BaseReplicatorModel> long saveByCondition(Collection collection, Database database, java.util.Collection<? extends T> models, Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(models, "models");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (Object obj : models) {
            if (predicate.invoke((BaseReplicatorModel) obj).booleanValue()) {
                arrayList.add(obj);
            }
        }
        String simpleName = collection.getClass().getSimpleName();
        StringBuilder sb = new StringBuilder();
        sb.append("updated size: ");
        Intrinsics.reifiedOperationMarker(4, "T");
        sb.append(Reflection.getOrCreateKotlinClass(BaseReplicatorModel.class).getSimpleName());
        sb.append(' ');
        sb.append(arrayList.size());
        Log.d(simpleName, sb.toString());
        saveList(collection, database, arrayList);
        return arrayList.size();
    }

    public final <T extends BaseReplicatorModel> void saveDocument(@Nullable Collection collection, @NotNull T document) {
        Intrinsics.checkNotNullParameter(document, "document");
        saveDocument(collection, CouchUtils.INSTANCE.toMutableDocument(document));
    }

    public final void saveDocumentList(@Nullable final Collection collection, @NotNull Database database, @Nullable final java.util.Collection<MutableDocument> collection2) {
        Intrinsics.checkNotNullParameter(database, "database");
        if (collection2 == null || collection2.isEmpty()) {
            return;
        }
        database.inBatch(new UnitOfWork() { // from class: com.sunia.HTREnginev2.wce
            @Override // com.couchbase.lite.UnitOfWork
            public final void run() {
                CouchCollections.saveDocumentList$lambda$7(collection2, collection);
            }
        });
    }

    public final <T extends BaseReplicatorModel> long saveList(@Nullable final Collection collection, @NotNull Database database, @Nullable final java.util.Collection<? extends T> collection2) {
        Intrinsics.checkNotNullParameter(database, "database");
        if (collection2 == null || collection2.isEmpty()) {
            return 0L;
        }
        database.inBatch(new UnitOfWork() { // from class: com.sunia.HTREnginev2.zce
            @Override // com.couchbase.lite.UnitOfWork
            public final void run() {
                CouchCollections.saveList$lambda$4(collection2, collection);
            }
        });
        return collection2.size();
    }

    public final <T extends BaseReplicatorModel> void update(@Nullable Collection collection, @NotNull T model) {
        Intrinsics.checkNotNullParameter(model, "model");
        saveDocument(collection, (Collection) model);
    }

    public final long updateInBatch(@Nullable final Collection collection, @NotNull Database database, @NotNull final CBQueryArgs args) {
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(args, "args");
        if (collection == null) {
            return 0L;
        }
        final Ref.LongRef longRef = new Ref.LongRef();
        database.inBatch(new UnitOfWork() { // from class: com.sunia.HTREnginev2.uce
            @Override // com.couchbase.lite.UnitOfWork
            public final void run() {
                CouchCollections.updateInBatch$lambda$12(Collection.this, args, longRef);
            }
        });
        return longRef.element;
    }

    public final void saveDocument(@Nullable Collection collection, @Nullable MutableDocument mutableDocument) {
        if (mutableDocument == null || collection == null) {
            return;
        }
        collection.save(mutableDocument);
    }

    public final /* synthetic */ <T extends BaseReplicatorModel> List<T> queryModelList(Collection collection, CBQueryArgs queryArgs, String collectionName) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        Intrinsics.checkNotNullParameter(collectionName, "collectionName");
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        List<Result> queryResultList = queryResultList(collection, queryArgs);
        Intrinsics.reifiedOperationMarker(4, "T");
        return couchUtils.fromResultList(queryResultList, BaseReplicatorModel.class, collectionName);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
    
        if (r0 == null) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ <T extends com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel> void queryModelListInBatch(com.couchbase.lite.Collection r6, com.onyx.android.sdk.data.couchbase.CBQueryArgs r7, kotlin.jvm.functions.Function1<? super java.util.List<? extends T>, kotlin.Unit> r8) {
        /*
            r5 = this;
            java.lang.String r0 = "queryArgs"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.lang.String r0 = "batchCallback"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
        La:
            if (r6 == 0) goto L12
            java.lang.String r0 = r6.getName()
            if (r0 != 0) goto L14
        L12:
            java.lang.String r0 = "_default"
        L14:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            com.onyx.android.sdk.data.couchbase.utils.CouchUtils r1 = com.onyx.android.sdk.data.couchbase.utils.CouchUtils.INSTANCE
            java.util.List r2 = r5.queryResultList(r6, r7)
            r3 = 4
            java.lang.String r4 = "T"
            kotlin.jvm.internal.Intrinsics.reifiedOperationMarker(r3, r4)
            java.lang.Class<com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel> r3 = com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel.class
            java.util.List r0 = r1.fromResultList(r2, r3, r0)
            r8.invoke(r0)
            int r1 = r7.getOffset()
            int r2 = r0.size()
            int r1 = r1 + r2
            r7.m72252setOffset(r1)
            int r0 = r0.size()
            int r1 = r7.getLimit()
            if (r0 >= r1) goto La
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.data.couchbase.utils.CouchCollections.queryModelListInBatch(com.couchbase.lite.Collection, com.onyx.android.sdk.data.couchbase.CBQueryArgs, kotlin.jvm.functions.Function1):void");
    }
}
