package com.twelvemonkeys.io.enc;

import java.io.IOException;

/* loaded from: classes10.dex */
public class DecodeException extends IOException {
    public DecodeException(String str) {
        super(str);
    }

    public DecodeException(String str, Throwable th) {
        super(str);
        initCause(th);
    }

    public DecodeException(Throwable th) {
        this(th.getMessage(), th);
    }
}
