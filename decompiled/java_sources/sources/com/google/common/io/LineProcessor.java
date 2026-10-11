package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.dwk;
import com.sunia.HTREnginev2.ynf;
import java.io.IOException;

@Beta
@GwtIncompatible
@ynf
/* loaded from: classes6.dex */
public interface LineProcessor<T> {
    @dwk
    T getResult();

    @CanIgnoreReturnValue
    boolean processLine(String str) throws IOException;
}
