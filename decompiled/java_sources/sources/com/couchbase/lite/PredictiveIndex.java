package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.core.C4Collection;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public final class PredictiveIndex extends Index {

    @NonNull
    private final Expression input;

    @NonNull
    private final String model;

    @Nullable
    private final List<String> properties;

    public PredictiveIndex(@NonNull String str, @NonNull Expression expression, @Nullable List<String> list) {
        this.model = (String) Preconditions.assertNotNull(str, "model");
        this.input = (Expression) Preconditions.assertNotNull(expression, "input");
        this.properties = list;
    }

    @Override // com.couchbase.lite.AbstractIndex
    public void createIndex(@NonNull String str, @NonNull C4Collection c4Collection) throws LiteCoreException, CouchbaseLiteException {
        c4Collection.createPredictiveIndex(str, getIndexSpec());
    }

    @Override // com.couchbase.lite.Index
    @NonNull
    public List<Object> getJson() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("PREDICTION()");
        arrayList.add(this.model);
        arrayList.add(this.input.asJSON());
        List<String> list = this.properties;
        if (list != null) {
            Iterator<String> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add("." + it2.next());
            }
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(arrayList);
        return arrayList2;
    }
}
