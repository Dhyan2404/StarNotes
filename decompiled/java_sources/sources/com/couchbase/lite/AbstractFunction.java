package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.Expression;
import com.couchbase.lite.internal.utils.Preconditions;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.o6o;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public abstract class AbstractFunction {
    @NonNull
    public static Expression abs(@NonNull Expression expression) {
        return sexpr("ABS()", expression);
    }

    @NonNull
    public static Expression acos(@NonNull Expression expression) {
        return sexpr("ACOS()", expression);
    }

    @NonNull
    public static Expression asin(@NonNull Expression expression) {
        return sexpr("ASIN()", expression);
    }

    @NonNull
    public static Expression atan(@NonNull Expression expression) {
        return sexpr("ATAN()", expression);
    }

    @NonNull
    public static Expression atan2(@NonNull Expression expression, @NonNull Expression expression2) {
        return expr("ATAN2()", (Expression) Preconditions.assertNotNull(expression, "y"), (Expression) Preconditions.assertNotNull(expression2, "x"));
    }

    @NonNull
    public static Expression avg(@NonNull Expression expression) {
        return sexpr("AVG()", expression);
    }

    @NonNull
    public static Expression ceil(@NonNull Expression expression) {
        return sexpr("CEIL()", expression);
    }

    @NonNull
    public static Expression contains(@NonNull Expression expression, @NonNull Expression expression2) {
        return expr("CONTAINS()", (Expression) Preconditions.assertNotNull(expression, "operand"), (Expression) Preconditions.assertNotNull(expression2, Keywords.FUNC_SUBSTRING_STRING));
    }

    @NonNull
    public static Expression cos(@NonNull Expression expression) {
        return sexpr("COS()", expression);
    }

    @NonNull
    public static Expression count(@Nullable Expression expression) {
        if (expression == null) {
            expression = Expression.value(".");
        }
        return sexpr("COUNT()", expression);
    }

    @NonNull
    public static Expression degrees(@NonNull Expression expression) {
        return sexpr("DEGREES()", expression);
    }

    @NonNull
    /* renamed from: e */
    public static Expression m9711e() {
        return expr("E()", null);
    }

    @NonNull
    public static Expression exp(@NonNull Expression expression) {
        return sexpr("EXP()", expression);
    }

    @NonNull
    private static Expression.FunctionExpression expr(@NonNull String str, @NonNull Expression... expressionArr) {
        return new Expression.FunctionExpression(str, expressionArr);
    }

    @NonNull
    public static Expression floor(@NonNull Expression expression) {
        return sexpr("FLOOR()", expression);
    }

    @NonNull
    public static Expression length(@NonNull Expression expression) {
        return sexpr("LENGTH()", expression);
    }

    @NonNull
    /* renamed from: ln */
    public static Expression m9712ln(@NonNull Expression expression) {
        return sexpr("LN()", expression);
    }

    @NonNull
    public static Expression log(@NonNull Expression expression) {
        return sexpr("LOG()", expression);
    }

    @NonNull
    public static Expression lower(@NonNull Expression expression) {
        return sexpr("LOWER()", expression);
    }

    @NonNull
    public static Expression ltrim(@NonNull Expression expression) {
        return sexpr("LTRIM()", expression);
    }

    @NonNull
    public static Expression max(@NonNull Expression expression) {
        return sexpr("MAX()", expression);
    }

    @NonNull
    public static Expression millisToString(@NonNull Expression expression) {
        return sexpr("MILLIS_TO_STR()", expression);
    }

    @NonNull
    public static Expression millisToUTC(@NonNull Expression expression) {
        return sexpr("MILLIS_TO_UTC()", expression);
    }

    @NonNull
    public static Expression min(@NonNull Expression expression) {
        return sexpr("MIN()", expression);
    }

    @NonNull
    /* renamed from: pi */
    public static Expression m9713pi() {
        return expr("PI()", null);
    }

    @NonNull
    public static Expression power(@NonNull Expression expression, @NonNull Expression expression2) {
        return expr("POWER()", (Expression) Preconditions.assertNotNull(expression, gon.f71271X), (Expression) Preconditions.assertNotNull(expression2, "exponent"));
    }

    @NonNull
    public static Expression radians(@NonNull Expression expression) {
        return sexpr("RADIANS()", expression);
    }

    @NonNull
    public static Expression round(@NonNull Expression expression) {
        return sexpr("ROUND()", expression);
    }

    @NonNull
    public static Expression rtrim(@NonNull Expression expression) {
        return sexpr("RTRIM()", expression);
    }

    @NonNull
    private static Expression.FunctionExpression sexpr(@NonNull String str, @NonNull Expression expression) {
        return new Expression.FunctionExpression(str, (Expression) Preconditions.assertNotNull(expression, "operand expression"));
    }

    @NonNull
    public static Expression sign(@NonNull Expression expression) {
        return sexpr("SIGN()", expression);
    }

    @NonNull
    public static Expression sin(@NonNull Expression expression) {
        return sexpr("SIN()", expression);
    }

    @NonNull
    public static Expression sqrt(@NonNull Expression expression) {
        return sexpr("SQRT()", expression);
    }

    @NonNull
    public static Expression stringToMillis(@NonNull Expression expression) {
        return sexpr("STR_TO_MILLIS()", expression);
    }

    @NonNull
    public static Expression stringToUTC(@NonNull Expression expression) {
        return sexpr("STR_TO_UTC()", expression);
    }

    @NonNull
    public static Expression sum(@NonNull Expression expression) {
        return sexpr("SUM()", expression);
    }

    @NonNull
    public static Expression tan(@NonNull Expression expression) {
        return sexpr("TAN()", expression);
    }

    @NonNull
    public static Expression trim(@NonNull Expression expression) {
        return sexpr("TRIM()", expression);
    }

    @NonNull
    public static Expression trunc(@NonNull Expression expression) {
        return sexpr("TRUNC()", expression);
    }

    @NonNull
    public static Expression upper(@NonNull Expression expression) {
        return sexpr("UPPER()", expression);
    }

    @NonNull
    public static Expression round(@NonNull Expression expression, @NonNull Expression expression2) {
        return expr("ROUND()", (Expression) Preconditions.assertNotNull(expression, "operand"), (Expression) Preconditions.assertNotNull(expression2, o6o.f79406p));
    }

    @NonNull
    public static Expression trunc(@NonNull Expression expression, @NonNull Expression expression2) {
        return expr("TRUNC()", (Expression) Preconditions.assertNotNull(expression, "operand"), (Expression) Preconditions.assertNotNull(expression2, o6o.f79406p));
    }
}
