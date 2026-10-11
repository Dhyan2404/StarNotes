package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.sunia.HTREnginev2.pnf;
import javax.annotation.CheckForNull;

@GwtCompatible
@pnf
/* loaded from: classes6.dex */
public class UncheckedExecutionException extends RuntimeException {
    private static final long serialVersionUID = 0;

    public UncheckedExecutionException() {
    }

    public UncheckedExecutionException(@CheckForNull String str) {
        super(str);
    }

    public UncheckedExecutionException(@CheckForNull String str, @CheckForNull Throwable th) {
        super(str, th);
    }

    public UncheckedExecutionException(@CheckForNull Throwable th) {
        super(th);
    }
}
