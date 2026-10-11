package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.Expression;
import com.couchbase.lite.internal.utils.Preconditions;

/* loaded from: classes4.dex */
public final class ArrayFunction {
    private ArrayFunction() {
    }

    @NonNull
    public static Expression contains(@NonNull Expression expression, @NonNull Expression expression2) {
        return new Expression.FunctionExpression("ARRAY_CONTAINS()", (Expression) Preconditions.assertNotNull(expression, "expression"), (Expression) Preconditions.assertNotNull(expression2, "value"));
    }

    @NonNull
    public static Expression length(@NonNull Expression expression) {
        return new Expression.FunctionExpression("ARRAY_LENGTH()", (Expression) Preconditions.assertNotNull(expression, "expression"));
    }
}
