package androidx.work;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public abstract class Logger {

    /* renamed from: a */
    public static final Object f11398a = new Object();

    /* renamed from: b */
    public static volatile Logger f11399b = null;

    /* renamed from: c */
    public static final String f11400c = "WM-";

    /* renamed from: d */
    public static final int f11401d = 23;

    /* renamed from: e */
    public static final int f11402e = 20;

    public Logger(int loggingLevel) {
    }

    @NonNull
    public static Logger get() {
        Logger logger;
        synchronized (f11398a) {
            if (f11399b == null) {
                f11399b = new LogcatLogger(3);
            }
            logger = f11399b;
        }
        return logger;
    }

    public static void setLogger(@NonNull Logger logger) {
        synchronized (f11398a) {
            f11399b = logger;
        }
    }

    @NonNull
    public static String tagWithPrefix(@NonNull String tag) {
        int length = tag.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append(f11400c);
        int i = f11402e;
        if (length >= i) {
            sb.append(tag.substring(0, i));
        } else {
            sb.append(tag);
        }
        return sb.toString();
    }

    public abstract void debug(@NonNull String tag, @NonNull String message);

    public abstract void debug(@NonNull String tag, @NonNull String message, @NonNull Throwable throwable);

    public abstract void error(@NonNull String tag, @NonNull String message);

    public abstract void error(@NonNull String tag, @NonNull String message, @NonNull Throwable throwable);

    public abstract void info(@NonNull String tag, @NonNull String message);

    public abstract void info(@NonNull String tag, @NonNull String message, @NonNull Throwable throwable);

    public abstract void verbose(@NonNull String tag, @NonNull String message);

    public abstract void verbose(@NonNull String tag, @NonNull String message, @NonNull Throwable throwable);

    public abstract void warning(@NonNull String tag, @NonNull String message);

    public abstract void warning(@NonNull String tag, @NonNull String message, @NonNull Throwable throwable);

    /* loaded from: classes3.dex */
    public static class LogcatLogger extends Logger {

        /* renamed from: f */
        public final int f11403f;

        public LogcatLogger(int loggingLevel) {
            super(loggingLevel);
            this.f11403f = loggingLevel;
        }

        @Override // androidx.work.Logger
        public void debug(@NonNull String tag, @NonNull String message) {
            if (this.f11403f <= 3) {
                Log.d(tag, message);
            }
        }

        @Override // androidx.work.Logger
        public void error(@NonNull String tag, @NonNull String message) {
            if (this.f11403f <= 6) {
                Log.e(tag, message);
            }
        }

        @Override // androidx.work.Logger
        public void info(@NonNull String tag, @NonNull String message) {
            if (this.f11403f <= 4) {
                Log.i(tag, message);
            }
        }

        @Override // androidx.work.Logger
        public void verbose(@NonNull String tag, @NonNull String message) {
            if (this.f11403f <= 2) {
                Log.v(tag, message);
            }
        }

        @Override // androidx.work.Logger
        public void warning(@NonNull String tag, @NonNull String message) {
            if (this.f11403f <= 5) {
                Log.w(tag, message);
            }
        }

        @Override // androidx.work.Logger
        public void debug(@NonNull String tag, @NonNull String message, @NonNull Throwable throwable) {
            if (this.f11403f <= 3) {
                Log.d(tag, message, throwable);
            }
        }

        @Override // androidx.work.Logger
        public void error(@NonNull String tag, @NonNull String message, @NonNull Throwable throwable) {
            if (this.f11403f <= 6) {
                Log.e(tag, message, throwable);
            }
        }

        @Override // androidx.work.Logger
        public void info(@NonNull String tag, @NonNull String message, @NonNull Throwable throwable) {
            if (this.f11403f <= 4) {
                Log.i(tag, message, throwable);
            }
        }

        @Override // androidx.work.Logger
        public void verbose(@NonNull String tag, @NonNull String message, @NonNull Throwable throwable) {
            if (this.f11403f <= 2) {
                Log.v(tag, message, throwable);
            }
        }

        @Override // androidx.work.Logger
        public void warning(@NonNull String tag, @NonNull String message, @NonNull Throwable throwable) {
            if (this.f11403f <= 5) {
                Log.w(tag, message, throwable);
            }
        }
    }
}
