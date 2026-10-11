package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes4.dex */
public class LiteCoreException extends Exception {
    public final int code;
    public final int domain;

    public LiteCoreException(int i, int i2, @Nullable String str) {
        super(str);
        this.domain = i;
        this.code = i2;
    }

    public static void throwException(int i, int i2, @Nullable String str) throws LiteCoreException {
        throw new LiteCoreException(i, i2, str);
    }

    public int getCode() {
        return this.code;
    }

    public int getDomain() {
        return this.domain;
    }

    @Override // java.lang.Throwable
    @NonNull
    public String getMessage() {
        return super.getMessage() + " [" + this.domain + ", " + this.code + IteratorUtils.f104924b;
    }
}
