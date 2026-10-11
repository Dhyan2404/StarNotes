package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.sunia.HTREnginev2.pnf;
import javax.annotation.CheckForNull;

@GwtCompatible
@pnf
/* loaded from: classes6.dex */
public class ExecutionError extends Error {
    private static final long serialVersionUID = 0;

    public ExecutionError() {
    }

    public ExecutionError(@CheckForNull String str) {
        super(str);
    }

    public ExecutionError(@CheckForNull String str, @CheckForNull Error error) {
        super(str, error);
    }

    public ExecutionError(@CheckForNull Error error) {
        super(error);
    }
}
