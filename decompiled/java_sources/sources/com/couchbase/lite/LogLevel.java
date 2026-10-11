package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.EnumMap;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 com.couchbase.lite.LogLevel, still in use, count: 1, list:
  (r0v0 com.couchbase.lite.LogLevel) from ?: CAST (java.util.EnumMap<com.couchbase.lite.LogLevel, java.lang.String>) (r0v0 com.couchbase.lite.LogLevel)
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:88)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:87)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:238)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:180)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes4.dex */
public final class LogLevel {
    DEBUG,
    VERBOSE,
    INFO,
    WARNING,
    ERROR,
    NONE;

    private static final EnumMap<LogLevel, String> LEVELS;

    static {
        EnumMap<LogLevel, String> enumMap = new EnumMap<>((Class<LogLevel>) LogLevel.class);
        LEVELS = enumMap;
        enumMap.put((EnumMap<LogLevel, String>) new LogLevel(), (LogLevel) SardineUtil.DEFAULT_NAMESPACE_PREFIX);
        enumMap.put((EnumMap<LogLevel, String>) new LogLevel(), (LogLevel) "V");
        enumMap.put((EnumMap<LogLevel, String>) new LogLevel(), (LogLevel) "I");
        enumMap.put((EnumMap<LogLevel, String>) new LogLevel(), (LogLevel) "W");
        enumMap.put((EnumMap<LogLevel, String>) new LogLevel(), (LogLevel) "E");
        enumMap.put((EnumMap<LogLevel, String>) new LogLevel(), (LogLevel) "");
    }

    private LogLevel() {
    }

    public static LogLevel valueOf(String str) {
        return (LogLevel) Enum.valueOf(LogLevel.class, str);
    }

    public static LogLevel[] values() {
        return (LogLevel[]) $VALUES.clone();
    }

    @Override // java.lang.Enum
    @NonNull
    public String toString() {
        String str = LEVELS.get(this);
        if (str != null) {
            return str;
        }
        com.couchbase.lite.internal.logging.Log.m9899d(LogDomain.DATABASE, "Unrecognized log level: %s", this);
        return "?";
    }
}
