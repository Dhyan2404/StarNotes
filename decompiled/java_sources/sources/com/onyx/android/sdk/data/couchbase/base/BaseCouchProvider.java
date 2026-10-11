package com.onyx.android.sdk.data.couchbase.base;

import com.blankj.utilcode.util.LogUtils;
import com.couchbase.lite.Collection;
import com.couchbase.lite.Database;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "", "couchHolder", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "getCouchHolder", "()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "database", "Lcom/couchbase/lite/Database;", "getDatabase", "()Lcom/couchbase/lite/Database;", "ensureCollection", "Lcom/couchbase/lite/Collection;", "collectionName", "", "ensureCollectionImpl", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public abstract class BaseCouchProvider {

    @NotNull
    private final CouchHolder couchHolder;

    public BaseCouchProvider(@NotNull CouchHolder couchHolder) {
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
        this.couchHolder = couchHolder;
    }

    private final Collection ensureCollectionImpl(String collectionName) {
        Collection collection = getDatabase().getCollection(collectionName);
        if (collection != null) {
            return collection;
        }
        Collection createCollection = getDatabase().createCollection(collectionName);
        Intrinsics.checkNotNullExpressionValue(createCollection, "createCollection(...)");
        return createCollection;
    }

    @NotNull
    public final Collection ensureCollection(@NotNull String collectionName) {
        String stackTraceToString;
        Intrinsics.checkNotNullParameter(collectionName, "collectionName");
        try {
            return ensureCollectionImpl(collectionName);
        } catch (Exception e) {
            e.printStackTrace();
            StringBuilder sb = new StringBuilder();
            sb.append("ensureCollection fail, collectionName=");
            sb.append(collectionName);
            sb.append(" ,dbName=");
            sb.append(this.couchHolder.getDbName());
            sb.append(",exception:");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(e);
            sb.append(stackTraceToString);
            LogUtils.file(this.getClass().getSimpleName(), sb.toString());
            return this.ensureCollectionImpl(collectionName);
        }
    }

    @NotNull
    public final CouchHolder getCouchHolder() {
        return this.couchHolder;
    }

    @NotNull
    public final Database getDatabase() {
        return this.couchHolder.ensureDB();
    }
}
