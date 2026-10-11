package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.sunia.HTREnginev2.snf;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
@Deprecated
/* loaded from: classes6.dex */
public class ComputationException extends RuntimeException {
    private static final long serialVersionUID = 0;

    public ComputationException(@CheckForNull Throwable th) {
        super(th);
    }
}
