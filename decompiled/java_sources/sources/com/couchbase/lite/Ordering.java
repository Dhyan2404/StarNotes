package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public abstract class Ordering {

    /* loaded from: classes4.dex */
    public static class SortOrder extends Ordering {

        @NonNull
        private final Expression expression;
        private boolean isAscending = true;

        public SortOrder(@NonNull Expression expression) {
            this.expression = expression;
        }

        @Override // com.couchbase.lite.Ordering
        @Nullable
        public Object asJSON() {
            if (this.isAscending) {
                return this.expression.asJSON();
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add("DESC");
            arrayList.add(this.expression.asJSON());
            return arrayList;
        }

        @NonNull
        public Ordering ascending() {
            this.isAscending = true;
            return this;
        }

        @NonNull
        public Ordering descending() {
            this.isAscending = false;
            return this;
        }
    }

    @NonNull
    public static SortOrder expression(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, "expression");
        return new SortOrder(expression);
    }

    @NonNull
    public static SortOrder property(@NonNull String str) {
        Preconditions.assertNotNull(str, "property");
        return expression(Expression.property(str));
    }

    @Nullable
    public abstract Object asJSON();
}
