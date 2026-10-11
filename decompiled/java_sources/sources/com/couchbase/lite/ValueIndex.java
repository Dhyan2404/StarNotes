package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.QueryLanguage;
import com.couchbase.lite.internal.core.C4Collection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public final class ValueIndex extends Index {

    @NonNull
    private final List<ValueIndexItem> indexItems;

    public ValueIndex(@NonNull ValueIndexItem... valueIndexItemArr) {
        this.indexItems = Arrays.asList(valueIndexItemArr);
    }

    @Override // com.couchbase.lite.AbstractIndex
    public void createIndex(@NonNull String str, @NonNull C4Collection c4Collection) throws LiteCoreException, CouchbaseLiteException {
        c4Collection.createValueIndex(str, QueryLanguage.JSON.getCode(), getIndexSpec(), null);
    }

    @Override // com.couchbase.lite.Index
    @NonNull
    public List<Object> getJson() {
        ArrayList arrayList = new ArrayList();
        Iterator<ValueIndexItem> it2 = this.indexItems.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().viExpression.asJSON());
        }
        return arrayList;
    }
}
