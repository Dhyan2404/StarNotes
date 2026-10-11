package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.core.C4Collection;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes4.dex */
public final class ArrayIndexConfiguration extends IndexConfiguration {
    private final String path;

    public ArrayIndexConfiguration(@NonNull String str) {
        this(str, null);
    }

    @NonNull
    private static List<String> aggregateExpressions(@NonNull String str, @Nullable String[] strArr) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        if (strArr != null) {
            arrayList.addAll(Arrays.asList(strArr));
        }
        return arrayList;
    }

    @NonNull
    private static List<String> checkExpressions(@Nullable List<String> list) {
        String str;
        if (list == null) {
            return Collections.singletonList("");
        }
        if (list.size() == 1 && (str = list.get(0)) != null && str.isEmpty()) {
            throw new IllegalArgumentException("An expression list should not contain a single empty string. Use null to specify no expressions.");
        }
        return list;
    }

    @Override // com.couchbase.lite.AbstractIndex
    public void createIndex(@NonNull String str, @NonNull C4Collection c4Collection) throws LiteCoreException, CouchbaseLiteException {
        c4Collection.createArrayIndex(str, this.path, getIndexSpec());
    }

    @NonNull
    public String getPath() {
        return this.path;
    }

    public ArrayIndexConfiguration(@NonNull String str, @NonNull String str2, @Nullable String... strArr) {
        this(str, aggregateExpressions(str2, strArr));
    }

    public ArrayIndexConfiguration(@NonNull String str, @Nullable List<String> list) {
        super(checkExpressions(list));
        this.path = (String) Preconditions.assertNotNull(str, "path");
    }
}
