package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.HashMap;

/* loaded from: classes4.dex */
public class Join {

    @NonNull
    private final DataSource dataSource;

    @NonNull
    private final Type type;

    /* renamed from: com.couchbase.lite.Join$On */
    /* loaded from: classes4.dex */
    public static final class C2163On extends Join {
        private Expression onExpression;

        @Override // com.couchbase.lite.Join
        @NonNull
        public Object asJSON() {
            HashMap hashMap = new HashMap();
            hashMap.put("JOIN", ((Join) this).type.getTag());
            hashMap.put("ON", this.onExpression.asJSON());
            hashMap.putAll(((Join) this).dataSource.asJSON());
            return hashMap;
        }

        @NonNull
        /* renamed from: on */
        public Join m9767on(@NonNull Expression expression) {
            Preconditions.assertNotNull(expression, "expression");
            this.onExpression = expression;
            return this;
        }

        private C2163On(@NonNull Type type, @NonNull DataSource dataSource) {
            super(type, dataSource);
        }
    }

    /* loaded from: classes4.dex */
    public enum Type {
        INNER("INNER"),
        LEFT_OUTER("LEFT OUTER"),
        CROSS("CROSS");


        @NonNull
        private final String tag;

        Type(@NonNull String str) {
            this.tag = str;
        }

        @NonNull
        public String getTag() {
            return this.tag;
        }
    }

    @NonNull
    public static Join crossJoin(@NonNull DataSource dataSource) {
        Preconditions.assertNotNull(dataSource, "data source");
        return new Join(Type.CROSS, dataSource);
    }

    @NonNull
    public static C2163On innerJoin(@NonNull DataSource dataSource) {
        Preconditions.assertNotNull(dataSource, "data source");
        return new C2163On(Type.INNER, dataSource);
    }

    @NonNull
    public static C2163On join(@NonNull DataSource dataSource) {
        return innerJoin(dataSource);
    }

    @NonNull
    public static C2163On leftJoin(@NonNull DataSource dataSource) {
        Preconditions.assertNotNull(dataSource, "data source");
        return leftOuterJoin(dataSource);
    }

    @NonNull
    public static C2163On leftOuterJoin(@NonNull DataSource dataSource) {
        Preconditions.assertNotNull(dataSource, "data source");
        return new C2163On(Type.LEFT_OUTER, dataSource);
    }

    @NonNull
    public Object asJSON() {
        HashMap hashMap = new HashMap();
        hashMap.put("JOIN", this.type.getTag());
        hashMap.putAll(this.dataSource.asJSON());
        return hashMap;
    }

    private Join(@NonNull Type type, @NonNull DataSource dataSource) {
        Preconditions.assertNotNull(type, "type");
        Preconditions.assertNotNull(dataSource, "data source");
        this.type = type;
        this.dataSource = dataSource;
    }
}
