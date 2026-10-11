package com.couchbase.lite;

import androidx.annotation.NonNull;

@FunctionalInterface
/* loaded from: classes4.dex */
public interface QueryChangeListener extends ChangeListener<QueryChange> {
    @Override // com.couchbase.lite.ChangeListener
    void changed(@NonNull QueryChange queryChange);
}
