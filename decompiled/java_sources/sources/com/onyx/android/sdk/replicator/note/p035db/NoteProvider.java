package com.onyx.android.sdk.replicator.note.p035db;

import com.couchbase.lite.Collection;
import com.couchbase.lite.Expression;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J,\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\b\b\u0000\u0010\u0007*\u00020\b2\u0006\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00070\fJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\nJ<\u0010\u000f\u001a\u00020\u0010\"\b\b\u0000\u0010\u0007*\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00070\u00062\u0014\b\u0002\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u00020\u00100\u0015J4\u0010\u000f\u001a\u00020\u0010\"\b\b\u0000\u0010\u0007*\u00020\b2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00070\u00062\u0014\b\u0002\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u00020\u00100\u0015J\n\u0010\u0016\u001a\u00020\u0012*\u00020\u0000¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "couchHolder", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "loadModelList", "", "T", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "queryArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "cls", "Ljava/lang/Class;", "queryCount", "", "saveSyncModelList", "", "collection", "Lcom/couchbase/lite/Collection;", "list", "consumer", "Lkotlin/Function1;", "getTreeCollection", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nNoteProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NoteProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,63:1\n1855#2,2:64\n*S KotlinDebug\n*F\n+ 1 NoteProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NoteProvider\n*L\n49#1:64,2\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteProvider extends BaseCouchProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
    }

    public static /* synthetic */ void saveSyncModelList$default(NoteProvider noteProvider, List list, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = new Function1<Object, Unit>() { // from class: com.onyx.android.sdk.replicator.note.db.NoteProvider$saveSyncModelList$1
                public final void invoke(@NotNull Object it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Object obj2) {
                    invoke(obj2);
                    return Unit.INSTANCE;
                }
            };
        }
        noteProvider.saveSyncModelList(list, function1);
    }

    @NotNull
    public final Collection getTreeCollection(@NotNull NoteProvider noteProvider) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        return noteProvider.ensureCollection("_default");
    }

    @NotNull
    public final <T extends BaseReplicatorModel> List<T> loadModelList(@NotNull CBQueryArgs queryArgs, @NotNull Class<T> cls) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        Intrinsics.checkNotNullParameter(cls, "cls");
        return CouchUtils.INSTANCE.queryModelList(getDatabase(), queryArgs, cls);
    }

    public final long queryCount(@NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        Expression whereEx = queryArgs.getWhereEx();
        if (whereEx != null) {
            return CouchUtils.INSTANCE.queryDocumentCount(getDatabase(), whereEx);
        }
        return 0L;
    }

    public final <T extends BaseReplicatorModel> void saveSyncModelList(@NotNull List<? extends T> list, @NotNull Function1<? super T, Unit> consumer) {
        Collection defaultCollection;
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        if (CollectionKt.isNullOrEmpty(list) || (defaultCollection = getDatabase().getDefaultCollection()) == null) {
            return;
        }
        saveSyncModelList(defaultCollection, list, consumer);
    }

    public static /* synthetic */ void saveSyncModelList$default(NoteProvider noteProvider, Collection collection, List list, Function1 function1, int i, Object obj) {
        if ((i & 4) != 0) {
            function1 = new Function1<Object, Unit>() { // from class: com.onyx.android.sdk.replicator.note.db.NoteProvider$saveSyncModelList$3
                public final void invoke(@NotNull Object it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Object obj2) {
                    invoke(obj2);
                    return Unit.INSTANCE;
                }
            };
        }
        noteProvider.saveSyncModelList(collection, list, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends BaseReplicatorModel> void saveSyncModelList(@NotNull Collection collection, @NotNull List<? extends T> list, @NotNull Function1<? super T, Unit> consumer) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        if (CollectionKt.isNullOrEmpty(list)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            BaseReplicatorModel baseReplicatorModel = (BaseReplicatorModel) it2.next();
            baseReplicatorModel.setUser(getCouchHolder().getUserId());
            baseReplicatorModel.setDbId(getCouchHolder().getDbName());
            consumer.invoke(baseReplicatorModel);
            CollectionKt.safeAdd(arrayList, CouchUtils.INSTANCE.toMutableDocument(baseReplicatorModel));
        }
        CouchCollections.INSTANCE.saveDocumentList(collection, getDatabase(), arrayList);
    }
}
