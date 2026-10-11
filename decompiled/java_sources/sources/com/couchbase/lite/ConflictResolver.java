package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@FunctionalInterface
/* loaded from: classes4.dex */
public interface ConflictResolver {
    public static final ConflictResolver DEFAULT = new DefaultConflictResolver();

    @Nullable
    Document resolve(@NonNull Conflict conflict);
}
