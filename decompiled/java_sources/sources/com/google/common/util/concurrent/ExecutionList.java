package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.sunia.HTREnginev2.pnf;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public final class ExecutionList {

    /* renamed from: c */
    public static final Logger f35316c = Logger.getLogger(ExecutionList.class.getName());

    /* renamed from: a */
    @CheckForNull
    @GuardedBy("this")
    public C6358a f35317a;

    /* renamed from: b */
    @GuardedBy("this")
    public boolean f35318b;

    /* renamed from: com.google.common.util.concurrent.ExecutionList$a */
    /* loaded from: classes6.dex */
    public static final class C6358a {

        /* renamed from: a */
        public final Runnable f35319a;

        /* renamed from: b */
        public final Executor f35320b;

        /* renamed from: c */
        @CheckForNull
        public C6358a f35321c;

        public C6358a(Runnable runnable, Executor executor, @CheckForNull C6358a c6358a) {
            this.f35319a = runnable;
            this.f35320b = executor;
            this.f35321c = c6358a;
        }
    }

    /* renamed from: a */
    public static void m27701a(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f35316c;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(valueOf.length() + 57 + valueOf2.length());
            sb.append("RuntimeException while executing runnable ");
            sb.append(valueOf);
            sb.append(" with executor ");
            sb.append(valueOf2);
            logger.log(level, sb.toString(), (Throwable) e);
        }
    }

    public void add(Runnable runnable, Executor executor) {
        Preconditions.checkNotNull(runnable, "Runnable was null.");
        Preconditions.checkNotNull(executor, "Executor was null.");
        synchronized (this) {
            if (this.f35318b) {
                m27701a(runnable, executor);
            } else {
                this.f35317a = new C6358a(runnable, executor, this.f35317a);
            }
        }
    }

    public void execute() {
        synchronized (this) {
            if (this.f35318b) {
                return;
            }
            this.f35318b = true;
            C6358a c6358a = this.f35317a;
            C6358a c6358a2 = null;
            this.f35317a = null;
            while (c6358a != null) {
                C6358a c6358a3 = c6358a.f35321c;
                c6358a.f35321c = c6358a2;
                c6358a2 = c6358a;
                c6358a = c6358a3;
            }
            while (c6358a2 != null) {
                m27701a(c6358a2.f35319a, c6358a2.f35320b);
                c6358a2 = c6358a2.f35321c;
            }
        }
    }
}
