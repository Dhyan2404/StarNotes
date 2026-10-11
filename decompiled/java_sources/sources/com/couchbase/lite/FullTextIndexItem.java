package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.utils.Preconditions;

/* loaded from: classes4.dex */
public final class FullTextIndexItem {

    @NonNull
    final Expression expression;

    private FullTextIndexItem(@NonNull Expression expression) {
        this.expression = expression;
    }

    @NonNull
    public static FullTextIndexItem property(@NonNull String str) {
        Preconditions.assertNotNull(str, "property");
        return new FullTextIndexItem(Expression.property(str));
    }
}
