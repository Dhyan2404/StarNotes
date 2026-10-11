package com.sunia.HTREnginev2;

import java.io.IOException;
import java.util.function.BiFunction;
import onyx.org.apache.commons.io.IOIndexedException;

/* loaded from: classes11.dex */
public final /* synthetic */ class yci implements BiFunction {
    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return new IOIndexedException(((Integer) obj).intValue(), (IOException) obj2);
    }
}
