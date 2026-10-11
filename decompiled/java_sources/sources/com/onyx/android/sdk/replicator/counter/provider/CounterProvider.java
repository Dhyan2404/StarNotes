package com.onyx.android.sdk.replicator.counter.provider;

import com.couchbase.lite.Collection;
import com.couchbase.lite.Database;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.counter.data.CounterRecordState;
import com.onyx.android.sdk.replicator.counter.data.CounterType;
import com.onyx.android.sdk.replicator.counter.model.CounterRecordModel;
import com.onyx.android.sdk.replicator.counter.model.CounterTaskModel;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001b\u001a\u00020\u0019¢\u0006\u0004\b!\u0010\"J\u0014\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0014\u0010\u0007\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0014\u0010\b\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\tJ\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u00022\u0006\u0010\n\u001a\u00020\tJ\u0014\u0010\u000e\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\f0\u0002J\u0014\u0010\u000f\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\f0\u0002J\b\u0010\u0010\u001a\u0004\u0018\u00010\fJ\b\u0010\u0011\u001a\u0004\u0018\u00010\fJ\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u00022\u0006\u0010\u0013\u001a\u00020\u0012J\b\u0010\u0015\u001a\u00020\u0014H\u0002J\b\u0010\u0016\u001a\u00020\u0014H\u0002J\b\u0010\u0017\u001a\u00020\tH\u0002J\b\u0010\u0018\u001a\u00020\tH\u0002R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u001aR\u001b\u0010 \u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/counter/provider/CounterProvider;", "", "", "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;", "list", "", "saveTasks", "deleteTasks", "updateTasks", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "cbQueryArgs", "queryTasks", "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;", "queryHistory", "deleteHistory", "saveHistory", "queryUnFinishRecord", "queryLastCountUpRecord", "", "isCountUp", "Lcom/couchbase/lite/Collection;", "b", "a", "e", "d", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "holder", "Lcom/couchbase/lite/Database;", "Lkotlin/Lazy;", "c", "()Lcom/couchbase/lite/Database;", "database", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCounterProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CounterProvider.kt\ncom/onyx/android/sdk/replicator/counter/provider/CounterProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,126:1\n1855#2,2:127\n1855#2,2:129\n1855#2,2:131\n1855#2,2:143\n1855#2,2:145\n48#3,5:133\n48#3,5:138\n48#3,5:147\n48#3,5:152\n*S KotlinDebug\n*F\n+ 1 CounterProvider.kt\ncom/onyx/android/sdk/replicator/counter/provider/CounterProvider\n*L\n51#1:127,2\n59#1:129,2\n67#1:131,2\n86#1:143,2\n94#1:145,2\n74#1:133,5\n82#1:138,5\n105#1:147,5\n113#1:152,5\n*E\n"})
/* loaded from: classes8.dex */
public final class CounterProvider {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CouchHolder holder;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Lazy database;

    public CounterProvider(@NotNull CouchHolder holder) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(holder, "holder");
        this.holder = holder;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Database>() { // from class: com.onyx.android.sdk.replicator.counter.provider.CounterProvider$database$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Database invoke() {
                CouchHolder couchHolder;
                couchHolder = CounterProvider.this.holder;
                return couchHolder.ensureDB();
            }
        });
        this.database = lazy;
    }

    /* renamed from: a */
    public final Collection m34980a() {
        return this.holder.ensureCollection(SyncConstant.COLLECTION_TIMER_HISTORY);
    }

    /* renamed from: b */
    public final Collection m34981b() {
        return this.holder.ensureCollection(SyncConstant.COLLECTION_TIMER_TASK);
    }

    /* renamed from: c */
    public final Database m34982c() {
        return (Database) this.database.getValue();
    }

    /* renamed from: d */
    public final CBQueryArgs m34983d() {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.equalExpression("status", 0));
        cBQueryArgs.setVarargOrdering(couchUtils.getOrdering(CouchFieldKey.KEY_CREATE_AT, false));
        return cBQueryArgs;
    }

    public final void deleteHistory(@NotNull List<CounterRecordModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        for (CounterRecordModel counterRecordModel : list) {
            counterRecordModel.beforeSave();
            counterRecordModel.setStatus(1);
        }
        CouchCollections.INSTANCE.saveList(m34980a(), m34982c(), list);
    }

    public final void deleteTasks(@NotNull List<CounterTaskModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        for (CounterTaskModel counterTaskModel : list) {
            counterTaskModel.beforeSave();
            counterTaskModel.setStatus(1);
        }
        CouchCollections.INSTANCE.saveList(m34981b(), m34982c(), list);
    }

    /* renamed from: e */
    public final CBQueryArgs m34984e() {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.equalExpression("status", 0));
        cBQueryArgs.setVarargOrdering(couchUtils.getOrdering(CouchFieldKey.KEY_CREATE_AT, false));
        return cBQueryArgs;
    }

    @NotNull
    public final List<CounterRecordModel> queryHistory(@NotNull CBQueryArgs cbQueryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(cbQueryArgs, "cbQueryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m34980a = m34980a();
        if (m34980a == null || (str = m34980a.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m34980a, cbQueryArgs), CounterRecordModel.class, str);
    }

    @Nullable
    public final CounterRecordModel queryLastCountUpRecord() {
        String str;
        Object firstOrNull;
        CBQueryArgs m34984e = m34984e();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        m34984e.andWith(couchUtils.equalExpression("state", Integer.valueOf(CounterRecordState.DONE.ordinal())));
        m34984e.andWith(couchUtils.equalExpression("type", Integer.valueOf(CounterType.COUNT_UP.ordinal())));
        m34984e.setLimit(1);
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m34980a = m34980a();
        if (m34980a == null || (str = m34980a.getName()) == null) {
            str = "_default";
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) couchUtils.fromResultList(couchCollections.queryResultList(m34980a, m34984e), CounterRecordModel.class, str));
        return (CounterRecordModel) firstOrNull;
    }

    @NotNull
    public final List<CounterTaskModel> queryTasks(@NotNull CBQueryArgs cbQueryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(cbQueryArgs, "cbQueryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m34981b = m34981b();
        if (m34981b == null || (str = m34981b.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m34981b, cbQueryArgs), CounterTaskModel.class, str);
    }

    @Nullable
    public final CounterRecordModel queryUnFinishRecord() {
        String str;
        Object firstOrNull;
        CBQueryArgs m34984e = m34984e();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        m34984e.andWith(couchUtils.notEqualExpression("state", Integer.valueOf(CounterRecordState.DONE.ordinal())));
        m34984e.setLimit(1);
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m34980a = m34980a();
        if (m34980a == null || (str = m34980a.getName()) == null) {
            str = "_default";
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) couchUtils.fromResultList(couchCollections.queryResultList(m34980a, m34984e), CounterRecordModel.class, str));
        return (CounterRecordModel) firstOrNull;
    }

    public final void saveHistory(@NotNull List<CounterRecordModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        for (CounterRecordModel counterRecordModel : list) {
            counterRecordModel.ensureUniqueIdExist();
            counterRecordModel.beforeSave();
        }
        CouchCollections.INSTANCE.saveList(m34980a(), m34982c(), list);
    }

    public final void saveTasks(@NotNull List<CounterTaskModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        for (CounterTaskModel counterTaskModel : list) {
            counterTaskModel.ensureUniqueIdExist();
            counterTaskModel.beforeSave();
        }
        CouchCollections.INSTANCE.saveList(m34981b(), m34982c(), list);
    }

    public final void updateTasks(@NotNull List<CounterTaskModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            ((CounterTaskModel) it2.next()).beforeSave();
        }
        CouchCollections.INSTANCE.saveList(m34981b(), m34982c(), list);
    }

    @NotNull
    public final List<CounterRecordModel> queryHistory(boolean isCountUp) {
        CBQueryArgs m34983d = m34983d();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        m34983d.andWith(couchUtils.equalExpression("state", Integer.valueOf(CounterRecordState.DONE.ordinal())));
        if (isCountUp) {
            m34983d.andWith(couchUtils.equalExpression("type", Integer.valueOf(CounterType.COUNT_UP.ordinal())));
        } else {
            m34983d.andWith(couchUtils.notEqualExpression("type", Integer.valueOf(CounterType.COUNT_UP.ordinal())));
        }
        return queryHistory(m34983d);
    }

    @NotNull
    public final List<CounterTaskModel> queryTasks() {
        return queryTasks(m34984e());
    }
}
