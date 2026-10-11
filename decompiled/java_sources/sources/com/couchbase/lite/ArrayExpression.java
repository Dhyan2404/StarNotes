package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.utils.Preconditions;
import com.sun.org.apache.xalan.internal.templates.Constants;

/* loaded from: classes4.dex */
public final class ArrayExpression {

    /* loaded from: classes4.dex */
    public enum QuantifiesType {
        ANY,
        ANY_AND_EVERY,
        EVERY
    }

    private ArrayExpression() {
    }

    @NonNull
    public static ArrayExpressionIn any(@NonNull VariableExpression variableExpression) {
        Preconditions.assertNotNull(variableExpression, Constants.ELEMNAME_VARIABLE_STRING);
        return new ArrayExpressionIn(QuantifiesType.ANY, variableExpression);
    }

    @NonNull
    public static ArrayExpressionIn anyAndEvery(@NonNull VariableExpression variableExpression) {
        Preconditions.assertNotNull(variableExpression, Constants.ELEMNAME_VARIABLE_STRING);
        return new ArrayExpressionIn(QuantifiesType.ANY_AND_EVERY, variableExpression);
    }

    @NonNull
    public static ArrayExpressionIn every(@NonNull VariableExpression variableExpression) {
        Preconditions.assertNotNull(variableExpression, Constants.ELEMNAME_VARIABLE_STRING);
        return new ArrayExpressionIn(QuantifiesType.EVERY, variableExpression);
    }

    @NonNull
    public static VariableExpression variable(@NonNull String str) {
        Preconditions.assertNotNull(str, "name");
        return new VariableExpression(str);
    }
}
