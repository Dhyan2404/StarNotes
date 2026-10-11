package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.LogLevel;
import com.couchbase.lite.internal.core.C4Constants;
import com.couchbase.lite.internal.core.impl.NativeC4Log;
import com.couchbase.lite.internal.logging.LogSinksImpl;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class C4Log {
    private static final AtomicReference<CallbackInstrumentation> CALLBACK_INSTRUMENTATION;
    private static final AtomicBoolean IN_CALLBACK;
    private static final Set<String> KNOWN_C4_LOGGING_DOMAINS;

    @NonNull
    private static final Map<String, LogDomain> LOGGING_DOMAIN_FROM_C4;

    @NonNull
    private static final Map<LogDomain, Set<String>> LOGGING_DOMAIN_TO_C4;

    @NonNull
    private static final Map<LogDomain, String> LOGGING_DOMAIN_TO_CANONICAL_C4;

    @NonNull
    private static final Map<Integer, LogLevel> LOG_LEVEL_FROM_C4;

    @NonNull
    private static final Map<LogLevel, Integer> LOG_LEVEL_TO_C4;

    @NonNull
    private final NativeImpl impl;

    @VisibleForTesting
    /* loaded from: classes4.dex */
    public interface CallbackInstrumentation {
        void onCallback(@Nullable String str, int i, @Nullable String str2);
    }

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        void nLog(@NonNull String str, int i, @NonNull String str2);

        void nSetBinaryFileLevel(int i);

        void nSetCallbackLevel(int i);

        void nSetLevel(@NonNull String str, int i);

        void nWriteToBinaryFile(String str, int i, int i2, long j, boolean z, String str2);
    }

    static {
        HashMap hashMap = new HashMap();
        LogLevel logLevel = LogLevel.DEBUG;
        hashMap.put(0, logLevel);
        LogLevel logLevel2 = LogLevel.VERBOSE;
        hashMap.put(1, logLevel2);
        LogLevel logLevel3 = LogLevel.INFO;
        hashMap.put(2, logLevel3);
        LogLevel logLevel4 = LogLevel.WARNING;
        hashMap.put(3, logLevel4);
        LogLevel logLevel5 = LogLevel.ERROR;
        hashMap.put(4, logLevel5);
        LOG_LEVEL_FROM_C4 = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put(logLevel, 0);
        hashMap2.put(logLevel2, 1);
        hashMap2.put(logLevel3, 2);
        hashMap2.put(logLevel4, 3);
        hashMap2.put(logLevel5, 4);
        LOG_LEVEL_TO_C4 = Collections.unmodifiableMap(hashMap2);
        HashMap hashMap3 = new HashMap();
        LogDomain logDomain = LogDomain.DATABASE;
        hashMap3.put("", logDomain);
        LogDomain logDomain2 = LogDomain.REPLICATOR;
        hashMap3.put(C4Constants.LogDomain.ACTOR, logDomain2);
        LogDomain logDomain3 = LogDomain.NETWORK;
        hashMap3.put(C4Constants.LogDomain.BLIP, logDomain3);
        hashMap3.put(C4Constants.LogDomain.BLIP_MESSAGES, logDomain3);
        hashMap3.put(C4Constants.LogDomain.BLOB, logDomain);
        hashMap3.put(C4Constants.LogDomain.CHANGES, logDomain);
        hashMap3.put(C4Constants.LogDomain.DATABASE, logDomain);
        LogDomain logDomain4 = LogDomain.QUERY;
        hashMap3.put(C4Constants.LogDomain.ENUM, logDomain4);
        hashMap3.put(C4Constants.LogDomain.LISTENER, LogDomain.LISTENER);
        hashMap3.put(C4Constants.LogDomain.QUERY, logDomain4);
        hashMap3.put("SQL", logDomain);
        hashMap3.put(C4Constants.LogDomain.SYNC, logDomain2);
        hashMap3.put(C4Constants.LogDomain.SYNC_BUSY, logDomain2);
        hashMap3.put("TLS", logDomain3);
        hashMap3.put(C4Constants.LogDomain.WEB_SOCKET, logDomain3);
        hashMap3.put(C4Constants.LogDomain.ZIP, logDomain3);
        Map<String, LogDomain> unmodifiableMap = Collections.unmodifiableMap(hashMap3);
        LOGGING_DOMAIN_FROM_C4 = unmodifiableMap;
        HashSet hashSet = new HashSet();
        HashMap hashMap4 = new HashMap();
        for (Map.Entry<String, LogDomain> entry : unmodifiableMap.entrySet()) {
            LogDomain value = entry.getValue();
            Set set = (Set) hashMap4.get(value);
            if (set == null) {
                set = new HashSet();
                hashMap4.put(value, set);
            }
            set.add(entry.getKey());
        }
        for (Map.Entry entry2 : hashMap4.entrySet()) {
            Set set2 = (Set) entry2.getValue();
            hashMap4.put((LogDomain) entry2.getKey(), Collections.unmodifiableSet(set2));
            hashSet.addAll(set2);
        }
        LOGGING_DOMAIN_TO_C4 = Collections.unmodifiableMap(hashMap4);
        KNOWN_C4_LOGGING_DOMAINS = Collections.unmodifiableSet(hashSet);
        HashMap hashMap5 = new HashMap();
        hashMap5.put(LogDomain.DATABASE, C4Constants.LogDomain.DATABASE);
        hashMap5.put(LogDomain.NETWORK, C4Constants.LogDomain.WEB_SOCKET);
        hashMap5.put(LogDomain.REPLICATOR, C4Constants.LogDomain.SYNC);
        hashMap5.put(LogDomain.QUERY, C4Constants.LogDomain.QUERY);
        hashMap5.put(LogDomain.LISTENER, C4Constants.LogDomain.LISTENER);
        LOGGING_DOMAIN_TO_CANONICAL_C4 = Collections.unmodifiableMap(hashMap5);
        IN_CALLBACK = new AtomicBoolean(false);
        CALLBACK_INSTRUMENTATION = new AtomicReference<>(null);
    }

    private C4Log(@NonNull NativeImpl nativeImpl) {
        this.impl = nativeImpl;
    }

    @NonNull
    public static C4Log create() {
        return new C4Log(new NativeC4Log());
    }

    @NonNull
    private Set<String> getC4DomainsForLoggingDomains(@NonNull Set<LogDomain> set) {
        HashSet hashSet = new HashSet();
        Iterator<LogDomain> it2 = set.iterator();
        while (it2.hasNext()) {
            Set<String> set2 = LOGGING_DOMAIN_TO_C4.get(it2.next());
            if (set2 != null) {
                hashSet.addAll(set2);
            }
        }
        return hashSet;
    }

    private int getC4LevelForLogLevel(@NonNull LogLevel logLevel) {
        Integer num = LOG_LEVEL_TO_C4.get(logLevel);
        if (num != null) {
            return num.intValue();
        }
        return 2;
    }

    @NonNull
    private String getCanonicalC4DomainForLoggingDomain(@NonNull LogDomain logDomain) {
        String str = LOGGING_DOMAIN_TO_CANONICAL_C4.get(logDomain);
        return str != null ? str : C4Constants.LogDomain.DATABASE;
    }

    @NonNull
    private static LogLevel getLogLevelForC4Level(int i) {
        LogLevel logLevel = LOG_LEVEL_FROM_C4.get(Integer.valueOf(i));
        return logLevel != null ? logLevel : LogLevel.INFO;
    }

    @NonNull
    private static LogDomain getLoggingDomainForC4Domain(@Nullable String str) {
        LogDomain logDomain = LOGGING_DOMAIN_FROM_C4.get(str);
        return logDomain != null ? logDomain : LogDomain.DATABASE;
    }

    public static void logCallback(@Nullable String str, int i, @Nullable String str2) {
        AtomicBoolean atomicBoolean = IN_CALLBACK;
        atomicBoolean.set(true);
        CallbackInstrumentation callbackInstrumentation = CALLBACK_INSTRUMENTATION.get();
        if (callbackInstrumentation != null) {
            callbackInstrumentation.onCallback(str, i, str2);
        }
        LogSinksImpl.logFromCore(getLogLevelForC4Level(i), getLoggingDomainForC4Domain(str), str2);
        atomicBoolean.set(false);
    }

    public void initFileLogging(String str, LogLevel logLevel, int i, long j, boolean z, String str2) {
        this.impl.nWriteToBinaryFile(str, getC4LevelForLogLevel(logLevel), i - 1, j, z, str2);
    }

    public void logToCore(@NonNull LogDomain logDomain, @NonNull LogLevel logLevel, @NonNull String str) {
        if (IN_CALLBACK.get()) {
            LogSinksImpl.logFailure("Recursive logging", null);
        } else {
            this.impl.nLog(getCanonicalC4DomainForLoggingDomain(logDomain), getC4LevelForLogLevel(logLevel), str);
        }
    }

    @VisibleForTesting
    public void setCallbackInstrumentation(@Nullable CallbackInstrumentation callbackInstrumentation) {
        CALLBACK_INSTRUMENTATION.set(callbackInstrumentation);
    }

    public void setCallbackLevel(@NonNull LogLevel logLevel) {
        this.impl.nSetCallbackLevel(getC4LevelForLogLevel(logLevel));
    }

    public void setFileLogLevel(@NonNull LogLevel logLevel) {
        this.impl.nSetBinaryFileLevel(getC4LevelForLogLevel(logLevel));
    }

    public void setLogFilter(@NonNull LogLevel logLevel, @NonNull LogLevel logLevel2, @NonNull Set<LogDomain> set) {
        HashSet hashSet = new HashSet(KNOWN_C4_LOGGING_DOMAINS);
        Set<String> c4DomainsForLoggingDomains = getC4DomainsForLoggingDomains(set);
        if (logLevel2.compareTo(logLevel) < 0) {
            Iterator<String> it2 = c4DomainsForLoggingDomains.iterator();
            while (it2.hasNext()) {
                setLogLevel(it2.next(), logLevel2);
            }
            hashSet.removeAll(c4DomainsForLoggingDomains);
        }
        Iterator it3 = hashSet.iterator();
        while (it3.hasNext()) {
            setLogLevel((String) it3.next(), logLevel);
        }
    }

    @VisibleForTesting
    public void setLogLevel(@NonNull LogDomain logDomain, @NonNull LogLevel logLevel) {
        setLogLevel(getCanonicalC4DomainForLoggingDomain(logDomain), getC4LevelForLogLevel(logLevel));
    }

    private void setLogLevel(@NonNull String str, @NonNull LogLevel logLevel) {
        setLogLevel(str, getC4LevelForLogLevel(logLevel));
    }

    private void setLogLevel(@NonNull String str, int i) {
        if (IN_CALLBACK.get()) {
            LogSinksImpl.logFailure("Log Level", null);
        } else {
            this.impl.nSetLevel(str, i);
        }
    }
}
