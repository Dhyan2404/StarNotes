package com.couchbase.lite.internal.logging;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.LogLevel;
import com.couchbase.lite.internal.CouchbaseLiteInternal;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Collections;
import java.util.FormatterClosedException;
import java.util.HashMap;
import java.util.IllegalFormatException;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes4.dex */
public final class Log {
    private static final String DEFAULT_MSG = "Unknown error";
    public static final String LOG_HEADER = "[JAVA] ";
    private static volatile Map<String, String> errorMessages;

    private Log() {
    }

    /* renamed from: d */
    public static void m9896d(@NonNull LogDomain logDomain, @NonNull String str) {
        log(LogLevel.DEBUG, logDomain, null, str, new Object[0]);
    }

    /* renamed from: e */
    public static void m9900e(@NonNull LogDomain logDomain, @NonNull String str) {
        log(LogLevel.ERROR, logDomain, null, str, new Object[0]);
    }

    @NonNull
    private static String formatMessage(@NonNull String str, @NonNull Object... objArr) {
        try {
            return String.format(Locale.ENGLISH, str, objArr);
        } catch (FormatterClosedException | IllegalFormatException unused) {
            return str;
        }
    }

    @NonNull
    public static String formatStackTrace(@NonNull Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return System.lineSeparator() + stringWriter;
    }

    @NonNull
    public static String formatStandardMessage(@Nullable String str, @NonNull Object... objArr) {
        return String.format(Locale.ENGLISH, lookupStandardMessage(str), objArr);
    }

    /* renamed from: i */
    public static void m9904i(@NonNull LogDomain logDomain, @NonNull String str) {
        log(LogLevel.INFO, logDomain, null, str, new Object[0]);
    }

    public static void info(@NonNull LogDomain logDomain, @NonNull String str, @Nullable Throwable th) {
        m9905i(logDomain, str, th);
    }

    public static void init() {
        setStandardErrorMessages(CouchbaseLiteInternal.loadErrorMessages());
    }

    private static void log(@NonNull LogLevel logLevel, @NonNull LogDomain logDomain, @Nullable Throwable th, @NonNull String str, @Nullable Object... objArr) {
        String lookupStandardMessage;
        if (logLevel == null) {
            logLevel = LogLevel.INFO;
        }
        LogSinksImpl logSinks = LogSinksImpl.getLogSinks();
        if (logSinks == null || !logSinks.shouldLog(logLevel, logDomain)) {
            return;
        }
        if (str == null) {
            lookupStandardMessage = "";
        } else {
            lookupStandardMessage = lookupStandardMessage(str);
            if (objArr != null && objArr.length > 0) {
                lookupStandardMessage = formatMessage(lookupStandardMessage, objArr);
            }
        }
        if (th != null) {
            lookupStandardMessage = lookupStandardMessage + formatStackTrace(th);
        }
        if (logDomain == null) {
            logDomain = LogDomain.DATABASE;
        }
        logSinks.writeToSinks(logLevel, logDomain, LOG_HEADER + lookupStandardMessage);
    }

    @NonNull
    public static String lookupStandardMessage(@Nullable String str) {
        if (str == null) {
            return DEFAULT_MSG;
        }
        String str2 = errorMessages == null ? str : errorMessages.get(str);
        return str2 == null ? str : str2;
    }

    @VisibleForTesting
    public static void setStandardErrorMessages(@NonNull Map<String, String> map) {
        errorMessages = Collections.unmodifiableMap(new HashMap(map));
    }

    /* renamed from: w */
    public static void m9908w(@NonNull LogDomain logDomain, @NonNull String str) {
        log(LogLevel.WARNING, logDomain, null, str, new Object[0]);
    }

    /* renamed from: d */
    public static void m9897d(@NonNull LogDomain logDomain, @NonNull String str, @Nullable Throwable th) {
        log(LogLevel.DEBUG, logDomain, th, str, new Object[0]);
    }

    /* renamed from: e */
    public static void m9901e(@NonNull LogDomain logDomain, @NonNull String str, @Nullable Throwable th) {
        log(LogLevel.ERROR, logDomain, th, str, new Object[0]);
    }

    /* renamed from: i */
    public static void m9905i(@NonNull LogDomain logDomain, @NonNull String str, @Nullable Throwable th) {
        log(LogLevel.INFO, logDomain, th, str, new Object[0]);
    }

    /* renamed from: w */
    public static void m9909w(@NonNull LogDomain logDomain, @NonNull String str, @Nullable Throwable th) {
        log(LogLevel.WARNING, logDomain, th, str, new Object[0]);
    }

    /* renamed from: d */
    public static void m9899d(@NonNull LogDomain logDomain, @NonNull String str, Object... objArr) {
        log(LogLevel.DEBUG, logDomain, null, str, objArr);
    }

    /* renamed from: e */
    public static void m9903e(@NonNull LogDomain logDomain, @NonNull String str, Object... objArr) {
        log(LogLevel.ERROR, logDomain, null, str, objArr);
    }

    /* renamed from: i */
    public static void m9907i(@NonNull LogDomain logDomain, @NonNull String str, Object... objArr) {
        log(LogLevel.INFO, logDomain, null, str, objArr);
    }

    /* renamed from: w */
    public static void m9911w(@NonNull LogDomain logDomain, @NonNull String str, Object... objArr) {
        log(LogLevel.WARNING, logDomain, null, str, objArr);
    }

    /* renamed from: d */
    public static void m9898d(@NonNull LogDomain logDomain, @NonNull String str, @Nullable Throwable th, Object... objArr) {
        log(LogLevel.DEBUG, logDomain, th, str, objArr);
    }

    /* renamed from: e */
    public static void m9902e(@NonNull LogDomain logDomain, @NonNull String str, @Nullable Throwable th, Object... objArr) {
        log(LogLevel.ERROR, logDomain, th, str, objArr);
    }

    /* renamed from: i */
    public static void m9906i(@NonNull LogDomain logDomain, @NonNull String str, @Nullable Throwable th, Object... objArr) {
        log(LogLevel.INFO, logDomain, th, str, objArr);
    }

    /* renamed from: w */
    public static void m9910w(@NonNull LogDomain logDomain, @NonNull String str, @Nullable Throwable th, Object... objArr) {
        log(LogLevel.WARNING, logDomain, th, str, objArr);
    }
}
