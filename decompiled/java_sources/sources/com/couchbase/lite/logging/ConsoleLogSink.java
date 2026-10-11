package com.couchbase.lite.logging;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.LogLevel;
import com.couchbase.lite.internal.logging.AbstractLogSink;
import java.util.Collection;
import java.util.Objects;

/* loaded from: classes4.dex */
public class ConsoleLogSink extends AbstractLogSink {

    /* renamed from: com.couchbase.lite.logging.ConsoleLogSink$1 */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C22271 {
        static final /* synthetic */ int[] $SwitchMap$com$couchbase$lite$LogLevel;

        static {
            int[] iArr = new int[LogLevel.values().length];
            $SwitchMap$com$couchbase$lite$LogLevel = iArr;
            try {
                iArr[LogLevel.DEBUG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$couchbase$lite$LogLevel[LogLevel.VERBOSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$couchbase$lite$LogLevel[LogLevel.INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$couchbase$lite$LogLevel[LogLevel.WARNING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$couchbase$lite$LogLevel[LogLevel.ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public ConsoleLogSink(@NonNull LogLevel logLevel) {
        this(logLevel, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConsoleLogSink)) {
            return false;
        }
        ConsoleLogSink consoleLogSink = (ConsoleLogSink) obj;
        return similarLevels(consoleLogSink) && similarDomains(consoleLogSink);
    }

    public final int hashCode() {
        return Objects.hash(getLevel(), getDomains());
    }

    @NonNull
    public final String toString() {
        return "ConsoleLogSink{" + AbstractLogSink.listDomains(getDomains()) + "@" + getLevel() + "}";
    }

    @Override // com.couchbase.lite.internal.logging.AbstractLogSink
    public void writeLog(@NonNull LogLevel logLevel, @NonNull LogDomain logDomain, @NonNull String str) {
        String str2 = "CouchbaseLite/" + logDomain;
        int i = C22271.$SwitchMap$com$couchbase$lite$LogLevel[logLevel.ordinal()];
        if (i == 1) {
            Log.d(str2, str);
            return;
        }
        if (i == 2) {
            Log.v(str2, str);
            return;
        }
        if (i == 3) {
            Log.i(str2, str);
        } else if (i == 4) {
            Log.w(str2, str);
        } else {
            if (i != 5) {
                return;
            }
            Log.e(str2, str);
        }
    }

    public ConsoleLogSink(@NonNull LogLevel logLevel, @NonNull LogDomain logDomain, @NonNull LogDomain... logDomainArr) {
        this(logLevel, AbstractLogSink.aggregateDomains(logDomain, logDomainArr));
    }

    public ConsoleLogSink(@NonNull LogLevel logLevel, @Nullable Collection<LogDomain> collection) {
        super(logLevel, AbstractLogSink.defaultDomains(collection));
    }
}
