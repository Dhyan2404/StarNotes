package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.utils.JSONUtils;
import java.util.List;
import org.json.JSONException;

/* loaded from: classes4.dex */
public abstract class Index extends AbstractIndex {
    @Override // com.couchbase.lite.AbstractIndex
    @NonNull
    public String getIndexSpec() throws CouchbaseLiteException {
        try {
            return JSONUtils.toJSON((List<?>) getJson()).toString();
        } catch (JSONException e) {
            throw new CouchbaseLiteException("Error encoding JSON", e);
        }
    }

    @NonNull
    public abstract List<Object> getJson();
}
