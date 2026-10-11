package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.utils.Preconditions;

/* loaded from: classes4.dex */
public final class ValueIndexItem {
    final Expression viExpression;

    private ValueIndexItem(@NonNull Expression expression) {
        this.viExpression = expression;
    }

    @NonNull
    public static ValueIndexItem expression(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, "expression");
        return new ValueIndexItem(expression);
    }

    @NonNull
    public static ValueIndexItem property(@NonNull String str) {
        Preconditions.assertNotNull(str, "property");
        return new ValueIndexItem(Expression.property(str));
    }
}
