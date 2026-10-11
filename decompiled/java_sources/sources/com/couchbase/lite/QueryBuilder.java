package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.utils.Preconditions;

/* loaded from: classes4.dex */
public final class QueryBuilder {
    private QueryBuilder() {
    }

    @NonNull
    public static Query createQuery(@NonNull String str, @NonNull Database database) {
        return database.createQuery(str);
    }

    @NonNull
    public static Select select(@NonNull SelectResult... selectResultArr) {
        Preconditions.assertNotNull(selectResultArr, "results");
        return new Select(false, selectResultArr);
    }

    @NonNull
    public static Select selectDistinct(@NonNull SelectResult... selectResultArr) {
        Preconditions.assertNotNull(selectResultArr, "results");
        return new Select(true, selectResultArr);
    }
}
