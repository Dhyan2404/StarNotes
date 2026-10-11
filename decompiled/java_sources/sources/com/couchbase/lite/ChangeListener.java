package com.couchbase.lite;

import androidx.annotation.NonNull;

@FunctionalInterface
/* loaded from: classes4.dex */
public interface ChangeListener<T> {
    void changed(@NonNull T t);
}
