package org.apache.commons.lang3.concurrent;

/* loaded from: classes12.dex */
public class ConcurrentException extends Exception {
    private static final long serialVersionUID = 6622707671812226130L;

    public ConcurrentException() {
    }

    public ConcurrentException(Throwable th) {
        super(ConcurrentUtils.m67297a(th));
    }

    public ConcurrentException(String str, Throwable th) {
        super(str, ConcurrentUtils.m67297a(th));
    }
}
