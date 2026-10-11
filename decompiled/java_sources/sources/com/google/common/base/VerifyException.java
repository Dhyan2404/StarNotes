package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.sunia.HTREnginev2.aof;
import javax.annotation.CheckForNull;

@GwtCompatible
@aof
/* loaded from: classes6.dex */
public class VerifyException extends RuntimeException {
    public VerifyException() {
    }

    public VerifyException(@CheckForNull String str) {
        super(str);
    }

    public VerifyException(@CheckForNull Throwable th) {
        super(th);
    }

    public VerifyException(@CheckForNull String str, @CheckForNull Throwable th) {
        super(str, th);
    }
}
