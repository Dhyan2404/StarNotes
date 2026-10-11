package com.couchbase.lite.internal.logging;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.couchbase.lite.CouchbaseLiteError;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.LogLevel;
import com.couchbase.lite.internal.CouchbaseLiteInternal;
import com.couchbase.lite.internal.core.C4Log;
import com.couchbase.lite.internal.core.CBLVersion;
import com.couchbase.lite.internal.logging.LogSinksImpl;
import com.couchbase.lite.logging.BaseLogSink;
import com.couchbase.lite.logging.ConsoleLogSink;
import com.couchbase.lite.logging.FileLogSink;
import com.couchbase.lite.logging.LogSinks;
import com.sunia.HTREnginev2.cyi;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class LogSinksImpl implements LogSinks {
    private static final int LOG_QUEUE_MAX = 16;

    @NonNull
    private static final AtomicReference<LogSinksImpl> LOG_SINKS = new AtomicReference<>();

    @NonNull
    private final C4Log c4Log;

    @NonNull
    private final AtomicReference<LogLevel> callbackLevel;

    @Nullable
    private ConsoleLogSink consoleLogSink;

    @NonNull
    private final AtomicReference<Executor> customLogQueue;

    @Nullable
    private BaseLogSink customLogSink;

    @Nullable
    private FileLogSink fileLogSink;

    @NonNull
    private final AtomicReference<Set<LogDomain>> logDomains;

    @NonNull
    private final AtomicReference<LogLevel> logLevel;
    private Boolean usedLegacyLogging;

    @NonNull
    private final AtomicBoolean warned;

    private LogSinksImpl(@NonNull C4Log c4Log) {
        LogLevel logLevel = LogLevel.NONE;
        this.logLevel = new AtomicReference<>(logLevel);
        this.callbackLevel = new AtomicReference<>(logLevel);
        this.logDomains = new AtomicReference<>(new HashSet());
        this.warned = new AtomicBoolean();
        this.customLogQueue = new AtomicReference<>();
        this.c4Log = c4Log;
    }

    private void forbidNewAndLegacyLogging(@Nullable AbstractLogSink abstractLogSink) {
        if (abstractLogSink == null) {
            return;
        }
        Boolean bool = this.usedLegacyLogging;
        Boolean valueOf = Boolean.valueOf(abstractLogSink.isLegacy());
        this.usedLegacyLogging = valueOf;
        if (bool != null && !bool.equals(valueOf)) {
            throw new CouchbaseLiteError("Cannot mix new and legacy logging");
        }
    }

    @Nullable
    public static LogSinksImpl getLogSinks() {
        return LOG_SINKS.get();
    }

    public static void initLogging() {
        Log.init();
        LogSinksImpl logSinksImpl = new LogSinksImpl(C4Log.create());
        ConsoleLogSink consoleLogSink = new ConsoleLogSink(CouchbaseLiteInternal.debugging() ? LogLevel.DEBUG : LogLevel.WARNING, LogDomain.ALL);
        logSinksImpl.setConsole(consoleLogSink);
        consoleLogSink.writeLog(LogLevel.INFO, LogDomain.DATABASE, "CBL-ANDROID Initialized: " + CBLVersion.getVersionInfo());
        LOG_SINKS.set(logSinksImpl);
        logSinksImpl.usedLegacyLogging = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$writeToLocalLogSinks$0(BaseLogSink baseLogSink, LogLevel logLevel, LogDomain logDomain, String str) {
        try {
            baseLogSink.log(logLevel, logDomain, str);
        } catch (Exception e) {
            logFailure(TypedValues.Custom.NAME, e);
        }
    }

    private void log(@Nullable AbstractLogSink abstractLogSink, @NonNull LogLevel logLevel, @NonNull LogDomain logDomain, @NonNull String str) {
        if (abstractLogSink != null) {
            abstractLogSink.log(logLevel, logDomain, str);
        }
    }

    public static void logFailure(@NonNull String str, @Nullable Exception exc) {
        ConsoleLogSink consoleLogSink;
        String str2 = "Log failure: " + str;
        if (exc != null) {
            str2 = str2 + "\n" + Log.formatStackTrace(exc);
        }
        LogSinksImpl logSinksImpl = LOG_SINKS.get();
        if (logSinksImpl != null && (consoleLogSink = logSinksImpl.consoleLogSink) != null) {
            try {
                consoleLogSink.log(LogLevel.WARNING, LogDomain.DATABASE, str2);
                return;
            } catch (Exception unused) {
            }
        }
        System.err.println("WARNING: " + str2);
    }

    public static void logFromCore(@NonNull LogLevel logLevel, @NonNull LogDomain logDomain, @Nullable String str) {
        LogSinksImpl logSinksImpl = LOG_SINKS.get();
        if (logSinksImpl == null) {
            return;
        }
        logSinksImpl.writeToLocalLogSinks(logLevel, logDomain, str);
    }

    public static void logToCore(@NonNull LogLevel logLevel, @NonNull LogDomain logDomain, @NonNull String str) {
        LogSinksImpl logSinksImpl = LOG_SINKS.get();
        if (logSinksImpl == null) {
            return;
        }
        logSinksImpl.c4Log.logToCore(logDomain, logLevel, str);
    }

    private void setLogFilter() {
        LogLevel logLevel;
        HashSet hashSet = new HashSet();
        LogLevel logLevel2 = LogLevel.NONE;
        ConsoleLogSink consoleLogSink = this.consoleLogSink;
        if (consoleLogSink != null) {
            logLevel = consoleLogSink.getLevel();
            if (logLevel.compareTo(logLevel2) >= 0) {
                logLevel = logLevel2;
            }
            hashSet.addAll(consoleLogSink.getDomains());
        } else {
            logLevel = logLevel2;
        }
        BaseLogSink baseLogSink = this.customLogSink;
        if (baseLogSink != null) {
            LogLevel level = baseLogSink.getLevel();
            if (level.compareTo(logLevel) < 0) {
                logLevel = level;
            }
            hashSet.addAll(baseLogSink.getDomains());
        }
        FileLogSink fileLogSink = this.fileLogSink;
        if (fileLogSink != null) {
            logLevel2 = fileLogSink.getLevel();
        }
        if (logLevel.compareTo(logLevel2) < 0) {
            logLevel2 = logLevel;
        }
        if (this.callbackLevel.getAndSet(logLevel) != logLevel) {
            this.c4Log.setCallbackLevel(logLevel);
        }
        this.logLevel.set(logLevel2);
        this.logDomains.set(hashSet);
        this.c4Log.setLogFilter(logLevel2, logLevel, hashSet);
    }

    private void warnIfNoFileLogSink() {
        FileLogSink fileLogSink = this.fileLogSink;
        if (fileLogSink == null || fileLogSink.getLevel() == LogLevel.NONE || this.warned.getAndSet(true)) {
            LogLevel logLevel = LogLevel.WARNING;
            LogDomain logDomain = LogDomain.DATABASE;
            new ConsoleLogSink(logLevel, logDomain, new LogDomain[0]).writeLog(logLevel, logDomain, "Database.log.getFile().getConfig() is now null: logging is disabled.  Log files required for product support are not being generated.");
        }
    }

    public static void warnNoFileLogSink() {
        LogSinksImpl logSinksImpl = LOG_SINKS.get();
        if (logSinksImpl == null) {
            return;
        }
        logSinksImpl.warnIfNoFileLogSink();
    }

    @NonNull
    @VisibleForTesting
    public C4Log getC4Log() {
        return this.c4Log;
    }

    @Override // com.couchbase.lite.logging.LogSinks
    @Nullable
    public ConsoleLogSink getConsole() {
        return this.consoleLogSink;
    }

    @Override // com.couchbase.lite.logging.LogSinks
    @Nullable
    public BaseLogSink getCustom() {
        return this.customLogSink;
    }

    @Override // com.couchbase.lite.logging.LogSinks
    @Nullable
    public FileLogSink getFile() {
        return this.fileLogSink;
    }

    @Override // com.couchbase.lite.logging.LogSinks
    public void setConsole(@Nullable ConsoleLogSink consoleLogSink) {
        forbidNewAndLegacyLogging(consoleLogSink);
        this.consoleLogSink = consoleLogSink;
        setLogFilter();
    }

    @Override // com.couchbase.lite.logging.LogSinks
    public void setCustom(@Nullable BaseLogSink baseLogSink) {
        forbidNewAndLegacyLogging(baseLogSink);
        this.customLogSink = baseLogSink;
        if (baseLogSink != null && this.customLogQueue.get() == null) {
            cyi.m53538a(this.customLogQueue, null, new ThreadPoolExecutor(1, 1, 0L, TimeUnit.SECONDS, new ArrayBlockingQueue(16)));
        }
        setLogFilter();
    }

    @Override // com.couchbase.lite.logging.LogSinks
    public void setFile(@Nullable FileLogSink fileLogSink) {
        if (Objects.equals(this.fileLogSink, fileLogSink)) {
            return;
        }
        forbidNewAndLegacyLogging(fileLogSink);
        if (fileLogSink == null) {
            this.c4Log.initFileLogging("", LogLevel.NONE, 0, 0L, false, "");
        } else {
            LogLevel level = fileLogSink.getLevel();
            if (fileLogSink.similar(this.fileLogSink)) {
                this.c4Log.setFileLogLevel(level);
            } else {
                this.c4Log.initFileLogging(fileLogSink.getDirectory(), level, fileLogSink.getMaxKeptFiles(), fileLogSink.getMaxFileSize(), fileLogSink.isPlainText(), CBLVersion.getVersionInfo());
            }
        }
        this.fileLogSink = fileLogSink;
        setLogFilter();
        warnIfNoFileLogSink();
    }

    public boolean shouldLog(@NonNull LogLevel logLevel, @NonNull LogDomain logDomain) {
        return this.logLevel.get().compareTo(logLevel) <= 0 && this.logDomains.get().contains(logDomain);
    }

    public void writeToLocalLogSinks(@NonNull final LogLevel logLevel, @NonNull final LogDomain logDomain, @Nullable final String str) {
        if (str == null) {
            str = "";
        }
        try {
            log(this.consoleLogSink, logLevel, logDomain, str);
        } catch (Exception e) {
            logFailure("Console", e);
        }
        Executor executor = this.customLogQueue.get();
        final BaseLogSink baseLogSink = this.customLogSink;
        if (executor == null || baseLogSink == null || baseLogSink.getLevel().compareTo(logLevel) > 0) {
            return;
        }
        try {
            executor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.i3j
                @Override // java.lang.Runnable
                public final void run() {
                    LogSinksImpl.lambda$writeToLocalLogSinks$0(BaseLogSink.this, logLevel, logDomain, str);
                }
            });
        } catch (Exception e2) {
            logFailure(TypedValues.Custom.NAME, e2);
        }
    }

    public void writeToSinks(@NonNull LogLevel logLevel, @NonNull LogDomain logDomain, @NonNull String str) {
        try {
            log(this.fileLogSink, logLevel, logDomain, str);
        } catch (Exception e) {
            logFailure("File", e);
        }
        writeToLocalLogSinks(logLevel, logDomain, str);
    }
}
