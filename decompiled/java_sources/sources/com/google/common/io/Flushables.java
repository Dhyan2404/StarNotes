package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.sunia.HTREnginev2.ynf;
import java.io.Flushable;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

@Beta
@GwtIncompatible
@ynf
/* loaded from: classes6.dex */
public final class Flushables {

    /* renamed from: a */
    public static final Logger f34922a = Logger.getLogger(Flushables.class.getName());

    public static void flush(Flushable flushable, boolean z) throws IOException {
        try {
            flushable.flush();
        } catch (IOException e) {
            if (!z) {
                throw e;
            }
            f34922a.log(Level.WARNING, "IOException thrown while flushing Flushable.", (Throwable) e);
        }
    }

    public static void flushQuietly(Flushable flushable) {
        try {
            flush(flushable, true);
        } catch (IOException e) {
            f34922a.log(Level.SEVERE, "IOException should not have been thrown.", (Throwable) e);
        }
    }
}
