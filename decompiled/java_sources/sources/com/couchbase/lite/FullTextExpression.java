package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.utils.Preconditions;
import com.google.android.gms.actions.SearchIntents;
import java.util.Arrays;

@Deprecated
/* loaded from: classes4.dex */
public final class FullTextExpression {

    @NonNull
    private final String name;

    /* loaded from: classes4.dex */
    public static final class FullTextMatchExpression extends Expression {

        @NonNull
        private final String indexName;

        @NonNull
        private final String text;

        public FullTextMatchExpression(@NonNull String str, @NonNull String str2) {
            this.indexName = str;
            this.text = str2;
        }

        @Override // com.couchbase.lite.Expression
        @NonNull
        public Object asJSON() {
            return Arrays.asList("MATCH()", this.indexName, this.text);
        }
    }

    private FullTextExpression(@NonNull String str) {
        this.name = str;
    }

    @NonNull
    @Deprecated
    public static FullTextExpression index(@NonNull String str) {
        Preconditions.assertNotNull(str, "name");
        return new FullTextExpression(str);
    }

    @NonNull
    @Deprecated
    public Expression match(@NonNull String str) {
        Preconditions.assertNotNull(str, SearchIntents.EXTRA_QUERY);
        return new FullTextMatchExpression(this.name, str);
    }
}
