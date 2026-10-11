package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public final class PropertyExpression extends Expression {
    static final String PROPS_ALL = "";

    @Nullable
    private final String fromAlias;

    @NonNull
    private final String keyPath;

    public PropertyExpression(@NonNull String str) {
        this(str, null);
    }

    @NonNull
    public static PropertyExpression allFrom(@Nullable String str) {
        return new PropertyExpression("", str);
    }

    @Override // com.couchbase.lite.Expression
    @NonNull
    public Object asJSON() {
        String str;
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        sb.append(".");
        if (this.fromAlias == null) {
            str = "";
        } else {
            str = this.fromAlias + ".";
        }
        sb.append(str);
        sb.append(this.keyPath);
        arrayList.add(sb.toString());
        return arrayList;
    }

    @NonNull
    public Expression from(@NonNull String str) {
        Preconditions.assertNotNull(str, "fromAlias");
        return new PropertyExpression(this.keyPath, str);
    }

    private PropertyExpression(@NonNull String str, @Nullable String str2) {
        this.keyPath = str;
        this.fromAlias = str2;
    }
}
