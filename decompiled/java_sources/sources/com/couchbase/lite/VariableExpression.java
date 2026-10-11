package com.couchbase.lite;

import androidx.annotation.NonNull;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public final class VariableExpression extends Expression {

    @NonNull
    private final String name;

    public VariableExpression(@NonNull String str) {
        this.name = str;
    }

    @Override // com.couchbase.lite.Expression
    @NonNull
    public Object asJSON() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("?" + this.name);
        return arrayList;
    }

    @NonNull
    public String getName() {
        return this.name;
    }
}
