package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.QueryLanguage;
import com.couchbase.lite.internal.core.C4Collection;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes4.dex */
public final class ValueIndexConfiguration extends IndexConfiguration {

    @Nullable
    private String where;

    public ValueIndexConfiguration(@NonNull String... strArr) {
        this((List<String>) Arrays.asList(strArr));
    }

    @Override // com.couchbase.lite.AbstractIndex
    public void createIndex(@NonNull String str, @NonNull C4Collection c4Collection) throws LiteCoreException {
        c4Collection.createValueIndex(str, QueryLanguage.N1QL.getCode(), getIndexSpec(), this.where);
    }

    @Nullable
    public String getWhere() {
        return this.where;
    }

    @NonNull
    public ValueIndexConfiguration setWhere(@Nullable String str) {
        this.where = str;
        return this;
    }

    public ValueIndexConfiguration(@NonNull List<String> list) {
        super(list);
    }
}
