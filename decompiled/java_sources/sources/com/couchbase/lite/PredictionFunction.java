package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.Expression;
import com.couchbase.lite.internal.utils.Preconditions;

/* loaded from: classes4.dex */
public final class PredictionFunction extends Expression {

    @NonNull
    private final Expression input;

    @NonNull
    private final Expression model;

    public PredictionFunction(@NonNull String str, @NonNull Expression expression) {
        this.model = Expression.string((String) Preconditions.assertNotNull(str, "model"));
        this.input = (Expression) Preconditions.assertNotNull(expression, "input");
    }

    @NonNull
    private Expression.FunctionExpression getPredictionFunction(@NonNull Expression... expressionArr) {
        return new Expression.FunctionExpression("PREDICTION()", expressionArr);
    }

    @Override // com.couchbase.lite.Expression
    @NonNull
    public Object asJSON() {
        return getPredictionFunction(this.model, this.input).asJSON();
    }

    @NonNull
    public Expression propertyPath(@NonNull String str) {
        return getPredictionFunction(this.model, this.input, Expression.string("." + ((String) Preconditions.assertNotNull(str, "path"))));
    }
}
