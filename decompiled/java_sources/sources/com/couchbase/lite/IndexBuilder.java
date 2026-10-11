package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;

/* loaded from: classes4.dex */
public final class IndexBuilder extends AbstractIndexBuilder {
    private IndexBuilder() {
    }

    @NonNull
    public static PredictiveIndex predictiveIndex(@NonNull String str, @NonNull Expression expression, @Nullable List<String> list) {
        return new PredictiveIndex(str, expression, list);
    }
}
