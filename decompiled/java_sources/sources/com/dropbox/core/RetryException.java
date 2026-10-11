package com.dropbox.core;

import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class RetryException extends DbxException {
    private static final long serialVersionUID = 0;
    private final long backoffMillis;

    public RetryException(String str, String str2) {
        this(str, str2, 0L, TimeUnit.MILLISECONDS);
    }

    public long getBackoffMillis() {
        return this.backoffMillis;
    }

    public RetryException(String str, String str2, long j, TimeUnit timeUnit) {
        super(str, str2);
        this.backoffMillis = timeUnit.toMillis(j);
    }
}
