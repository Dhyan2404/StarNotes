package com.couchbase.lite;

import androidx.annotation.NonNull;

@FunctionalInterface
/* loaded from: classes4.dex */
public interface DocumentChangeListener extends ChangeListener<DocumentChange> {
    @Override // com.couchbase.lite.ChangeListener
    void changed(@NonNull DocumentChange documentChange);
}
