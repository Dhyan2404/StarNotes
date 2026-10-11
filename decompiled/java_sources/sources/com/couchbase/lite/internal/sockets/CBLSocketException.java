package com.couchbase.lite.internal.sockets;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes4.dex */
public class CBLSocketException extends RuntimeException {
    private final int code;
    private final int domain;

    public CBLSocketException(int i, int i2, @NonNull String str) {
        this(i, i2, str, null);
    }

    public int getCode() {
        return this.code;
    }

    public int getDomain() {
        return this.domain;
    }

    @Override // java.lang.Throwable
    @NonNull
    public String toString() {
        return IteratorUtils.f104923a + this.domain + ", " + this.code + "]: " + super.toString();
    }

    public CBLSocketException(int i, int i2, @NonNull String str, @Nullable Throwable th) {
        super(str, th);
        this.domain = i;
        this.code = i2;
    }
}
