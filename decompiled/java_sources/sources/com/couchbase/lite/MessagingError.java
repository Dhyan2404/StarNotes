package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.utils.Preconditions;

/* loaded from: classes4.dex */
public class MessagingError {

    @NonNull
    private final Exception error;
    private final boolean recoverable;

    public MessagingError(@NonNull Exception exc, boolean z) {
        Preconditions.assertNotNull(exc, "error");
        this.error = exc;
        this.recoverable = z;
    }

    @NonNull
    public Exception getError() {
        return this.error;
    }

    public boolean isRecoverable() {
        return this.recoverable;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("MessagingError");
        sb.append(this.recoverable ? "+" : "!");
        sb.append("{");
        sb.append(this.error);
        sb.append('}');
        return sb.toString();
    }
}
