package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.Expression;
import com.couchbase.lite.internal.utils.Preconditions;
import com.google.firebase.analytics.FirebaseAnalytics;

/* loaded from: classes4.dex */
public final class FullTextFunction {
    private FullTextFunction() {
    }

    @NonNull
    public static Expression match(@NonNull IndexExpression indexExpression, @NonNull String str) {
        return new Expression.IdxExpression("MATCH()", (IndexExpression) Preconditions.assertNotNull(indexExpression, FirebaseAnalytics.Param.INDEX), Expression.string(str));
    }

    @NonNull
    public static Expression rank(@NonNull IndexExpression indexExpression) {
        return new Expression.IdxExpression("RANK()", (IndexExpression) Preconditions.assertNotNull(indexExpression, FirebaseAnalytics.Param.INDEX), new Expression[0]);
    }

    @NonNull
    @Deprecated
    public static Expression rank(@NonNull String str) {
        return new Expression.FunctionExpression("RANK()", Expression.string((String) Preconditions.assertNotNull(str, "indexName")));
    }

    @NonNull
    @Deprecated
    public static Expression match(@NonNull String str, @NonNull String str2) {
        return new Expression.FunctionExpression("MATCH()", Expression.string((String) Preconditions.assertNotNull(str, "indexName")), Expression.string(str2));
    }
}
