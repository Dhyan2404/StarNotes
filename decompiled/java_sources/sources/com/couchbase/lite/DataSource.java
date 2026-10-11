package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.utils.Preconditions;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public class DataSource {

    @Nullable
    protected String alias;

    @NonNull
    private final Collection source;

    /* renamed from: com.couchbase.lite.DataSource$As */
    /* loaded from: classes4.dex */
    public static class C2158As extends DataSource {
        public C2158As(@NonNull Collection collection) {
            super(collection);
        }

        @NonNull
        /* renamed from: as */
        public DataSource m9755as(@NonNull String str) {
            Preconditions.assertNotNull(str, "alias");
            this.alias = str;
            return this;
        }
    }

    @NonNull
    public static C2158As collection(@NonNull Collection collection) {
        Preconditions.assertNotNull(collection, "collection");
        return new C2158As(collection);
    }

    @NonNull
    @SuppressFBWarnings({"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
    @Deprecated
    public static C2158As database(@NonNull Database database) {
        Preconditions.assertNotNull(database, "database");
        try {
            C2158As c2158As = new C2158As(database.getDefaultCollection());
            c2158As.m9755as(database.getName());
            return c2158As;
        } catch (CouchbaseLiteException e) {
            throw new IllegalArgumentException("Database not open", e);
        }
    }

    @NonNull
    public Map<String, Object> asJSON() {
        HashMap hashMap = new HashMap();
        hashMap.put("COLLECTION", this.source.getFullName());
        String str = this.alias;
        if (str != null) {
            hashMap.put("AS", str);
        }
        return hashMap;
    }

    @NonNull
    public AbstractDatabase getDatabase() {
        return this.source.getDatabase();
    }

    private DataSource(@NonNull Collection collection) {
        this.source = collection;
    }
}
