package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.Expression;
import com.couchbase.lite.internal.utils.Preconditions;

/* loaded from: classes4.dex */
public final class Function extends AbstractFunction {
    @NonNull
    public static Expression cosineDistance(@NonNull Expression expression, @NonNull Expression expression2) {
        return new Expression.FunctionExpression("COSINE_DISTANCE()", (Expression) Preconditions.assertNotNull(expression, "expression1"), (Expression) Preconditions.assertNotNull(expression2, "expression2"));
    }

    @NonNull
    public static Expression euclideanDistance(@NonNull Expression expression, @NonNull Expression expression2) {
        Preconditions.assertNotNull(expression2, "expression2");
        return new Expression.FunctionExpression("EUCLIDEAN_DISTANCE()", (Expression) Preconditions.assertNotNull(expression, "expression1"), (Expression) Preconditions.assertNotNull(expression2, "expression2"));
    }

    @NonNull
    public static PredictionFunction prediction(@NonNull String str, @NonNull Expression expression) {
        return new PredictionFunction(str, expression);
    }

    @NonNull
    public static Expression squaredEuclideanDistance(@NonNull Expression expression, @NonNull Expression expression2) {
        return new Expression.FunctionExpression("EUCLIDEAN_DISTANCE()", (Expression) Preconditions.assertNotNull(expression, "expression1"), (Expression) Preconditions.assertNotNull(expression2, "expression2"), Expression.intValue(2));
    }
}
