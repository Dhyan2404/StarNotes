package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.sunia.HTREnginev2.pnf;
import java.lang.Thread;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;

@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public final class UncaughtExceptionHandlers {

    @VisibleForTesting
    /* renamed from: com.google.common.util.concurrent.UncaughtExceptionHandlers$a */
    /* loaded from: classes6.dex */
    public static final class C6408a implements Thread.UncaughtExceptionHandler {

        /* renamed from: b */
        public static final Logger f35457b = Logger.getLogger(C6408a.class.getName());

        /* renamed from: a */
        public final Runtime f35458a;

        public C6408a(Runtime runtime) {
            this.f35458a = runtime;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            try {
                f35457b.log(Level.SEVERE, String.format(Locale.ROOT, "Caught an exception in %s.  Shutting down.", thread), th);
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    public static Thread.UncaughtExceptionHandler systemExit() {
        return new C6408a(Runtime.getRuntime());
    }
}
