package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public class SelectResult {

    @NonNull
    private Expression selectExpression;

    /* renamed from: com.couchbase.lite.SelectResult$As */
    /* loaded from: classes4.dex */
    public static final class C2166As extends SelectResult {

        @Nullable
        private String alias;

        @NonNull
        /* renamed from: as */
        public C2166As m9771as(@NonNull String str) {
            Preconditions.assertNotNull(str, "alias");
            this.alias = str;
            return this;
        }

        @Override // com.couchbase.lite.SelectResult
        @Nullable
        public Object asJSON() {
            Object asJSON = super.asJSON();
            if (this.alias == null) {
                return asJSON;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add("AS");
            arrayList.add(asJSON);
            arrayList.add(this.alias);
            return arrayList;
        }

        private C2166As(@NonNull Expression expression) {
            super(expression);
        }
    }

    /* loaded from: classes4.dex */
    public static final class From extends SelectResult {
        @NonNull
        public SelectResult from(@NonNull String str) {
            Preconditions.assertNotNull(str, "alias");
            setExpression(PropertyExpression.allFrom(str));
            return this;
        }

        private From(@NonNull Expression expression) {
            super(expression);
        }
    }

    public SelectResult(@NonNull Expression expression) {
        this.selectExpression = expression;
    }

    @NonNull
    public static From all() {
        return new From(PropertyExpression.allFrom(null));
    }

    @NonNull
    public static C2166As expression(@NonNull Expression expression) {
        Preconditions.assertNotNull(expression, "expression");
        return new C2166As(expression);
    }

    @NonNull
    public static C2166As property(@NonNull String str) {
        Preconditions.assertNotNull(str, "property");
        return new C2166As(Expression.property(str));
    }

    @Nullable
    public Object asJSON() {
        return this.selectExpression.asJSON();
    }

    public final void setExpression(@NonNull Expression expression) {
        this.selectExpression = expression;
    }
}
