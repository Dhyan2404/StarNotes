package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.ArrayExpression;
import com.couchbase.lite.internal.utils.Preconditions;

/* loaded from: classes4.dex */
public final class ArrayExpressionIn {

    @NonNull
    private final ArrayExpression.QuantifiesType type;

    @NonNull
    private final VariableExpression variable;

    public ArrayExpressionIn(@NonNull ArrayExpression.QuantifiesType quantifiesType, @NonNull VariableExpression variableExpression) {
        this.type = quantifiesType;
        this.variable = variableExpression;
    }

    @NonNull
    /* renamed from: in */
    public ArrayExpressionSatisfies m9733in(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, "expression");
        return new ArrayExpressionSatisfies(this.type, this.variable, expression);
    }
}
