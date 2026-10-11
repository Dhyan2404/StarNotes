package com.couchbase.lite.internal.replicator;

import androidx.annotation.NonNull;

/* loaded from: classes4.dex */
public class ConflictResolutionException extends Exception {
    public static final int FAILED_SELECTING_CONFLICTING_REVISION = -101;

    public ConflictResolutionException(@NonNull String str) {
        super(str);
    }
}
